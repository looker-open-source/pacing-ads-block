include: "/views/pacing_block/shared/datagroups.lkml"
view: forecast {

  derived_table: {
    datagroup_trigger: daily_refresh

    sql:
      SELECT
          date,
          ad_source,
          revenue,
          "history"                       AS `time_series_type`,
          CAST(NULL AS FLOAT64)           AS `revenue_lower_bound`,
          CAST(NULL AS FLOAT64)           AS `revenue_upper_bound`,
          FROM ${training.SQL_TABLE_NAME}
      UNION ALL
      SELECT
          date,
          ad_source,
          forecast_value,
          time_series_type,
          revenue_lower_bound,
          revenue_upper_bound,
      FROM ${predictions.SQL_TABLE_NAME}
      ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      date,
      month,
      month_name,
      week,
      day_of_week,
      day_of_week_index
    ]
    sql: ${TABLE}.date ;;
  }

  dimension: ad_source {
    type: string
    sql: ${TABLE}.ad_source ;;
  }


  dimension: time_series_type {
    description: "Time Series Type: History or Forecast"
    type: string
    sql: ${TABLE}.time_series_type ;;
  }

  measure: revenue_forecast {
    description: "Revenue where series_type is forecast"
    type: sum
    sql: ${TABLE}.revenue ;;
    value_format_name: usd_0
    filters: [time_series_type: "forecast"]
    drill_fields: [ad_source, revenue_forecast]
    link: {
      label: "By AdSource"
      url: "@{viz_bond_config} {{ link }}&fields=forecast.date_date,forecast.revenue_forecast,forecast.ad_source&pivots=forecast.ad_source&f[forecast.revenue_forecast]=>0&sorts=forecast.date_date&vis_config={{ vis_config | encode_uri }}"
    }
    link: {
      label: "By Other"
      url: "@{month_day_viz_config} {{ link }}&fields=forecast.date_month_name,forecast.ad_source,forecast.date_day_of_week,forecast.revenue&sorts=forecast.date_day_of_week&vis_config={{ vis_config | encode_uri }}"
    }
  }

  measure: revenue {
    description: "Revenue"
    type: sum
    sql: ${TABLE}.revenue ;;
    value_format_name: usd_0
    drill_fields: [date_date]
    link: {
      label: "By AdSource"
      url: "@{viz_bond_config} {{ link }}&fields=forecast.date_date,forecast.revenue_upper_bound,forecast.ad_source&pivots=forecast.ad_source&f[forecast.revenue_upper_bound]=>0&sorts=forecast.date_date&vis_config={{ vis_config | encode_uri }}"
    }
    link: {
      label: "By Other"
      url: "@{viz_bond_config} {{ link }}&fields=forecast.date_date,forecast.revenue_upper_bound,forecast.ad_source&pivots=forecast.ad_source&f[forecast.revenue_upper_bound]=>0&sorts=forecast.date_date&vis_config={{ vis_config | encode_uri }}"
    }
  }

  measure: revenue_lower_bound {
    description: "Revenue Lower Bound"
    type: sum
    sql: ${TABLE}.revenue_lower_bound ;;
    value_format_name: usd_0
    drill_fields: [date_date]
    link: {
      label: "By AdSource"
      url: "@{viz_bond_config} {{ link }}&fields=forecast.date_date,forecast.revenue_lower_bound,forecast.ad_source&pivots=forecast.ad_source&f[forecast.revenue_lower_bound]=>0&sorts=forecast.date_date&vis_config={{ vis_config | encode_uri }}"
    }
  }

  measure: revenue_upper_bound {
    description: "Revenue Upper Bound"
    type: sum
    sql: ${TABLE}.revenue_upper_bound ;;
    value_format_name: usd_0
    drill_fields: [date_date]
    link: {
      label: "By AdSource"
      url: "@{viz_bond_config} {{ link }}&fields=forecast.date_date,forecast.revenue_upper_bound,forecast.ad_source&pivots=forecast.ad_source&f[forecast.revenue_upper_bound]=>0&sorts=forecast.date_date&vis_config={{ vis_config | encode_uri }}"
    }
  }

}

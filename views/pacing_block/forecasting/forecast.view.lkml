include: "/views/pacing_block/shared/datagroups.lkml"
view: forecast {

  derived_table: {
    datagroup_trigger: weekly_refresh

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
      week,
      day_of_week
    ]
    sql: ${TABLE}.date ;;
  }

  dimension: ad_source {
    type: string
    sql: ${TABLE}.ad_source ;;
  }

  measure: revenue {
    description: "Revenue"
    type: number
    sql: SUM(${TABLE}.revenue) ;;
  }

  dimension: time_series_type {
    description: "Time Series Type: History or Forecast"
    type: string
    sql: ${TABLE}.time_series_type ;;
  }


  measure: revenue_lower_bound {
    description: "Revenue Lower Bound"
    type: number
    sql: SUM(${TABLE}.revenue_lower_bound) ;;
  }

  measure: revenue_upper_bound {
    description: "Revenue Upper Bound"
    type: number
    sql: SUM(${TABLE}.revenue_upper_bound) ;;
  }

}

include: "/views/pacing_block/shared/datagroups.lkml"
view: forecast {

  derived_table: {
    datagroup_trigger: weekly_refresh
    # sql specifies the SQL SELECT statement that will be used to generate
    # this derived table as a CTE, or a subquery.
    sql:
      SELECT
        ad_source,
        partition_date_date,
        total_revenue,
        "history"                       AS `time_serie_type`,
        CAST(NULL AS FLOAT64)           AS `total_revenue_lower_bound`,
        CAST(NULL AS FLOAT64)           AS `total_revenue_upper_bound`,
      FROM ${training.SQL_TABLE_NAME}
      UNION ALL
      SELECT
        ad_source,
        forecast_timestamp              AS `partition_date_date`,
        forecast_value                  AS `total_revenue`,
        "forecast"                      AS `time_serie_type`,
        prediction_interval_lower_bound AS `total_revenue_lower_bound`,
        prediction_interval_upper_bound AS `total_revenue_upper_bound`,
      FROM ML.FORECAST(
        MODEL ${forecast_model.SQL_TABLE_NAME},
        STRUCT(30 AS `horizon`, 0.8 AS `confidence_level`)
      )
    ;;
  }

  dimension_group: partition_date_date {
    type: time
    # timeframes define the set of timeframe dimensions
    # the dimension_group will produce. (accessible in the Looker Explore UI)
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.partition_date_date ;;
  }

  dimension: time_serie_type {
    description: "Time Series Type: History or Forecast"
    type: string
    sql: ${TABLE}.time_serie_type ;;
  }

  measure: total_revenue {
    description: "Total Revenue"
    type: number
    sql: SUM(${TABLE}.total_revenue) ;;
  }

  measure: total_revenue_lower_bound {
    description: "Total Revenue Lower Bound"
    type: number
    sql: SUM(${TABLE}.total_revenue_lower_bound) ;;
  }

  measure: total_revenue_upper_bound {
    description: "Total Revenue Upper Bound"
    type: number
    sql: SUM(${TABLE}.total_revenue_upper_bound) ;;
  }

}

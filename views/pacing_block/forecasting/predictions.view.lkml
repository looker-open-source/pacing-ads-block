view: predictions {

  derived_table: {
    datagroup_trigger: weekly_refresh
    increment_key: "date"
    increment_offset: 3
    sql:
      SELECT
          prediction.forecast_timestamp date,
          prediction.ad_source,
          prediction.forecast_value,
          "forecast"                                  AS time_series_type,
          prediction.prediction_interval_lower_bound  AS revenue_lower_bound,
          prediction.prediction_interval_upper_bound  AS revenue_upper_bound,
      FROM ML.FORECAST(
          MODEL ${forecast_model.SQL_TABLE_NAME},
          STRUCT (7 AS horizon, 0.8 AS confidence_level)
      ) AS prediction
      WHERE {% incrementcondition %} prediction.date {% endincrementcondition %}
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

  measure: forecast_value {
    description: "Revenue"
    type: number
    sql: SUM(${TABLE}.forecast_value) ;;
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

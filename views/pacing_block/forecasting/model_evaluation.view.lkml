view: model_evaluation {
  derived_table: {
    sql: SELECT
          *
        FROM
      ML.ARIMA_EVALUATE(MODEL ${forecast_model.SQL_TABLE_NAME}, STRUCT(FALSE AS show_all_candidate_models));;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ad_source {
    type: string
    sql: ${TABLE}.ad_source ;;
  }

  dimension: non_seasonal_p {
    type: number
    sql: ${TABLE}.non_seasonal_p ;;
  }

  dimension: non_seasonal_d {
    type: number
    sql: ${TABLE}.non_seasonal_d ;;
  }

  dimension: non_seasonal_q {
    type: number
    sql: ${TABLE}.non_seasonal_q ;;
  }

  dimension: has_drift {
    type: yesno
    sql: ${TABLE}.has_drift ;;
  }

  dimension: log_likelihood {
    type: number
    sql: ${TABLE}.log_likelihood ;;
  }

  dimension: aic {
    type: number
    sql: ${TABLE}.AIC ;;
  }

  dimension: variance {
    type: number
    sql: ${TABLE}.variance ;;
  }

  dimension: seasonal_periods {
    type: string
    sql: ${TABLE}.seasonal_periods ;;
  }

  dimension: has_holiday_effect {
    type: yesno
    sql: ${TABLE}.has_holiday_effect ;;
  }

  dimension: has_spikes_and_dips {
    type: yesno
    sql: ${TABLE}.has_spikes_and_dips ;;
  }

  dimension: has_step_changes {
    type: yesno
    sql: ${TABLE}.has_step_changes ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  set: detail {
    fields: [
      ad_source,
      non_seasonal_p,
      non_seasonal_d,
      non_seasonal_q,
      has_drift,
      log_likelihood,
      aic,
      variance,
      seasonal_periods,
      has_holiday_effect,
      has_spikes_and_dips,
      has_step_changes,
      error_message
    ]
  }
}

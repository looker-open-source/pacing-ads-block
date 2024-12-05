view: campaigns_information_sheets {
  sql_table_name: `looker-marketplace.PacingDashData.@{SHEETS_CAMPAIGN_TABLE}` ;;
  dimension:id  {
    primary_key: yes
    sql: ${TABLE}.ID;;
    hidden: yes
  }
  dimension: age_group {
    type: string
    sql: ${TABLE}.age_group ;;
  }
  dimension: audience_name {
    type: string
    sql: ${TABLE}.audience_name ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: demographic {
    type: string
    sql: ${TABLE}.demographic ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
  dimension: geographic {
    type: string
    sql: ${TABLE}.geographic ;;
  }
  dimension: goal_type {
    type: string
    sql: ${TABLE}.goal_type ;;
  }
  dimension: goal_value {
    type: number
    sql: ${TABLE}.goal_value ;;
  }
  dimension: phase {
    type: string
    sql: ${TABLE}.phase ;;
  }
  dimension: plan_name {
    type: string
    sql: ${TABLE}.plan_name ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name, audience_name, plan_name]
  }
}

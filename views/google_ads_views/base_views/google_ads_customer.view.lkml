#####################################################################
# Purpose: Created from Google Ads Transfer, specifically from Ads Customer table.
#####################################################################
view: google_ads_customer {
  sql_table_name: `@{PROJECT_ID}.@{GADS_DATASET_NAME}.ads_Customer_@{GADS_CUSTOMER_ID}` ;;

  dimension_group: _data {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._DATA_DATE ;;
  }
  dimension_group: _latest {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._LATEST_DATE ;;
  }
  dimension: customer_auto_tagging_enabled {
    description: "Whether autotagging is enabled for the customer."
    type: yesno
    sql: ${TABLE}.customer_auto_tagging_enabled ;;
  }
  dimension: customer_currency_code {
    description: "The currency in which the account operates."
    type: string
    sql: ${TABLE}.customer_currency_code ;;
  }
  dimension: customer_descriptive_name {
    description: "Optional, non-unique descriptive name of the customer."
    type: string
    sql: ${TABLE}.customer_descriptive_name ;;
  }
  dimension: customer_id {
    description: "The ID of the customer."
    primary_key: yes
    type: string
    sql: CAST(${TABLE}.customer_id AS STRING) ;;
  }
  dimension: customer_manager {
    description: "Whether the customer is a manager."
    type: yesno
    sql: ${TABLE}.customer_manager ;;
  }
  dimension: customer_test_account {
    type: yesno
    sql: ${TABLE}.customer_test_account ;;
  }
  dimension: customer_time_zone {
    description: "Whether the customer is a test account."
    type: string
    sql: ${TABLE}.customer_time_zone ;;
  }
  measure: count {
    description: "Count of records."
    type: count
    drill_fields: [customer_descriptive_name]
  }
}

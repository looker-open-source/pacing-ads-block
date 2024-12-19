#####################################################################
# Purpose: Created from Google Ads Transfer, specifically from Ads Campaign table.
#####################################################################

view: google_ads_campaign {
  sql_table_name: `@{PROJECT_ID}.@{GADS_DATASET_NAME}.ads_Campaign_@{GADS_CUSTOMER_ID}` ;;

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
  dimension: bidding_strategy_name {
    description: "The name of the bidding strategy."
    type: string
    sql: ${TABLE}.bidding_strategy_name ;;
  }
  dimension: campaign_advertising_channel_sub_type {
    description: "Optional refinement to `advertising_channel_type`. Must be a valid sub-type of the parent channel type."
    type: string
    sql: ${TABLE}.campaign_advertising_channel_sub_type ;;
  }
  dimension: campaign_advertising_channel_type {
    description: "The primary serving target for ads within the campaign. The targeting options can be refined in `network_settings`."
    type: string
    sql: ${TABLE}.campaign_advertising_channel_type ;;
  }
  dimension: campaign_bidding_strategy {
    description: "Portfolio bidding strategy used by campaign."
    type: string
    sql: ${TABLE}.campaign_bidding_strategy ;;
  }
  dimension: campaign_bidding_strategy_type {
    description: "The type of bidding strategy. "
    type: string
    sql: ${TABLE}.campaign_bidding_strategy_type ;;
  }
  dimension: campaign_budget_amount_micros {
    description: "The amount of the budget, in the local currency for the account."
    type: number
    sql: ${TABLE}.campaign_budget_amount_micros ;;
  }
  dimension: campaign_budget_explicitly_shared {
    description: "Specifies whether the budget is explicitly shared. "
    type: yesno
    sql: ${TABLE}.campaign_budget_explicitly_shared ;;
  }
  dimension: campaign_budget_has_recommended_budget {
    description: "Indicates whether there is a recommended budget for this campaign budget."
    type: yesno
    sql: ${TABLE}.campaign_budget_has_recommended_budget ;;
  }
  dimension: campaign_budget_period {
    description: "Period over which to spend the budget."
    type: string
    sql: ${TABLE}.campaign_budget_period ;;
  }
  dimension: campaign_budget_recommended_budget_amount_micros {
    description: "The recommended budget amount."
    type: number
    sql: ${TABLE}.campaign_budget_recommended_budget_amount_micros ;;
  }
  dimension: campaign_budget_total_amount_micros {
    description: "The lifetime amount of the budget, in the local currency for the account."
    type: number
    sql: ${TABLE}.campaign_budget_total_amount_micros ;;
  }
  dimension: campaign_campaign_budget {
    description: "  The budget of the campaign."
    type: string
    sql: ${TABLE}.campaign_campaign_budget ;;
  }
  dimension_group: campaign_end {
    description: "The date when campaign ended."
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.campaign_end_date ;;
  }
  dimension: campaign_experiment_type {
    description: "The type of campaign: normal, draft, or experiment."
    type: string
    sql: ${TABLE}.campaign_experiment_type ;;
  }
  dimension: campaign_id {
    description: "The ID of the campaign."
    type: string
    sql: CAST(${TABLE}.campaign_id AS STRING) ;;
  }
  dimension: campaign_manual_cpc_enhanced_cpc_enabled {
    description: "Whether bids are to be enhanced based on conversion optimizer data."
    type: yesno
    sql: ${TABLE}.campaign_manual_cpc_enhanced_cpc_enabled ;;
  }
  dimension: campaign_maximize_conversion_value_target_roas {
    description: "The target return on ad spend (ROAS) option."
    type: number
    sql: ${TABLE}.campaign_maximize_conversion_value_target_roas ;;
  }
  dimension: campaign_name {
    description: "The name of the campaign."
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaign_percent_cpc_enhanced_cpc_enabled {
    description: "Adjusts the bid for each auction upward or downward, depending on the likelihood of a conversion. "
    type: yesno
    sql: ${TABLE}.campaign_percent_cpc_enhanced_cpc_enabled ;;
  }
  dimension: campaign_serving_status {
    description: "The ad serving status of the campaign."
    type: string
    sql: ${TABLE}.campaign_serving_status ;;
  }
  dimension_group: campaign_start {
    description: "The date when campaign started."
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.campaign_start_date ;;
  }
  dimension: campaign_status {
    description: "The status of the campaign."
    type: string
    sql: ${TABLE}.campaign_status ;;
  }
  dimension: campaign_tracking_url_template {
    description: "The URL template for constructing a tracking URL."
    type: string
    sql: ${TABLE}.campaign_tracking_url_template ;;
  }
  dimension: campaign_url_custom_parameters {
    description: "The list of mappings used to substitute custom parameter tags in a `tracking_url_template`, `final_urls`, or `mobile_final_urls`."
    type: string
    sql: ${TABLE}.campaign_url_custom_parameters ;;
  }
  dimension: customer_id {
    description: "ID of customer."
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  measure: count {
    description: "Count of records"
    type: count
    drill_fields: [bidding_strategy_name, campaign_name]
  }
}

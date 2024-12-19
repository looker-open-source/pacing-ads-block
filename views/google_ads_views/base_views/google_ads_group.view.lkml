#####################################################################
# Purpose: Created from Google Ads Transfer, specifically from Ads Group table.
#####################################################################


view: google_ads_group {
  sql_table_name: `@{PROJECT_ID}.@{GADS_DATASET_NAME}.ads_AdGroup_@{GADS_CUSTOMER_ID}` ;;

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
  dimension: ad_group_ad_rotation_mode {
    description: "The ad rotation mode of the ad group."
    type: string
    sql: ${TABLE}.ad_group_ad_rotation_mode ;;
  }
  dimension: ad_group_cpc_bid_micros {
    description: "The maximum CPC (cost-per-click) bid."
    type: number
    sql: ${TABLE}.ad_group_cpc_bid_micros ;;
  }
  dimension: ad_group_cpm_bid_micros {
    description: "The maximum CPM (cost-per-thousand viewable impressions) bid."
    type: number
    sql: ${TABLE}.ad_group_cpm_bid_micros ;;
  }
  dimension: ad_group_cpv_bid_micros {
    description: "The CPV (cost-per-view) bid."
    type: number
    sql: ${TABLE}.ad_group_cpv_bid_micros ;;
  }
  dimension: ad_group_display_custom_bid_dimension {
    description: "Allows advertisers to specify a targeting dimension on which to place absolute bids. This is only applicable for campaigns that target only the display network and not search."
    type: string
    sql: ${TABLE}.ad_group_display_custom_bid_dimension ;;
  }
  dimension: ad_group_effective_target_cpa_micros {
    description: "The effective target CPA (cost-per-acquisition)."
    type: number
    sql: ${TABLE}.ad_group_effective_target_cpa_micros ;;
  }
  dimension: ad_group_effective_target_cpa_source {
    description: "Source of the effective target CPA. "
    type: string
    sql: ${TABLE}.ad_group_effective_target_cpa_source ;;
  }
  dimension: ad_group_effective_target_roas {
    description: "The effective target ROAS (return-on-ad-spend)."
    type: number
    sql: ${TABLE}.ad_group_effective_target_roas ;;
  }
  dimension: ad_group_effective_target_roas_source {
    description: "Source of the effective target ROAS. This field is read-only."
    type: string
    sql: ${TABLE}.ad_group_effective_target_roas_source ;;
  }
  dimension: ad_group_id {
    description: "The ID of the ad group."
    type: string
    sql: CAST(${TABLE}.ad_group_id AS STRING);;
  }
  dimension: ad_group_name {
    description: "The name of the ad group. "
    type: string
    sql: ${TABLE}.ad_group_name ;;
  }
  dimension: ad_group_status {
    description: "The status of the ad group."
    type: string
    sql: ${TABLE}.ad_group_status ;;
  }
  dimension: ad_group_tracking_url_template {
    description: "The URL template for constructing a tracking URL."
    type: string
    sql: ${TABLE}.ad_group_tracking_url_template ;;
  }
  dimension: ad_group_type {
    description: "The type of the ad group."
    type: string
    sql: ${TABLE}.ad_group_type ;;
  }
  dimension: ad_group_url_custom_parameters {
    description: "The list of mappings used to substitute custom parameter tags in a `tracking_url_template`, `final_urls`, or `mobile_final_urls`."
    type: string
    sql: ${TABLE}.ad_group_url_custom_parameters ;;
  }
  dimension: campaign_bidding_strategy {
    description: "Portfolio bidding strategy used by campaign.  "
    type: string
    sql: ${TABLE}.campaign_bidding_strategy ;;
  }
  dimension: campaign_bidding_strategy_type {
    description: "The type of bidding strategy. "
    type: string
    sql: ${TABLE}.campaign_bidding_strategy_type ;;
  }
  dimension: campaign_id {
    description: "The ID of the campaign."
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_manual_cpc_enhanced_cpc_enabled {
    description: "Whether bids are to be enhanced based on conversion optimizer data."
    type: yesno
    sql: ${TABLE}.campaign_manual_cpc_enhanced_cpc_enabled ;;
  }
  dimension: campaign_percent_cpc_enhanced_cpc_enabled {
    description: "Adjusts the bid for each auction upward or downward, depending on the likelihood of a conversion."
    type: yesno
    sql: ${TABLE}.campaign_percent_cpc_enhanced_cpc_enabled ;;
  }
  dimension: customer_id {
    description: "The ID of the customer."
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  measure: count {
    description: "Count of records."
    type: count
    drill_fields: [ad_group_name]
  }
}

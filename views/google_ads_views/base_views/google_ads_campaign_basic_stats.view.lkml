#####################################################################
# Purpose: Created from Google Ads Transfer, specifically from Ads Campaign Basic Stats table.
#####################################################################

view: google_ads_campaign_basic_stats {
  sql_table_name: `@{PROJECT_ID}.@{GADS_DATASET_NAME}.ads_CampaignBasicStats_@{GADS_CUSTOMER_ID}` ;;

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
  dimension: campaign_base_campaign {
    description: "  The resource name of the base campaign of a draft or experiment campaign."
    type: string
    sql: ${TABLE}.campaign_base_campaign ;;
  }
  dimension: campaign_id {
    group_label: "IDs"
    description: "The ID of the campaign."
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: customer_id {
    description: "The ID of the customer."
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  dimension: metrics_clicks {
    description: "The number of clicks."
    type: number
    sql: ${TABLE}.metrics_clicks ;;
  }
  dimension: metrics_conversions {
    description: "The number of conversions. "
    type: number
    sql: ${TABLE}.metrics_conversions ;;
  }
  dimension: metrics_conversions_value {
    description: "The total value of conversions"
    type: number
    sql: ${TABLE}.metrics_conversions_value ;;
  }
  dimension: metrics_cost_micros {
    description: "The sum of your cost-per-click (CPC) and cost-per-thousand impressions (CPM) costs during this period."
    type: number
    sql: ${TABLE}.metrics_cost_micros ;;
  }
  dimension: metrics_impressions {
    description: "Count of how often your ad has appeared on a search results page or website on the Google Network."
    type: number
    sql: ${TABLE}.metrics_impressions ;;
  }
  dimension: metrics_interaction_event_types {
    description: "The types of payable and free interactions."
    type: string
    sql: ${TABLE}.metrics_interaction_event_types ;;
  }
  dimension: metrics_interactions {
    description: "The number of interactions."
    type: number
    sql: ${TABLE}.metrics_interactions ;;
  }
  dimension: metrics_view_through_conversions {
    description: "The total number of view-through conversions."
    type: number
    sql: ${TABLE}.metrics_view_through_conversions ;;
  }
  dimension: segments_ad_network_type {
    description: "Ad network type."
    type: string
    sql: ${TABLE}.segments_ad_network_type ;;
  }
  dimension_group: segments {
    description: "Date to which metrics apply. yyyy-MM-dd format"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.segments_date ;;
  }
  dimension: segments_device {
    description: "Device to which metrics apply."
    type: string
    sql: ${TABLE}.segments_device ;;
  }
  dimension: segments_slot {
    description: "Position of the ad."
    type: string
    sql: ${TABLE}.segments_slot ;;
  }
  measure: count {
    description: "Count of records"
    type: count
  }
}

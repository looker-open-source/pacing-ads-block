#####################################################################
# Purpose: Created from Google Ads Transfer, specifically from Ads Stats table.
#####################################################################

view: google_ads_stats {
  sql_table_name: `@{PROJECT_ID}.@{GADS_DATASET_NAME}.ads_AdStats_@{GADS_CUSTOMER_ID}` ;;

  dimension: ad_group_ad_ad_group {
    description: "The ad group to which the ad belongs."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_group ;;
  }
  dimension: ad_group_ad_ad_id {
    description: "The ID of the ad."
    type: string
    sql: CAST(${TABLE}.ad_group_ad_ad_id AS STRING);;
  }
  dimension: ad_group_base_ad_group {
    description: "This field is the resource name of the base ad group from which this ad group was created."
    type: string
    sql: ${TABLE}.ad_group_base_ad_group ;;
  }
  dimension: ad_group_id {
    description: "The ID of the ad group."
    type: string
    sql: CAST(${TABLE}.ad_group_id AS STRING) ;;
  }
  dimension: campaign_base_campaign {
    description: "The resource name of the base campaign of a draft or experiment campaign. For base campaigns, this is equal to `resource_name`."
    type: string
    sql: ${TABLE}.campaign_base_campaign ;;
  }
  dimension: campaign_id {
    description: "ID of your campaign"
    group_label: "IDs"
    type: string
    sql: CAST(${TABLE}.campaign_id AS STRING) ;;
  }
  dimension: customer_id {
    description: "ID of Customer"
    group_label: "IDs"
    primary_key: yes
    type: string
    sql: CAST(${TABLE}.customer_id AS STRING) ;;
  }
  dimension: metrics_active_view_cpm {
    description: "Average cost of viewable impressions (`active_view_impressions`)."
    type: number
    sql: ${TABLE}.metrics_active_view_cpm ;;
  }
  dimension: metrics_active_view_ctr {
    description: "Active view measurable clicks divided by active view viewable impressions. This metric is reported only for display network."
    type: number
    sql: ${TABLE}.metrics_active_view_ctr ;;
  }
  dimension: metrics_active_view_impressions {
    description: "A measurement of how often your ad has become viewable on a Display Network site."
    type: number
    sql: ${TABLE}.metrics_active_view_impressions ;;
  }
  dimension: metrics_active_view_measurability {
    description: "The ratio of impressions that could be measured by Active View over the number of served impressions."
    type: number
    sql: ${TABLE}.metrics_active_view_measurability ;;
  }
  dimension: metrics_active_view_measurable_cost_micros {
    description: "The cost of the impressions you received that were measurable by Active View."
    type: number
    sql: ${TABLE}.metrics_active_view_measurable_cost_micros ;;
  }
  dimension: metrics_active_view_measurable_impressions {
    description: "The number of times your ads are appearing on placements in positions where they can be seen."
    type: number
    sql: ${TABLE}.metrics_active_view_measurable_impressions ;;
  }
  dimension: metrics_active_view_viewability {
    description: "The percentage of time when your ad appeared on an Active View enabled site (measurable impressions) and was viewable (viewable impressions)."
    type: number
    sql: ${TABLE}.metrics_active_view_viewability ;;
  }
  dimension: metrics_average_cost {
    description: "The average amount you pay per interaction. This amount is the total cost of your ads divided by the total number of interactions.  "
    type: number
    sql: ${TABLE}.metrics_average_cost ;;
  }
  dimension: metrics_average_cpc {
    description: "The total cost of all clicks divided by the total number of clicks received."
    type: number
    sql: ${TABLE}.metrics_average_cpc ;;
  }
  dimension: metrics_average_cpm {
    description: "Average cost-per-thousand impressions (CPM)."
    type: number
    sql: ${TABLE}.metrics_average_cpm ;;
  }
  dimension: metrics_clicks {
    description: "The number of clicks."
    type: number
    sql: ${TABLE}.metrics_clicks ;;
  }
  dimension: metrics_conversions {
    description: "The number of conversions. This only includes conversion actions which include_in_conversions_metric attribute is set to true."
    type: number
    sql: ${TABLE}.metrics_conversions ;;
  }
  dimension: metrics_conversions_from_interactions_rate {
    description: "Conversions from interactions divided by the number of ad interactions (such as clicks for text ads or views for video ads). This only includes conversion actions which include_in_conversions_metric attribute is set to true."
    type: number
    sql: ${TABLE}.metrics_conversions_from_interactions_rate ;;
  }
  dimension: metrics_conversions_value {
    description: "The total value of conversions. This only includes conversion actions which include_in_conversions_metric attribute is set to true. "
    type: number
    sql: ${TABLE}.metrics_conversions_value ;;
  }
  dimension: metrics_cost_micros {
    description: "The sum of your cost-per-click (CPC) and cost-per-thousand impressions (CPM) costs during this period."
    type: number
    sql: ${TABLE}.metrics_cost_micros ;;
  }
  dimension: metrics_cost_per_conversion {
    description: "The cost of ad interactions divided by conversions. This only includes conversion actions which include_in_conversions_metric attribute is set to true."
    type: number
    sql: ${TABLE}.metrics_cost_per_conversion ;;
  }
  dimension: metrics_cost_per_current_model_attributed_conversion {
    description: "The cost of ad interactions divided by current model attributed conversions. This only includes conversion actions which include_in_conversions_metric attribute is set to true."
    type: number
    sql: ${TABLE}.metrics_cost_per_current_model_attributed_conversion ;;
  }
  dimension: metrics_ctr {
    description: "The number of clicks your ad receives (Clicks) divided by the number of times your ad is shown (Impressions)."
    type: number
    sql: ${TABLE}.metrics_ctr ;;
  }
  dimension: metrics_current_model_attributed_conversions {
    description: "Shows how your historic conversions data would look under the attribution model you've selected. This only includes conversion actions which include_in_conversions_metric attribute is set to true."
    type: number
    sql: ${TABLE}.metrics_current_model_attributed_conversions ;;
  }
  dimension: metrics_gmail_forwards {
    description: "The number of times the ad was forwarded to someone else as a message."
    type: number
    sql: ${TABLE}.metrics_gmail_forwards ;;
  }
  dimension: metrics_gmail_saves {
    description: "  The number of times someone has saved your Gmail ad to their inbox as a message."
    type: number
    sql: ${TABLE}.metrics_gmail_saves ;;
  }
  dimension: metrics_gmail_secondary_clicks {
    description: "The number of clicks to the landing page on the expanded state of Gmail ads."
    type: number
    sql: ${TABLE}.metrics_gmail_secondary_clicks ;;
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
  dimension: metrics_interaction_rate {
    description: "How often people interact with your ad after it is shown to them. This is the number of interactions divided by the number of times your ad is shown."
    type: number
    sql: ${TABLE}.metrics_interaction_rate ;;
  }
  dimension: metrics_interactions {
    description: "The number of interactions. An interaction is the main user action associated with an ad format, such as clicks for text and shopping ads or views for video ads."
    type: number
    sql: ${TABLE}.metrics_interactions ;;
  }
  dimension: metrics_value_per_conversion {
    description: "The value of conversions divided by the number of conversions. This only includes conversion actions which include_in_conversions_metric attribute is set to true."
    type: number
    sql: ${TABLE}.metrics_value_per_conversion ;;
  }
  dimension: metrics_value_per_current_model_attributed_conversion {
    description: "The value of current model attributed conversions divided by the number of the conversions. This only includes conversion actions which include_in_conversions_metric attribute is set to true."
    type: number
    sql: ${TABLE}.metrics_value_per_current_model_attributed_conversion ;;
  }
  dimension: segments_ad_network_type {
    description: "Ad network type."
    type: string
    sql: ${TABLE}.segments_ad_network_type ;;
  }
  dimension: segments_click_type {
    description: "Click type."
    type: string
    sql: ${TABLE}.segments_click_type ;;
  }
  dimension_group: segments {
    description: "Date to which metrics apply."
    type: time
    timeframes: [raw, date, week, month, quarter]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.segments_date ;;
  }


  dimension: ads_source {
    description: "Ad Source"
    type: string
    sql: "Google Ads" ;;
  }

# ----- MEASURES -----

#Sum
  measure: spend {
    description: "Total Spent"
    type: sum
    sql: ${metrics_cost_micros} ;;
  }
  measure: impressions {
    description: "Total Impressions"
    type: sum
    sql: ${metrics_impressions} ;;
  }
  measure: clicks {
    description: "Total Clicks"
    type: sum
    sql: ${metrics_clicks} ;;
  }
  measure: conversions {
    description: "Total Clicks"
    type: sum
    sql: ${metrics_conversions} ;;
  }
  measure: revenue {
    description: "Total Revenue"
    type: sum
    sql: ${metrics_conversions_value} ;;
  }
}

#####################################################################
# Purpose: Contains information about Ad insights Actions from Facebook to use for
# Data Analysis. The Insights Actions API can return several metrics which are estimated or in-development.
# In some cases a metric may be both estimated and in-development.
#####################################################################

view: ad_insights_actions {

  fields_hidden_by_default: yes

  derived_table: {
    sql: SELECT *, GENERATE_UUID() as primary_key  FROM  `@{PROJECT_ID}.@{FADS_DATASET_NAME}.AdInsightsActions` ;;
  }

  dimension: primary_key {
    description: "Generated primary key"
    primary_key: yes
    sql: ${TABLE}.primary_key ;;
  }
  dimension: action1d_click {
    description: "Clicks counted and a person takes an action within 1 day"
    type: string
    sql: ${TABLE}.Action1dClick ;;
  }
  dimension: action1d_view {
    description: "Views counted and a person takes an action within 1 day"
    type: string
    sql: ${TABLE}.Action1dView ;;
  }
  dimension: action28d_click {
    description: "Clicks counted and a person takes an action within 28 days"
    type: string
    sql: ${TABLE}.Action28dClick ;;
  }

  dimension: action7d_click {
    description: "Clicks counted and a person takes an action within 7 days"
    type: string
    sql: ${TABLE}.Action7dClick ;;
  }
  dimension: action7d_view {
    description: "Views counted and a person takes an action within 7 days"
    type: string
    sql: ${TABLE}.Action7dView ;;
  }
  dimension: action_attribution_windows {
    description: "The attribution window for the actions."
    type: string
    sql: ${TABLE}.ActionAttributionWindows ;;
  }
  dimension: action_collection {
    hidden: no
    description: "Collection of actions"
    type: string
    sql: ${TABLE}.ActionCollection ;;
  }
  dimension: action_converted_product_id {
    description: ""
    type: string
    sql: ${TABLE}.ActionConvertedProductId ;;
  }
  dimension: action_dda {
    description: ""
    type: string
    sql: ${TABLE}.ActionDDA ;;
  }
  dimension: action_value {
    description: "The total value of an ad"
    type: number
    sql: ${TABLE}.ActionValue ;;
  }
  dimension: ad_account_id {
    group_label: "IDs"
    description: "The ID number of your ad account, which groups your advertising activity. Your ad account includes your campaigns, ads and billing."
    type: string
    sql: ${TABLE}.AdAccountId ;;
  }
  dimension: ad_account_name {
    description: "Name of your ad account"
    type: string
    sql: ${TABLE}.AdAccountName ;;
  }
  dimension: ad_effective_status {
    type: string
    sql: ${TABLE}.AdEffectiveStatus ;;
  }
  dimension: ad_id {
    group_label: "IDs"
    description: "The ID number of your ad"
    type: string
    sql: ${TABLE}.AdId ;;
  }
  dimension: ad_name {
    description: "Name of your ad"
    type: string
    sql: ${TABLE}.AdName ;;
  }
  dimension: ad_set_id {
    description: "The unique ID of the ad set you're viewing in reporting."
    type: string
    sql: ${TABLE}.AdSetId ;;
  }
  dimension: ad_set_name {
    description: "The name of the ad set you're viewing in reporting."
    type: string
    sql: ${TABLE}.AdSetName ;;
  }
  dimension: campaign_id {
    group_label: "IDs"
    description: "ID of the campaign"
    type: string
    sql: ${TABLE}.CampaignId ;;
  }
  dimension: campaign_name {
    description: "Name of the campaign"
    type: string
    sql: ${TABLE}.CampaignName ;;
  }
  dimension_group: date_end {
    description: "Date campaign ended"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateEnd ;;
  }
  dimension: date_preset {
    description: "Date Preset for campaigns"
    type: string
    sql: ${TABLE}.DatePreset ;;
  }
  dimension_group: date_start {
    description: "Date campaign started"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateStart ;;
  }
  dimension: level {
    description: "Level type of a campaign"
    type: string
    sql: ${TABLE}.Level ;;
  }
  dimension: target {
    description: "Specifies the group of people you want to see your ad and who are most likely to be interested in your business"
    type: string
    sql: ${TABLE}.Target ;;
  }
  dimension: time_increment {
    description: "Specifies time breakdowns to see how your ads perform at different times of the day"
    type: string
    sql: ${TABLE}.TimeIncrement ;;
  }
  dimension: use_async {
    description: "Indicates if users are able to create ads and send multiple ad requests without blocking"
    type: yesno
    sql: ${TABLE}.UseAsync ;;
  }

}

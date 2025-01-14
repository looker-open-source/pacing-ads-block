#####################################################################
# Purpose: Contains information about Ad insights from Facebook to use for
# Data Analysis. The Insights API can return several metrics which are estimated or in-development.
# In some cases a metric may be both estimated and in-development.
#####################################################################

view: ad_insights {

  fields_hidden_by_default: yes
  derived_table: {
    sql: SELECT *, GENERATE_UUID() as primary_key  FROM  `@{PROJECT_ID}.@{FADS_DATASET_NAME}.AdInsights` ;;
  }
######### PRIMARY KEY #########

  dimension: primary_key {
    primary_key: yes
    sql: ${TABLE}.primary_key;;
  }

  dimension: campaign_id {
    group_label: "IDs"
    description: "ID of the campaign"
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: ad_id {
    type: number
    group_label: "IDs"
    description: "The ID number of your ad"
    sql: ${TABLE}.AdId ;;
  }

  dimension: account_currency {
    type: string
    description: "Currency that is used by your ad account."
    sql: ${TABLE}.AccountCurrency ;;
  }

  dimension: action_attribution_windows {
    description: "The attribution window for the actions."
    type: string
    sql: ${TABLE}.ActionAttributionWindows ;;
  }

  dimension: ad_account_id {
    type: string
    group_label: "IDs"
    description: "The ID number of your ad account, which groups your advertising activity. Your ad account includes your campaigns, ads and billing."
    sql: ${TABLE}.AdAccountId ;;
  }
  dimension: ad_account_name {
    type: string
    description: "Name of your ad account"
    sql: ${TABLE}.AdAccountName ;;
  }
  dimension: ad_effective_status {
    description: "Status of the Ad: Paused, Active, Deleted"
    type: string
    sql: ${TABLE}.AdEffectiveStatus ;;
  }

  dimension: ad_name {
    type: string
    description: "Name of your ad"
    sql: ${TABLE}.AdName ;;
  }
  dimension: ad_set_id {
    description: "The unique ID of the ad set you're viewing in reporting."
    type: number
    group_label: "IDs"
    sql: ${TABLE}.AdSetId ;;
  }
  dimension: ad_set_name {
    description: "The name of the ad set you're viewing in reporting."
    type: string
    sql: ${TABLE}.AdSetName ;;
  }
  dimension: ad_source {
    description: "Dummy data, using just facebook at the moment"
    type: string
    sql: "Meta" ;;
  }
  dimension: buying_type {
    description: "The method by which you pay for and target ads in your campaigns: through dynamic auction bidding,
    fixed-price bidding, or reach and frequency buying."
    type: string
    sql: ${TABLE}.BuyingType ;;
  }

  dimension: campaign_name {
    description: "Name of the campaign"
    type: string
    sql: ${TABLE}.CampaignName ;;
  }
  dimension: checkins {
    description: "Number of visits to your page as a result of your ads."
    type: string
    sql: ${TABLE}.Checkins ;;
  }
  dimension: clicks {
    description: "The number of clicks on your ads."
    type: number
    sql: ${TABLE}.Clicks ;;
  }
  dimension: conversion_rate_ranking {
    description: "Calculates the likelihood that a person who viewed your ad will complete your optimization goal"
    type: string
    sql: ${TABLE}.ConversionRateRanking ;;
  }
  dimension: cost_per_estimated_ad_recallers {
    description: "The average cost for each individual who is estimated to recall your ad"
    type: string
    sql: ${TABLE}.CostPerEstimatedAdRecallers ;;
  }
  dimension: cost_per_inline_link_click {
    description: "The average cost of each inline link click"
    type: string
    sql: ${TABLE}.CostPerInlineLinkClick ;;
  }
  dimension: cost_per_inline_post_engagement {
    description: "The average cost of each inline post engagement"
    type: string
    sql: ${TABLE}.CostPerInlinePostEngagement ;;
  }
  dimension: cost_per_unique_click {
    description: "The average cost of each unique click"
    type: string
    sql: ${TABLE}.CostPerUniqueClick ;;
  }
  dimension: cost_per_unique_inline_link_click {
    description: "The average cost of each unique inline link click"
    type: string
    sql: ${TABLE}.CostPerUniqueInlineLinkClick ;;
  }
  dimension: cost_per_conversion {
    label: "CPC"
    description: "Cost Per Conversion"
    type: number
    sql: ${TABLE}.CPC ;;
  }
  dimension: cost_per_mile {
    label: "Cost Per Mile"
    type: number
    sql: ${TABLE}.CPM ;;
  }
  dimension: cost_per_point {
    label: "CPP"
    description: "Cost per Point"
    type: number
    sql: ${TABLE}.CPP ;;
  }
  dimension: click_through_rate{
    label: "CTR"
    description: "Click Through Rate"
    type: number
    sql: ${TABLE}.CTR ;;
  }
  dimension_group: date_end {
    type: time
    description: "Date campaign ended"
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
    type: time
    description: "Date campaign started"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateStart ;;
  }
  dimension: default_summary {
    description: "Determine wheter to return a summary"
    type: string
    sql: ${TABLE}.DefaultSummary ;;
  }
  dimension: estimated_ad_recall_rate {
    description: "The rate at which an estimated number of additional people, when asked, would remember seeing your ads within 2 days"
    type: string
    sql: ${TABLE}.EstimatedAdRecallRate ;;
  }
  dimension: estimated_ad_recallers {
    description: "An estimate of the number of additional people who may remember seeing your ads, if asked, within 2 days"
    type: number
    sql: ${TABLE}.EstimatedAdRecallers ;;
  }
  dimension: event_responses {
    type: string
    description: "Response number per event"
    sql: ${TABLE}.EventResponses ;;
  }
  dimension: frequency {
    type: number
    description: "Number of times the same ad is shown to a single user over a period of time"
    sql: ${TABLE}.Frequency ;;
  }
  dimension: impressions {
    type: number
    description: "Number of times an ad is displayed within an app"
    sql: ${TABLE}.Impressions ;;
  }
  dimension: inline_link_clicks {
    type: string
    description: "Number of clicks on links to select destinations or experiences"
    sql: ${TABLE}.InlineLinkClicks ;;
  }
  dimension: inline_link_clicks_counter {
    type: string
    description: "Counter of clicks on links to select destinations or experiences"
    sql: ${TABLE}.InlineLinkClicksCounter ;;
  }
  dimension: inline_post_engagement {
    type: string
    description: "Measure how many times users have engaged with your post through likes, shares, comments, link clicks, and other forms of engagement."
    sql: ${TABLE}.InlinePostEngagement ;;
  }
  dimension: instant_experience_clicks_to_open {
    description: "The number of clicks on your ad that open an Instant Experience."
    type: number
    sql: ${TABLE}.InstantExperienceClicksToOpen ;;
  }
  dimension: instant_experience_clicks_to_start {
    description: "The number of times an interactive component in an Instant Experience starts"
    type: number
    sql: ${TABLE}.InstantExperienceClicksToStart ;;
  }
  dimension: instant_experience_outbound_clicks {
    description: "The number of clicks on links in an Instant Experience that take people off Facebook-owned properties"
    type: string
    sql: ${TABLE}.InstantExperienceOutboundClicks ;;
  }
  dimension: level {
    type: string
    description: "Level type of a campaign"
    sql: ${TABLE}.Level ;;
  }
  dimension: link_clicks {
    sql: CAST(${TABLE}.LinkClicks AS NUMERIC) ;;
  }

  dimension: objective {
    description: "The objective reflecting the goal you want to achieve with your advertising"
    type: string
    sql: ${TABLE}.Objective ;;
  }

  dimension: offer_saves {
    description: "The number of people who saved your offer."
    type: string
    sql: ${TABLE}.OfferSaves ;;
  }
  dimension: outbound_clicks {
    description: "The number of clicks on links that take people off Facebook-owned properties."
    type: string
    sql: ${TABLE}.OutboundClicks ;;
  }
  dimension: page_engagements {
    description: "The number of actions taken on your Facebook Page, Instagram profile or any of your content, attributed to your ads."
    type: string
    sql: ${TABLE}.PageEngagements ;;
  }
  dimension: page_likes {
    description: "The number of likes of your Facebook Page attributed to your ads."
    type: string
    sql: ${TABLE}.PageLikes ;;
  }
  dimension: page_mentions {
    description: "The number of mentios of your Facebook Page attributed to your ads."
    type: string
    sql: ${TABLE}.PageMentions ;;
  }
  dimension: page_photo_views {
    description: "The number of times people click to view photos on a Facebook page or post that are attributed to ads."
    type: string
    sql: ${TABLE}.PagePhotoViews ;;
  }
  dimension: page_tab_views {
    description: "Measures the number of times a page's tabs are viewed as a result of ads"
    type: string
    sql: ${TABLE}.PageTabViews ;;
  }
  dimension: post_comments {
    description: "Counts all comments attributed to your ads, including ones that were deleted"
    type: string
    sql: ${TABLE}.PostComments ;;
  }
  dimension: post_engagements {
    description: "This metric lets you measure interactions with posts on your Facebook page and Instagram profile, and compare them to engagement with other ads or campaigns"
    type: string
    sql: ${TABLE}.PostEngagements ;;
  }
  dimension: post_reactions {
    description: "Counts the total number of times people react to a Facebook ad by clicking on an emoji to indicate their feelings"
    type: string
    sql: ${TABLE}.PostReactions ;;
  }
  dimension: post_shares {
    description: "Counts the number of times a Facebook ad is shared on Facebook"
    type: string
    sql: ${TABLE}.PostShares ;;
  }
  dimension: quality_ranking {
    description: "Explains how your ad's perceived quality compared to ads competing for the same audience."
    type: string
    sql: ${TABLE}.QualityRanking ;;
  }
  dimension: reach {
    description: "The number of Accounts Center accounts that saw your ads at least once"
    type: number
    sql: ${TABLE}.Reach ;;
  }
  dimension: region {
    description: "Shows where people were when they saw your ad"
    type: string
    sql: ${TABLE}.Region ;;
  }
  dimension: spend {
    description: "The total amount of money spent on an ad campaign, ad set, or ad within a specific time period"
    type: number
    sql: ${TABLE}.Spend ;;
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
  dimension: unique_clicks {
    description: "Represents the number of individual users who have clicked on your ad at least once"
    type: number
    sql: ${TABLE}.UniqueClicks ;;
  }
  dimension: unique_ctr {
    description: "Estimates the percentage of people who viewed an ad and clicked on a link"
    type: string
    sql: ${TABLE}.UniqueCTR ;;
  }
  dimension: unique_inline_link_click_counter {
    description: "Count of the number of users who clicked on links in an ad's content"
    type: string
    sql: ${TABLE}.UniqueInlineLinkClickCounter ;;
  }
  dimension: unique_inline_link_clicks {
    description: "The number of users who clicked on links in the ad's content"
    type: string
    sql: ${TABLE}.UniqueInlineLinkClicks ;;
  }
  dimension: unique_link_clicks_counter {
    description: "An estimated count of how many people clicked on a link in an ad"
    type: string
    sql: ${TABLE}.UniqueLinkClicksCounter ;;
  }
  dimension: does_use_async {
    description: "Indicates if users are able to create ads and send multiple ad requests without blocking"
    type: yesno
    sql: ${TABLE}.UseAsync ;;
  }
  dimension: video3_second_views {
    description: "Count the number of times a video plays for at least three seconds"
    type: string
    sql: ${TABLE}.Video3SecondViews ;;
  }


}

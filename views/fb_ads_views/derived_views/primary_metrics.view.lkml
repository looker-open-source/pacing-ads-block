include: "/views/fb_ads_views/base_views/ad_insights.view.lkml"
include: "/views/fb_ads_views/base_views/ad_insights_actions.view.lkml"
view: +ad_insights {

  dimension: primary_key {hidden: no}
  dimension: campaign_id {hidden: no}
  dimension: ad_id {hidden: no}
  dimension: ad_account_id {hidden: no}
  dimension: ad_account_name {hidden: no}
  dimension: ad_name {hidden: no}
  dimension: campaign_name {hidden: no}
  dimension: clicks {hidden: no}
  dimension: conversion_rate_ranking {hidden: no}
  dimension: cost_per_unique_click {hidden: no}
  dimension: cost_per_conversion {hidden: no}
  dimension: cost_per_mille {hidden: no}
  dimension: cost_per_point {hidden: no}
  dimension: click_through_rate{hidden: no}
  dimension_group: date_start {hidden: no}
  dimension_group: date_end {hidden: no}
  dimension: frequency {hidden: no}
  dimension: impressions {hidden: no}
  dimension: level {hidden: no}
  dimension: reach {hidden: no}
  dimension: region {hidden: no}
  dimension: spend {hidden: no}
  dimension: target {hidden: no}
  dimension: ad_source {hidden:no}
  measure: count {
    hidden: no
    description: "Count of records"
    type: count
  }

}

view: +ad_insights_actions {
  dimension: action_attribution_windows {hidden:no}
  dimension: action_converted_product_id {hidden:no}
}

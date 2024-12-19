#####################################################################
# Purpose: Joins all Ads Sources from Data Transfer Service.
#####################################################################

include: "/views/google_ads_views/derived_views/dt_google_ads.view.lkml"
include: "/views/fb_ads_views/derived_views/dt_fb_ads.view.lkml"

view: multisource_ads {

  derived_table: {
    sql:
  , blank_query AS (SELECT "" as primary_key,
  CAST("2023-10-14T22:11:20+0000"  AS TIMESTAMP) AS partition_date_date,
  "" AS ad_account_id,
  "" AS ad_account_name,
  "" AS campaign_id,
  "" AS campaign_name,
  "" AS ad_set_id,
  "" AS ad_set_name,
  "" AS ad_source,
  "" AS ad_id,
  "" AS ad_name,
  0 AS total_spent,
  0 AS total_impressions,
  0 AS total_clicks,
  0 AS total_revenue,
  0 AS total_conversions)

  SELECT * FROM blank_query WHERE false
      UNION ALL
  SELECT GENERATE_UUID() AS primary_key, * FROM ${dt_fb_ads.SQL_TABLE_NAME} WHERE "@{FADS_DATASET_NAME}" != ""
      UNION ALL
  SELECT  GENERATE_UUID() AS primary_key,  * FROM ${dt_google_ads.SQL_TABLE_NAME} WHERE "@{GADS_DATASET_NAME}" != "" ;;

datagroup_trigger: daily
  }
drill_fields: [details*]
dimension: primary_key {
  hidden: yes
  primary_key: yes
}

  dimension: partition_date_date {
    label: "Date"
    type: date
    description: "Date"
  }

  dimension: ad_account_id {
    group_label: "ID's"
    description: "The ID number of your ad account, which groups your advertising activity. Your ad account includes your campaigns, ads and billing."
  }
  dimension: ad_account_name {
    description: "Name of your ad account"
  }
  dimension: campaign_id {
    group_label: "ID's"
    description: "ID of the campaign"
    type: number
  }
  dimension: campaign_name {
    description: "Name of the campaign"
    link: {
      label: "Campaign Metrics Explore"
      url: "/explore/pacing_block/multisource_ads?fields=multisource_ads.ad_set_name,multisource_ads.revenue, multisource_ads.spend&f[multisource_ads.campaign_name]={{ value }}&sorts=multisource_ads.revenue+desc&limit=500"
    }
    drill_fields: [ad_set_id,ad_set_name,ad_name]
  }
  dimension: ad_set_id {
    group_label: "ID's"
    description: "The unique ID of the ad set you're viewing in reporting."
    type: number
  }
  dimension: ad_set_name {
    description: "The name of the ad set you're viewing in reporting."
  }
  dimension: ad_source {
    description: "Ads Source Name"
    link: {
      label: "Ad Source Metrics Explore"
      url: "/explore/pacing_block/multisource_ads?fields=multisource_ads.campaign_name,multisource_ads.ad_set_name, multisource_ads.revenue, multisource_ads.spend&f[multisource_ads.ad_source]={{ value }}&sorts=multisource_ads.revenue+desc&limit=500"
    }
    drill_fields: [campaign_id,campaign_name,]
  }
  dimension: ad_id {
    group_label: "ID's"
    description: "The ID number of your ad"
    type: number
  }
  dimension: ad_name {
    description: "Name of your ad"
  }
  dimension: total_spent {
    hidden: yes
    description: "Spend"
    value_format: "$#,##0.00"
    type: number
  }
  dimension: total_impressions {
    hidden: yes
    label: "Number of Impressions"
    description: "Number of Impressions"
    type: number
  }
  dimension: total_clicks {
    hidden: yes
    description: "Number of Clicks"
    type: number
  }
  dimension: total_revenue {
    hidden: yes
    description: "Revenue"
    value_format: "$#,##0.00"
    type: number
  }
  dimension: total_conversions {
    hidden: yes
    description: "Revenue"
    type: number
  }

# ------ Parameters -----
  parameter: set_clicks_goal {
    hidden: no
    type: number
    description: "Field used to add goal variable"
    default_value: ""
  }

  parameter: set_impressions_goal {
    hidden: no
    type: number
    description: "Field used to add impressions variable"
    default_value: ""
  }
  parameter: set_conversions_goal {
    hidden: no
    type: number
    description: "Field used to add impressions variable"
    default_value: ""
  }

  parameter: set_cost_goal {
    hidden: no
    type: number
    description: "Field used to add cost variable"
    default_value: ""
  }

  parameter: KPI_select {
    hidden: no
    label: "Campaign Performance Metric"
    type: unquoted
    description: "Field used in order to select which KPI you would like to visualize using KPI measure"
    allowed_value: {
      label: "Impressions"
      value: "total_impressions"
    }
    allowed_value: {
      label: "Clicks"
      value: "total_clicks"
    }
    allowed_value: {
      label: "CTR"
      value: "CTR"
    }
    allowed_value: {
      label: "Conversions"
      value: "total_conversions"
    }
    allowed_value: {
      label: "Cost per Conversion"
      value: "CPC"
    }
    allowed_value: {
      label: "Conversion Rate"
      value: "conversion_rate"
    }
    allowed_value: {
      label: "Spend"
      value: "total_spent"
    }
    allowed_value: {
      label: "Product Revenue"
      value: "total_revenue"
    }
  }

# ------ Measures -----
  measure: spend {
    description: "Total Spent "
    type: sum
    sql: ${total_spent} ;;
    value_format: "[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
    drill_fields: [ad_source,campaign_name, ad_set_name, ad_name,spend,CPM,CPC,roas]
    link: {
      label: "Explore Top 20 Results"
      url: "{{ link }}&limit=20"
    }
  }
  measure: impressions {
    description: "Total number of Impressions"
    type: sum
    sql: ${total_impressions} ;;
    drill_fields: [ad_source,campaign_name, ad_set_name, ad_name,impressions,CTR,conversion_rate,CTR,CPM]
    link: {
      label: "Explore Top 20 Results"
      url: "{{ link }}&limit=20"
    }
  }
  measure: clicks {
    description: "Total Number of Clicks"
    type: sum
    sql: ${total_clicks} ;;
    drill_fields: [campaign_name, ad_set_name, ad_name,clicks,CPC,CTR]
    link: {
      label: "Explore Top 20 Results"
      url: "{{ link }}&limit=20"
    }
  }
  measure: revenue {
    description: "Total Revenue"
    type: sum
    sql: ${total_revenue} ;;
    value_format: "$#,##0.00"
    drill_fields: [ad_source,campaign_name, ad_account_name, ad_name, ad_source, revenue,roas]
    link: {
      label: "Explore Top 20 Results"
      url: "{{ link }}&limit=20"
    }
  }
  measure: conversions {
    description: "Total Conversions"
    type: sum
    sql: ${total_conversions} ;;
    value_format: "#,##0"
    drill_fields: [ad_source,campaign_name, ad_set_name, ad_name,conversions,CPA]
    link: {
      label: "Explore Top 20 Results"
      url: "{{ link }}&limit=20"
    }

  }
  measure: CTR {
    description: "Click-through rate value"
    type: number
    sql: (${clicks}/${impressions}) ;;
    value_format: "#0.00%"

  }
  measure: CPM {
    description: "Cost per Mille"
    type: number
    sql: (${spend}/${impressions})*1000;;
    value_format: "#0.00"
  }
  measure: CPC {
    description: "Cost Per Conversion"
    type: number
    sql: ${spend}/${clicks} ;;
    value_format: "#0.00"
    hidden: no
  }
  measure: roas {
    description: "Return on ad Spend"
    type: number
    sql: (${revenue}/${spend})*100 ;;
    hidden: no
  }

  measure: conversion_rate {
    description: "conversion rate"
    type: number
    sql: (${conversions}/${impressions}) ;;
    value_format: "#0.00%"
    hidden: no
  }
  measure: CPA {
    description: "Cost per Acquisition"
    type: number
    sql: ${spend}/${conversions} ;;
    value_format: "$#,##0.00"
  }
  measure: campaign_performance_metric {
    type: number
    description: "It displays the selected Campaign Performance Metric"
    hidden: no
    label_from_parameter: KPI_select
    sql:
    {% if KPI_select._parameter_value == 'total_impressions' %}
      ${impressions}
    {% elsif KPI_select._parameter_value == 'total_clicks' %}
      ${clicks}
    {% elsif KPI_select._parameter_value == 'CTR' %}
      ${CTR}
    {% elsif KPI_select._parameter_value == 'total_conversions' %}
       ${conversions}
    {% elsif KPI_select._parameter_value == 'CPC' %}
      ${CPC}
    {% elsif KPI_select._parameter_value == 'total_spent' %}
      ${spend}
    {% elsif KPI_select._parameter_value == 'total_revenue' %}
      ${revenue}
    {% else %}
      0
      {% endif %} ;;
  }

  # --- Goals ---
  measure: conversions_goal{
    description: "Field used to set conversions goal"
    hidden: no
    type: number
    sql: {% parameter set_conversions_goal %} ;;
  }
  measure: clicks_goal {
    description: "Field used to set clicks goal"
    hidden: no
    type: number
    sql: {% parameter set_clicks_goal %} ;;

  }
  measure: impressions_goal{
    description: "Field used to set impressions goal"
    hidden: no
    type: number
    sql: {% parameter set_impressions_goal %} ;;
  }
  measure: cost_goal {
    description: "Field used to set impressions"
    hidden: no
    type: number
    sql: {% parameter set_cost_goal %};;
  }
  measure: count {
    description: "Count of records"
    type: count
  }
  set: details {
    fields: [
      campaign_name,
      ad_set_name,
      ad_name,
      ad_source,
      ad_account_name,
      count
    ]
  }

}

include: "/views/fb_ads_views/base_views/ad_insights.view.lkml"
include: "/views/fb_ads_views/base_views/ad_accounts.view.lkml"
include: "/views/fb_ads_views/base_views/ad_insights_actions.view.lkml"

view: +ad_insights {

  # ------ Dimension Groups -----

  dimension_group: partition_date {
    label: "Date"
    hidden: no
    type: time
    timeframes: [
      raw,
      time,
      hour_of_day,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      month,
      month_name,
      month_num,
      quarter,
      year]
    sql: ${TABLE}.__Partitiondate ;;
    convert_tz: no
    datatype: date
  }

  # ------ Measures-----

  measure: total_spent {
    description: "Total Spend calculation"
    type: sum
    sql: ${spend} ;;
    value_format_name: usd
    hidden: no
  }

  measure: total_impressions{
    drill_fields: [conversions_detail*]
    description: "Number of Total impressions"
    type: sum
    sql: ${impressions} ;;
    hidden: no
  }

  measure: total_clicks {
    drill_fields: [clicks_detail*]
    description: "Number of Total Clicks"
    type: sum
    sql: ${clicks} ;;
    hidden: no
  }

  measure: CTR {
    description: "Click-through rate value"
    type: number
    sql: (${total_clicks}/${total_impressions}) ;;
    value_format: "#0.00%"
    hidden: no
  }
  measure: CPM {
    description: "Cost per Mille"
    type: number
    sql: (${total_spent}/${total_impressions})*1000;;
    value_format: "#0.00"
    hidden: no
  }
  measure: CPC {
    description: "Cost Per Conversion"
    type: number
    sql: ${total_spent}/${total_clicks} ;;
    value_format: "#0.00"
    hidden: no
  }

  measure: average_ctr {
    hidden: yes
    type: average
    sql: ${click_through_rate} ;;
  }

  measure: total_link_clicks {
    type: sum
    sql: ${link_clicks} ;;
  }
  measure: conversion_rate {
    hidden: no
    type: number
    sql: (${ad_insights_actions.total_conversions}/${total_link_clicks})*100 ;;
    value_format: "#0.00%"
  }
  measure: clicks_goal {
    hidden: no
    type: number
    sql: {% parameter set_clicks_goal %} ;;

  }
  measure: impressions_goal{
    hidden: no
    type: number
    sql: {% parameter set_impressions_goal %} ;;
  }
  measure: cost_goal {
    hidden: no
    type: number
    sql: {% parameter set_cost_goal %};;
  }
  measure: KPI {
    type: number
    hidden: no
    label_from_parameter: KPI_select
    sql:
    {% if KPI_select._parameter_value == 'total_impressions' %}
      ${total_impressions}
    {% elsif KPI_select._parameter_value == 'total_clicks' %}
      ${total_clicks}
    {% elsif KPI_select._parameter_value == 'CTR' %}
      ${CTR}
    {% elsif KPI_select._parameter_value == 'total_conversions' %}
       ${ad_insights_actions.total_conversions}
    {% elsif KPI_select._parameter_value == 'CPC' %}
      ${CPC}
    {% elsif KPI_select._parameter_value == 'conversion_rate' %}
      ${conversion_rate}
    {% elsif KPI_select._parameter_value == 'total_spent' %}
      ${total_spent}
    {% elsif KPI_select._parameter_value == 'total_revenue' %}
      ${ad_insights_actions.total_revenue}
    {% else %}
      0
      {% endif %} ;;
  }

  measure: conversions_goal{
    hidden: no
    type: number
    sql: {% parameter set_conversions_goal %} ;;
  }
  measure: roas {
    hidden: no
    type: number
    sql: ${ad_insights_actions.total_revenue}/${total_spent} ;;
    value_format: "#0.00%"
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

  # ------ Sets -----

  set: clicks_detail {
    fields: [campaign_name, total_clicks, CTR ,ad_insights_actions.total_conversions]
  }

  set: impressions_detail {
    fields: [campaign_name, total_impressions, total_spent, ad_insights_actions.total_conversions]
  }
  set: conversions_detail {
    fields: [campaign_name, CPC , conversion_rate, ad_insights_actions.total_revenue]
  }
  set: revenue_detail {
    fields: [campaign_name, total_spent]
  }

}

view: +ad_accounts {

  # ------ Measures-----

  measure: count {
    description: "Count of records"
    type: count
  }


  measure: total_amount_spent {
    description: "Calculate the total amount spent"
    type: sum_distinct
    sql: ${amount_spent} ;;
    sql_distinct_key: ${account_id};;
    value_format_name: usd
  }

  measure: total_spend_cap {
    description: "Calculates the total spent capital"
    type: sum
    sql: ${spend_cap} ;;
  }

}

view: +ad_insights_actions {

  dimension_group: partition_date {
    label: "Date"
    hidden: no
    type: time
    timeframes: [
      raw,
      time,
      hour_of_day,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      month,
      month_name,
      month_num,
      quarter,
      year]
    sql: ${TABLE}.__Partitiondate ;;
    convert_tz: no
    datatype: date
  }

  measure: total_conversions {
    drill_fields: [ad_insights.conversions_detail*]
    hidden: no
    type: count
    #sql: ${action_converted_product_id} ;;
  }

  measure: total_revenue {
    drill_fields: [ad_insights.revenue_detail*]
    hidden: no
    type: sum_distinct
    sql: ${action_value};;
    value_format_name: usd
  }


}

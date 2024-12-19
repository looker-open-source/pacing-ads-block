#####################################################################
# Purpose: Contains the Facebook Ads  Explores joined by relevant views and fields.
#####################################################################

include: "/views/fb_ads_views/base_views/*.view.lkml"
include: "/views/fb_ads_views/derived_views/*.view.lkml"

explore: ad_insights {
  description: "Ad Insights Metrics explore includes fields from Ad Insights and Ad Insights Actions"
  label: "Ad Insights Metrics"
  hidden: no
  join: ad_insights_actions {
    type: inner
    relationship: one_to_many
    sql_on: ${ad_insights.ad_account_id} = ${ad_insights_actions.ad_account_id} AND
          ${ad_insights.ad_id} = ${ad_insights_actions.ad_id} AND
          ${ad_insights.ad_set_id} = ${ad_insights_actions.ad_set_id} AND
              ${ad_insights.campaign_id} = ${ad_insights_actions.campaign_id} AND ${ad_insights.date_start_date} = ${ad_insights_actions.date_start_date} AND
                ${ad_insights.partition_date_date} = ${ad_insights_actions.partition_date_date}

          ;;
  }
}

explore: ad_accounts {hidden:yes}

explore: ad_insights_actions {hidden: yes}

explore: dt_fb_ads {hidden:yes}

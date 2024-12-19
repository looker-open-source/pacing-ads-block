#####################################################################
# Purpose: Contains the Google Ads Explore joined by relevant views and fields.
#####################################################################


include: "/views/google_ads_views/base_views/*.view.lkml"
include: "/views/google_ads_views/derived_views/*.view.lkml"

explore: GAds {
  from: google_ads_stats
  label: "Google Ads"
  join: google_ads_customer {
    sql_on: ${google_ads_customer.customer_id} = ${GAds.customer_id} ;;
    type: inner
    relationship: many_to_one
  }

  join: google_ads_campaign {
    sql_on: ${google_ads_campaign.campaign_id} = ${GAds.campaign_id} ;;
    type: inner
    relationship:  many_to_one
  }

  join: google_ads_group {
    sql_on: ${google_ads_group.ad_group_id} = ${GAds.ad_group_id} ;;
    type: inner
    relationship: many_to_one
  }

  join: google_ads_ad {
    sql_on: ${google_ads_ad.ad_group_ad_ad_id} = ${GAds.ad_group_ad_ad_id} ;;
    type: inner
    relationship: many_to_one
  }
}

explore: CampaignBasicStats {
  hidden: yes
  from: google_ads_campaign_basic_stats
  label: "Google Ads Campaigns Stats"
  join: google_ads_campaign {
    sql_on: ${CampaignBasicStats.campaign_id} = ${google_ads_campaign.campaign_id} ;;
    type: inner
    relationship: many_to_one
  }
}

explore: dt_google_ads {hidden:yes}

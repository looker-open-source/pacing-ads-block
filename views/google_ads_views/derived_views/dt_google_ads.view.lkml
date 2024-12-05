# If necessary, uncomment the line below to include explore_source.
#include: "/explores/google_ads.explore.lkml"

view: dt_google_ads {
  derived_table: {
  sql:
    {% if "@{GADS_DATASET_NAME}" != "" %}
  SELECT
    (TIMESTAMP(GAds.segments_date )) AS ad_date,
    CAST(GAds.customer_id AS STRING)  AS customer_id,
    google_ads_customer.customer_descriptive_name  AS customer_descriptive_name,
    CAST(GAds.campaign_id AS STRING)  AS campaign_id,
    google_ads_campaign.campaign_name  AS campaign_name,
    CAST(GAds.ad_group_id AS STRING)  AS ad_group_id,
    google_ads_group.ad_group_name  AS ad_group_name,
    CONCAT("GAds - ", GAds.segments_ad_network_type)  AS ads_source,
    CAST(GAds.ad_group_ad_ad_id AS STRING) AS ad_group_ad_ad_id,
    google_ads_ad.ad_group_ad_ad_name  AS ad_group_ad_ad_name,
    COALESCE(SUM(GAds.metrics_cost_micros ), 0) AS spend,
    COALESCE(SUM(GAds.metrics_impressions ), 0) AS impressions,
    COALESCE(SUM(GAds.metrics_clicks ), 0) AS clicks,
    COALESCE(SUM(GAds.metrics_conversions_value ), 0) AS revenue,
    COALESCE(SUM(GAds.metrics_conversions),0) AS conversions
      FROM `@{PROJECT_ID}.@{GADS_DATASET_NAME}.ads_AdStats_@{GADS_CUSTOMER_ID}`  AS GAds
      INNER JOIN `@{PROJECT_ID}.@{GADS_DATASET_NAME}.ads_Customer_@{GADS_CUSTOMER_ID}`  AS google_ads_customer ON (CAST(google_ads_customer.customer_id AS STRING)) = (CAST(GAds.customer_id AS STRING))
      INNER JOIN `@{PROJECT_ID}.@{GADS_DATASET_NAME}.ads_Campaign_@{GADS_CUSTOMER_ID}`  AS google_ads_campaign ON (CAST(google_ads_campaign.campaign_id AS STRING)) = (CAST(GAds.campaign_id AS STRING))
      INNER JOIN `@{PROJECT_ID}.@{GADS_DATASET_NAME}.ads_AdGroup_@{GADS_CUSTOMER_ID}`  AS google_ads_group ON (CAST(google_ads_group.ad_group_id AS STRING)) = (CAST(GAds.ad_group_id AS STRING))
      INNER JOIN `@{PROJECT_ID}.@{GADS_DATASET_NAME}.ads_Ad_@{GADS_CUSTOMER_ID}`  AS google_ads_ad ON (CAST(google_ads_ad.ad_group_ad_ad_id AS STRING)) = (CAST(GAds.ad_group_ad_ad_id AS STRING))

      GROUP BY
          1,
          2,
          3,
          4,
          5,
          6,
          7,
          8,
          9,
          10

    {% else %}

    SELECT CAST("2023-10-14T22:11:20+0000"  AS TIMESTAMP),"","","","","","","","","",0,0,0,0,0

    {% endif %}
    ;;
  }
  dimension: _data_date {
    description: ""
  }
  dimension: customer_id {
    description: ""
    type: number
  }
  dimension: customer_descriptive_name {
    description: ""
  }
  dimension: campaign_id {
    description: ""
    type: number
  }
  dimension: campaign_name {
    description: ""
  }
  dimension: ad_group_id {
    description: ""
    type: number
  }
  dimension: ad_group_name {
    description: ""
  }
  dimension: ads_source {
    description: ""
  }
  dimension: spend {
    description: ""
    type: number
  }
  dimension: impressions {
    description: ""
    type: number
  }
  dimension: clicks {
    description: ""
    type: number
  }
  dimension: revenue {
    description: ""
    type: number
  }
  dimension: conversions {
    description: ""
    type: number
  }
  dimension: ad_group_ad_ad_id {
    description: ""
    type: number
  }
  dimension: ad_group_ad_ad_name {
    description: ""
  }

}

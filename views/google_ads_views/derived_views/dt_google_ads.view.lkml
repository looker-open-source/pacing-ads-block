# If necessary, uncomment the line below to include explore_source.
#include: "/explores/google_ads.explore.lkml"
include: "/views/google_ads_views/base_views/**.*view"
view: dt_google_ads {
  derived_table: {
  sql:
    {% if "@{GADS_DATASET_NAME}" != "" %}
    SELECT
        CAST(GAds._data_date AS TIMESTAMP) AS ad_date,
        CAST(google_ads_customer.customer_id AS STRING)  AS customer_id,
        google_ads_customer.customer_descriptive_name  AS customer_descriptive_name,
        CAST(google_ads_campaign.campaign_id AS STRING)  AS campaign_id,
        google_ads_campaign.campaign_name  AS campaign_name,
        CAST(google_ads_group.ad_group_id AS STRING) AS ad_group_id,
        google_ads_group.ad_group_name  AS ad_group_name,
        CONCAT("GAds - ", GAds.segments_ad_network_type)  AS ads_source,
        CAST(google_ads_ad.ad_group_ad_ad_id AS STRING) AS ad_group_ad_ad_id,
        -- google_ads_group.ad_group_status  AS google_ads_group_ad_group_status,
        -- google_ads_group.ad_group_type  AS google_ads_group_ad_group_type,
        -- google_ads_ad.ad_group_ad_ad_type  AS google_ads_ad_ad_group_ad_ad_type,
        -- google_ads_ad.ad_group_ad_status  AS google_ads_ad_ad_group_ad_status,
        google_ads_ad.ad_group_ad_ad_name  AS ad_group_ad_ad_name,
        COALESCE(SUM(GAds.metrics_cost_micros ), 0) AS spend,
        COALESCE(SUM(GAds.metrics_impressions ), 0) AS impressions,
        COALESCE(SUM(GAds.metrics_clicks ), 0) AS clicks,
        COALESCE(SUM(GAds.metrics_conversions_value ), 0) AS revenue,
        COALESCE(SUM(GAds.metrics_conversions ), 0) AS conversions
    FROM ${google_ads_stats.SQL_TABLE_NAME}  AS GAds
    INNER JOIN ${google_ads_customer.SQL_TABLE_NAME}  AS google_ads_customer ON (CAST(google_ads_customer.customer_id AS STRING)) = (CAST(GAds.customer_id AS STRING))
    INNER JOIN ${google_ads_campaign.SQL_TABLE_NAME} AS google_ads_campaign ON (CAST(google_ads_campaign.campaign_id AS STRING)) = (CAST(GAds.campaign_id AS STRING))
    INNER JOIN ${google_ads_group.SQL_TABLE_NAME}  AS google_ads_group ON (CAST(google_ads_group.ad_group_id AS STRING)) = (CAST(GAds.ad_group_id AS STRING))
    INNER JOIN ${google_ads_ad.SQL_TABLE_NAME}  AS google_ads_ad ON (CAST(google_ads_ad.ad_group_ad_ad_id AS STRING)) = (CAST(GAds.ad_group_ad_ad_id AS STRING))
    WHERE (google_ads_campaign.campaign_status ) = 'ENABLED' AND (google_ads_customer._DATA_DATE = google_ads_customer._LATEST_DATE  AND google_ads_campaign._DATA_DATE = google_ads_campaign._LATEST_DATE  AND google_ads_group._DATA_DATE = google_ads_group._LATEST_DATE  AND google_ads_ad._DATA_DATE = google_ads_ad._LATEST_DATE ) AND (GAds.segments_ad_network_type NOT IN ('UNKNOWN','UNSPECIFIED') )
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
  dimension: ad_date {
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

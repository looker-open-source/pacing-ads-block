# If necessary, uncomment the line below to include explore_source.
include: "/explores/fb_ads.explore.lkml"

view: dt_fb_ads {
  derived_table: {
sql:
 {% if "@{FADS_DATASET_NAME}" != "" %}
    WITH ad_insights AS (SELECT *, GENERATE_UUID() as primary_key  FROM  `looker-marketplace.@{FADS_DATASET_NAME}.AdInsights` )
      ,  ad_insights_actions AS (SELECT *, GENERATE_UUID() as primary_key  FROM  `looker-marketplace.@{FADS_DATASET_NAME}.AdInsightsActions` )
    SELECT
        (TIMESTAMP(ad_insights.__Partitiondate )) AS partition_date_date,
        ad_insights.AdAccountId  AS ad_account_id,
        ad_insights.AdAccountName  AS ad_account_name,
        ad_insights.CampaignId  AS campaign_id,
        ad_insights.CampaignName  AS campaign_name,
        ad_insights.AdSetId  AS ad_set_id,
        ad_insights.AdSetName  AS ad_set_name,
        "Meta"  AS ad_source,
        ad_insights.AdId  AS ad_id,
        ad_insights.AdName  AS ad_name,
        ROUND(COALESCE(CAST( ( SUM(DISTINCT (CAST(ROUND(COALESCE( ad_insights.Spend  ,0)*(1/1000*1.0), 9) AS NUMERIC) + (cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001 )) - SUM(DISTINCT (cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001) )  / (1/1000*1.0) AS NUMERIC), 0), 6) AS total_spent,
        ROUND(COALESCE(CAST( ( SUM(DISTINCT (CAST(ROUND(COALESCE( ad_insights.Impressions  ,0)*(1/1000*1.0), 9) AS NUMERIC) + (cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001 )) - SUM(DISTINCT (cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001) )  / (1/1000*1.0) AS NUMERIC), 0), 6) AS total_impressions,
        ROUND(COALESCE(CAST( ( SUM(DISTINCT (CAST(ROUND(COALESCE( ad_insights.Clicks  ,0)*(1/1000*1.0), 9) AS NUMERIC) + (cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001 )) - SUM(DISTINCT (cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights.primary_key  AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001) )  / (1/1000*1.0) AS NUMERIC), 0), 6) AS total_clicks,
        ROUND(COALESCE(CAST( ( SUM(DISTINCT (CAST(ROUND(COALESCE( ad_insights_actions.ActionValue  ,0)*(1/1000*1.0), 9) AS NUMERIC) + (cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights_actions.primary_key   AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights_actions.primary_key   AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001 )) - SUM(DISTINCT (cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights_actions.primary_key   AS STRING))), 1, 15)) as int64) as numeric) * 4294967296 + cast(cast(concat('0x', substr(to_hex(md5(CAST( ad_insights_actions.primary_key   AS STRING))), 16, 8)) as int64) as numeric)) * 0.000000001) )  / (1/1000*1.0) AS NUMERIC), 0), 6) AS total_revenue,
        COUNT(ad_insights_actions.primary_key ) AS ad_insights_actions_total_conversions
    FROM ad_insights
    INNER JOIN ad_insights_actions ON ad_insights.AdAccountId = ad_insights_actions.AdAccountId AND
              ad_insights.AdId = ad_insights_actions.AdId AND
              ad_insights.AdSetId = ad_insights_actions.AdSetId AND
                  ad_insights.CampaignId = ad_insights_actions.CampaignId AND ad_insights.DateStart = ad_insights_actions.DateStart AND
                    ad_insights.__Partitiondate = ad_insights_actions.__Partitiondate


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
    datagroup_trigger: daily
  }
  dimension: partition_date_date {
    description: "Partitioned date"
  }
  dimension: ad_account_id {
    description: "The ID number of your ad account, which groups your advertising activity. Your ad account includes your campaigns, ads and billing."
  }
  dimension: ad_account_name {
    description: "Name of your ad account"
  }
  dimension: campaign_id {
    description: "ID of the campaign"
    type: number
  }
  dimension: campaign_name {
    description: "Name of the campaign"
  }
  dimension: ad_set_id {
    description: "The unique ID of the ad set you're viewing in reporting."
    type: number
  }
  dimension: ad_set_name {
    description: "The name of the ad set you're viewing in reporting."
  }
  dimension: ad_source {
    description: "Dummy data, using just facebook at the moment"
  }
  dimension: ad_id {
    description: "The ID number of your ad"
    type: number
  }
  dimension: ad_name {
    description: "Name of your ad"
  }
  dimension: total_spent {
    description: ""
    value_format: "$#,##0.00"
    type: number
  }
  dimension: total_impressions {
    description: ""
    type: number
  }
  dimension: total_clicks {
    description: ""
    type: number
  }
  dimension: total_revenue {
    description: ""
    type: number
  }
  dimension: total_conversions {
    description: ""
    type: number
  }
}

include: "/views/pacing_block/shared/datagroups.lkml"
include: "/views/pacing_block/multisource_ads.view.lkml"

view: training {

  derived_table: {
    datagroup_trigger: weekly_refresh
    sql:
    SELECT
      multisource_ads.partition_date_date AS date,
      multisource_ads.ad_source AS ad_source,
      COALESCE(SUM(multisource_ads.total_revenue), 0) AS revenue
    FROM  ${multisource_ads.SQL_TABLE_NAME} AS multisource_ads
    GROUP BY
      1,
      2 ;;
  }

  dimension: date {
    label: "Multisource Ads Date"
    description: "Date"
    type: date
  }

  dimension: ad_source {
    description: "Ads Source Name"
  }

}

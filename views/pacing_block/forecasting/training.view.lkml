include: "/views/pacing_block/shared/datagroups.lkml"

view: training {

  derived_table: {
    datagroup_trigger: daily_refresh
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
  dimension: pk {
    type: string
    sql: CONCAT(${date},${ad_source});;
    primary_key: yes
    hidden: yes
  }
  dimension: date {
    label: "Multisource Ads Date"
    description: "Date"
    type: date
  }

  dimension: ad_source {
    description: "Ads Source Name"
  }

  dimension: revenue {
    type: number
    hidden: yes
  }

  measure: sum_revenue {
    type: sum
    description: "Total Revenue"
    sql: ${revenue} ;;
    value_format_name: usd_0
  }

}

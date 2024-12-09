include: "/views/pacing_block/shared/datagroups.lkml"

view: training {

  derived_table: {
    datagroup_trigger: weekly_refresh
    explore_source: multisource_ads {
      column: partition_date_date {}
      column: ad_source {}
      column: total_revenue {}


    }
  }
  dimension_group: partition_date_date {
   label: "Date"
    timeframes: [date ,week, month, year]
    type: time
  }
  dimension: ad_source {
    description: "Ad Source Name"
  }
  measure: total_revenue {
    description: "Total Revenue"
    type: number
    sql: SUM(${TABLE}.total_revenue) ;;
  }

}

# If necessary, uncomment the line below to include explore_source.
# include: "pacing_block.explore.lkml"

view: training {

  derived_table: {
    explore_source: multisource_ads {
      column: partition_date_date {}
      column: ad_source {}
      column: total_revenue {}


    }
  }
  dimension_group: partition_date_date {
   label: "Date"
    timeframes: [week, month, year]
    type: time
  }
  dimension: ad_source {
    description: "Dummy data, using just facebook at the moment"
  }
  measure: total_revenue {
    description: "Total Revenue"
    type: number
    sql: SUM(${TABLE}.total_revenue) ;;
  }

}

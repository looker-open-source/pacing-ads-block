connection: "@{CONNECTION_NAME}"

include: "/views/pacing_block/forecasting/*.view.lkml"
include: "/views/pacing_block/multisource_ads.view.lkml"
include: "/explores/goals_campaigns.explore.lkml"
include: "/explores/pacing_block.explore.lkml"


include: "/dashboards/*.dashboard.lookml"


datagroup: daily {
  sql_trigger: SELECT current_date ;;
  max_cache_age: "24 hours"
}

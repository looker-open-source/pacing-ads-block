connection: "@{CONNECTION_NAME}"

include: "/views/fb_ads_views/base_views/*.view.lkml"
include: "/views/fb_ads_views/derived_views/*.view.lkml"
include: "/dashboards/core_metrics.dashboard.lookml"
include: "/dashboards/campaign_comparison.dashboard.lookml"
include: "/dashboards/spend_revenue.dashboard.lookml"
include: "/dashboards/campaign_manager.dashboard.lookml"
include: "/explores/fb_ads.explore.lkml"

datagroup: daily {
  sql_trigger: SELECT current_date ;;
  max_cache_age: "24 hours"
}

connection: "@{CONNECTION_NAME}"

include: "/views/google_ads_views/base_views/*.view.lkml"
include: "/views/google_ads_views/derived_views/*.view.lkml"
include: "/explores/google_ads.explore.lkml"

datagroup: daily {
  sql_trigger: SELECT current_date ;;
  max_cache_age: "24 hours"
}

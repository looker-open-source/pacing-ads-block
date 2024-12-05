datagroup: daily_refresh {
  sql_trigger: SELECT CURRENT_DATE() ;;
  # max_cache_age: "24 hours"
}

datagroup: weekly_refresh {
  sql_trigger: SELECT FORMAT_TIMESTAMP('%G-%V', CURRENT_TIMESTAMP()) ;;
  # max_cache_age: "7 days"
}

datagroup: monthly_refresh {
  sql_trigger: SELECT FORMAT_TIMESTAMP('%Y-%m', CURRENT_TIMESTAMP()) ;;
  # max_cache_age: "30 days"
}

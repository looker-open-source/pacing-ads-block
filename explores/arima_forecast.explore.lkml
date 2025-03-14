include: "/views/pacing_block/forecasting/*.view.lkml"
include: "/views/pacing_block/multisource_ads.view.lkml"

# ####### Forecast ####### #
explore: training {hidden: yes}
explore: forecast {}
explore: model_evaluation {}
explore: predictions {hidden: yes}

explore: current_vs_arima {
  from: predictions
  label: "Arima Forecast"
  join: training {
    sql_on: ${current_vs_arima.date_date} = ${training.date} AND
            ${current_vs_arima.ad_source} = ${training.ad_source} ;;
    relationship: one_to_one
  }
}

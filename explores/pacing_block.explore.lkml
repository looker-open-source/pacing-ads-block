#############################################################################
# Purpose: Includes the Multisource Ads Explore among other relevant explores
#############################################################################


include: "/views/pacing_block/*.view.lkml"
include: "/views/pacing_block/forecasting/*.view.lkml"
include: "./*.explore"

explore: multisource_ads {}


explore: period_over_period {}

explore: nav_bars {hidden:yes}


explore: training {hidden: yes}

explore: forecast {}
explore: model_evaluation {}
explore: forecast_model {}

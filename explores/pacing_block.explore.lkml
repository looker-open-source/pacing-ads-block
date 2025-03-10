#############################################################################
# Purpose: Includes the Multisource Ads Explore among other relevant explores
#############################################################################


include: "/views/pacing_block/*.view.lkml"
include: "/views/pacing_block/forecasting/*.view.lkml"
include: "./*.explore"

explore: multisource_ads {}

explore: forecast {}

explore: period_over_period {}


explore: training {hidden: yes}

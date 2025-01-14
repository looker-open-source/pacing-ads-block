#####################################################################
# Purpose: Contains the Multisource Ads Explore.
#####################################################################


include: "/views/pacing_block/*.view.lkml"
include: "/views/pacing_block/forecasting/*.view.lkml"

explore: multisource_ads {}

explore: forecast {}

explore: training {hidden: yes}

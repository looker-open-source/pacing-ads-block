#############################################################################
# Purpose: Includes the Multisource Ads Explore among other relevant explores
#############################################################################


include: "/views/pacing_block/*.view.lkml"

include: "./*.explore"

explore: multisource_ads {}

explore: period_over_period {}

# explore: training {hidden: yes}
explore: nav_bars {hidden:yes}

#####################################################################
# Purpose: Contains the Goal Explore created from GSheets derived table joined to the multisource_ads Explore.
#####################################################################

include: "/views/goals/campaigns_flat_goals.view.lkml"
include: "/views/pacing_block/multisource_ads.view.lkml"

explore: goals_campaigns {


  label: "Goals"
  from: campaigns_flat_goals
 always_filter: {filters:[ goals_campaigns.plan_name: "", goals_campaigns.campaign_name: "", goals_campaigns.phase_param: ""]}
  join: multisource_ads {
    relationship: many_to_one
    sql_on: ${goals_campaigns.campaign_name} = ${multisource_ads.campaign_name}
      AND ${goals_campaigns.date} = ${multisource_ads.partition_date_date};;
  }

}

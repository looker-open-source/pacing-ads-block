#####################################################################
# Purpose: Creates a derived table that uses the fields defined in sheets template to use as a track performance of ads campaings across sources.
#####################################################################

include: "campaigns_info.view"
include: "campaigns_information_sheets.view.lkml"
include: "/views/pacing_block/multisource_ads.view.lkml"

view: campaigns_flat_goals {
  derived_table: {
    sql: WITH campaign_days AS (
          SELECT
            date AS date,
            ID,
            plan_name AS plan_name,
            campaign_name AS campaign_name,
            goal_type,
            phase,
            age_group,
            demographic,
            geographic,
            audience_name,
            goal_value,
            (DATE_DIFF(end_date, start_date, DAY) + 1) AS campaign_days_duration,
            CAST(goal_value AS NUMERIC) / (DATE_DIFF(end_date, start_date, DAY) + 1) AS equivalent_day_goal
          FROM (
            SELECT
              date,
              ID,
              plan_name,
              campaign_name,
              goal_type,
              phase,
              age_group,
              demographic,
              geographic,
              audience_name,
              CAST(goal_value AS NUMERIC) AS goal_value,
              start_date,
              end_date
            FROM ${campaigns_information_sheets.SQL_TABLE_NAME},
            UNNEST(GENERATE_DATE_ARRAY(start_date, end_date)) AS date
          )
        )

      SELECT GENERATE_UUID() AS primary_key,
      ID,
      date,
      plan_name,
      campaign_name,
      goal_type,
      phase,
      age_group,
      demographic,
      geographic,
      audience_name,
      goal_value,
      CAST(campaign_days_duration AS NUMERIC) AS campaign_days_duration,
      CAST(equivalent_day_goal AS NUMERIC) AS equivalent_day_goal

      FROM campaign_days
      GROUP BY ID, date, plan_name, campaign_name, goal_type, phase, age_group, demographic, geographic, audience_name, goal_value, campaign_days_duration, equivalent_day_goal
      ORDER BY campaign_name, date


      ;;
  }
  dimension: ID {
    #primary_key: yes
    hidden: yes
  }
  dimension: primary_key {
    primary_key: yes
    hidden: yes
  }
  dimension: date {
    description: "Date"
  }
  dimension: plan_name {
    description: "Plan Name for your Campaings"
  }
  dimension: campaign_name {
    description: "Name of your Campaings"
  }
  dimension: goal_type {
    description: "Type of goal to track"
  }
  dimension: phase {
    description: "Phase of your campaign"
  }
  dimension: age_group {
    description: "Target age group"
  }
  dimension: demographic {
    description: "Target demographic group"
  }
  dimension: geographic {
    description: "Geographic target"
  }
  dimension: audience_name {
    description: "Name of your audience target"
  }

  dimension: goal_value {
    description: "Assigned value of your goal"
    type: number
  }
  dimension: campaign_days_duration {
    description: "Duration of your campaings in days"
    type: number
  }
  dimension: equivalent_day_goal{
    hidden: yes
    type: number
  }

  measure: daily_goal {
    type: average
    label: "Daily Goal"
    sql: ${equivalent_day_goal};;
    value_format_name: decimal_0
  }

  parameter: phase_param {
    label: "Phase Selector"
    type: unquoted
    allowed_value: {
      label: "Active"
      value:"active"}

    allowed_value: {
      label: "Pre-Launch"
      value:"pre_launch"}
    allowed_value: {
      label: "Post-Launch"
      value:"post_launch"}
    #default_value: "consideration"
  }

  measure: phase_goal {
    label: "Actual Metric Value"
    required_fields: [goal_type]
    type: number
    sql:
    CASE
      WHEN '{% parameter phase_param %}' = 'active' THEN
        CASE
          WHEN ${goal_type} = 'conversion'THEN ${multisource_ads.conversions}
          WHEN ${goal_type} = 'acquisition' THEN ${multisource_ads.CPC}
          ELSE NULL
        END
      WHEN '{% parameter phase_param %}'  = 'pre_launch' THEN
        CASE
          WHEN ${goal_type} = 'awareness' THEN ${multisource_ads.impressions}
          ELSE NULL
        END
      WHEN '{% parameter phase_param %}'  = 'post_launch' THEN
        CASE
          WHEN ${goal_type} = 'engagement' THEN ${multisource_ads.roas}

      ELSE NULL
      END
      ELSE NULL
      END ;;
    description: "Goal specific to each campaign phase"
  }

}



































# include: "/views/goals/campaigns_info.view.lkml"
# view: campaigns_flat_goals {
#   derived_table: {
#     sql: WITH campaign_days AS (
#           SELECT
#             campaign_name AS campaign_name,
#             date AS date,
#             CAST(goal AS NUMERIC) / (DATE_DIFF(date_end, date_start, DAY) + 1) AS equivalent_day_goal
#           FROM (
#             SELECT
#               campaign_name,
#               date,
#               goal,
#               date_start,
#               date_end
#             FROM ${campaigns_info.SQL_TABLE_NAME},
#             UNNEST(GENERATE_DATE_ARRAY(date_start, date_end)) AS date
#           )
#         )

#       SELECT campaign_name, date, CAST(equivalent_day_goal AS NUMERIC) AS equivalent_day_goal
#       FROM campaign_days
#       ORDER BY campaign_name, date

#       ;;
#   }

#   dimension: campaign_name {}
#   dimension: date {}
#   dimension: equivalent_day_goal{
#     type: number
#   }
# }

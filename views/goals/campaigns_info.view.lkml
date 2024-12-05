view: campaigns_info {
  derived_table: {
    sql:
      WITH campaign_1 AS (
      SELECT

      "@{CAMPAIGN_NAME_1}" AS campaign_name,
      DATE("@{DATE_START_CMP_1}") AS date_start,
      DATE("@{DATE_END_CMP_1}") AS date_end,
      CAST("@{GOAL_CMP_1}" AS NUMERIC) AS goal,
      "@{GOAL_TYPE_CMP_1}" AS goal_type

      ), campaign_2 AS (
      SELECT

      "@{CAMPAIGN_NAME_2}" AS campaign_name,
      DATE("@{DATE_START_CMP_2}") AS date_start,
      DATE("@{DATE_END_CMP_2}") AS date_end,
      CAST("@{GOAL_CMP_2}" AS NUMERIC) AS goal,
      "@{GOAL_TYPE_CMP_2}" AS goal_type

      ), campaign_3 AS (
      SELECT

      "@{CAMPAIGN_NAME_3}" AS campaign_name,
      DATE("@{DATE_START_CMP_3}") AS date_start,
      DATE("@{DATE_END_CMP_3}") AS date_end,
      CAST("@{GOAL_CMP_3}" AS NUMERIC) AS goal,
      "@{GOAL_TYPE_CMP_3}" AS goal_type

      )

      SELECT * FROM campaign_1
      UNION ALL
      SELECT * FROM campaign_2
      UNION ALL
      SELECT * FROM campaign_3

      ;;
  }

  dimension: campaign_name {}
  dimension: date_start {}
  dimension: date_end {}
  dimension: goal {
    type: number
  }
  dimension: goal_type {}

  measure: mean_goal {
    type: average
    sql: ${goal} ;;
  }
}
#new_lookml_runtime: no
project_name: "pacing_ads_block"

## Required parameters ##

constant: CONNECTION_NAME {
 value: "bq-looker-marketplace"
 export: override_required
}

constant: PROJECT_ID {
  value: "your-project-id"
  export: override_required
}
### For tracking Goals
constant: SHEETS_CAMPAIGN_TABLE {
  value: "campaigns_information"
  export: override_optional
}

## Leave the value empty (value:"") if you're not using the source, otherwise you'll get an error

constant: FADS_DATASET_NAME {
  value: ""
  export: override_optional
}

constant: GADS_DATASET_NAME {
  value: ""
  export: override_optional
}

constant: GADS_CUSTOMER_ID {
  value: ""
  export: override_optional
}


#### Information Campaign 1 #####

constant: CAMPAIGN_NAME_1 {
  value: "Autumn Trends"
  export: override_optional
}

constant: DATE_START_CMP_1 {
  value: "2024-05-01"
  export: override_optional
}

constant: DATE_END_CMP_1 {
  value: "2024-10-10"
  export: override_optional
}

constant: GOAL_CMP_1 {
  value: "1500000"
  export: override_optional
}

constant: GOAL_TYPE_CMP_1 {
  value: "Clicks"
  export: override_optional
}

#### Information Campaign 2 #####

constant: CAMPAIGN_NAME_2 {
  value: "Christmas Special"
  export: override_optional
}

constant: DATE_START_CMP_2 {
  value: "2024-05-01"
  export: override_optional
}

constant: DATE_END_CMP_2 {
  value: "2024-10-10"
  export: override_optional
}

constant: GOAL_CMP_2 {
  value: "1300000"
  export: override_optional
}

constant: GOAL_TYPE_CMP_2 {
  value: "Clicks"
  export: override_optional
}

#### Information Campaign 3 #####

constant: CAMPAIGN_NAME_3 {
  value: "Weekend Sale"
  export: override_optional
}

constant: DATE_START_CMP_3 {
  value: "2024-05-01"
  export: override_optional
}

constant: DATE_END_CMP_3 {
  value: "2024-10-10"
  export: override_optional
}

constant: GOAL_CMP_3 {
  value: "1500000"
  export: override_optional
}

constant: GOAL_TYPE_CMP_3 {
  value: "Conversions"
  export: override_optional
}

#new_lookml_runtime: no
project_name: "pacing_ads_block"

## Required parameters ##

constant: CONNECTION_NAME {
 value: "bq-looker-marketplace"
 export: override_required
}

constant: PROJECT_ID {
  value: ""
  export: override_required
}
### For tracking Goals
constant: SHEETS_DATASET_NAME {
  value: ""
  export: override_optional
}

constant: SHEETS_CAMPAIGN_TABLE {
  value: ""
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

constant: viz_bond_config {
  value: "{% assign vis_config = '{
    \"x_axis_gridlines\" : false,
    \"y_axis_gridlines\" : true,
    \"show_view_names\" : false,
    \"show_y_axis_labels\" : true,
    \"show_y_axis_ticks\" : true,
    \"y_axis_tick_density\" : \"default\",
    \"y_axis_tick_density_custom\" : 5,
    \"show_x_axis_label\" : true,
    \"show_x_axis_ticks\" : true,
    \"y_axis_scale_mode\" : \"linear\",
    \"x_axis_reversed\" : false,
    \"y_axis_reversed\" : false,
    \"plot_size_by_field\" : false,
    \"trellis\" : \"\",
    \"stacking\" : \"\",
    \"limit_displayed_rows\" : false,
    \"legend_position\" : \"center\",
    \"point_style\" : \"circle\",
    \"show_value_labels\" : true,
    \"label_density\" : 25,
    \"x_axis_scale\" : \"ordinal\",
    \"y_axis_combined\" : true,
    \"show_null_points\" : true,
    \"interpolation\" : \"linear\",
    \"show_totals_labels\" : false,
    \"show_silhouette\" : false,
    \"totals_color\" : \"#808080\",
    \"color_application\" : {\"collection_id\": \"google\", \"palette_id\": \"google-diverging-0\", \"options\": {\"steps\": 5, \"reverse\": false}},
    \"x_axis_zoom\" : true,
    \"y_axis_zoom\" : true,
    \"series_types\" : {},
    \"series_colors\" : {},
    \"type\" : \"looker_area\",
    \"ordering\" : \"none\",
    \"show_null_labels\" : false,
    \"defaults_version\" : 1,
    \"hidden_pivots\" : {},
    \"show_row_numbers\" : true,
    \"transpose\" : false,
    \"truncate_text\" : true,
    \"hide_totals\" : false,
    \"hide_row_totals\" : false,
    \"size_to_fit\" : true,
    \"table_theme\" : \"white\",
    \"enable_conditional_formatting\" : false,
    \"header_text_alignment\" : \"left\",
    \"header_font_size\" : 12,
    \"rows_font_size\" : 12,
    \"conditional_formatting_include_totals\" : false,
    \"conditional_formatting_include_nulls\" : false}' %}"
}

constant: month_day_viz_config {
  value: "{% assign vis_config = '{
    \"hidden_fields\" : [],
    \"hidden_points_if_no\" : [],
    \"series_labels\" : {},
    \"show_view_names\" : false,
    \"label_type\" : \"name\",
    \"show_null_points\" : true,
    \"x_axis_gridlines\" : false,
    \"y_axis_gridlines\" : true,
    \"show_y_axis_labels\" : true,
    \"show_y_axis_ticks\" : true,
    \"y_axis_tick_density\" : \"default\",
    \"y_axis_tick_density_custom\" : 5,
    \"show_x_axis_label\" : true,
    \"show_x_axis_ticks\" : true,
    \"y_axis_scale_mode\" : \"linear\",
    \"x_axis_reversed\" : false,
    \"y_axis_reversed\" : false,
    \"plot_size_by_field\" : false,
    \"trellis\" : \"\",
    \"stacking\" : \"\",
    \"limit_displayed_rows\" : false,
    \"legend_position\" : \"center\",
    \"point_style\" : \"none\",
    \"show_value_labels\" : false,
    \"label_density\" : 25,
    \"x_axis_scale\" : \"auto\",
    \"y_axis_combined\" : true,
    \"ordering\" : \"none\",
    \"show_null_labels\" : false,
    \"show_totals_labels\" : false,
    \"show_silhouette\" : false,
    \"totals_color\" : \"#808080\",
    \"type\" : \"marketplace_viz_sankey::sankey-marketplace\",
    \"defaults_version\" : 0,
    \"hidden_pivots\" : {},
    \"series_types\" : {},
    \"interpolation\" : \"linear\",
    \"show_row_numbers\" : true,
    \"transpose\" : false,
    \"truncate_text\" : true,
    \"hide_totals\" : false,
    \"hide_row_totals\" : false,
    \"size_to_fit\" : true,
    \"table_theme\" : \"white\",
    \"enable_conditional_formatting\" : false,
    \"header_text_alignment\" : \"left\",
    \"header_font_size\" : 12,
    \"rows_font_size\" : 12,
    \"conditional_formatting_include_totals\" : false,
    \"conditional_formatting_include_nulls\" : false,
    \"value_labels\" : \"legend\",
    \"font_size\" : 12}' %}"
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

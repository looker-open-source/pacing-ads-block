- dashboard: core_metrics
  title: 'Core Metrics by Campaign - Meta Ads Overview '
  layout: newspaper
  preferred_viewer: dashboards-next
  description: This Core Metrics dashboard is an Overview of key KPI for Facebook
    Ads Data.
  preferred_slug: GBZZ6hUBpwulWJXg98N55f
  elements:
  - title: Total Clicks
    name: Total Clicks
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.total_clicks]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#EA4335"
    single_value_title: Total Clicks
    defaults_version: 1
    listen:
      Set Clicks Goal: ad_insights.set_clicks_goal
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 4
    col: 0
    width: 6
    height: 4
  - title: Total Impressions
    name: Total Impressions
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.total_impressions]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#EA4335"
    single_value_title: Total Impressions
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Set Impressions Goal: ad_insights.set_impressions_goal
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 4
    col: 6
    width: 6
    height: 4
  - title: Total Spent
    name: Total Spent
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.total_spent]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#EA4335"
    single_value_title: Total Cost
    value_format: ''
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 4
    col: 18
    width: 6
    height: 4
  - title: Clicks Gauge
    name: Clicks Gauge
    model: fb_ads
    explore: ad_insights
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [ad_insights.total_clicks, ad_insights.clicks_goal]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_label_type: both
    value_label_font: 12
    value_label_padding: 60
    target_source: second
    target_label_type: label
    target_label_font: 3
    target_value_override: ''
    label_font_size: 4
    range_formatting: ''
    spinner_type: spinner
    fill_color: "#34A853"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#EA4335", "#4285F4", "#34A853", "#FBBC04", "#FFFFFF", "#F8F8F8",
      "#202124", "#000000"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#9334E6"
    single_value_title: Total Spent
    value_format: ''
    hidden_pivots: {}
    defaults_version: 0
    listen:
      Set Clicks Goal: ad_insights.set_clicks_goal
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 12
    col: 0
    width: 6
    height: 6
  - title: Impressions Gauge
    name: Impressions Gauge
    model: fb_ads
    explore: ad_insights
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [ad_insights.total_impressions, ad_insights.impressions_goal]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_label_type: both
    value_label_font: 12
    value_label_padding: 60
    target_source: second
    target_label_type: label
    target_label_font: 3
    target_value_override: ''
    label_font_size: 4
    range_formatting: ''
    spinner_type: spinner
    fill_color: "#34A853"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#EA4335", "#4285F4", "#34A853", "#FBBC04", "#FFFFFF", "#F8F8F8",
      "#202124", "#000000"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#9334E6"
    single_value_title: Total Spent
    value_format: ''
    hidden_pivots: {}
    defaults_version: 0
    listen:
      Set Impressions Goal: ad_insights.set_impressions_goal
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 12
    col: 6
    width: 6
    height: 6
  - title: Clicks Goal
    name: Clicks Goal
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.total_clicks, ad_insights.clicks_goal]
    filters:
      ad_insights.date_start_year: '2024'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#4285F4"
    single_value_title: Clicks Goal
    value_format: ''
    hidden_fields: [ad_insights.click_sum, ad_insights.total_clicks]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    value_label_type: both
    value_label_font: 12
    value_label_padding: 60
    target_source: second
    target_label_type: nolabel
    target_label_font: 3
    target_value_override: ''
    label_font_size: 4
    range_formatting: ''
    spinner_type: spinner
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Set Clicks Goal: ad_insights.set_clicks_goal
      Set Impressions Goal: ad_insights.set_impressions_goal
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 8
    col: 0
    width: 6
    height: 4
  - title: Impressions goal
    name: Impressions goal
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.total_impressions, ad_insights.impressions_goal]
    filters:
      ad_insights.date_start_year: '2024'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#4285F4"
    single_value_title: Impressions Goal
    value_format: ''
    hidden_fields: [ad_insights.total_impressions]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    value_label_type: both
    value_label_font: 12
    value_label_padding: 60
    target_source: second
    target_label_type: nolabel
    target_label_font: 3
    target_value_override: ''
    label_font_size: 4
    range_formatting: ''
    spinner_type: spinner
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Set Clicks Goal: ad_insights.set_clicks_goal
      Set Impressions Goal: ad_insights.set_impressions_goal
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 8
    col: 6
    width: 6
    height: 4
  - title: Total Conversions
    name: Total Conversions
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights_actions.total_conversions]
    filters:
      ad_insights.ad_name: ''
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#EA4335"
    single_value_title: Total Conversions
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Set Clicks Goal: ad_insights.set_clicks_goal
      Set Impressions Goal: ad_insights.set_impressions_goal
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 4
    col: 12
    width: 6
    height: 4
  - title: Conversions Goal
    name: Conversions Goal
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights_actions.total_conversions, ad_insights.conversions_goal]
    filters:
      ad_insights.date_start_year: ''
      ad_insights.ad_name: ''
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#4285F4"
    single_value_title: Conversions Goal
    value_format: ''
    hidden_fields: [ad_insights_actions.total_conversions]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    value_label_type: both
    value_label_font: 12
    value_label_padding: 60
    target_source: second
    target_label_type: nolabel
    target_label_font: 3
    target_value_override: ''
    label_font_size: 4
    range_formatting: ''
    spinner_type: spinner
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Set Clicks Goal: ad_insights.set_clicks_goal
      Set Impressions Goal: ad_insights.set_impressions_goal
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 8
    col: 12
    width: 6
    height: 4
  - title: Conversions Gauge
    name: Conversions Gauge
    model: fb_ads
    explore: ad_insights
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [ad_insights_actions.total_conversions, ad_insights.conversions_goal]
    filters:
      ad_insights.date_start_year: '2024'
      ad_insights.ad_name: ''
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_label_type: both
    value_label_font: 12
    value_label_padding: 60
    target_source: second
    target_label_type: label
    target_label_font: 3
    target_value_override: ''
    label_font_size: 4
    range_formatting: ''
    spinner_type: spinner
    fill_color: "#34A853"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: progress
    fill_colors: ["#EA4335", "#4285F4", "#34A853", "#FBBC04", "#FFFFFF", "#F8F8F8",
      "#202124", "#000000"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FF8168"
    single_value_title: Conversions Goal
    value_format: ''
    hidden_pivots: {}
    defaults_version: 0
    listen:
      Set Clicks Goal: ad_insights.set_clicks_goal
      Set Impressions Goal: ad_insights.set_impressions_goal
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 12
    col: 12
    width: 6
    height: 6
  - title: Cost Goal
    name: Cost Goal
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.total_spent, ad_insights.cost_goal]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#4285F4"
    single_value_title: Cost Goal
    hidden_fields: [ad_insights.total_spent]
    defaults_version: 1
    listen:
      Set Clicks Goal: ad_insights.set_clicks_goal
      Set Impressions Goal: ad_insights.set_impressions_goal
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 8
    col: 18
    width: 6
    height: 4
  - title: Cost Gauge
    name: Cost Gauge
    model: fb_ads
    explore: ad_insights
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [ad_insights.total_spent, ad_insights.cost_goal]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 6
    target_weight: 50
    value_label_override: Total Cost
    value_label_padding: 60
    target_source: second
    target_label_type: label
    fill_color: "#34A853"
    fill_colors: ["#EA4335", "#4285F4", "#34A853", "#FBBC04", "#FFFFFF", "#F8F8F8",
      "#202124", "#000000"]
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    listen:
      Set Clicks Goal: ad_insights.set_clicks_goal
      Set Impressions Goal: ad_insights.set_impressions_goal
      Campaign Name: ad_insights.campaign_name
      Set Conversions Goal: ad_insights.set_conversions_goal
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Set Cost Goal: ad_insights.set_cost_goal
    row: 12
    col: 18
    width: 6
    height: 6
  - name: Pacing
    type: text
    title_text: Pacing
    body_text: ''
    row: 3
    col: 0
    width: 24
    height: 1
  - name: ''
    type: text
    title_text: ''
    body_text: "<div style=\"border-bottom: solid 1px #4285F4;\">\n\n<nav style=\"\
      font-size: 18px; padding: 5px 10px 0 10px; height: 60px\">\n  \n\n  <a style=\"\
      padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4;\
      \ border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left;\
      \ line-height: 40px; font-weight: bold; background-color: #eaf1fe;\" href=\"\
      #\"> Core Metrics Dashboard</a>\n\n      <a style=\"padding: 5px 15px; border-bottom:\
      \ solid 1px #4285F4; float: left; line-height: 40px;\" href=\"/dashboards-next/fb_ads::campaign_manager\"\
      > Campaign Manager </a>\n\n\n      <a style=\"padding: 5px 15px; border-bottom:\
      \ solid 1px #4285F4; float: left; line-height: 40px;\" href=\"/dashboards/fb_ads::campaign_comparison\"\
      > Marketing Campaign Comparison </a>\n\n      <a style=\"padding: 5px 15px;\
      \ border-bottom: solid 1px #4285F4; float: left; line-height: 40px;\" href=\"\
      /dashboards/fb_ads::spend_revenue\"> Spend & Revenue </a>\n\n</nav>\n\n</div>"
    row: 0
    col: 0
    width: 24
    height: 3
  filters:
  - name: Ad Source
    title: Ad Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: fb_ads
    explore: ad_insights
    listens_to_filters: []
    field: ad_insights.ad_source
  - name: Partition Date Date
    title: Partition Date Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: fb_ads
    explore: ad_insights
    listens_to_filters: []
    field: ad_insights.partition_date_date
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: fb_ads
    explore: ad_insights
    listens_to_filters: []
    field: ad_insights.campaign_name
  - name: Set Clicks Goal
    title: Set Clicks Goal
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: fb_ads
    explore: ad_insights
    listens_to_filters: []
    field: ad_insights.set_clicks_goal
  - name: Set Impressions Goal
    title: Set Impressions Goal
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: fb_ads
    explore: ad_insights
    listens_to_filters: []
    field: ad_insights.set_impressions_goal
  - name: Set Conversions Goal
    title: Set Conversions Goal
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: fb_ads
    explore: ad_insights
    listens_to_filters: []
    field: ad_insights.set_conversions_goal
  - name: Set Cost Goal
    title: Set Cost Goal
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: fb_ads
    explore: ad_insights
    listens_to_filters: []
    field: ad_insights.set_cost_goal

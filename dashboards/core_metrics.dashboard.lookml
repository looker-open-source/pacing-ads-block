- dashboard: core_metrics
  title: Core Metrics by Campaign - Ads Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: GKxroCcAYps7TJidar5yi5
  elements:
  - title: New Tile
    name: New Tile
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.clicks]
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
    custom_color: "#174EA6"
    single_value_title: Total Clicks
    defaults_version: 1
    listen:
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 2
    col: 1
    width: 7
    height: 4
  - title: New Tile
    name: New Tile (2)
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.impressions]
    sorts: [multisource_ads.impressions desc 0]
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
    custom_color: "#0D652D"
    single_value_title: Total Impressions
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 2
    col: 8
    width: 7
    height: 4
  - title: New Tile
    name: New Tile (3)
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.conversions]
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
    custom_color: "#F9A620"
    single_value_title: Total Conversions
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 2
    col: 15
    width: 7
    height: 4
  - title: Clicks Gauge
    name: Clicks Gauge
    model: pacing_block
    explore: multisource_ads
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [multisource_ads.clicks, multisource_ads.clicks_goal]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 25
    arm_weight: 49
    spinner_length: 100
    spinner_weight: 44
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_label_type: both
    value_label_font: 12
    value_label_padding: 36
    target_source: second
    target_label_type: label
    target_label_font: 3
    label_font_size: 4
    spinner_type: spinner
    fill_color: "#174EA6"
    background_color: "#9AA0A6"
    spinner_color: "#202124"
    range_color: "#202124"
    gauge_fill_type: progress
    viz_trellis_by: none
    angle: 90
    cutout: 50
    range_x: 0.8
    range_y: 1
    target_label_padding: 1.48
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    listen:
      Set Clicks Goal: multisource_ads.set_clicks_goal
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 10
    col: 1
    width: 7
    height: 5
  - title: Conversions Gauge
    name: Conversions Gauge
    model: pacing_block
    explore: multisource_ads
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [multisource_ads.conversions, multisource_ads.conversions_goal]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 25
    arm_weight: 49
    spinner_length: 100
    spinner_weight: 44
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    range_max:
    value_label_type: both
    value_label_font: 12
    value_formatting: "#"
    value_label_padding: 36
    target_source: second
    target_label_type: label
    target_label_font: 3
    label_font_size: 4
    spinner_type: spinner
    fill_color: "#F9A620"
    background_color: "#9AA0A6"
    spinner_color: "#202124"
    range_color: "#202124"
    gauge_fill_type: progress
    fill_colors: ["#7FCDAE", "#ffed6f", "#EE7772"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 0.8
    range_y: 1
    target_label_padding: 1.48
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Set Conversions Goal: multisource_ads.set_conversions_goal
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 10
    col: 15
    width: 7
    height: 5
  - title: Impressions Gauge
    name: Impressions Gauge
    model: pacing_block
    explore: multisource_ads
    type: marketplace_viz_radial_gauge::radial_gauge-marketplace
    fields: [multisource_ads.impressions, multisource_ads.impressions_goal]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 25
    arm_weight: 49
    spinner_length: 100
    spinner_weight: 44
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_label_type: both
    value_label_font: 12
    value_label_padding: 36
    target_source: second
    target_label_type: label
    target_label_font: 3
    label_font_size: 4
    spinner_type: spinner
    fill_color: "#0D652D"
    background_color: "#9AA0A6"
    spinner_color: "#202124"
    range_color: "#202124"
    gauge_fill_type: progress
    fill_colors: ["#EA4335", "#4285F4", "#34A853", "#FBBC04", "#FA7B17", "#F8F8F8",
      "#202124", "#000000", "#174EA6", "#A50E0E", "#E37400", "#0D652D", "#D2E3FC",
      "#FAD2CF", "#FEEFC3", "#CEEAD6", "#F1F3F4", "#9AA0A6"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 0.8
    range_y: 1
    target_label_padding: 1.48
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 0
    hidden_pivots: {}
    listen:
      Set Impressions Goal: multisource_ads.set_impressions_goal
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 10
    col: 8
    width: 7
    height: 5
  - title: Clicks Goal
    name: Clicks Goal
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.clicks, multisource_ads.clicks_goal]
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
    custom_color: "#174EA6"
    hidden_fields: [multisource_ads.clicks]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 25
    arm_weight: 49
    spinner_length: 100
    spinner_weight: 44
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_label_type: both
    value_label_font: 12
    value_label_padding: 36
    target_source: second
    target_label_type: label
    target_label_font: 3
    label_font_size: 4
    spinner_type: spinner
    fill_color: "#174EA6"
    background_color: "#9AA0A6"
    spinner_color: "#202124"
    range_color: "#202124"
    gauge_fill_type: progress
    viz_trellis_by: none
    angle: 90
    cutout: 50
    range_x: 0.8
    range_y: 1
    target_label_padding: 1.48
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Set Clicks Goal: multisource_ads.set_clicks_goal
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 6
    col: 1
    width: 7
    height: 4
  - title: Impressions Goal
    name: Impressions Goal
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.impressions, multisource_ads.impressions_goal]
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
    custom_color: "#0D652D"
    hidden_fields: [multisource_ads.impressions]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 25
    arm_weight: 49
    spinner_length: 100
    spinner_weight: 44
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_label_type: both
    value_label_font: 12
    value_label_padding: 36
    target_source: second
    target_label_type: label
    target_label_font: 3
    label_font_size: 4
    spinner_type: spinner
    fill_color: "#174EA6"
    background_color: "#9AA0A6"
    spinner_color: "#202124"
    range_color: "#202124"
    gauge_fill_type: progress
    viz_trellis_by: none
    angle: 90
    cutout: 50
    range_x: 0.8
    range_y: 1
    target_label_padding: 1.48
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Set Impressions Goal: multisource_ads.set_impressions_goal
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 6
    col: 8
    width: 7
    height: 4
  - title: Conversions Goal
    name: Conversions Goal
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.conversions, multisource_ads.conversions_goal]
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
    custom_color: "#F9A620"
    hidden_fields: [multisource_ads.conversions]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 25
    arm_weight: 49
    spinner_length: 100
    spinner_weight: 44
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    value_label_type: both
    value_label_font: 12
    value_formatting: "#"
    value_label_padding: 36
    target_source: second
    target_label_type: label
    target_label_font: 3
    label_font_size: 4
    spinner_type: spinner
    fill_color: "#174EA6"
    background_color: "#9AA0A6"
    spinner_color: "#202124"
    range_color: "#202124"
    gauge_fill_type: progress
    viz_trellis_by: none
    angle: 90
    cutout: 50
    range_x: 0.8
    range_y: 1
    target_label_padding: 1.48
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Set Conversions Goal: multisource_ads.set_conversions_goal
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 6
    col: 15
    width: 7
    height: 4
  - title: _
    name: _
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.core_metrics_nav_bar]
    sorts: [multisource_ads.core_metrics_nav_bar]
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
    defaults_version: 1
    listen:
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: Ad Source
    title: Ad Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: pacing_block
    explore: multisource_ads
    listens_to_filters: []
    field: multisource_ads.ad_source
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: pacing_block
    explore: multisource_ads
    listens_to_filters: []
    field: multisource_ads.campaign_name
  - name: Date
    title: Date
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: pacing_block
    explore: multisource_ads
    listens_to_filters: []
    field: multisource_ads.partition_date_date
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
    model: pacing_block
    explore: multisource_ads
    listens_to_filters: []
    field: multisource_ads.set_clicks_goal
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
    model: pacing_block
    explore: multisource_ads
    listens_to_filters: []
    field: multisource_ads.set_impressions_goal
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
    model: pacing_block
    explore: multisource_ads
    listens_to_filters: []
    field: multisource_ads.set_conversions_goal

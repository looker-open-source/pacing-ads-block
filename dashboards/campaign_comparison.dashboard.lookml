- dashboard: campaign_comparison
  title: Marketing Campaign Comparison
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: GEqDjgAfoU0ZE5nE0bq1kp
  elements:
  - title: Campaign Performance Daily Breakdown
    name: Campaign Performance Daily Breakdown
    model: pacing_block
    explore: multisource_ads
    type: looker_line
    fields: [multisource_ads.campaign_name, multisource_ads.partition_date_date, multisource_ads.campaign_performance_metric]
    pivots: [multisource_ads.campaign_name]
    fill_fields: [multisource_ads.partition_date_date]
    sorts: [multisource_ads.campaign_name, multisource_ads.partition_date_date desc]
    limit: 500
    column_limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
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
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Campaign Performance Metric: multisource_ads.KPI_select
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 2
    col: 0
    width: 13
    height: 11
  - title: Performance Metric Top 5 Campaigns
    name: Performance Metric Top 5 Campaigns
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.campaign_name, multisource_ads.campaign_performance_metric]
    sorts: [multisource_ads.campaign_performance_metric desc]
    limit: 5
    column_limit: 5
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.campaign_performance_metric,
            id: multisource_ads.campaign_performance_metric, name: Impressions}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Christmas Special - multisource_ads.campaign_performance_metric: "#202124"
      multisource_ads.campaign_performance_metric: "#174EA6"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Campaign Performance Metric: multisource_ads.KPI_select
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 2
    col: 13
    width: 11
    height: 11
  - title: Marketing Campaign Comparison
    name: Marketing Campaign Comparison
    model: pacing_block
    explore: multisource_ads
    type: looker_grid
    fields: [multisource_ads.ad_source, multisource_ads.campaign_name, multisource_ads.spend,
      multisource_ads.revenue, multisource_ads.clicks, multisource_ads.impressions,
      multisource_ads.conversions]
    sorts: [multisource_ads.campaign_name desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      multisource_ads.spend:
        is_active: false
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Campaign Performance Metric: multisource_ads.KPI_select
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
    row: 13
    col: 0
    width: 24
    height: 8
  - title: _
    name: _
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.campaign_comparison_nav_bar]
    sorts: [multisource_ads.campaign_comparison_nav_bar]
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
  - name: Campaign Performance Metric
    title: Campaign Performance Metric
    type: field_filter
    default_value: total^_impressions
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: pacing_block
    explore: multisource_ads
    listens_to_filters: []
    field: multisource_ads.KPI_select
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: pacing_block
    explore: multisource_ads
    listens_to_filters: []
    field: multisource_ads.campaign_name
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
  - name: Date
    title: Date
    type: field_filter
    default_value: last 30 days
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

- dashboard: period_over_period_dashboard_
  title: 'Period Over Period Dashboard '
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 1z5AsSSAhdluLv9G4h2HoT
  elements:
  - title: Current Period vs Previous Period
    name: Current Period vs Previous Period
    model: pacing_block
    explore: period_over_period
    type: looker_line
    fields: [period_over_period.date_in_period_month, period_over_period.previous_metric,
      period_over_period.current_metric]
    fill_fields: [period_over_period.date_in_period_month]
    filters: {}
    sorts: [period_over_period.date_in_period_month]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_series: []
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Current Date Range: period_over_period.current_date_range
      'Compare To:': period_over_period.compare_to
      Performance Metric: period_over_period.metric_selector
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
    row: 8
    col: 0
    width: 24
    height: 12
  - title: ''
    name: ''
    model: pacing_block
    explore: period_over_period
    type: looker_grid
    fields: [period_over_period.current_metric, period_over_period.previous_metric, period_over_period.date_in_period_month_name,
      period_over_period.created_year]
    pivots: [period_over_period.created_year]
    fill_fields: [period_over_period.created_year]
    filters: {}
    sorts: [period_over_period.created_year, period_over_period.current_metric desc 0]
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
      period_over_period.current_metric:
        is_active: false
      period_over_period.previous_metric:
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_pivots:
      '2024':
        measure_names:
        - period_over_period.current_metric
      '2025':
        measure_names:
        - period_over_period.previous_metric
    hidden_fields:
    listen:
      Performance Metric: period_over_period.metric_selector
      'Compare To:': period_over_period.compare_to
      Current Date Range: period_over_period.current_date_range
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
    row: 20
    col: 0
    width: 12
    height: 10
  - title: Total % of Change for Current Period
    name: Total % of Change for Current Period
    model: pacing_block
    explore: period_over_period
    type: single_value
    fields: [period_over_period.percentage_change]
    filters: {}
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Performance Metric: period_over_period.metric_selector
      'Compare To:': period_over_period.compare_to
      Current Date Range: period_over_period.current_date_range
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
    row: 4
    col: 9
    width: 6
    height: 4
  - title: Current vs Period by Campaing
    name: Current vs Period by Campaing
    model: pacing_block
    explore: period_over_period
    type: looker_grid
    fields: [period_over_period.campaign_name, period_over_period.previous_metric, period_over_period.current_metric]
    filters: {}
    sorts: [period_over_period.campaign_name]
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
      period_over_period.current_metric:
        is_active: false
      period_over_period.previous_metric:
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Performance Metric: period_over_period.metric_selector
      'Compare To:': period_over_period.compare_to
      Current Date Range: period_over_period.current_date_range
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
    row: 20
    col: 12
    width: 12
    height: 10
  - title: Previous Period Start Date
    name: Previous Period Start Date
    model: pacing_block
    explore: period_over_period
    type: single_value
    fields: [period_over_period.period_2_start]
    fill_fields: [period_over_period.period_2_start]
    filters: {}
    sorts: [period_over_period.period_2_start desc]
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
    custom_color: "#000000"
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      period_over_period.current_metric:
        is_active: false
      period_over_period.previous_metric:
        is_active: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Performance Metric: period_over_period.metric_selector
      'Compare To:': period_over_period.compare_to
      Current Date Range: period_over_period.current_date_range
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
    row: 0
    col: 12
    width: 5
    height: 4
  - title: Previous Period End Date
    name: Previous Period End Date
    model: pacing_block
    explore: period_over_period
    type: single_value
    fields: [period_over_period.period_2_end]
    fill_fields: [period_over_period.period_2_end]
    filters: {}
    sorts: [period_over_period.period_2_end desc]
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
    custom_color: "#000000"
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      period_over_period.current_metric:
        is_active: false
      period_over_period.previous_metric:
        is_active: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Performance Metric: period_over_period.metric_selector
      'Compare To:': period_over_period.compare_to
      Current Date Range: period_over_period.current_date_range
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
    row: 0
    col: 18
    width: 6
    height: 4
  - title: Current Period Start Date
    name: Current Period Start Date
    model: pacing_block
    explore: period_over_period
    type: single_value
    fields: [period_over_period.current_period_start]
    fill_fields: [period_over_period.current_period_start]
    filters: {}
    sorts: [period_over_period.current_period_start desc]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    listen:
      Performance Metric: period_over_period.metric_selector
      'Compare To:': period_over_period.compare_to
      Current Date Range: period_over_period.current_date_range
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
    row: 0
    col: 0
    width: 5
    height: 4
  - title: Current Period End Date
    name: Current Period End Date
    model: pacing_block
    explore: period_over_period
    type: single_value
    fields: [period_over_period.current_period_end]
    fill_fields: [period_over_period.current_period_end]
    filters: {}
    sorts: [period_over_period.current_period_end desc]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    listen:
      Performance Metric: period_over_period.metric_selector
      'Compare To:': period_over_period.compare_to
      Current Date Range: period_over_period.current_date_range
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
    row: 0
    col: 6
    width: 5
    height: 4
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
    explore: period_over_period
    listens_to_filters: []
    field: period_over_period.ad_source
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
    explore: period_over_period
    listens_to_filters: []
    field: period_over_period.campaign_name
  - name: Current Date Range
    title: Current Date Range
    type: field_filter
    default_value: '2025'
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: pacing_block
    explore: period_over_period
    listens_to_filters: []
    field: period_over_period.current_date_range
  - name: 'Compare To:'
    title: 'Compare To:'
    type: field_filter
    default_value: Period
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: pacing_block
    explore: period_over_period
    listens_to_filters: []
    field: period_over_period.compare_to
  - name: Performance Metric
    title: Performance Metric
    type: field_filter
    default_value: total^_impressions
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: pacing_block
    explore: period_over_period
    listens_to_filters: []
    field: period_over_period.metric_selector
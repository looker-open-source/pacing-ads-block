---
- dashboard: period_over_period
  title: Period over Period
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: F277z5h8WwkAR44Vm60nie
  elements:
  - title: Current Period vs Previous Period
    name: Current Period vs Previous Period
    model: pacing_block
    explore: period_over_period
    type: looker_line
    fields: [period_over_period.previous_metric, period_over_period.current_metric,
      period_over_period.date_in_period_day_of_month, period_over_period.created_month_name]
    pivots: [period_over_period.created_month_name]
    filters:
      period_over_period.previous_metric: NOT NULL
    sorts: [period_over_period.created_month_name, period_over_period.date_in_period_day_of_month]
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
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-diverging-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors: {}
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots:
      January|FIELD|1:
        measure_names:
        - period_over_period.current_metric
      February|FIELD|2:
        measure_names:
        - period_over_period.previous_metric
    listen:
      Current Date Range: period_over_period.current_date_range
      'Compare To:': period_over_period.compare_to
      Performance Metric: period_over_period.metric_selector
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
    row: 2
    col: 8
    width: 16
    height: 14
  - title: Total % of Change for Current Period
    name: Total % of Change for Current Period
    model: pacing_block
    explore: period_over_period
    type: single_value
    fields: [period_over_period.percentage_change]
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
    value_format: ''
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Performance Metric: period_over_period.metric_selector
      'Compare To:': period_over_period.compare_to
      Current Date Range: period_over_period.current_date_range
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
    row: 6
    col: 0
    width: 8
    height: 4
  - title: Current vs Period by Campaing
    name: Current vs Period by Campaing
    model: pacing_block
    explore: period_over_period
    type: looker_grid
    fields: [period_over_period.campaign_name, period_over_period.previous_metric,
      period_over_period.current_metric]
    filters: {}
    sorts: [period_over_period.current_metric desc]
    limit: 500
    column_limit: 50
    total: true
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
        is_active: true
        palette:
          palette_id: 7689432e-22c8-5fd3-9325-fb8e444449eb
          collection_id: google
          custom_colors:
          - "#5be05c"
          - "#33A036"
          - "#056608"
      period_over_period.previous_metric:
        is_active: true
        palette:
          palette_id: 31fd2b93-834a-9ea6-d611-8cc9f969a558
          collection_id: google
          custom_colors:
          - "#e0eaf0"
          - "#7694CB"
          - "#274B9F"
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
    row: 16
    col: 0
    width: 24
    height: 8
  - title: Period Difference
    name: Period Difference
    model: pacing_block
    explore: period_over_period
    type: looker_donut_multiples
    fields: [period_over_period.previous_metric, period_over_period.current_metric]
    filters: {}
    sorts: [period_over_period.current_metric desc]
    limit: 500
    column_limit: 50
    show_value_labels: false
    font_size: 12
    series_colors:
      period_over_period.previous_metric: "#4285F4"
      period_over_period.current_metric: "#34A853"
    series_labels: {}
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
        is_active: true
      period_over_period.previous_metric:
        is_active: true
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
    hidden_fields: []
    hidden_points_if_no: []
    value_labels: legend
    label_type: labPer
    listen:
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
      Current Date Range: period_over_period.current_date_range
      'Compare To:': period_over_period.compare_to
      Performance Metric: period_over_period.metric_selector
    row: 10
    col: 0
    width: 8
    height: 6
  - title: Current Period
    name: Current Period
    model: pacing_block
    explore: period_over_period
    type: single_value
    fields: [period_over_period.current_period]
    filters: {}
    sorts: [period_over_period.current_period]
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
    custom_color: "#34A853"
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
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
      Current Date Range: period_over_period.current_date_range
      'Compare To:': period_over_period.compare_to
      Performance Metric: period_over_period.metric_selector
    row: 2
    col: 0
    width: 4
    height: 4
  - title: Previous Period
    name: Previous Period
    model: pacing_block
    explore: period_over_period
    type: single_value
    fields: [period_over_period.previous_period]
    filters: {}
    sorts: [period_over_period.previous_period]
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
    custom_color: "#4285F4"
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
      Ad Source: period_over_period.ad_source
      Campaign Name: period_over_period.campaign_name
      Current Date Range: period_over_period.current_date_range
      'Compare To:': period_over_period.compare_to
      Performance Metric: period_over_period.metric_selector
    row: 2
    col: 4
    width: 4
    height: 4
  - title: "-"
    name: "-"
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.pop_nav_bar]
    sorts: [multisource_ads.pop_nav_bar]
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
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: Ad Source
    title: Ad Source
    type: field_filter
    default_value: GAds - SEARCH,"GAds - SEARCH_PARTNERS",GAds - YOUTUBE,Meta
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
    default_value: Month
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

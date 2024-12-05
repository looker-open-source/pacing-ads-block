- dashboard: multisource_ads
  title: Multisource Ads Demo [WORK IN PROGRESS]
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: T2RcY6O0ZKf5nQETBDBhhD
  elements:
  - title: Clicks
    name: Clicks
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.clicks]
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
      Campaign Name: multisource_ads.campaign_name
      Partition Date Date: multisource_ads.partition_date_date
      Ad Source: multisource_ads.ad_source
    row: 0
    col: 19
    width: 5
    height: 5
  - title: Impressions
    name: Impressions
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.impressions]
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
      Campaign Name: multisource_ads.campaign_name
      Partition Date Date: multisource_ads.partition_date_date
      Ad Source: multisource_ads.ad_source
    row: 0
    col: 0
    width: 5
    height: 5
  - title: Revenue
    name: Revenue
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.revenue]
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
      Campaign Name: multisource_ads.campaign_name
      Partition Date Date: multisource_ads.partition_date_date
      Ad Source: multisource_ads.ad_source
    row: 0
    col: 12
    width: 5
    height: 5
  - title: Campaigns Overview
    name: Campaigns Overview
    model: pacing_block
    explore: multisource_ads
    type: looker_grid
    fields: [multisource_ads.campaign_name, multisource_ads.clicks, multisource_ads.impressions,
      multisource_ads.revenue, multisource_ads.spend, multisource_ads.ad_source]
    filters: {}
    sorts: [multisource_ads.ad_source, multisource_ads.clicks desc]
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
      multisource_ads.clicks:
        is_active: true
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      Campaign Name: multisource_ads.campaign_name
      Partition Date Date: multisource_ads.partition_date_date
      Ad Source: multisource_ads.ad_source
    row: 12
    col: 0
    width: 24
    height: 14
  - title: Clicks by source
    name: Clicks by source
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.ad_source, multisource_ads.clicks]
    filters: {}
    sorts: [multisource_ads.ad_source desc]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Campaign Name: multisource_ads.campaign_name
      Partition Date Date: multisource_ads.partition_date_date
      Ad Source: multisource_ads.ad_source
    row: 5
    col: 0
    width: 8
    height: 7
  - title: Impressions by source
    name: Impressions by source
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.ad_source, multisource_ads.impressions]
    filters: {}
    sorts: [multisource_ads.ad_source desc]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Campaign Name: multisource_ads.campaign_name
      Partition Date Date: multisource_ads.partition_date_date
      Ad Source: multisource_ads.ad_source
    row: 5
    col: 16
    width: 8
    height: 7
  - title: Revenue by source
    name: Revenue by source
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.ad_source, multisource_ads.revenue]
    filters: {}
    sorts: [multisource_ads.ad_source desc]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Campaign Name: multisource_ads.campaign_name
      Partition Date Date: multisource_ads.partition_date_date
      Ad Source: multisource_ads.ad_source
    row: 5
    col: 8
    width: 8
    height: 7
  - title: Impressions (Copy)
    name: Impressions (Copy)
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.spend]
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
    single_value_title: Total Spent
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Campaign Name: multisource_ads.campaign_name
      Partition Date Date: multisource_ads.partition_date_date
      Ad Source: multisource_ads.ad_source
    row: 0
    col: 6
    width: 5
    height: 5
  filters:
  - name: Ad Source
    title: Ad Source
    type: field_filter
    default_value: Facebook
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
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
  - name: Partition Date Date
    title: Partition Date Date
    type: field_filter
    default_value: 2024/10/24 to 2024/10/25
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: pacing_block
    explore: multisource_ads
    listens_to_filters: []
    field: multisource_ads.partition_date_date

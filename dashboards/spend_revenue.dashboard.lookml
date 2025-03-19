- dashboard: spend_revenue
  title: Spend & Revenue
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: DTE2rkeiGY8WcwcAvS0VJy
  elements:
  - title: Product Revenue
    name: Product Revenue
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.revenue]
    filters:
      multisource_ads.KPI_select: total^_impressions
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
    value_format: "$#,##0"
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 4
    col: 0
    width: 6
    height: 4
  - name: ''
    type: text
    title_text: ''
    subtitle_text: General Performance
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - title: ROAS
    name: ROAS
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.roas]
    filters:
      multisource_ads.KPI_select: total^_impressions
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
    value_format: "#0.00%"
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 4
    col: 18
    width: 6
    height: 4
  - title: Total Spend
    name: Total Spend
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.spend]
    filters:
      multisource_ads.KPI_select: total^_impressions
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
    value_format: "$#,##0"
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 4
    col: 6
    width: 6
    height: 4
  - title: Total Conversions
    name: Total Conversions
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.conversions]
    filters:
      multisource_ads.KPI_select: total^_impressions
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
    value_format: "#,##0"
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 4
    col: 12
    width: 6
    height: 4
  - title: Cost per Conversion
    name: Cost per Conversion
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.CPC]
    filters:
      multisource_ads.KPI_select: total^_impressions
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
    value_format: "$#,##0.00"
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 8
    col: 12
    width: 7
    height: 4
  - title: Revenue vs Spend over time
    name: Revenue vs Spend over time
    model: pacing_block
    explore: multisource_ads
    type: looker_line
    fields: [multisource_ads.partition_date_date, multisource_ads.revenue, multisource_ads.spend]
    fill_fields: [multisource_ads.partition_date_date]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.partition_date_date desc]
    limit: 500
    column_limit: 50
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "$#,##0.00"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 12
    col: 0
    width: 24
    height: 10
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: Performance by Source
    body_text: ''
    row: 22
    col: 0
    width: 24
    height: 2
  - title: Top 5 Cost by Source
    name: Top 5 Cost by Source
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.ad_source, source, multisource_ads.spend]
    pivots: [multisource_ads.ad_source]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.ad_source, multisource_ads.spend desc 0]
    limit: 500
    column_limit: 5
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.ad_source}),"Source","Source")
      label: Source
      value_format:
      value_format_name:
      dimension: source
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.spend,
            id: Facebook - multisource_ads.spend, name: Facebook}, {axisId: multisource_ads.spend,
            id: Instagram - multisource_ads.spend, name: Instagram}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      GAds - SEARCH - multisource_ads.revenue: "#202124"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "$#,##0.00"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 31
    col: 0
    width: 11
    height: 7
  - title: Top 5 Revenue by Source
    name: Top 5 Revenue by Source
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.revenue, multisource_ads.ad_source, source]
    pivots: [multisource_ads.ad_source]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.ad_source, multisource_ads.revenue desc 0]
    limit: 500
    column_limit: 5
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.ad_source}),"Source","Source")
      label: Source
      value_format:
      value_format_name:
      dimension: source
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.revenue,
            id: Facebook - multisource_ads.revenue, name: Facebook}, {axisId: multisource_ads.revenue,
            id: GAds - CONTENT - multisource_ads.revenue, name: GAds - CONTENT}, {
            axisId: multisource_ads.revenue, id: GAds - GOOGLE_TV - multisource_ads.revenue,
            name: GAds - GOOGLE_TV}, {axisId: multisource_ads.revenue, id: GAds -
              MIXED - multisource_ads.revenue, name: GAds - MIXED}, {axisId: multisource_ads.revenue,
            id: GAds - SEARCH - multisource_ads.revenue, name: GAds - SEARCH}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      GAds - SEARCH - multisource_ads.revenue: "#202124"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "$#,##0.00"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 24
    col: 0
    width: 11
    height: 7
  - title: Revenue by Source over time
    name: Revenue by Source over time
    model: pacing_block
    explore: multisource_ads
    type: looker_line
    fields: [multisource_ads.revenue, multisource_ads.ad_source, multisource_ads.partition_date_date]
    pivots: [multisource_ads.ad_source]
    fill_fields: [multisource_ads.partition_date_date]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.ad_source, multisource_ads.revenue desc 0]
    limit: 500
    column_limit: 5
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.ad_source}),"Source","Source")
      label: Source
      value_format:
      value_format_name:
      dimension: source
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.revenue,
            id: Facebook - multisource_ads.revenue, name: Facebook}, {axisId: multisource_ads.revenue,
            id: GAds - CONTENT - multisource_ads.revenue, name: GAds - CONTENT}, {
            axisId: multisource_ads.revenue, id: GAds - GOOGLE_TV - multisource_ads.revenue,
            name: GAds - GOOGLE_TV}, {axisId: multisource_ads.revenue, id: GAds -
              MIXED - multisource_ads.revenue, name: GAds - MIXED}, {axisId: multisource_ads.revenue,
            id: GAds - SEARCH - multisource_ads.revenue, name: GAds - SEARCH}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      GAds - SEARCH - multisource_ads.revenue: "#202124"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "$#,##0.00"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 24
    col: 11
    width: 13
    height: 7
  - title: Spend by Source over time
    name: Spend by Source over time
    model: pacing_block
    explore: multisource_ads
    type: looker_line
    fields: [multisource_ads.ad_source, multisource_ads.partition_date_date, multisource_ads.spend]
    pivots: [multisource_ads.ad_source]
    fill_fields: [multisource_ads.partition_date_date]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.ad_source, multisource_ads.partition_date_date desc]
    limit: 500
    column_limit: 5
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.ad_source}),"Source","Source")
      label: Source
      value_format:
      value_format_name:
      dimension: source
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.revenue,
            id: Facebook - multisource_ads.revenue, name: Facebook}, {axisId: multisource_ads.revenue,
            id: GAds - CONTENT - multisource_ads.revenue, name: GAds - CONTENT}, {
            axisId: multisource_ads.revenue, id: GAds - GOOGLE_TV - multisource_ads.revenue,
            name: GAds - GOOGLE_TV}, {axisId: multisource_ads.revenue, id: GAds -
              MIXED - multisource_ads.revenue, name: GAds - MIXED}, {axisId: multisource_ads.revenue,
            id: GAds - SEARCH - multisource_ads.revenue, name: GAds - SEARCH}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      GAds - SEARCH - multisource_ads.revenue: "#202124"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "$#,##0.00"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 31
    col: 11
    width: 13
    height: 7
  - title: Top 10 Performing Campaigns
    name: Top 10 Performing Campaigns
    model: pacing_block
    explore: multisource_ads
    type: looker_grid
    fields: [multisource_ads.campaign_name, multisource_ads.conversions, multisource_ads.revenue,
      multisource_ads.ad_source]
    pivots: [multisource_ads.ad_source]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.ad_source, multisource_ads.conversions desc 0]
    limit: 10
    column_limit: 5
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.ad_source}),"Source","Source")
      label: Source
      value_format:
      value_format_name:
      dimension: source
      _kind_hint: dimension
      _type_hint: string
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
      multisource_ads.conversions:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.spend,
            id: Facebook - multisource_ads.spend, name: Facebook}, {axisId: multisource_ads.spend,
            id: Instagram - multisource_ads.spend, name: Instagram}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      GAds - SEARCH - multisource_ads.revenue: "#202124"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_format: "$#,##0.00"
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 38
    col: 0
    width: 24
    height: 7
  - title: Conversion Rate
    name: Conversion Rate
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.conversion_rate]
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
    value_format: 0.00%
    defaults_version: 1
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 8
    col: 5
    width: 7
    height: 4
  - title: _
    name: _
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.spend_revenue_nav_bar]
    sorts: [multisource_ads.spend_revenue_nav_bar]
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
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
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
      type: tag_list
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

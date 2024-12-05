---
- dashboard: spend_revenue
  title: Spend & Revenue
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 2j57ryf18oLl0wOuTY3nf1
  elements:
  - title: Spend & Revenue
    name: Spend & Revenue
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights_actions.total_revenue]
    filters:
      ad_insights.KPI_select: total^_impressions
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    single_value_title: Product Revenue
    value_format: "$#,##0"
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
    show_dropoff: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    series_value_format:
      ad_insights_actions.total_revenue:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    show_null_points: true
    value_labels: legend
    label_type: labPer
    interpolation: linear
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 5
    col: 0
    width: 6
    height: 4
  - name: General Performance
    type: text
    title_text: General Performance
    body_text: ''
    row: 3
    col: 0
    width: 24
    height: 2
  - title: Spend & Revenue (Copy 3)
    name: Spend & Revenue (Copy 3)
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.roas]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    single_value_title: ROAS (N/A)
    value_format: 0.000,%
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
    show_dropoff: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    show_null_points: true
    value_labels: legend
    label_type: labPer
    interpolation: linear
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 5
    col: 18
    width: 6
    height: 4
  - title: Spend & Revenue (Copy 2)
    name: Spend & Revenue (Copy 2)
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights_actions.total_conversions]
    filters:
      ad_insights.KPI_select: total^_impressions
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    single_value_title: Total Conversions
    value_format: "#,##0"
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
    show_dropoff: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    show_null_points: true
    value_labels: legend
    label_type: labPer
    interpolation: linear
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 5
    col: 12
    width: 6
    height: 4
  - title: Spend & Revenue (Copy 4)
    name: Spend & Revenue (Copy 4)
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights_actions.total_revenue]
    filters:
      ad_insights.KPI_select: total^_impressions
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    single_value_title: AOV
    value_format: "$0,,"
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
    show_dropoff: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    series_value_format:
      ad_insights_actions.total_revenue:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    show_null_points: true
    value_labels: legend
    label_type: labPer
    interpolation: linear
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 9
    col: 0
    width: 8
    height: 5
  - title: Conversion Rate
    name: Conversion Rate
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.total_clicks, ad_insights_actions.total_conversions]
    filters:
      ad_insights.KPI_select: total^_impressions
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
    - category: table_calculation
      expression: "${ad_insights_actions.total_conversions}/${ad_insights.total_clicks}"
      label: Conversion Rate
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: conversion_rate
      _type_hint: number
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    single_value_title: Conversion Rate
    value_format: ''
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
    show_dropoff: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    show_null_points: true
    value_labels: legend
    label_type: labPer
    interpolation: linear
    hidden_fields: [ad_insights_actions.total_conversions, ad_insights.total_clicks]
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 9
    col: 8
    width: 8
    height: 5
  - title: Spend & Revenue (Copy 6)
    name: Spend & Revenue (Copy 6)
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.CPC]
    filters:
      ad_insights.KPI_select: total^_impressions
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    single_value_title: Cost Per Conversion
    value_format: "$#,##0"
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
    show_dropoff: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    series_value_format:
      ad_insights.CPC:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    show_null_points: true
    value_labels: legend
    label_type: labPer
    interpolation: linear
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 9
    col: 16
    width: 8
    height: 5
  - title: Top Performing Campaigns
    name: Top Performing Campaigns
    model: fb_ads
    explore: ad_insights
    type: looker_grid
    fields: [ad_insights.campaign_name, ad_insights_actions.total_conversions, ad_insights_actions.total_revenue]
    sorts: [ad_insights_actions.total_revenue desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
      ad_insights_actions.total_conversions:
        is_active: true
        palette:
          palette_id: 733cd72c-dfb2-5732-14f0-5370286245c6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#FFFFFF"
          - "#0F9D58"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_value_format:
      ad_insights_actions.total_revenue:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_insights_actions.total_revenue,
            id: ad_insights_actions.total_revenue, name: Total Revenue}, {axisId: ad_insights.total_spent,
            id: ad_insights.total_spent, name: Total Spent}], showLabels: true, showValues: true,
        valueFormat: "$#,##0", unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
      ad_insights.total_spent: "#F9AB00"
      ad_insights_actions.total_revenue: "#1A73E8"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Total Spend
    value_format: "$#,##0"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: false
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 43
    col: 0
    width: 24
    height: 6
  - title: Revenue vs Spend over time
    name: Revenue vs Spend over time
    model: fb_ads
    explore: ad_insights
    type: looker_line
    fields: [ad_insights.total_spent, ad_insights.partition_date_date, ad_insights_actions.total_revenue]
    fill_fields: [ad_insights.partition_date_date]
    sorts: [ad_insights.partition_date_date desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_insights_actions.total_revenue,
            id: ad_insights_actions.total_revenue, name: Total Revenue}, {axisId: ad_insights.total_spent,
            id: ad_insights.total_spent, name: Total Spent}], showLabels: true, showValues: true,
        valueFormat: "$#,##0", unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
      ad_insights.total_spent: "#4285F4"
      ad_insights_actions.total_revenue: "#EA4335"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Spend
    value_format: "$#,##0"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    series_value_format:
      ad_insights_actions.total_revenue:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 14
    col: 0
    width: 24
    height: 8
  - title: Total Spend
    name: Total Spend
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.total_spent]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    single_value_title: Total Spend
    value_format: "$#,##0"
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
    show_dropoff: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    show_null_points: true
    value_labels: legend
    label_type: labPer
    interpolation: linear
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 5
    col: 6
    width: 6
    height: 4
  - name: Performance by Source
    type: text
    title_text: Performance by Source
    body_text: ''
    row: 22
    col: 0
    width: 24
    height: 2
  - title: Revenue by Source
    name: Revenue by Source
    model: fb_ads
    explore: ad_insights
    type: looker_column
    fields: [ad_insights_actions.total_revenue, ad_insights.ad_source, source]
    pivots: [ad_insights.ad_source]
    sorts: [ad_insights.ad_source, ad_insights_actions.total_revenue desc 0]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
    - category: dimension
      expression: if(is_null(${ad_insights.ad_source}),"Source","Source")
      label: Source
      value_format:
      value_format_name:
      dimension: source
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_insights_actions.total_revenue,
            id: Facebook - ad_insights_actions.total_revenue, name: Facebook}, {axisId: ad_insights_actions.total_revenue,
            id: Instagram - ad_insights_actions.total_revenue, name: Instagram}],
        showLabels: false, showValues: false, valueFormat: "$#,##0", unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
      ad_insights.total_spent: "#F9AB00"
      ad_insights_actions.total_revenue: "#1A73E8"
      Instagram - ad_insights_actions.total_revenue: "#EA4335"
      Facebook - ad_insights_actions.total_revenue: "#4285F4"
    show_dropoff: false
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
    single_value_title: Total Spend
    value_format: "$#,##0"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    series_value_format:
      ad_insights_actions.total_revenue:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 24
    col: 0
    width: 11
    height: 6
  - title: Spend by Source
    name: Spend by Source
    model: fb_ads
    explore: ad_insights
    type: looker_column
    fields: [ad_insights_actions.total_revenue, ad_insights.ad_source, source]
    pivots: [ad_insights.ad_source]
    sorts: [ad_insights.ad_source, ad_insights_actions.total_revenue desc 0]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
    - category: dimension
      expression: if(is_null(${ad_insights.ad_source}),"Source","Source")
      label: Source
      value_format:
      value_format_name:
      dimension: source
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_insights_actions.total_revenue,
            id: Facebook - ad_insights_actions.total_revenue, name: Facebook}, {axisId: ad_insights_actions.total_revenue,
            id: Instagram - ad_insights_actions.total_revenue, name: Instagram}],
        showLabels: false, showValues: false, valueFormat: "$#,##0", unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
      ad_insights.total_spent: "#F9AB00"
      ad_insights_actions.total_revenue: "#1A73E8"
      Instagram - ad_insights_actions.total_revenue: "#EA4335"
      Facebook - ad_insights_actions.total_revenue: "#4285F4"
    show_dropoff: false
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
    single_value_title: Total Spend
    value_format: "$#,##0"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    series_value_format:
      ad_insights_actions.total_revenue:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 30
    col: 0
    width: 11
    height: 6
  - title: Revenue by Source over time
    name: Revenue by Source over time
    model: fb_ads
    explore: ad_insights
    type: looker_line
    fields: [ad_insights_actions.total_revenue, ad_insights.ad_source, ad_insights.partition_date_date]
    pivots: [ad_insights.ad_source]
    fill_fields: [ad_insights.partition_date_date]
    sorts: [ad_insights.ad_source, ad_insights_actions.total_revenue desc 0]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
    - category: dimension
      expression: if(is_null(${ad_insights.ad_source}),"Source","Source")
      label: Source
      value_format:
      value_format_name:
      dimension: source
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_insights_actions.total_revenue,
            id: Facebook - ad_insights_actions.total_revenue, name: Facebook}, {axisId: ad_insights_actions.total_revenue,
            id: Instagram - ad_insights_actions.total_revenue, name: Instagram}],
        showLabels: false, showValues: false, valueFormat: "$#,##0", unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
      ad_insights.total_spent: "#F9AB00"
      ad_insights_actions.total_revenue: "#1A73E8"
      Instagram - ad_insights_actions.total_revenue: "#EA4335"
      Facebook - ad_insights_actions.total_revenue: "#4285F4"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Spend
    value_format: "$#,##0"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    series_value_format:
      ad_insights_actions.total_revenue:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 24
    col: 11
    width: 13
    height: 6
  - title: Spend by Source over time
    name: Spend by Source over time
    model: fb_ads
    explore: ad_insights
    type: looker_line
    fields: [ad_insights.ad_source, ad_insights.partition_date_date, ad_insights.total_spent]
    pivots: [ad_insights.ad_source]
    fill_fields: [ad_insights.partition_date_date]
    sorts: [ad_insights.ad_source, ad_insights.partition_date_date desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
    - category: dimension
      expression: if(is_null(${ad_insights.ad_source}),"Source","Source")
      label: Source
      value_format:
      value_format_name:
      dimension: source
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_insights_actions.total_revenue,
            id: Facebook - ad_insights_actions.total_revenue, name: Facebook}, {axisId: ad_insights_actions.total_revenue,
            id: Instagram - ad_insights_actions.total_revenue, name: Instagram}],
        showLabels: false, showValues: false, valueFormat: "$#,##0", unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
      ad_insights.total_spent: "#F9AB00"
      ad_insights_actions.total_revenue: "#1A73E8"
      Instagram - ad_insights_actions.total_revenue: "#E52592"
      Instagram - ad_insights.total_spent: "#EA4335"
      Facebook - ad_insights.total_spent: "#4285F4"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_dropoff: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Spend
    value_format: "$#,##0"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 30
    col: 11
    width: 13
    height: 6
  - title: Revenue vs Spend by Source
    name: Revenue vs Spend by Source
    model: fb_ads
    explore: ad_insights
    type: looker_column
    fields: [ad_insights.ad_source, ad_insights.total_spent, ad_insights_actions.total_revenue]
    sorts: [ad_insights.ad_source]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
    - category: dimension
      expression: if(is_null(${ad_insights.ad_source}),"Source","Source")
      label: Source
      value_format:
      value_format_name:
      dimension: source
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_insights_actions.total_revenue,
            id: Facebook - ad_insights_actions.total_revenue, name: Facebook}, {axisId: ad_insights_actions.total_revenue,
            id: Instagram - ad_insights_actions.total_revenue, name: Instagram}],
        showLabels: false, showValues: false, valueFormat: "$#,##0", unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
      ad_insights.total_spent: "#EA4335"
      ad_insights_actions.total_revenue: "#4285F4"
      Instagram - ad_insights_actions.total_revenue: "#E52592"
      Instagram - ad_insights.total_spent: "#E52592"
    show_dropoff: false
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
    single_value_title: Total Spend
    value_format: "$#,##0"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    series_value_format:
      ad_insights_actions.total_revenue:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    value_labels: legend
    label_type: labPer
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 36
    col: 9
    width: 15
    height: 7
  - title: Conversions by Source
    name: Conversions by Source
    model: fb_ads
    explore: ad_insights
    type: looker_pie
    fields: [ad_insights.ad_source, ad_insights_actions.total_conversions]
    sorts: [ad_insights.ad_source]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${ad_insights.campaign_name}),"Campaign Name","Campaign
        Name")
      label: Campaign Name
      value_format:
      value_format_name:
      dimension: campaign_name
      _kind_hint: measure
      _type_hint: string
    - category: dimension
      expression: if(is_null(${ad_insights.ad_source}),"Source","Source")
      label: Source
      value_format:
      value_format_name:
      dimension: source
      _kind_hint: measure
      _type_hint: string
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors:
      ad_insights.KPI: "#7CB"
      Autumn Trends - ad_insights.KPI: "#174EA6"
      Fall Fashion - ad_insights.KPI: "#A50E0E"
      Mother’s Day - ad_insights.KPI: "#E37400"
      New Arrivals - ad_insights.KPI: "#FBBC04"
      Back to School - ad_insights.KPI: "#4285F4"
      Father’s Day - ad_insights.KPI: "#EA4335"
      New Year Deals - ad_insights.KPI: "#0D652D"
      Winter Collection - ad_insights.KPI: "#34A853"
      ad_insights.total_spent: "#F9AB00"
      ad_insights_actions.total_revenue: "#1A73E8"
      Instagram - ad_insights_actions.total_revenue: "#E52592"
      Instagram - ad_insights.total_spent: "#E52592"
      Facebook: "#4285F4"
      Instagram: "#EA4335"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_insights_actions.total_revenue,
            id: Facebook - ad_insights_actions.total_revenue, name: Facebook}, {axisId: ad_insights_actions.total_revenue,
            id: Instagram - ad_insights_actions.total_revenue, name: Instagram}],
        showLabels: false, showValues: false, valueFormat: "$#,##0", unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    show_dropoff: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Spend
    value_format: "$#,##0"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights.CPC:
        is_active: false
    table_theme: editable
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    defaults_version: 1
    hidden_pivots: {}
    hide_totals: false
    hide_row_totals: false
    listen:
      Campaign Name: ad_insights.campaign_name
      Month: ad_insights.partition_date_date
    row: 36
    col: 0
    width: 9
    height: 7
  - name: ''
    type: text
    title_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/fb_ads::core_metrics"> Core Metrics Dashboard </a>

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/fb_ads::campaign_manager"> Campaign Manager</a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards-next/fb_ads::campaign_comparison"> Marketing Campaign Comparison </a>

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> Spend & Revenue </a>


      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 3
  filters:
  - name: Month
    title: Month
    type: field_filter
    default_value: 2024-10
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
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
      type: advanced
      display: popover
    model: fb_ads
    explore: ad_insights
    listens_to_filters: []
    field: ad_insights.campaign_name

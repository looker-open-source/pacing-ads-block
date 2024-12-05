- dashboard: campaign_manager
  title: Meta Ads Campaign Manager
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 419ijNjQjeM74PeQimBHDB
  elements:
  - title: Campaigns Overview
    name: Campaigns Overview
    model: fb_ads
    explore: ad_insights
    type: looker_grid
    fields: [ad_insights.campaign_name, ad_insights_actions.total_revenue, ad_insights.total_spent,
      ad_insights.total_impressions, ad_insights.total_clicks, ad_insights_actions.total_conversions,
      ad_insights.CPC, ad_insights.CPM, ad_insights.CTR]
    sorts: [ad_insights.total_impressions desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 629b455f-662e-4854-a424-4f0c9d4bbdfb
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      ad_insights_actions.total_revenue:
        is_active: true
        palette:
          palette_id: 38ea8982-a1ac-44ee-346f-b55a6d5b69f1
          collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
          custom_colors:
          - "#D2E3FC"
          - "#4285F4"
          - "#174EA6"
      ad_insights.total_spent:
        is_active: true
        palette:
          palette_id: ad525d82-c7d7-92c5-e92b-8d074bd300ca
          collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
          custom_colors:
          - "#D2E3FC"
          - "#4285F4"
          - "#174EA6"
    series_text_format:
      ad_insights.campaign_name: {}
      ad_insights_actions.total_revenue:
        align: center
      ad_insights.total_impressions:
        align: center
      ad_insights.total_clicks:
        align: center
      ad_insights_actions.total_conversions:
        align: center
      ad_insights.CPC:
        align: center
      ad_insights.CPM:
        align: center
      ad_insights.CTR:
        align: center
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 59
    col: 0
    width: 24
    height: 8
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
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 4
    col: 12
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
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 4
    col: 18
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
    single_value_title: Total Spent
    value_format: ''
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 4
    col: 0
    width: 5
    height: 4
  - title: Total Conversions
    name: Total Conversions
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights_actions.total_conversions]
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
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 4
    col: 5
    width: 7
    height: 4
  - title: CPC
    name: CPC
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
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    custom_color: "#4285F4"
    single_value_title: Cost Per Conversion
    value_format: "$#,##0.0"
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
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 35
    col: 5
    width: 3
    height: 3
  - title: Total revenue
    name: Total revenue
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.roas]
    filters:
      ad_insights.set_clicks_goal: ''
      ad_insights.set_impressions_goal: ''
      ad_insights.date_start_year: '2024'
      ad_insights.ad_name: ''
      ad_insights.set_conversions_goal: ''
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
    single_value_title: ROAS
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 35
    col: 15
    width: 5
    height: 3
  - title: Impressions by Campaign
    name: Impressions by Campaign
    model: fb_ads
    explore: ad_insights
    type: looker_pie
    fields: [ad_insights.total_impressions, ad_insights.campaign_name]
    sorts: [ad_insights.total_impressions desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    start_angle: -1
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors: {}
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 8
    col: 8
    width: 8
    height: 7
  - title: Spend by Campaign
    name: Spend by Campaign
    model: fb_ads
    explore: ad_insights
    type: looker_pie
    fields: [ad_insights.campaign_name, ad_insights.total_spent]
    sorts: [ad_insights.total_spent desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    start_angle: -1
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors: {}
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 15
    col: 8
    width: 8
    height: 7
  - title: Clicks by Campaign
    name: Clicks by Campaign
    model: fb_ads
    explore: ad_insights
    type: looker_pie
    fields: [ad_insights.campaign_name, ad_insights.total_clicks]
    sorts: [ad_insights.total_clicks desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    start_angle: -1
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors:
      Easter Promotions: "#F8F8F8"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 8
    col: 0
    width: 8
    height: 7
  - title: Conversions by Campaign
    name: Conversions by Campaign
    model: fb_ads
    explore: ad_insights
    type: looker_pie
    fields: [ad_insights.campaign_name, ad_insights_actions.total_conversions]
    sorts: [ad_insights_actions.total_conversions desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    start_angle: -1
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    series_colors: {}
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 8
    col: 16
    width: 8
    height: 7
  - title: CPM
    name: CPM
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights.CPM]
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 35
    col: 8
    width: 3
    height: 3
  - title: CTR by Campaign
    name: CTR by Campaign
    model: fb_ads
    explore: ad_insights
    type: looker_column
    fields: [ad_insights.CTR, ad_insights.campaign_name]
    sorts: [ad_insights.campaign_name, ad_insights.CTR desc]
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
    point_style: circle
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
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_colors:
      ad_insights.CTR: "#34A853"
    show_dropoff: false
    hidden_pivots: {}
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
    hidden_fields: []
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 38
    col: 0
    width: 12
    height: 7
  - title: CPC by Campaign
    name: CPC by Campaign
    model: fb_ads
    explore: ad_insights
    type: looker_column
    fields: [ad_insights.campaign_name, ad_insights.CPC]
    sorts: [ad_insights.CPC desc]
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
    point_style: circle
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
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    label_value_format: ''
    series_colors:
      ad_insights.CPC: "#34A853"
    show_dropoff: false
    hidden_pivots: {}
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
    hidden_fields: []
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 45
    col: 0
    width: 12
    height: 7
  - title: CPM by Campaign
    name: CPM by Campaign
    model: fb_ads
    explore: ad_insights
    type: looker_column
    fields: [ad_insights.campaign_name, ad_insights.CPM]
    sorts: [ad_insights.CPM desc 0]
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
    point_style: circle
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
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    label_value_format: ''
    series_colors:
      ad_insights.CPM: "#34A853"
    label_color: []
    show_dropoff: false
    hidden_pivots: {}
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
    hidden_fields: []
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 38
    col: 12
    width: 12
    height: 7
  - title: CTR by Campaign
    name: CTR by Campaign (2)
    model: fb_ads
    explore: ad_insights
    type: looker_column
    fields: [ad_insights.campaign_name, ad_insights.average_ctr]
    sorts: [ad_insights.campaign_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${ad_insights.average_ctr}"
      label: CTR
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: ctr
      _type_hint: number
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
    point_style: circle
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
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    label_value_format: ''
    series_colors:
      ctr: "#34A853"
    show_dropoff: false
    hidden_pivots: {}
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
    hidden_fields: [ad_insights.average_ctr]
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 45
    col: 12
    width: 12
    height: 7
  - title: CTR
    name: CTR
    model: pacing_block
    explore: ad_insights
    type: single_value
    fields: [ad_insights.CTR]
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 35
    col: 20
    width: 4
    height: 3
  - name: ''
    type: text
    title_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/fb_ads::core_metrics"> Core Metrics Dashboard </a>

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> Campaign Manager </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards-next/fb_ads::campaign_comparison"> Marketing Campaign Comparison </a>

             <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/fb_ads::spend_revenue"> Spend & Revenue </a>

      </nav>

      </div>
    row: 2
    col: 0
    width: 24
    height: 2
  - title: Total Conversions (Copy)
    name: Total Conversions (Copy)
    model: fb_ads
    explore: ad_insights
    type: single_value
    fields: [ad_insights_actions.total_revenue]
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
    single_value_title: Total Revenue
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Partition Date Date: ad_insights.partition_date_date
      Ad Source: ad_insights.ad_source
      Campaign Name: ad_insights.campaign_name
      Region: ad_insights.region
    row: 35
    col: 0
    width: 5
    height: 3
  - title: Daily Breakdown
    name: Daily Breakdown
    model: pacing_block
    explore: ad_insights
    type: looker_line
    fields: [ad_insights.partition_date_date, ad_insights.total_spent, ad_insights.total_impressions,
      ad_insights.total_clicks, ad_insights.CTR, ad_insights.CPM, ad_insights.CPC,
      ad_insights.conversion_rate]
    fill_fields: [ad_insights.partition_date_date]
    filters:
      ad_insights.partition_date_month: last month
    sorts: [ad_insights.partition_date_date desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_insights.total_spent,
            id: ad_insights.total_spent, name: Total Spent}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: left, series: [{axisId: ad_insights.total_impressions,
            id: ad_insights.total_impressions, name: Total Impressions}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: left, series: [{axisId: ad_insights.total_clicks,
            id: ad_insights.total_clicks, name: Total Clicks}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: ad_insights.CPC,
            id: ad_insights.CPC, name: CPC}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: ad_insights.CTR, id: ad_insights.CTR,
            name: CTR}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: ad_insights.CPM, id: ad_insights.CPM, name: CPM}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: ad_insights.conversion_rate,
            id: ad_insights.conversion_rate, name: Conversion Rate}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 22
    col: 0
    width: 24
    height: 13
  - title: New Tile
    name: New Tile
    model: pacing_block
    explore: ad_insights
    type: single_value
    fields: [ad_insights.conversion_rate]
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
    single_value_title: Conversion Rate
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    listen: {}
    row: 35
    col: 11
    width: 4
    height: 3
  - title: Conversion Rate by Campaign
    name: Conversion Rate by Campaign
    model: pacing_block
    explore: ad_insights
    type: looker_column
    fields: [ad_insights.conversion_rate, ad_insights.campaign_name]
    sorts: [ad_insights.conversion_rate desc 0]
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '12'
    series_colors:
      ad_insights.conversion_rate: "#34A853"
    series_labels: {}
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Conversion Rate
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    hidden_fields: []
    hidden_points_if_no: []
    listen: {}
    row: 52
    col: 6
    width: 12
    height: 7
  filters:
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
      type: tag_list
      display: popover
    model: fb_ads
    explore: ad_insights
    listens_to_filters: []
    field: ad_insights.campaign_name
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
  - name: Region
    title: Region
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
    field: ad_insights.region

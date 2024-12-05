- dashboard: campaign_comparison
  title: Marketing Campaign Comparison
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: LoqLDMfZKCWVoP77cnAIGA
  elements:
  - title: Marketing Campaign Comparison
    name: Marketing Campaign Comparison
    model: fb_ads
    explore: ad_insights
    type: looker_grid
    fields: [ad_insights.ad_source, ad_insights.campaign_name, ad_insights.total_spent,
      ad_insights_actions.total_revenue, ad_insights.total_clicks, ad_insights.total_impressions,
      ad_insights_actions.total_conversions]
    filters:
      ad_insights.KPI_select: total^_clicks
    sorts: [ad_insights.campaign_name]
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
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
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
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    show_null_points: true
    value_labels: legend
    label_type: labPer
    listen:
      Campaign Name: ad_insights.campaign_name
      Ad Source: ad_insights.ad_source
    row: 13
    col: 0
    width: 24
    height: 6
  - title: Performance Metric Top 5 Campaigns
    name: Performance Metric Top 5 Campaigns
    model: fb_ads
    explore: ad_insights
    type: looker_column
    fields: [ad_insights.campaign_name, ad_insights.KPI]
    sorts: [ad_insights.KPI desc]
    limit: 5
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    x_axis_zoom: false
    y_axis_zoom: false
    hide_legend: false
    series_colors: {}
    series_labels:
      ad_insights.goal: Goal
      ad_insights.KPI: KPI
    reference_lines: []
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    listen:
      Campaign Performance Metric: ad_insights.KPI_select
      Partition Date Month: ad_insights.partition_date_month
      Ad Source: ad_insights.ad_source
    row: 2
    col: 13
    width: 10
    height: 11
  - title: Campaign Performance Daily breakdown by Month
    name: Campaign Performance Daily breakdown by Month
    model: fb_ads
    explore: ad_insights
    type: looker_line
    fields: [ad_insights.campaign_name, ad_insights.partition_date_date, ad_insights.KPI]
    pivots: [ad_insights.campaign_name]
    fill_fields: [ad_insights.partition_date_date]
    filters:
      ad_insights.partition_date_month_name: September
    sorts: [ad_insights.campaign_name, ad_insights.partition_date_date]
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
    hidden_pivots: {}
    defaults_version: 1
    hidden_series: []
    listen:
      Campaign Performance Metric: ad_insights.KPI_select
      Partition Date Month: ad_insights.partition_date_month
      Campaign Name: ad_insights.campaign_name
      Ad Source: ad_insights.ad_source
    row: 2
    col: 0
    width: 13
    height: 11
  - title: Campaign Performance Overview
    name: Campaign Performance Overview
    model: fb_ads
    explore: ad_insights
    type: looker_grid
    fields: [ad_insights.campaign_name, ad_insights.CPC, ad_insights.CPM, ad_insights.CTR,
      ad_insights.roas, ad_insights.conversion_rate]
    sorts: [ad_insights.CPC desc]
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
      ad_insights.CPC:
        is_active: true
        palette:
          palette_id: 17c7b8d1-ce13-b387-422b-6337d6bd82b5
          collection_id: google
          custom_colors:
          - "#CEEAD6"
          - "#34A853"
          - "#0D652D"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Campaign Performance Metric: ad_insights.KPI_select
      Partition Date Month: ad_insights.partition_date_month
      Campaign Name: ad_insights.campaign_name
      Ad Source: ad_insights.ad_source
    row: 19
    col: 0
    width: 24
    height: 8
  - name: ''
    type: text
    title_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

       <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/fb_ads::core_metrics"> Core Metrics Dashboard </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards-next/fb_ads::campaign_manager"> Campaign Manager </a>

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> Marketing Campaign Comparison</a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/fb_ads::spend_revenue"> Spend & Revenue </a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 23
    height: 2
  - title: Campaign Performance - Daily Goal vs Actual Results
    name: Campaign Performance - Daily Goal vs Actual Results
    model: pacing_block
    explore: goals_campaigns
    type: looker_line
    fields: [ad_insights.partition_date_date, goals_campaigns.campaign_name, ad_insights.total_clicks,
      average_of_equivalent_day_goal]
    pivots: [goals_campaigns.campaign_name]
    fill_fields: [ad_insights.partition_date_date]
    filters:
      ad_insights.partition_date_date: NOT NULL
      goals_campaigns.campaign_name: ''
    sorts: [ad_insights.partition_date_date, goals_campaigns.campaign_name desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: goals_campaigns.equivalent_day_goal
      expression: ''
      label: Average of Equivalent Day Goal
      measure: average_of_equivalent_day_goal
      type: average
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
    trellis: pivot
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
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 27
    col: 0
    width: 24
    height: 10
  filters:
  - name: Campaign Performance Metric
    title: Campaign Performance Metric
    type: field_filter
    default_value: total^_clicks
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: fb_ads
    explore: ad_insights
    listens_to_filters: []
    field: ad_insights.KPI_select
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
  - name: Partition Date Month
    title: Partition Date Month
    type: field_filter
    default_value: 2024-09
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: fb_ads
    explore: ad_insights
    listens_to_filters: []
    field: ad_insights.partition_date_month
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

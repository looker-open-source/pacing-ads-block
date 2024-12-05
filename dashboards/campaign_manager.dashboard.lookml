---
- dashboard: campaign_manager
  title: Campaign Manager
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: LpNUc4vomVE8qUYAq2DIAV
  elements:
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
    single_value_title: Total Spend
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 3
    col: 0
    width: 6
    height: 4
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/fb_ads::core_metrics"> Core Metrics Dashboard </a>

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> Campaign Manager </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards-next/fb_ads::campaign_comparison"> Marketing Campaign Comparison </a>

             <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/fb_ads::spend_revenue"> Spend & Revenue </a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 3
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
    single_value_title: Total Conversions
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 3
    col: 6
    width: 6
    height: 4
  - title: New Tile
    name: New Tile
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.clicks]
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
    single_value_title: Total Clicks
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 3
    col: 12
    width: 6
    height: 4
  - title: Impressions
    name: Impressions
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.impressions]
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
    single_value_title: Total Clicks
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 3
    col: 18
    width: 6
    height: 4
  - title: Top 5 Campaigns by Clicks
    name: Top 5 Campaigns by Clicks
    model: pacing_block
    explore: multisource_ads
    type: looker_pie
    fields: [multisource_ads.clicks, multisource_ads.campaign_name]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.clicks desc]
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
      _kind_hint: dimension
      _type_hint: string
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.clicks,
            id: Autumn Layers - multisource_ads.clicks, name: Autumn Layers}, {axisId: multisource_ads.clicks,
            id: Autumn Trends - multisource_ads.clicks, name: Autumn Trends}, {axisId: multisource_ads.clicks,
            id: Black Friday - multisource_ads.clicks, name: Black Friday}, {axisId: multisource_ads.clicks,
            id: Cyber Monday Specials - multisource_ads.clicks, name: Cyber Monday
              Specials}, {axisId: multisource_ads.clicks, id: Father’s Day Offers
              - multisource_ads.clicks, name: Father’s Day Offers}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      Autumn Layers: "#9AA0A6"
      Cyber Monday Specials: "#F8F8F8"
      Cyber Monday Specials - multisource_ads.clicks: "#EA4335"
      Autumn Layers - multisource_ads.clicks: "#FBBC04"
      Father’s Day Offers - multisource_ads.clicks: "#202124"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Clicks
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
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
    listen:
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 7
    col: 0
    width: 8
    height: 6
  - title: Top 5 Impressions by Campaign
    name: Top 5 Impressions by Campaign
    model: pacing_block
    explore: multisource_ads
    type: looker_pie
    fields: [multisource_ads.campaign_name, multisource_ads.impressions]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.impressions desc 0]
    limit: 5
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Autumn Layers: "#9AA0A6"
      Cyber Monday Specials: "#F8F8F8"
      Spring Essentials: "#FBBC04"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Clicks
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 7
    col: 8
    width: 8
    height: 6
  - title: Top 5 Conversions by Campaign
    name: Top 5 Conversions by Campaign
    model: pacing_block
    explore: multisource_ads
    type: looker_pie
    fields: [multisource_ads.campaign_name, multisource_ads.conversions]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.conversions desc 0]
    limit: 5
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Autumn Layers: "#9AA0A6"
      Cyber Monday Specials: "#F1F3F4"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Clicks
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 7
    col: 16
    width: 8
    height: 6
  - title: Top 5 Cost by Campaign
    name: Top 5 Cost by Campaign
    model: pacing_block
    explore: multisource_ads
    type: looker_pie
    fields: [multisource_ads.campaign_name, multisource_ads.spend]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.spend desc 0]
    limit: 5
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Autumn Layers: "#9AA0A6"
      Cyber Monday Specials: "#F1F3F4"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Clicks
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 13
    col: 0
    width: 24
    height: 5
  - title: Total Revenue
    name: Total Revenue
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
    single_value_title: Total Revenue
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
    row: 18
    col: 0
    width: 4
    height: 4
  - title: New Tile
    name: New Tile (2)
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
    single_value_title: Cost Per Conversion
    value_format: "$0.00"
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
    row: 18
    col: 4
    width: 4
    height: 4
  - title: New Tile
    name: New Tile (3)
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.CPM]
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
    single_value_title: CPM
    value_format: "$0.00"
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
    row: 18
    col: 8
    width: 4
    height: 4
  - title: New Tile
    name: New Tile (4)
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
    single_value_title: ROAS
    value_format: "$0.00"
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
    row: 18
    col: 12
    width: 4
    height: 4
  - title: CTR
    name: CTR
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.CTR]
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
    single_value_title: CTR
    value_format: "$0.00"
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
    row: 18
    col: 16
    width: 4
    height: 4
  - title: CTR by Campaign
    name: CTR by Campaign
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.CTR, multisource_ads.campaign_name]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.CTR desc 0]
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
    series_colors:
      multisource_ads.CTR: "#34A853"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: CTR
    value_format: "$0.00"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
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
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 22
    col: 0
    width: 12
    height: 8
  - title: CPM by Campaign
    name: CPM by Campaign
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.campaign_name, multisource_ads.CPM]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.CPM desc 0]
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
    series_colors:
      multisource_ads.CTR: "#34A853"
      multisource_ads.CPM: "#34A853"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: CTR
    value_format: "$0.00"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
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
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 22
    col: 12
    width: 12
    height: 8
  - title: CPC by Campaign
    name: CPC by Campaign
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.campaign_name, multisource_ads.CPC]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.CPC desc 0]
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
    series_colors:
      multisource_ads.CTR: "#34A853"
      multisource_ads.CPC: "#34A853"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: CTR
    value_format: "$0.00"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
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
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 30
    col: 0
    width: 12
    height: 8
  - title: Conversion Rate by Campaign
    name: Conversion Rate by Campaign
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.campaign_name, multisource_ads.conversion_rate]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.campaign_name]
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
    series_colors:
      multisource_ads.CTR: "#34A853"
      multisource_ads.CPC: "#34A853"
      multisource_ads.conversion_rate: "#34A853"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: CTR
    value_format: "$0.00"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
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
    listen:
      Ad Source: multisource_ads.ad_source
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
    row: 30
    col: 12
    width: 12
    height: 8
  - title: Conversion rate
    name: Conversion rate
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.conversion_rate]
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
    single_value_title: Conversion Rate
    value_format: "$0.00"
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
    row: 18
    col: 20
    width: 4
    height: 4
  filters:
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

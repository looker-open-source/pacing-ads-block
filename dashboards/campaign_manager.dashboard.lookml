- dashboard: campaign_manager
  title: Campaign Manager
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: CxlUnA8SA3V0I9YS5MshYK
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
    row: 4
    col: 0
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
    custom_color: "#000000"
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
    row: 4
    col: 18
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
    custom_color: "#000000"
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
    row: 4
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
    custom_color: "#000000"
    single_value_title: Total Impressions
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
    row: 4
    col: 6
    width: 6
    height: 4
  - title: Clicks by Source
    name: Clicks by Source
    model: pacing_block
    explore: multisource_ads
    type: looker_pie
    fields: [multisource_ads.clicks, multisource_ads.ad_source]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.ad_source]
    limit: 10
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
    series_colors:
      Autumn Layers: "#9AA0A6"
      Cyber Monday Specials: "#F8F8F8"
      Cyber Monday Specials - multisource_ads.clicks: "#EA4335"
      Autumn Layers - multisource_ads.clicks: "#FBBC04"
      Father’s Day Offers - multisource_ads.clicks: "#202124"
      multisource_ads.clicks: "#174EA6"
      GAds - SEARCH_PARTNERS: "#FEEFC3"
      GAds - UNKNOWN: "#D2E3FC"
      GAds - UNSPECIFIED: "#FAD2CF"
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
    row: 8
    col: 12
    width: 6
    height: 5
  - title: Impressions by Source
    name: Impressions by Source
    model: pacing_block
    explore: multisource_ads
    type: looker_pie
    fields: [multisource_ads.impressions, multisource_ads.ad_source]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.ad_source]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Autumn Layers: "#9AA0A6"
      Cyber Monday Specials: "#F8F8F8"
      Spring Essentials: "#FBBC04"
      multisource_ads.impressions: "#0D652D"
      GAds - SEARCH_PARTNERS: "#FEEFC3"
      GAds - UNKNOWN: "#D2E3FC"
      GAds - UNSPECIFIED: "#FAD2CF"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.impressions,
            id: multisource_ads.impressions, name: Impressions}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    single_value_title: Total Clicks
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 8
    col: 6
    width: 6
    height: 5
  - title: Conversions by Source
    name: Conversions by Source
    model: pacing_block
    explore: multisource_ads
    type: looker_pie
    fields: [multisource_ads.conversions, multisource_ads.ad_source]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.ad_source]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Autumn Layers: "#9AA0A6"
      Cyber Monday Specials: "#F1F3F4"
      multisource_ads.conversions: "#FBBC04"
      GAds - SEARCH_PARTNERS: "#FEEFC3"
      GAds - UNKNOWN: "#D2E3FC"
      GAds - UNSPECIFIED: "#FAD2CF"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.conversions,
            id: multisource_ads.conversions, name: Conversions}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: false
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
    listen:
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 8
    col: 18
    width: 6
    height: 5
  - title: Cost by Source
    name: Cost by Source
    model: pacing_block
    explore: multisource_ads
    type: looker_pie
    fields: [multisource_ads.spend, multisource_ads.ad_source]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.ad_source]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    series_colors:
      Autumn Layers: "#9AA0A6"
      Cyber Monday Specials: "#F1F3F4"
      multisource_ads.spend: "#202124"
      GAds - UNSPECIFIED: "#FAD2CF"
      GAds - UNKNOWN: "#D2E3FC"
      GAds - SEARCH_PARTNERS: "#FEEFC3"
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
            id: multisource_ads.spend, name: Spend}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    single_value_title: Total Clicks
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 8
    col: 0
    width: 6
    height: 5
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 13
    col: 6
    width: 6
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 13
    col: 12
    width: 6
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
    value_format: ''
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
    width: 6
    height: 4
  - title: CTR by Source
    name: CTR by Source
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.CTR, multisource_ads.ad_source]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.CTR desc]
    limit: 5
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.ad_source}),"Source","Source")
      label: Ad Source
      value_format:
      value_format_name:
      dimension: ad_source
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
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.CTR,
            id: multisource_ads.CTR, name: CTR}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    font_size: ''
    series_colors:
      multisource_ads.CTR: "#34A853"
      GAds - SEARCH_PARTNERS - multisource_ads.CTR: "#FEEFC3"
      GAds - UNKNOWN - multisource_ads.CTR: "#D2E3FC"
      GAds - UNSPECIFIED - multisource_ads.CTR: "#FAD2CF"
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 17
    col: 0
    width: 12
    height: 6
  - title: CPM by Source
    name: CPM by Source
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.CPM, multisource_ads.ad_source]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.ad_source, multisource_ads.CPM desc]
    limit: 5
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.ad_source}),"Ad Source","Ad Source")
      label: Ad Source
      value_format:
      value_format_name:
      dimension: ad_source
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
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.CPM,
            id: multisource_ads.CPM, name: CPM}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      multisource_ads.CTR: "#34A853"
      multisource_ads.CPM: "#34A853"
      GAds - SEARCH_PARTNERS - multisource_ads.CPM: "#FEEFC3"
      GAds - UNKNOWN - multisource_ads.CPM: "#D2E3FC"
      GAds - UNSPECIFIED - multisource_ads.CPM: "#FAD2CF"
    label_color: []
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 17
    col: 12
    width: 12
    height: 6
  - title: CPC by Source
    name: CPC by Source
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.CPC, multisource_ads.ad_source]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.ad_source, multisource_ads.CPC desc]
    limit: 5
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.ad_source}),"Ad Source","Ad Source")
      label: Ad Source
      value_format:
      value_format_name:
      dimension: ad_source
      _kind_hint: dimension
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
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.CPC,
            id: multisource_ads.CPC, name: CPC}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      multisource_ads.CTR: "#34A853"
      multisource_ads.CPC: "#34A853"
      GAds - SEARCH_PARTNERS - multisource_ads.CPC: "#FEEFC3"
      GAds - UNKNOWN - multisource_ads.CPC: "#D2E3FC"
      GAds - UNSPECIFIED - multisource_ads.CPC: "#FAD2CF"
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 23
    col: 0
    width: 12
    height: 6
  - title: Conversion Rate by Source
    name: Conversion Rate by Source
    model: pacing_block
    explore: multisource_ads
    type: looker_column
    fields: [multisource_ads.conversion_rate, multisource_ads.ad_source]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.conversion_rate desc]
    limit: 5
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.ad_source}),"Ad Source","Ad Source")
      label: Ad source
      value_format:
      value_format_name:
      dimension: ad_source
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.conversion_rate,
            id: multisource_ads.conversion_rate, name: Conversion Rate}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#,##0.00"
    series_colors:
      multisource_ads.CTR: "#34A853"
      multisource_ads.CPC: "#34A853"
      multisource_ads.conversion_rate: "#34A853"
      GAds - SEARCH_PARTNERS - multisource_ads.conversion_rate: "#FEEFC3"
      GAds - UNKNOWN - multisource_ads.conversion_rate: "#D2E3FC"
      GAds - UNSPECIFIED - multisource_ads.conversion_rate: "#FAD2CF"
    label_color: []
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 23
    col: 12
    width: 12
    height: 6
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
    value_format: ''
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
    col: 18
    width: 6
    height: 4
  - name: Scorecards
    type: text
    title_text: Scorecards
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - title: Performance Overview
    name: Performance Overview
    model: pacing_block
    explore: multisource_ads
    type: looker_grid
    fields: [multisource_ads.CPC, multisource_ads.ad_source, multisource_ads.CPM,
      multisource_ads.CTR, multisource_ads.conversion_rate, multisource_ads.clicks,
      multisource_ads.impressions, multisource_ads.spend, multisource_ads.revenue]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.CPC desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.ad_source}),"Ad Source","Ad Source")
      label: Ad Source
      value_format:
      value_format_name:
      dimension: ad_source
      _kind_hint: dimension
      _type_hint: string
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
      multisource_ads.CPC:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.CPC,
            id: multisource_ads.CPC, name: CPC}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      multisource_ads.CTR: "#34A853"
      multisource_ads.CPC: "#111184"
      GAds - SEARCH_PARTNERS - multisource_ads.CPC: "#0D652D"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: CTR
    value_format: "$0.00"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 29
    col: 0
    width: 24
    height: 7
  - title: Campaign Overview
    name: Campaign Overview
    model: pacing_block
    explore: multisource_ads
    type: looker_grid
    fields: [multisource_ads.campaign_name, multisource_ads.ad_source, multisource_ads.CPC,
      multisource_ads.CPM, multisource_ads.CTR, multisource_ads.conversion_rate, multisource_ads.clicks,
      multisource_ads.impressions, multisource_ads.spend, multisource_ads.revenue]
    filters:
      multisource_ads.KPI_select: total^_impressions
    sorts: [multisource_ads.CPC desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: if(is_null(${multisource_ads.ad_source}),"Ad Source","Ad Source")
      label: Ad Source
      value_format:
      value_format_name:
      dimension: ad_source
      _kind_hint: dimension
      _type_hint: string
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
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
      multisource_ads.CPC:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: multisource_ads.CPC,
            id: multisource_ads.CPC, name: CPC}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      multisource_ads.CTR: "#34A853"
      multisource_ads.CPC: "#111184"
      GAds - SEARCH_PARTNERS - multisource_ads.CPC: "#0D652D"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: CTR
    value_format: "$0.00"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 36
    col: 0
    width: 24
    height: 7
  - title: _
    name: _
    model: pacing_block
    explore: multisource_ads
    type: single_value
    fields: [multisource_ads.campaign_manager_nav_bar]
    sorts: [multisource_ads.campaign_manager_nav_bar]
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
      Date: multisource_ads.partition_date_date
      Campaign Name: multisource_ads.campaign_name
      Ad Source: multisource_ads.ad_source
    row: 0
    col: 0
    width: 24
    height: 2
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

---
- dashboard: arima_model
  title: ARIMA MODEL
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: prk5TB4qiDOQAkCtcbye2G
  elements:
  - title: ARIMA prediction by Ads Source
    name: ARIMA prediction by Ads Source
    model: pacing_block
    explore: forecast
    type: looker_line
    fields: [forecast.ad_source, forecast.time_series_type, forecast.revenue, forecast.date_date]
    pivots: [forecast.ad_source, forecast.time_series_type]
    fill_fields: [forecast.date_date]
    sorts: [forecast.ad_source, forecast.time_series_type, forecast.date_date desc]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: false
    interpolation: step
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    trellis_rows: 1
    series_colors: {}
    discontinuous_nulls: true
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Ad Source: forecast.ad_source
      Date Date: forecast.date_date
    row: 8
    col: 0
    width: 24
    height: 13
  - title: ARIMA prediction - Revenue
    name: ARIMA prediction - Revenue
    model: pacing_block
    explore: forecast
    type: looker_area
    fields: [forecast.time_series_type, forecast.date_date, forecast.revenue_lower_bound,
      forecast.revenue_upper_bound, forecast.revenue]
    pivots: [forecast.time_series_type]
    filters:
      forecast.revenue_lower_bound: NOT NULL
      forecast.revenue_upper_bound: NOT NULL
    sorts: [forecast.time_series_type, forecast.date_date desc]
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
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: forecast.revenue_lower_bound,
            id: forecast - forecast.revenue_lower_bound, name: forecast - Forecast
              Revenue Lower Bound}, {axisId: forecast.revenue_upper_bound, id: forecast
              - forecast.revenue_upper_bound, name: forecast - Forecast Revenue Upper
              Bound}, {axisId: forecast.revenue, id: forecast - forecast.revenue,
            name: forecast - Forecast Revenue}, {axisId: forecast.revenue, id: history
              - forecast.revenue, name: history - Forecast Revenue}], showLabels: true,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    discontinuous_nulls: false
    hidden_pivots:
      history:
        measure_names:
        - forecast.revenue_lower_bound
        - forecast.revenue_upper_bound
    defaults_version: 1
    listen:
      Ad Source: forecast.ad_source
      Date Date: forecast.date_date
    row: 0
    col: 10
    width: 14
    height: 8
  - title: Model Evaluation
    name: Model Evaluation
    model: pacing_block
    explore: model_evaluation
    type: looker_grid
    fields: [model_evaluation.ad_source, variance, aic, log_likelihood]
    filters: {}
    sorts: [aic desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${variance}/ ${mean}) -1"
      label: Difference with MEAN
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: difference_with_mean
      _type_hint: number
    - category: table_calculation
      expression: mean(${variance})
      label: MEAN
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: mean
      _type_hint: number
    - category: measure
      expression: ''
      label: Aic
      value_format:
      value_format_name: decimal_0
      based_on: model_evaluation.aic
      _kind_hint: measure
      measure: aic
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Log Likelihood
      value_format:
      value_format_name: decimal_0
      based_on: model_evaluation.log_likelihood
      _kind_hint: measure
      measure: log_likelihood
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Variance
      value_format: 0.000,, "M"
      value_format_name: __custom
      based_on: model_evaluation.variance
      _kind_hint: measure
      measure: variance
      type: average
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [{}]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      difference_with_mean:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
        value_display: true
      aic:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      log_likelihood:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_value_format:
      difference_with_mean:
        format_string: "#,##0.0%"
      aic:
        format_string: "#,##0"
      log_likelihood:
        format_string: "#,##0"
      average_of_variance:
        format_string: "#,##0"
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
    hidden_fields: [mean, variance]
    overlay: true
    mapperOptions: {}
    listen:
      Ad Source: model_evaluation.ad_source
    row: 21
    col: 0
    width: 15
    height: 9
  - title: Seasonality
    name: Seasonality
    model: pacing_block
    explore: model_evaluation
    type: looker_column
    fields: [model_evaluation.ad_source, non_seasonal_d, non_seasonal_p, non_seasonal_q,
      model_evaluation.seasonal_periods]
    filters:
      model_evaluation.ad_source: GAds - SEARCH,GAds - YOUTUBE,"GAds - SEARCH_PARTNERS",Meta
    sorts: [non_seasonal_d desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${variance}/ ${mean}) -1"
      label: Difference with MEAN
      value_format:
      value_format_name: percent_1
      _kind_hint: measure
      table_calculation: difference_with_mean
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: mean(${variance})
      label: MEAN
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: mean
      _type_hint: number
      is_disabled: true
    - category: measure
      expression: ''
      label: Aic
      value_format:
      value_format_name: decimal_0
      based_on: model_evaluation.aic
      _kind_hint: measure
      measure: aic
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Log Likelihood
      value_format:
      value_format_name: decimal_0
      based_on: model_evaluation.log_likelihood
      _kind_hint: measure
      measure: log_likelihood
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Variance
      value_format: 0.000,, "M"
      value_format_name: __custom
      based_on: model_evaluation.variance
      _kind_hint: measure
      measure: variance
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Non Seasonal D
      based_on: model_evaluation.non_seasonal_d
      _kind_hint: measure
      measure: non_seasonal_d
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Non Seasonal P
      based_on: model_evaluation.non_seasonal_p
      _kind_hint: measure
      measure: non_seasonal_p
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Non Seasonal Q
      based_on: model_evaluation.non_seasonal_q
      _kind_hint: measure
      measure: non_seasonal_q
      type: average
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
    trellis: row
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
      custom:
        id: cc48c6a0-f741-03cf-89a6-5565c7168173
        label: Custom
        type: continuous
        stops:
        - color: "#4285F4"
          offset: 0
        - color: "#78c4bb"
          offset: 50
        - color: "#34A853"
          offset: 100
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_colors: {}
    show_sql_query_menu_options: false
    column_order: [{}]
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: false
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      difference_with_mean:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
        value_display: true
      aic:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
      log_likelihood:
        is_active: true
        palette:
          palette_id: google-diverging-0
          collection_id: google
    table_theme: gray
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hide_totals: false
    hide_row_totals: false
    defaults_version: 1
    hidden_fields: []
    overlay: true
    mapperOptions: {}
    hidden_pivots: {}
    listen: {}
    row: 21
    col: 15
    width: 9
    height: 9
  - title: Revenue Bounds
    name: Revenue Bounds
    model: pacing_block
    explore: forecast
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [forecast.revenue_lower_bound, forecast.revenue_forecast, forecast.revenue_upper_bound]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: ''
    orientation: auto
    style_forecast.revenue_lower_bound: "#EA4335"
    show_title_forecast.revenue_lower_bound: true
    title_override_forecast.revenue_lower_bound: Lower Bound
    title_placement_forecast.revenue_lower_bound: below
    value_format_forecast.revenue_lower_bound: ''
    style_forecast.revenue_forecast: "#4285F4"
    show_title_forecast.revenue_forecast: true
    title_placement_forecast.revenue_forecast: below
    value_format_forecast.revenue_forecast: ''
    show_comparison_forecast.revenue_forecast: false
    style_forecast.revenue_upper_bound: "#34A853"
    show_title_forecast.revenue_upper_bound: true
    title_override_forecast.revenue_upper_bound: Upper Bound
    title_placement_forecast.revenue_upper_bound: below
    value_format_forecast.revenue_upper_bound: ''
    show_comparison_forecast.revenue_upper_bound: false
    style_forecast.revenue: "#34A853"
    show_comparison_forecast.revenue: false
    comparison_style_forecast.revenue_upper_bound: value
    comparison_show_label_forecast.revenue_upper_bound: true
    comparison_label_placement_forecast.revenue_upper_bound: below
    comp_value_format_forecast.revenue_upper_bound: ''
    comparison_style_forecast.revenue: value
    comparison_show_label_forecast.revenue: true
    comparison_label_placement_forecast.revenue: below
    comp_value_format_forecast.revenue: ''
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 0
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
    listen:
      Ad Source: forecast.ad_source
      Date Date: forecast.date_date
    row: 0
    col: 0
    width: 10
    height: 8
  filters:
  - name: Date Date
    title: Date Date
    type: field_filter
    default_value: after 14 day ago
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: pacing_block
    explore: forecast
    listens_to_filters: []
    field: forecast.date_date
  - name: Ad Source
    title: Ad Source
    type: field_filter
    default_value: GAds - SEARCH,GAds - YOUTUBE,"GAds - SEARCH_PARTNERS",Meta
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: pacing_block
    explore: forecast
    listens_to_filters: []
    field: forecast.ad_source

---
- dashboard: goals_vs_actual_value
  title: Goals Vs Actual Value
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: uoWJGK92zRoEX9Wk8nffU9
  elements:
  - title: ''
    name: ''
    model: pacing_block
    explore: goals_campaigns
    type: looker_line
    fields: [goals_campaigns.date, goals_campaigns.daily_goal, goals_campaigns.phase_goal,
      goals_campaigns.goal_type]
    filters: {}
    sorts: [goals_campaigns.date]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: goals_campaigns.phase_goal,
            id: goals_campaigns.phase_goal, name: Actual Metric Value}], showLabels: true,
        showValues: true, maxValue: !!null '', minValue: 0, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 23, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: goals_campaigns.daily_goal, id: goals_campaigns.daily_goal,
            name: Daily Goal}], showLabels: true, showValues: true, maxValue: !!null '',
        minValue: 0, unpinAxis: false, tickDensity: default, tickDensityCustom: 23,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    hidden_pivots: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
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
    hidden_fields: [goals_campaigns.goal_type]
    listen:
      Campaign Name: goals_campaigns.campaign_name
      Plan Name: goals_campaigns.plan_name
      Phase Selector: goals_campaigns.phase_param
    row: 0
    col: 0
    width: 24
    height: 17
  filters:
  - name: Plan Name
    title: Plan Name
    type: field_filter
    default_value: 2024 Growth Plan
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: pacing_block
    explore: goals_campaigns
    listens_to_filters: [Campaign Name, Phase Selector]
    field: goals_campaigns.plan_name
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: Spring Essentials
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: pacing_block
    explore: goals_campaigns
    listens_to_filters: [Plan Name, Phase Selector]
    field: goals_campaigns.campaign_name
  - name: Phase Selector
    title: Phase Selector
    type: field_filter
    default_value: active
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: pacing_block
    explore: goals_campaigns
    listens_to_filters: []
    field: goals_campaigns.phase_param

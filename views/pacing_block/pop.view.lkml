include: "/views/pacing_block/multisource_ads.view.lkml"
view: period_over_period {
  extends: [multisource_ads]
  #fields_hidden_by_default: yes
  dimension_group: created {
    #hidden: no
    type: time
    view_label: "Period Over Period"
    timeframes: [
      raw,
      time,
      hour_of_day,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      month,
      month_name,
      month_num,
      quarter,
      year]
    sql: ${partition_date_date} ;;
    convert_tz: no
    datatype: date
  }

  filter: current_date_range {
    #hidden: no
    type: date
    view_label: "Period Over Period"
    label: "Current Date Range"
    description: "Select the current date range you are interested in. Make sure any other filter on Event Date covers this period, or is removed."
    sql: ${period} IS NOT NULL ;;
    convert_tz: no
    datatype: date

  }

  parameter: compare_to {
    #hidden: no
    view_label: "Period Over Period"
    description: "Select the templated previous period you would like to compare to. Must be used with Current Date Range filter"
    label: "Compare To:"
    type: unquoted
   # allowed_value: {
    #  label: "Previous Period"
     # value: "Period"
    #}
    #allowed_value: {
     # label: "Previous Week"
      #value: "Week"
    #}
    allowed_value: {
      label: "Previous Month"
      value: "Month"
    }
    #allowed_value: {
     # label: "Previous Quarter"
      #value: "Quarter"
    #}
    allowed_value: {
      label: "Previous Year"
      value: "Year"
    }
    default_value: "Period"

  }



## ------------------ HIDDEN HELPER DIMENSIONS  ------------------ ##

  dimension: days_in_period {
    #hidden: no
    # hidden:  yes
    view_label: "Period Over Period"
    description: "Gives the number of days in the current period date range"
    type: number
    sql: DATE_DIFF( DATE({% date_start current_date_range %}), DATE({% date_end current_date_range %}), DAY) ;;
  }

  dimension: period_2_start {
    hidden: no
    label: "Previous Period Start Date"
    view_label: "Period Over Period"
    description: "Calculates the start of the previous period or same equivalent date in the previous year"
    type: date
    sql:
   {% if compare_to._parameter_value == "Year" %}
   DATE_SUB(DATE({% date_start current_date_range %}), INTERVAL 1 YEAR)
   {% elsif compare_to._parameter_value == "Period" %}
   DATE_SUB(DATE({% date_start current_date_range %}), INTERVAL ${days_in_period} DAY)
   {% else %}
   DATE_SUB(DATE({% date_start current_date_range %}), INTERVAL 1 {% parameter compare_to %})
   {% endif %} ;;
    convert_tz: no
    html: <font size="6">{{ value }}</font>;;
  }

  dimension: current_period_start {
    hidden: no
    label: "Current Period Start Date"
    view_label: "Period Over Period"
    description: "Calculates the start of the Current period"
    type: date
    sql:
    {% if compare_to._parameter_value == "Period" %}
    DATE({% date_start current_date_range %})
    {% else %}
    DATE({% date_start current_date_range %})
    {% endif %};;
    convert_tz: no
    html: <font size="6">{{ value }}</font>;;
  }

  dimension: period_2_end {
    hidden: no
    label: "Previous Period End Date"
    view_label: "Period Over Period"
    description: "Calculates the end of the previous period or same equivalent date in the previous year"
    type: date
    sql:
        {% if compare_to._parameter_value == "Year" %}
        DATE_SUB(DATE({% date_end current_date_range %}), INTERVAL 1 YEAR)
        {% elsif compare_to._parameter_value == "Period" %}
        DATE_SUB(DATE({% date_end current_date_range %}), INTERVAL ${days_in_period} DAY)
        {% else %}
        DATE_SUB(DATE({% date_end current_date_range %}), INTERVAL 1 {% parameter compare_to %})
        {% endif %} ;;
    convert_tz: no
    html: <font size="6">{{ value }}</font>;;
  }
  dimension: current_period_end {
    hidden: no
    label: "Current Period End Date"
    view_label: "Period Over Period"
    description: "Calculates the start of the Current period"
    type: date
    sql:
    {% if compare_to._parameter_value == "Period" %}
    DATE({% date_end current_date_range %})
    {% else %}
    DATE({% date_end current_date_range %})
    {% endif %};;
    convert_tz: no
    html: <font size="6">{{ value }}</font>;;
  }

  dimension: current_period_end_vis {
    type: date
    hidden: no
    sql: ${current_period_end} - 1  ;;
  }
  dimension: previous_period_end_vis {
    type: date
    hidden: no
    sql: ${period_2_end} - 1  ;;
  }
  dimension: current_period {
    type: string
    sql: " ";;
    html: <p style="font-size:20px"> <strong> Start:  </strong> {{ current_period_start._rendered_value }}</p>
             <p style="font-size:20px"> <strong> End:  </strong>{{ current_period_end_vis._rendered_value }}</p>;;
    hidden: no

  }

  dimension: previous_period {
    type: string
    sql: " ";;
    html: <p style="font-size:20px"> <strong> Start:  </strong> {{ period_2_start._rendered_value }}</p></br>
           <p style="font-size:20px"> <strong> End:  </strong>{{ previous_period_end_vis._rendered_value }}</p>;;
    hidden: no
   }

  dimension: day_in_period {
    hidden: yes
    description: "Gives the number of days since the start of each period. Use this to align the event dates onto the same axis, the axes will read 1,2,3, etc."
    type: number
    sql:
    {% if current_date_range._is_filtered %}
        CASE
        WHEN {% condition current_date_range %} ${created_raw} {% endcondition %}
        THEN DATE_DIFF( DATE({% date_start current_date_range %}), DATE(${created_date}), DAY) + 1
        WHEN DATE(${created_date}) between ${period_2_start} and ${period_2_end}
        THEN DATE_DIFF(${period_2_start}, DATE(${created_date}), DAY) + 1
        END
    {% else %} NULL
    {% endif %}
    ;;
  }

  dimension: order_for_period {
    hidden: yes
    type: number
    sql:
        {% if current_date_range._is_filtered %}
            CASE
            WHEN {% condition current_date_range %} ${created_raw} {% endcondition %}
            THEN 1
            WHEN DATE(${created_date}) between ${period_2_start} and ${period_2_end}
            THEN 2
            END
        {% else %}
            NULL
        {% endif %}
        ;;
  }



## ------------------ DIMENSIONS TO PLOT ------------------ ##

  dimension_group: date_in_period {
    #hidden: no
    description: "Use this as your grouping dimension when comparing periods. Aligns the previous periods onto the current period"
    label: "Period"
    type: time
    # sql: DATE_ADD( ${day_in_period} - 1, DATE({% date_start current_date_range %}), DAY) ;;
    sql: DATE_SUB(DATE({% date_start current_date_range %}), INTERVAL (${day_in_period} - 1) DAY)  ;;
    view_label: "Period Over Period"
    timeframes: [
      date,
      hour_of_day,
      day_of_week,
      day_of_week_index,
      week,
      day_of_month,
      day_of_year,
      week_of_year,
      month,
      month_name,
      month_num,
      year]
    convert_tz: no
    datatype: date
  }


  dimension: period {
    #hidden: no
    view_label: "Period Over Period"
    label: "Period"
    description: "Pivot me! Returns the period the metric covers, i.e. either the 'This Period' or 'Previous Period'"
    type: string
    order_by_field: order_for_period
    sql:
        {% if current_date_range._is_filtered %}
            CASE
            WHEN {% condition current_date_range %} ${created_raw} {% endcondition %}
            THEN 'This {% parameter compare_to %}'
            WHEN DATE(${created_date}) between ${period_2_start} and ${period_2_end}
            THEN 'Last {% parameter compare_to %}'
            END
        {% else %}
            NULL
        {% endif %}
        ;;
  }


## ---------------------- TO CREATE FILTERED MEASURES ---------------------------- ##

  dimension: period_filtered_measures {
    hidden: yes
    description: "We just use this for the filtered measures"
    type: string
    sql:
        {% if current_date_range._is_filtered %}
            CASE
            WHEN {% condition current_date_range %} ${created_raw} {% endcondition %} THEN 'this'
            WHEN DATE(${created_date}) between ${period_2_start} and ${period_2_end} THEN 'last' END
        {% else %} NULL {% endif %} ;;
  }

# Filtered measures

  measure: current_reference_date {
    type: date
    view_label: "Period Over Period"
    label: "Current reference date"
    sql: SELECT CURRENT_DATE() AS current_date; ;;
  }

  measure: current_period_clicks {
    hidden: yes
    view_label: "Period Over Period"
    type: sum
    sql:${total_clicks};;
    filters: [period_filtered_measures: "this"]

  }

  measure: previous_period_clicks {
    hidden: yes
    view_label: "Period Over Period"
    type: sum
    sql: ${total_clicks};;
    filters: [period_filtered_measures: "last"]

  }

  measure: current_period_impressions {
    hidden: yes
    view_label: "Period Over Period"
    type: sum
    sql:${total_impressions};;
    filters: [period_filtered_measures: "this"]

  }

  measure: previous_period_impressions {
    hidden: yes
    view_label: "Period Over Period"
    type: sum
    sql: ${total_impressions};;
    filters: [period_filtered_measures: "last"]
  }

  measure: current_period_spend {
    hidden: yes
    view_label: "Period Over Period"
    value_format: "$#,##0.00"
    type: sum
    sql:${total_spent};;
    filters: [period_filtered_measures: "this"]

  }

  measure: previous_period_spend {
    hidden: yes
    view_label: "Period Over Period"
    value_format: "$#,##0.00"
    type: sum
    sql: ${total_spent};;
    filters: [period_filtered_measures: "last"]

  }

  measure: current_period_revenue {
    hidden: yes
    view_label: "Period Over Period"
    value_format: "$#,##0.00"
    type: sum
    sql:${total_revenue};;
    filters: [period_filtered_measures: "this"]

  }

  measure: previous_period_revenue {
    hidden: yes
    view_label: "Period Over Period"
    value_format: "$#,##0.00"
    type: sum
    sql: ${total_revenue};;
    filters: [period_filtered_measures: "last"]

  }

  measure: clicks_pop_change {
    hidden: yes
    view_label: "Period Over Period"
    label: "Total Clicks period-over-period % change"
    type: number
    sql: CASE WHEN ${current_period_clicks} = 0
            THEN NULL
            ELSE (1.0 * ${current_period_clicks} / NULLIF(${previous_period_clicks} ,0)) - 1 END ;;
    value_format_name: percent_2
  }

  measure: impressions_pop_change {
    hidden: yes
    view_label: "Period Over Period"
    label: "Total Impressions period-over-period % change"
    type: number
    sql: CASE WHEN ${current_period_impressions} = 0
            THEN NULL
            ELSE (1.0 * ${current_period_impressions} / NULLIF(${previous_period_impressions} ,0)) - 1 END ;;
    value_format_name: percent_2
  }

  measure: spend_pop_change {
    hidden: yes
    view_label: "Period Over Period"
    label: "Total Spend period-over-period % change"
    type: number
    sql: CASE WHEN ${current_period_spend} = 0
            THEN NULL
            ELSE (1.0 * ${current_period_spend} / NULLIF(${previous_period_spend} ,0)) - 1 END ;;
    value_format_name: percent_2
  }

  measure: revenue_pop_change {
    hidden: yes
    view_label: "Period Over Period"
    label: "Total Revenue period-over-period % change"
    type: number
    sql: CASE WHEN ${current_period_revenue} = 0
            THEN NULL
            ELSE (1.0 * ${current_period_revenue} / NULLIF(${previous_period_revenue} ,0)) - 1 END ;;
    value_format_name: percent_2
  }

  measure: current_metric {
    type: number
    view_label: "Period Over Period"
    label:
    "{% if metric_selector._parameter_value == 'total_impressions' %}
    Current Impressions
    {% elsif metric_selector._parameter_value == 'total_clicks' %}
    Current Clicks
    {% elsif metric_selector._parameter_value == 'total_spend' %}
    Current Spend
    {% elsif metric_selector._parameter_value == 'total_revenue' %}
    Current Revenue
    {% else %}
    Current Metric
    {% endif %}"
    hidden: no
    sql:
    {% if metric_selector._parameter_value == 'total_impressions' %}
      ${current_period_impressions}
    {% elsif metric_selector._parameter_value == 'total_clicks' %}
      ${current_period_clicks}
    {% elsif metric_selector._parameter_value == 'total_spend' %}
      ${current_period_spend}
    {% elsif metric_selector._parameter_value == 'total_revenue' %}
      ${current_period_revenue}
    {% else %}
      0
      {% endif %} ;;

    link: {
      label: "Explore Top 20 Results"
      url: "{{ link }}&limit=20"
    }
    drill_fields: [ad_source,ad_set_name,campaign_name, ad_name, current_metric]
    value_format: "#,##0.00"
  }

  measure: previous_metric {
    type: number
    view_label: "Period Over Period"
    label:
    "{% if metric_selector._parameter_value == 'total_impressions' %}
    Previous Impressions
    {% elsif metric_selector._parameter_value == 'total_clicks' %}
    Previous Clicks
    {% elsif metric_selector._parameter_value == 'total_spend' %}
    Previous Spend
    {% elsif metric_selector._parameter_value == 'total_revenue' %}
    Previous Revenue
    {% else %}
    Previous Metric
    {% endif %}"
    hidden: no
    sql:
    {% if metric_selector._parameter_value == 'total_impressions' %}
      ${previous_period_impressions}
    {% elsif metric_selector._parameter_value == 'total_clicks' %}
      ${previous_period_clicks}
    {% elsif metric_selector._parameter_value == 'total_spend' %}
      ${previous_period_spend}
    {% elsif metric_selector._parameter_value == 'total_revenue' %}
      ${previous_period_revenue}
    {% else %}
      0
      {% endif %} ;;

    link: {
      label: "Explore Top 20 Results"
      url: "{{ link }}&limit=20"
    }
    drill_fields: [ad_source,ad_set_name,campaign_name, ad_name, previous_metric]
    value_format: "#,##0.00"
  }

  measure: percentage_change {
    type: number
    view_label: "Period Over Period"
    label: "% of change Current vs Previous"
    description: "Calculates how much the current period's metric have changed compared to the previous period, as a percentage"
    hidden: no
    sql:
    {% if metric_selector._parameter_value == 'total_impressions' %}
      ${impressions_pop_change}
    {% elsif metric_selector._parameter_value == 'total_clicks' %}
      ${clicks_pop_change}
    {% elsif metric_selector._parameter_value == 'total_spend' %}
      ${spend_pop_change}
    {% elsif metric_selector._parameter_value == 'total_revenue' %}
      ${revenue_pop_change}
    {% else %}
      0
      {% endif %} ;;
    value_format_name: percent_2
  }
#-------------------------------Parameters-----------------------------------------------

  parameter: metric_selector {
    hidden: no
    view_label: "Period Over Period"
    label: "Performance Metric"
    type: unquoted
    description: "Field used in order to select which KPI you would like to visualize using KPI measure"
    allowed_value: {
      label: "Impressions"
      value: "total_impressions"
    }
    allowed_value: {
      label: "Clicks"
      value: "total_clicks"
    }

    allowed_value: {
      label: "Spend"
      value: "total_spend"
    }
    allowed_value: {
      label: "Revenue"
      value: "total_revenue"
    }
  }

  ###### HIDDEN FROM MULTISOURCE #############3
  parameter: set_clicks_goal {
    hidden: yes
  }
  parameter: set_impressions_goal {
    hidden: yes
  }
  parameter: set_conversions_goal {
    hidden: yes
  }
  parameter: set_cost_goal {
    hidden: yes
  }
  parameter: KPI_select {
    hidden: no
  }


}

view: forecast_model {
  derived_table: {
  datagroup_trigger: weekly_refresh
    sql_create:

    CREATE OR REPLACE MODEL ${SQL_TABLE_NAME}
    OPTIONS(
    MODEL_TYPE = 'ARIMA_PLUS',
        TIME_SERIES_TIMESTAMP_COL = 'date',
        TIME_SERIES_DATA_COL = 'revenue',
        TIME_SERIES_ID_COL = 'ad_source',
        HORIZON = 15,
        AUTO_ARIMA = TRUE,
        AUTO_ARIMA_MAX_ORDER = 5,
        DATA_FREQUENCY = 'DAILY',
        HOLIDAY_REGION = 'GLOBAL',
        -- NA: North America
        -- JAPAC: Japan and Asia Pacific
        -- EMEA: Europe, the Middle East and Africa
        -- LAC: Latin America and the Caribbean
        CLEAN_SPIKES_AND_DIPS = TRUE
    ) AS
      SELECT
      date,
      ad_source,
      revenue
       FROM ${training.SQL_TABLE_NAME}
      WHERE date BETWEEN DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH)
                      AND CURRENT_DATE()
    ;;
  }
  }

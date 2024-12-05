view: forecast_model {
  derived_table: {
  datagroup_trigger: daily
    sql_create:

    CREATE OR REPLACE MODEL ${SQL_TABLE_NAME}
    OPTIONS(
    MODEL_TYPE = 'ARIMA_PLUS',
        TIME_SERIES_TIMESTAMP_COL = 'partition_date_date',
        TIME_SERIES_ID_COL = 'ad_source',
        TIME_SERIES_DATA_COL = 'total_revenue',
        HORIZON = 30,
        DATA_FREQUENCY = 'DAILY'
    ) AS
      SELECT
      ad_source,
      partition_date_date,
      total_revenue
       FROM ${training.SQL_TABLE_NAME}
      WHERE partition_date_date BETWEEN TIMESTAMP(DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH))
                      AND TIMESTAMP(CURRENT_DATE())
    ;;
  }
  }

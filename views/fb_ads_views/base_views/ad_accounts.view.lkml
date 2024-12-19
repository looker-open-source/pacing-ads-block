#####################################################################
# Purpose: Contains information about Ad Accounts from Facebook to use for
# Data Analysis, this table represents a business, person or other entity who creates and manages ads on Facebook.
# Multiple people can manage an account, and each person can have one or more levels of access to an account
#####################################################################

view: ad_accounts {

  sql_table_name: `@{PROJECT_ID}.@{FADS_DATASET_NAME}.AdAccounts` ;;


  dimension: account_id {
    description: "The ID of the Ad Account."
    type: string
    group_label: "IDs"
    primary_key: yes
    sql: ${TABLE}.AccountId ;;
  }

  dimension: id {
    description: "The string act_{ad_account_id}."
    group_label: "IDs"
    type: string
    sql: ${TABLE}.ID ;;
  }
  dimension:  target{
    description: "Specifies target"
    type: string
    sql: ${TABLE}.Target ;;
  }

  dimension: account_status {
    description: "Status of the account."
    type: number
    sql: ${TABLE}.AccountStatus ;;
  }
  dimension: age {
    description: "Amount of time the ad account has been open, in days."
    type: number
    sql: ${TABLE}.Age ;;
  }
  dimension: amount_spent {
    description: "Current total amount spent by the account."
    type: number
    sql: ${TABLE}.AmountSpent ;;
  }

  dimension: balance {
    description: "Bill amount due for this Ad Account."
    type: number
    sql: ${TABLE}.Balance ;;
  }

  dimension: business_city  {
    description: "City for business address"
    type: string
    sql: ${TABLE}.BusinessCity ;;
  }

  dimension: business_country_code {
    description: "Country code for the business address"
    type: string
    sql: ${TABLE}.BusinessCountryCode ;;
  }

  dimension: business_name {
    description: "The business name for the account"
    type: string
    sql: ${TABLE}.BusinessName ;;
  }
  dimension: business_state {
    description: "State abbreviation for business address"
    type: string
    sql: ${TABLE}.BusinessState ;;
  }
  dimension: business_street {
    description: "First line of the business street address for the account"
    type: string
    sql: ${TABLE}.BusinessStreet ;;
  }
  dimension: business_street_2 {
    description: "Second line of the business street address for the account"
    type: string
    sql: ${TABLE}.BusinessStreet2 ;;
  }
  dimension: business_zip {
    description: "Zip code for business address."
    type: string
    sql: ${TABLE}.BusinessZip ;;
  }

  dimension: capabilities {
    description: "List of capabilities an Ad Account can have."
    type: string
    sql: ${TABLE}.Capabilities ;;
  }
  dimension_group: created_time  {
    description: "The time the account was created."
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CreatedTime ;;
  }

  dimension: currency {
    description: "The currency used for the account, based on the corresponding value in the account settings."
    type: string
    sql: ${TABLE}.Currency ;;
  }

  dimension: min_campaign_group_spend_cap {
    description: "The minimum required spend cap of Ad Campaign."
    type: string
    sql: ${TABLE}.MinCampaignGroupSpendCap;;
  }
  dimension: name {
    description: "Name of the account. If not set, the name of the first admin visible to the user will be returned."
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: offsite_pixels_tos_accepted {
    description: "Indicates whether the offsite pixel Terms Of Service contract was signed. This feature can be accessible before v2.9"
    type: string
    sql: ${TABLE}.OffsitePixelsTosAccepted ;;
  }

  dimension: owner_id {
    description: "The ID of the account owner"
    type: string
    sql: ${TABLE}.OwnerId ;;
  }
  dimension: spend_cap {
    description: "The maximum amount that can be spent by this Ad Account."
    type: number
    sql: ${TABLE}.SpendCap ;;
  }
  dimension: timezone_id {
    description: "The timezone ID of this ad account"
    type: string
    sql: ${TABLE}.TimezoneId ;;
  }
  dimension: timezone_name {
    description: "Name for the time zone"
    sql: ${TABLE}.TimezoneName ;;
  }
  dimension: timezone_offset_hours_utc {
    description: "Time zone difference from UTC (Coordinated Universal Time)."
    type: string
    sql: ${TABLE}.TimezoneOffsetHoursUTC ;;
  }

}

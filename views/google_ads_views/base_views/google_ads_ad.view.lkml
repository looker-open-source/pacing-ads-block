#####################################################################
# Purpose: Created from Google Ads Transfer, specifically from Ads Ad table.
#####################################################################

view: google_ads_ad {
  sql_table_name: `@{PROJECT_ID}.@{GADS_DATASET_NAME}.ads_Ad_@{GADS_CUSTOMER_ID}` ;;

  dimension_group: _data {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._DATA_DATE ;;
  }
  dimension_group: _latest {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._LATEST_DATE ;;
  }


  dimension: ad_group_ad_ad_added_by_google_ads {
    description: "Indicates if this ad was automatically added by Google Ads and not by a user."
    type: yesno
    sql: ${TABLE}.ad_group_ad_ad_added_by_google_ads ;;
  }
  dimension: ad_group_ad_ad_app_ad_descriptions {
    description: "List of text assets for descriptions. When the ad serves the descriptions, they are selected from this list."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_app_ad_descriptions ;;
  }
  dimension: ad_group_ad_ad_app_ad_headlines {
    description: "  List of text assets for headlines. When the ad serves the headlines is selected from this list."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_app_ad_headlines ;;
  }
  dimension: ad_group_ad_ad_app_ad_html5_media_bundles {
    description: "List of media bundle assets that may be used with the ad."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_app_ad_html5_media_bundles ;;
  }
  dimension: ad_group_ad_ad_app_ad_images {
    description: "List of image assets that may be displayed with the ad."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_app_ad_images ;;
  }
  dimension: ad_group_ad_ad_app_ad_mandatory_ad_text {
    description: "An optional text asset that, if specified, must always be displayed when the ad is served."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_app_ad_mandatory_ad_text ;;
  }
  dimension: ad_group_ad_ad_app_ad_youtube_videos {
    description: "List of YouTube video assets that may be displayed with the ad."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_app_ad_youtube_videos ;;
  }
  dimension: ad_group_ad_ad_call_ad_phone_number {
    description: "The phone number in the ad."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_call_ad_phone_number ;;
  }
  dimension: ad_group_ad_ad_device_preference {
    description: "The device preference for the ad. "
    type: string
    sql: ${TABLE}.ad_group_ad_ad_device_preference ;;
  }
  dimension: ad_group_ad_ad_display_url {
    description: "The URL that appears in the ad description for some ad formats."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_display_url ;;
  }
  dimension: ad_group_ad_ad_expanded_dynamic_search_ad_description {
    description: "The description of the ad.  "
    type: string
    sql: ${TABLE}.ad_group_ad_ad_expanded_dynamic_search_ad_description ;;
  }
  dimension: ad_group_ad_ad_expanded_dynamic_search_ad_description2 {
    description: "The second description of the ad."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_expanded_dynamic_search_ad_description2;;
  }
  dimension: ad_group_ad_ad_expanded_text_ad_description {
    description: "The description of the ad.  "
    type: string
    sql: ${TABLE}.ad_group_ad_ad_expanded_text_ad_description ;;
  }
  dimension: ad_group_ad_ad_expanded_text_ad_description2 {
    description: "The second description of the ad."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_expanded_text_ad_description2 ;;
  }
  dimension: ad_group_ad_ad_expanded_text_ad_headline_part1 {
    description: "The first part of the ad's headline."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_expanded_text_ad_headline_part1 ;;
  }
  dimension: ad_group_ad_ad_expanded_text_ad_headline_part2 {
    description: "The second part of the ad's headline."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_expanded_text_ad_headline_part2 ;;
  }
  dimension: ad_group_ad_ad_expanded_text_ad_headline_part3 {
    description: "The third part of the ad's headline."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_expanded_text_ad_headline_part3 ;;
  }
  dimension: ad_group_ad_ad_expanded_text_ad_path1 {
    description: "The text that can appear alongside the ad's displayed URL."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_expanded_text_ad_path1 ;;
  }
  dimension: ad_group_ad_ad_expanded_text_ad_path2 {
    description: "Additional text that can appear alongside the ad's displayed URL."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_expanded_text_ad_path2 ;;
  }
  dimension: ad_group_ad_ad_final_app_urls {
    description: "A list of final app URLs that are used on mobile if the user has the specific app installed."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_final_app_urls ;;
  }
  dimension: ad_group_ad_ad_final_mobile_urls {
    description: "The list of possible final mobile URLs after all cross-domain redirects for the ad."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_final_mobile_urls ;;
  }
  dimension: ad_group_ad_ad_final_urls {
    description: "The list of possible final URLs after all cross-domain redirects for the ad."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_final_urls ;;
  }
  dimension: ad_group_ad_ad_group {
    description: "The ad group to which the ad belongs."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_group ;;
  }
  dimension: ad_group_ad_ad_id {
    description: "The ID of the ad."
    group_label: "IDs"
    type: string
    sql: CAST(${TABLE}.ad_group_ad_ad_id AS STRING);;
  }
  dimension: ad_group_ad_ad_image_ad_image_url {
    description: "URL of the full size image."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_image_ad_image_url ;;
  }
  dimension: ad_group_ad_ad_image_ad_mime_type {
    description: "The mime type of the image."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_image_ad_mime_type ;;
  }
  dimension: ad_group_ad_ad_image_ad_name {
    description: "  The name of the image. If the image was created from a MediaFile, this is the MediaFile's name"
    type: string
    sql: ${TABLE}.ad_group_ad_ad_image_ad_name ;;
  }

  dimension: ad_group_ad_ad_type {
    description: "The type of ad."
    type: string
    sql: ${TABLE}.ad_group_ad_ad_type ;;
  }

  dimension: ad_group_ad_status {
    description: "The status of the ad."
    type: string
    sql: ${TABLE}.ad_group_ad_status ;;
  }
  dimension: ad_group_id {
    description: "Output only. The ID of the ad group."
    type: number
    sql: ${TABLE}.ad_group_id ;;
  }
  dimension: campaign_id {
    description: "The ID of the campaign."
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: customer_id {
    description: "The ID of the customer."
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }
  measure: count {
    description: "Count of records"
    type: count
    drill_fields: [ad_group_ad_ad_image_ad_name]
  }
}

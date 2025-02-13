include: "/views/pacing_block/multisource_ads.view.lkml"
view: nav_bars{

  extends: [multisource_ads]
  #fields_hidden_by_default: yes
  dimension: core_metrics_nav_bar {
    sql: "" ;;
    type: string

    html:

     <div style="border-bottom: solid 1px #4285F4;">

                        <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">


      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> Core Metrics Dashboard</a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::campaign_manager?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Campaign Manager </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::campaign_comparison?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Marketing Campaign Comparison </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::spend_revenue?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Spend & Revenue </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::pop_v2?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}"> Period Over Period </a>

      </nav>

      </div>
      ;;
  }
  dimension: campaign_manager_nav_bar {
    sql: "" ;;
    type: string

    html:

     <div style="border-bottom: solid 1px #4285F4;">

                        <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">


      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::core_metrics?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Core Metrics Dashboard</a>

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> Campaign Manager </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::campaign_comparison?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Marketing Campaign Comparison </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::spend_revenue?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Spend & Revenue </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::pop_v2?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}"> Period Over Period </a>

      </nav>

      </div>
      ;;
  }

  dimension: campaign_comparison_nav_bar {
    sql: "" ;;
    type: string

    html:

     <div style="border-bottom: solid 1px #4285F4;">

                        <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">


      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::core_metrics?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Core Metrics Dashboard</a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::campaign_manager?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Campaign Manager </a>

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> Marketing Campaign Comparison </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::spend_revenue?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Spend & Revenue </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::pop_v2?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}"> Period Over Period </a>

      </nav>

      </div>
      ;;
  }

  dimension: spend_revenue_nav_bar {

    sql: "" ;;
    type: string
    html:

     <div style="border-bottom: solid 1px #4285F4;">

                        <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">


      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::core_metrics?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Core Metrics Dashboard</a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::campaign_manager?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Campaign Manager </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::campaign_comparison?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Marketing Campaign Comparison </a>

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> Spend & Revenue </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::pop_v2?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}"> Period Over Period </a>

      </nav>

      </div>
      ;;
  }

  dimension: pop_nav_bar {

    sql: "" ;;
    type: string
    html:

     <div style="border-bottom: solid 1px #4285F4;">

                        <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">


      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::core_metrics?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Core Metrics Dashboard</a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::campaign_manager?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Campaign Manager </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::campaign_comparison?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Marketing Campaign Comparison </a>

      <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="/dashboards/pacing_block::spend_revenue?Ad+Source={{ _filters["ad_source"] | url_encode }}&Campaign+Name={{ _filters["campaign_name"] | url_encode }}&Date={{_filters["partition_date_date"] | url_encode}}"> Spend & Revenue </a>

      <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;" href="#"> Period Over Period </a>

      </nav>

      </div>
      ;;
  }

 }

# Pacing Ads Block

A pacing dashboard is designed to provide a centralized view of campaign performance over time. It allows marketers to track key metrics such as impressions, clicks, conversions revenue, cost per acquisition (CPA) and other relevant metrics against predetermined pacing goals. This visual representation helps identify areas where campaigns are ahead or behind schedule, enabling timely adjustments to optimize performance.
Our Pacing Block is specifically tailored to digital marketing managers, performance marketers and almost everyone working with ads data. By providing granular insights into ad data.
This repository contains views and explores used for the Multisource Ads Block dashboards, currently supporting Meta Ads and Google Ads with a view to integrate more ad sources overtime. There are several dashboards that come with this block, Core Metrics, Campaign Manager that also includes Marketing Campaign Comparison and Spend vs Revenue, additionally, there are two demo dashboards where you can find the Goal vs Value optional feature, and take a look to the Period Over Period dashboard with a forecasting visualization. Each of the dashboards provides in-depth analysis of ad/campaign performance.

The LookML constants are used to specify the name of the schema and connection.
They are defined in the manifest file of this project and ready to be replaced for your parameters.


### Requirements

This block requires a data transfer to a single BigQuery project from the ads datasets. Fields coming from these raw tables are worked in our block by adding description to the relevant fields and the calculated fields have been created, sames that are later leveraged by the multisource_ads view.

#Facebook - Meta
Here is the [official documentation](https://cloud.google.com/bigquery/docs/facebook-ads-transfer) about how to do this transfer process.

#Google Ads
Here is the [official documentation](https://cloud.google.com/bigquery/docs/google-ads-transfer) about how to do this transfer process.

## Custom Visualizations:


   - Go to Marketplace > Discover and search for "Radial Gauge" and install




## Installation

#### Constants

On block installation you will need to specify the following constants:

```
constant: CONNECTION_NAME {
 value: "Connection name"
 export: override_required
}

constant: PROJECT_ID {
  value: "Project ID"
  export: override_required
}

## Leave the value empty (value:"") if you're not using the source, otherwise you'll get an error


constant: FADS_DATASET_NAME {
  value: "Facebook Ads Dataset"
  export: override_required
}

constant: GADS_DATASET_NAME {
  value: "Google Ads Dataset"
  export: override_required
}

constant: GADS_CUSTOMER_ID {
  value: "Customer ID"
  export: override_required
}


```

Select the [BigQuery connection](https://cloud.google.com/looker/docs/db-config-google-bigquery) that has access to the ads datasets. Looker will require PDTs to be enabled on this connection to create derived tables that will be leveraged by the block.




#### Model Access

- Ensure that all users that want to use this block have access to the newly created models (this will need to be done after the block is installed)
- Users will need to have a Looker role that either includes all model sets (e.g. an admin) or have a new role created which includes the model `fb_ads`, `google_ads`, `pacing_block`

### Optional functionalities

#Campaigns goals created from Manifest File

There are 5 types of fields included to leverage campaign information from your sources and create a derived table that unifies it and that you can later join to any of your sources explores and get global goals values for certain campaigns. For this to be possible it’s necessary that you unify across sources the Campaign names of the ones you’re interested to use.

```
#### Information Campaign 1 #####

constant: CAMPAIGN_NAME_1 {
  value: "your_campaign_name"
  export: override_optional
}

constant: DATE_START_CMP_1 {
  value: "2024-05-01" # Start date of your campaign
  export: override_optional
}

constant: DATE_END_CMP_1 {
  value: "2024-10-10" # End date of your campaign
  export: override_optional
}

constant: GOAL_CMP_1 {
  value: "1500000" # Goal Value
  export: override_optional
}

constant: GOAL_TYPE_CMP_1 {
  value: "Clicks" # Type of Goal
  export: override_optional
}


```


# Campaigns created from Google Sheets


Based on the sheets template included in the repo as campaigns_info, create a copy in Google Sheet in order to modify the values and follow these steps to connect it to your BigQuery dataset, along the Data transfers.

You can go to the BigQuery console, navigate to your dataset --> click on the Create table --> set Create table from to Drive --> paste the URL of your Google Sheet in the Select Drive URI field. For File Format, choose Google Sheet. In the Sheet Range field, specify the columns you want to import.

It’s necessary to share the sheets template to the Service account user this is the same created to connect to your BigQuery dataset.


# Files

## Views

## Facebook Ads

### Base Views


The base views folder contains the autogenerated LookML base definition of the 3 tables:

[ad_accounts](./views/fb_ads_views/base_views/ad_accounts.view.lkml)

[ad_insights](./views/fb_ads_views/base_views/ad_insights.view.lkml)

[ad_insights_actions](./views/fb_ads_views/base_views/ad_insights_actions.view.lkml)

ad_insights and ad_insights_actions tables are queried as a derived table and include 1 additional column:
GENERATE_UUID() AS pk for a primary key for ensuring correct aggregation.
All fields are hidden by default and only exposed in the refinement layer


## Google Ads

### Base Views

The base views folder contains the autogenerated LookML base definition of the 5 tables:


[google_ads_ad](./views/google_ads_views/base_views/google_ads_ad.view.lkml)

[google_ads_campaign](./views/google_ads_views/base_views/google_ads_campaign.view.lkml)

[google_ads_customer](./views/google_ads_views/base_views/google_ads_customer.view.lkml)

[google_ads_group](./views/google_ads_views/base_views/google_ads_group.view.lkml)

[google_ads_stats](./views/google_ads_views/base_views/google_ads_stats.view.lkml)



- All fields are hidden by default and only exposed in the refinement layer.
## Facebook Ads

### Refined Views

### Derived Views


The derived_views folder contains the refined versions of the 3 views:

[core_analysis](./views/fb_ads_views/derived_views/core_analysis.view.lkml)


[primary_metrics](./views/fb_ads_views/derived_views/primary_metrics.view.lkml)



This view includes refinements of all three base views from Meta. These refinements include all dimension groups, measures, parameters and sets that the dashboards use and that are necessary to calculate the metrics and offer functionalities for the user.


[primary_metrics]

This refinement includes all the fields to display and it can be changed according to your needs to show the necessary fields, a default list is ready to use.

### Derived Tables

#### Fact Tables


[dt_fb_ads](./views/fb_ads_views/derived_views/dt_fb_ads.view.lkml)

SQL derived table created to query only the fields necessary to calculate relevant metrics of Meta Ads

[dt_google_ads](./views/google_ads_views/derived_views/dt_google_ads.view.lkml)

SQL derived table created to query only the fields necessary to calculate relevant metrics of Google Ads

[multisource_ads](./views/pacing_block/multisource_ads.view.lkml)

The dt_fb_ads and dt_google_ads derived tables are used in a UNION ALL in the multisource_ads view, this is done by using a SQL derived table that combines results from those views resulting in a unified table. This view contains core metrics like clicks, impressions, conversions, spend and revenue, dates along other key metrics of campaigns.

[period_over_period](./views/pacing_block/pop.view.lkml)

This refinement of multisource_ads includes a method to do Period Over Period analysis with the current and previous period.

[campaign_flat_goals](./views/goals/campaigns_flat_goals.view.lkml)

This SQL derived table is used to calculate the daily goal from the sheets table and leverage the multisource_ads fields.


[campaign_info](./views/goals/campaigns_info.view.lkml)

This SQL derived table is used to create a table from the constants in the manifest file where you define the campaigns info to analyze.

[training](./views/pacing_block/forecasting/training.view.lkml)

This native derived table is used as a training data set for the forecasting model. The data is coming from the multisource_ads view

[forecast_model](./views/pacing_block/forecasting/forecast_model.view.lkml)

Here is where you set the parameter to the arima_plus model, the data frequency is set to daily and the horizon to forecast is 30 days.

[forecast](./views/pacing_block/forecasting/forecast.view.lkml)

This sql derived table makes the union all between the training data and the forecast_model.



## Explores

The explore folder contains the join logic between the views.

The [fb_ads][./explores/fb_ads.explore.lkml] includes all the explore definitions from the fb_ads explore. ad_accounts is hidden by default.


ad_insights is joined to ad_insights_actions and it serves as the main explore to use in all dashboards, it has a type inner join and a one to many relationship, joining all fields that are relevant.



[google_ads][/explores/fb_ads.explore.lkml] includes all the explore definitions from google_ads data.

The views google_ads_customer , google_ads_campaign,google_ads_group, google_ads_ad are joined to google_ads_stats, it has a type inner` join and a many to one relationship joining fields by ids.

[pacing_block][./explores/fb_ads.explore.lkml]

It contains the multisources_ads explore.

[goals_campaigns][./explores/goals_campaigns.explore.lkml]

It contains the joins between the views created from the optional manifest file constants, these views come from /views/goals folder and the ad_insights table to build an explore that is used to see the daily goal values vs the actual data.




## Models


[fb_ads][./models/fb_ads.model.lkml]

Includes all views from the fb_ads_views.Datagroups can be defined here.

[google_ads][./models/google_ads.model.lkml]

This model includes all views from the google_ads folder. Datagroups can be defined here.

[google_ads](./models/pacing_block.model.lkml)

This model includes all views from the pacing block folder. Datagroups can be defined here.


## Shared

[datagroups](./views/pacing_block/shared/datagroups.lkml)

Here you can find the datagroups for the derived tables where it applies.

## LookML Dashboards

### [Core Metrics](./dashboards/core_metrics.dashboard.lookml)

This dashboards is a pacing dashboard and its objective is to give an overall overview of the Ads data and how it is compared towards the goals of key metrics(Clicks, Impressions, Conversions, Cost) defined for your campaigns or by setting a general goal value by source(Facebook, Instagram, Google Ads)

### [Campaign Manager](./dashboards/campaign_manager.dashboard.lookml)

Overview on campaigns by Source and comparisons between them to check progress over time and from different sources.

### [Campaign Comparison](./dashboards/campaign_comparison.dashboard.lookml)

Isolate individual campaigns and see how they compare to each other. See how single campaigns were rolled out and how their performance


### [Spend and Revenue](./dashboards/spend_revenue.dashboard.lookml)

Add a more in depth context on Spend vs. Revenue, to check if the investment on campaigns is going as expected.

### [Goals vs Actual Value](./dashboards/goal_vs_actual.dashboard.lookml)

Compares goal value defined in sheets table to multisource_ads view fields, with the actual value coming from your data.


### [Period Over Period](./dashboards/period_over_period.dashboard.lookml)

Period Over Period Comparison demo dashboard, specifically Current Period vs Previous Period, you can test the method by taking a quick look at the metrics comparison. This dashboard includes a forecasting visualization, the forecasting method is using [arima_plus](https://cloud.google.com/bigquery/docs/reference/standard-sql/bigqueryml-syntax-create-time-series) from BQ ML and it uses data from the multisource_ads view.

## How do I customize this block to add my own data?

You can leverage [refinements](https://cloud.google.com/looker/docs/lookml-refinements) to join your own data to this block

# Future Enhancements

Forecasting dashboard.
User Engagement Dashboard.
We are actively working to enhance this project by adding new features and improving existing functionality. Stay tuned for updates as we continue to refine and expand the capabilities of this block. Contributions and suggestions are always welcome!

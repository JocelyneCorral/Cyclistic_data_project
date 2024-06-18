# Cyclistic_data_project
Cyclistic case study. [Capstone project](https://www.coursera.org/learn/google-data-analytics-capstone?specialization=google-data-analytics) from the Google Data Analytics Professional Certificate 
## Introduction
After completing 8 courses, this capstone project will allow me to showcase my working knowledge of the data analysis process. Asking questions that help define the problem, Preparing data for analysis by verifying its integrity, Processing data by cleaning it, using tools like SQL and R language to Analyze data, then create visualizations to Share these insights with stakeholders, and finally Act on those findings by providing my recommendations.
## Scenario
I am a junior data analyst working on the marketing analyst team at Cyclistic, a bike company in Chicago. 
The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. 
Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. 
From these insights, your team will design a new marketing strategy to convert casual riders into annual
members.
## Background info on Cyclistic
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown
to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations
across Chicago. The bikes can be unlocked from one station and returned to any other station
in the system anytime.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to
broad consumer segments. One approach that helped make these things possible was the
flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships.
Customers who purchase single-ride or full-day passes are referred to as casual riders.
Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable
than casual riders. Although the pricing flexibility helps Cyclistic attract more customers,
Moreno believes that maximizing the number of annual members will be key to future growth.
Rather than creating a marketing campaign that targets all-new customers, Moreno believes
there is a solid opportunity to convert casual riders into members. She notes that casual riders
are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into
annual members. In order to do that, however, the team needs to better understand how
annual members and casual riders differ, why casual riders would buy a membership, and how
digital media could affect their marketing tactics. Moreno and her team are interested in
analyzing the Cyclistic historical bike trip data to identify trends.
## ASK
  ### Business Task
  Analyze the differences in how annual members and casual riders use Cyclistic bikes. Identifying patterns and trends. These insights will help to develop a marketing strategy aimed at converting casual members into annual members, which will ultimately increase profitability for Cyclistic.
  
## PREPARE
The data used comes from Cyclistic is first party data, so the data is appropriate for completing the business task. I used the last 12 months of data (04/2023 to 04/2024). This data is public and available for use under this [license](https://divvybikes.com/data-license-agreement) 
  ### Data sources used
  [Historical data from primary source, Cyclistic](https://divvy-tripdata.s3.amazonaws.com/index.html) 
  
  [April 2024](https://divvy-tripdata.s3.amazonaws.com/202404-divvy-tripdata.zip)
  
  [March 2024](https://divvy-tripdata.s3.amazonaws.com/202403-divvy-tripdata.zip)
  
  [February 2024](https://divvy-tripdata.s3.amazonaws.com/202402-divvy-tripdata.zip)
  
  [January 2024](https://divvy-tripdata.s3.amazonaws.com/202401-divvy-tripdata.zip)
  
  [December 2023](https://divvy-tripdata.s3.amazonaws.com/202312-divvy-tripdata.zip)
  
  [November 2023](https://divvy-tripdata.s3.amazonaws.com/202311-divvy-tripdata.zip)
  
  [October 2023](https://divvy-tripdata.s3.amazonaws.com/202310-divvy-tripdata.zip)
  
  [September 2023](https://divvy-tripdata.s3.amazonaws.com/202309-divvy-tripdata.zip)
  
  [August 2023](https://divvy-tripdata.s3.amazonaws.com/202308-divvy-tripdata.zip)
  
  [July 2023](https://divvy-tripdata.s3.amazonaws.com/202307-divvy-tripdata.zip)
  
  [June 2023](https://divvy-tripdata.s3.amazonaws.com/202306-divvy-tripdata.zip)
  
  [May 2023](https://divvy-tripdata.s3.amazonaws.com/202305-divvy-tripdata.zip)
  
  [April 2023](https://divvy-tripdata.s3.amazonaws.com/202304-divvy-tripdata.zip)
## PROCESS
I began with Google Sheets but quickly realized the dataset was too large to use spreadsheets. I then went to BigQuery for SQL.
These are the steps I took to clean the data and verify its integrity.

When uploading the csv files, some of the files were too large to be uploaded to a single table so, some months had to be split into 2 or 3 tables. After creating tables for each csv file, I used UNION ALL statements to create one table with all the data of the last 12 months.

Combined data
## Combining Multiple Tables

To combine multiple tables into one, the following SQL query was used. You can find the full query in the [combine_tables.sql](combine_tables.sql) file.

```sql
CREATE OR REPLACE TABLE `cyclistic-bike-share-425221.bike_share_data.combined_cyclistic_data` AS
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202305-divvy-tripdata-1`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202305-divvy-tripdata-2`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202305-divvy-tripdata-3`
  UNION ALL                                                                                                                                               
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202306-divvy-tripdata-1`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202306-divvy-tripdata-2`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202307-divvy-tripdata-1`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202307-divvy-tripdata-2`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202308-divvy-tripdata-1`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202308-divvy-tripdata-2`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202308-divvy-tripdata-3`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202309-divvy-tripdata-1`
  UNION ALL 
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202309-divvy-tripdata-2`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202309-divvy-tripdata-3`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202310-divvy-tripdata-1`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202310-divvy-tripdata-2`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202311-divvy-tripdata`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202312-divvy-tripdata`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202401-divvy-tripdata`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202402-divvy-tripdata`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202403-divvy-tripdata`
  UNION ALL
  SELECT * FROM `cyclistic-bike-share-425221.bike_share_data.202404-divvy-tripdata`;
```

Summary statistics
## ANALYZE
## SHARE
## ACT

-- combine_tables.sql

-- Combine all tables into one table using CREATE OR REPLACE TABLE

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

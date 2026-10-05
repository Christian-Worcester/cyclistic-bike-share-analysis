---DATA CLEANING 
---IDENTIFIED NULL VALUES 
SELECT
  COUNT(*) AS total_rows,
  COUNTIF(end_station_name IS NULL) AS missing_end_station_name,
  COUNTIF(end_station_id IS NULL) AS missing_end_station_id,
  COUNTIF(end_lat IS NULL) AS missing_end_lat,
  COUNTIF(end_lng IS NULL) AS missing_end_lng
FROM
  `peak-engine-510514.divvy_capstone.tripdata_202005` ;
  
---RAN THIS QUERY FOR THE 12 MONTHS OF DATA PROVIDED. ETC.
SELECT
  COUNT(*) AS total_rows,
  COUNTIF(end_station_name IS NULL) AS missing_end_station_name,
  COUNTIF(end_station_id IS NULL) AS missing_end_station_id,
  COUNTIF(end_lat IS NULL) AS missing_end_lat,
  COUNTIF(end_lng IS NULL) AS missing_end_lng
FROM
  `peak-engine-510514.divvy_capstone.tripdata_202006` ;
  
  ---DURING FURTHER ANALYSIS, DIDN'T FIND NULL VALUES WORTH REMOVING.

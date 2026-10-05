-- DIVVY BIKE SHARE CAPSTONE ANALYSIS
-- 1. DATA COMBINATION & CLEANING
-- Creates a master table from 12 months of data with pre-calculated metrics
CREATE OR REPLACE TABLE `peak-engine-510514.divvy_capstone.combined_tripdata` AS
SELECT
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    start_station_name,
    SAFE_CAST(start_station_id AS STRING) AS start_station_id,
    end_station_name,
    SAFE_CAST(end_station_id AS STRING) AS end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual,
    TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS duration_minutes,
    FORMAT_TIMESTAMP('%A', started_at) AS day_of_week,
    EXTRACT(HOUR FROM started_at) AS hour_of_day
FROM `peak-engine-510514.divvy_capstone.tripdata_202004`
-- Note: In your final script, repeat the UNION ALL for each month 202005 through 202104
UNION ALL 
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, SAFE_CAST(start_station_id AS STRING), end_station_name, SAFE_CAST(end_station_id AS STRING), start_lat, start_lng, end_lat, end_lng, member_casual, TIMESTAMP_DIFF(ended_at, started_at, MINUTE), FORMAT_TIMESTAMP('%A', started_at), EXTRACT(HOUR FROM started_at) 
FROM `peak-engine-510514.divvy_capstone.tripdata_202005`;

-- 2. RIDE COUNT COMPARISON (CASUAL VS MEMBER)
SELECT
  member_casual,
  COUNT(*) AS total_rides
FROM `peak-engine-510514.divvy_capstone.combined_tripdata`
GROUP BY member_casual;

-- 3. TRIP DURATION ANALYSIS
SELECT
  member_casual,
  AVG(duration_minutes) AS average_duration_minutes,
  MAX(duration_minutes) AS max_duration_minutes
FROM `peak-engine-510514.divvy_capstone.combined_tripdata`
GROUP BY member_casual;

-- 4. BIKE TYPE PREFERENCES
SELECT
  member_casual,
  rideable_type,
  COUNT(*) AS total_rides
FROM `peak-engine-510514.divvy_capstone.combined_tripdata`
GROUP BY member_casual, rideable_type
ORDER BY member_casual, total_rides DESC;

-- 5. PEAK USAGE BY HOUR OF DAY
SELECT
  member_casual,
  hour_of_day,
  COUNT(*) AS total_rides
FROM `peak-engine-510514.divvy_capstone.combined_tripdata`
GROUP BY member_casual, hour_of_day
ORDER BY hour_of_day, member_casual;

-- 6. TOP 20 MOST ACTIVE STATIONS
SELECT station_name, station_id, COUNT(*) AS total_rides
FROM (
    SELECT start_station_name AS station_name, start_station_id AS station_id FROM `peak-engine-510514.divvy_capstone.combined_tripdata`
    UNION ALL
    SELECT end_station_name AS station_name, end_station_id AS station_id FROM `peak-engine-510514.divvy_capstone.combined_tripdata`
)
WHERE station_name IS NOT NULL
GROUP BY station_name, station_id
ORDER BY total_rides DESC
LIMIT 20;

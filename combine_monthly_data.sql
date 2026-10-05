---DATA PREPARATION.
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202004`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202005`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202006`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202007`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202008`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202009`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202010`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202011`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202012`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202101`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202102`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202103`
UNION ALL
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
  member_casual
FROM `peak-engine-510514.divvy_capstone.tripdata_202104`
---HAD TO TRANSFORM THE DATATYPE BEFORE THIS QUERY.

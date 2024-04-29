{{
    config(
        materialized="table"
    )
}}

SELECT
  EXTRACT(YEAR FROM lpep_pickup_datetime) AS year,
  EXTRACT(MONTH FROM lpep_pickup_datetime) AS month,
  {{ convert_rate_code('RatecodeID') }} AS rate_code_description,
  RateCodeID,
  SUM(Trip_distance) AS total_trip_distance
FROM
  {{ ref ('taxi')}}
GROUP BY
  year, 
  month, 
  rate_code_description,
  RateCodeID
ORDER BY
  year, 
  month
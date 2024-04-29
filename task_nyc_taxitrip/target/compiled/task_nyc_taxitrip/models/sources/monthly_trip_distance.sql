

SELECT
  EXTRACT(YEAR FROM lpep_pickup_datetime) AS year,
  EXTRACT(MONTH FROM lpep_pickup_datetime) AS month,
  
    CASE 
        WHEN RatecodeID = 1 THEN 'Standard rate'
        WHEN RatecodeID = 2 THEN 'JFK'
        WHEN RatecodeID = 3 THEN 'Newark'
        WHEN RatecodeID = 4 THEN 'Nassau or Westchester'
        WHEN RatecodeID = 5 THEN 'Negotiated fare'
        WHEN RatecodeID = 6 THEN 'Group ride'
        ELSE 'Unknown' 
    END
 AS rate_code_description,
  RateCodeID,
  SUM(Trip_distance) AS total_trip_distance
FROM
  `data-fellowship12`.`db_taxi`.`taxi`
GROUP BY
  year, 
  month, 
  rate_code_description,
  RateCodeID
ORDER BY
  year, 
  month
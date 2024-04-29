

SELECT
  EXTRACT(YEAR FROM lpep_pickup_datetime) AS year,
  EXTRACT(MONTH FROM lpep_pickup_datetime) AS month,
  SUM(Passenger_count) AS total_passengers
FROM
  `data-fellowship12`.`db_taxi`.`taxi`
GROUP BY
  year, month
ORDER BY
  year, month
{{
    config(
        materialized="table"
    )
}}

SELECT
  EXTRACT(YEAR FROM lpep_pickup_datetime) AS year,
  EXTRACT(MONTH FROM lpep_pickup_datetime) AS month,
  SUM({{ usd_to_idr('total_amount') }}) AS total_amount_idr,
  SUM(passenger_count) AS total_passengers
FROM
  {{ ref ('taxi')}}
GROUP BY
  year, month
ORDER BY
  year, month
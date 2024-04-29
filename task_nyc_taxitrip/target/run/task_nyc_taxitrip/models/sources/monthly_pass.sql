
  
    

    create or replace table `data-fellowship12`.`db_taxi`.`monthly_pass`
      
    
    

    OPTIONS()
    as (
      

SELECT
  EXTRACT(YEAR FROM lpep_pickup_datetime) AS year,
  EXTRACT(MONTH FROM lpep_pickup_datetime) AS month,
  SUM(
    ROUND(total_amount * 16241.5, 0)
) AS total_amount_idr,
  SUM(passenger_count) AS total_passengers
FROM
  `data-fellowship12`.`db_taxi`.`taxi`
GROUP BY
  year, month
ORDER BY
  year, month
    );
  
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT
    year,
    month,
    RateCodeID
FROM
    `data-fellowship12`.`db_taxi`.`monthly_trip_distance`
WHERE
    RateCodeID > 6
      
    ) dbt_internal_test
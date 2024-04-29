select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT
    year,
    month,
    total_amount_idr,
    total_passengers
FROM
    `data-fellowship12`.`db_taxi`.`monthly_passengers`
WHERE
    total_amount_idr < 0
      
    ) dbt_internal_test
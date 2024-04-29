select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT
    year,
    month,
    payment_type,
    total_monthly_transactions
FROM
    `data-fellowship12`.`db_taxi`.`monthly_transactions`
WHERE
    payment_type > 6
      
    ) dbt_internal_test
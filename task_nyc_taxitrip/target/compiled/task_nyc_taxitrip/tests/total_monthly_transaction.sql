SELECT
    year,
    month,
    payment_type,
    total_monthly_transactions
FROM
    `data-fellowship12`.`db_taxi`.`monthly_transactions`
WHERE
    payment_type > 6
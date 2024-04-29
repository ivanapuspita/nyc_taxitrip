SELECT
    year,
    month,
    total_amount_idr,
    total_passengers
FROM
    `data-fellowship12`.`db_taxi`.`monthly_passengers`
WHERE
    total_amount_idr < 0
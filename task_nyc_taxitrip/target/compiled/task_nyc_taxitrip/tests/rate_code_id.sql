SELECT
    year,
    month,
    RateCodeID
FROM
    `data-fellowship12`.`db_taxi`.`monthly_trip_distance`
WHERE
    RateCodeID > 6
SELECT
    year,
    month,
    RateCodeID
FROM
    {{ ref('monthly_trip_distance') }}
WHERE
    RateCodeID > 6

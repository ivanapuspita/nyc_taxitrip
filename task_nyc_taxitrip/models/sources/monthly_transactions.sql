{{
    config(
        materialized="table"
    )
}}

WITH transformed_data AS (
    SELECT 
        EXTRACT(YEAR FROM lpep_pickup_datetime) AS year,
        EXTRACT(MONTH FROM lpep_pickup_datetime) AS month,
        {{ convert_payment_type('payment_type') }} AS payment_type_description,
        payment_type
    FROM 
        {{ ref('taxi') }}
)
SELECT 
    year,
    month,
    payment_type_description,
    payment_type,
    COUNT(*) AS total_monthly_transactions
FROM 
    transformed_data
GROUP BY 
    year,
    month,
    payment_type_description,
    payment_type
ORDER BY 
    year,
    month
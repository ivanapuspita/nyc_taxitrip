SELECT
    year,
    month,
    payment_type,
    total_monthly_transactions
FROM
    {{ ref('monthly_transactions') }}
WHERE
    payment_type > 6

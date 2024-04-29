
  
    

    create or replace table `data-fellowship12`.`db_taxi`.`monthly_transactions_paytype`
      
    
    

    OPTIONS()
    as (
      

WITH transformed_data AS (
    SELECT 
        EXTRACT(YEAR FROM lpep_pickup_datetime) AS year,
        EXTRACT(MONTH FROM lpep_pickup_datetime) AS month,
        
    CASE 
        WHEN payment_type = 1 THEN 'Credit card '
        WHEN payment_type = 2 THEN 'Cash'
        WHEN payment_type = 3 THEN 'No charge'
        WHEN payment_type = 4 THEN 'Dispute'
        WHEN payment_type = 5 THEN 'Unknown'
        WHEN payment_type = 6 THEN 'Voided trip'
        ELSE 'Unknown' 
    END
 AS payment_type_description
    FROM 
        `data-fellowship12`.`db_taxi`.`taxi`
)
SELECT 
    year,
    month,
    payment_type_description,
    COUNT(*) AS total_monthly_transactions
FROM 
    transformed_data
GROUP BY 
    year,
    month,
    payment_type_description
ORDER BY 
    year,
    month
    );
  
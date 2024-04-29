
-- Extra, MTA_tax, Improvement_surcharge, Tip_amount, Tolls_amount,  Total_amount, Congestion_Surcharge, Airport_fee.
-- SELECT 
--     VendorID,
--     tpep_pickup_datetime,
--     tpep_dropoff_datetime
--     Passenger_count
--     Trip_distance
--     PULocationID
--     DOLocationID
--     RateCodeID
--     Payment_type
--     Fare_amount
--     store_and_fwd_flag = 'yes' AS store_and_fwd_flag
-- FROM 
--     `data-fellowship12`.`db_taxi`.`raw_taxi_trip`

SELECT 
    * EXCEPT(
        `store_and_fwd_flag`
    ),
    `store_and_fwd_flag` = 'yes' AS `store_and_fwd_flag`
FROM 
    `data-fellowship12`.`db_taxi`.`raw_taxi_trip`

-- SELECT 
--     *,
--     `store_and_fwd_flag` = 'yes' AS `store_and_fwd_flag`
-- FROM 
--     `data-fellowship12`.`db_taxi`.`raw_taxi_trip`

-- SELECT 
--     *,
--     CASE 
--         WHEN store_and_fwd_flag = 'Y' THEN TRUE
--         ELSE FALSE
--     END AS store_and_fwd_flag_boolean
-- FROM 
--     `data-fellowship12`.`db_taxi`.`raw_taxi_trip`
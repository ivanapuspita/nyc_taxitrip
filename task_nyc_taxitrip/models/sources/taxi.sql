{{
    config(
        materialized="table"
    )
}}

SELECT 
    * EXCEPT(
        store_and_fwd_flag
    ),
    CASE 
        WHEN store_and_fwd_flag = "Y" THEN TRUE
        WHEN store_and_fwd_flag = "N" THEN FALSE
        ELSE NULL
    END 
    AS store_and_fwd_flag
FROM 
    {{ source('db_taxi', 'raw_taxi_trip')}}
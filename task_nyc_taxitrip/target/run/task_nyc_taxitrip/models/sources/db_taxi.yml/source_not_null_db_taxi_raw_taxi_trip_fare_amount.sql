select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select fare_amount
from `data-fellowship12`.`db_taxi`.`raw_taxi_trip`
where fare_amount is null



      
    ) dbt_internal_test
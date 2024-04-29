select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select extra
from `data-fellowship12`.`db_taxi`.`raw_taxi_trip`
where extra is null



      
    ) dbt_internal_test
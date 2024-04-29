select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select trip_distance
from `data-fellowship12`.`db_taxi`.`raw_taxi_trip`
where trip_distance is null



      
    ) dbt_internal_test
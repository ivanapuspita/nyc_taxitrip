select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select improvement_surcege
from `data-fellowship12`.`db_taxi`.`raw_taxi_trip`
where improvement_surcege is null



      
    ) dbt_internal_test
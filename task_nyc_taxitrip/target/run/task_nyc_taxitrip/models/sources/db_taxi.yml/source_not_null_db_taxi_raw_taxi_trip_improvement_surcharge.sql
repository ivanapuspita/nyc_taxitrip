select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select improvement_surcharge
from `data-fellowship12`.`db_taxi`.`raw_taxi_trip`
where improvement_surcharge is null



      
    ) dbt_internal_test
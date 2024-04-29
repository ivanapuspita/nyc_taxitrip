select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select mta_tax
from `data-fellowship12`.`db_taxi`.`raw_taxi_trip`
where mta_tax is null



      
    ) dbt_internal_test
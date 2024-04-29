select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        RatecodeID as value_field,
        count(*) as n_records

    from `data-fellowship12`.`db_taxi`.`raw_taxi_trip`
    group by RatecodeID

)

select *
from all_values
where value_field not in (
    '1','2','3','4','5','6'
)



      
    ) dbt_internal_test
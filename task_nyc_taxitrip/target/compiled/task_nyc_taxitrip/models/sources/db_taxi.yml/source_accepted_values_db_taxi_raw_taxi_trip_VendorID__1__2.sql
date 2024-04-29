
    
    

with all_values as (

    select
        VendorID as value_field,
        count(*) as n_records

    from `data-fellowship12`.`db_taxi`.`raw_taxi_trip`
    group by VendorID

)

select *
from all_values
where value_field not in (
    '1','2'
)



    
    

with all_values as (

    select
        payment_type as value_field,
        count(*) as n_records

    from `data-fellowship12`.`db_taxi`.`raw_taxi_trip`
    group by payment_type

)

select *
from all_values
where value_field not in (
    '1','2','3','4','5','6'
)



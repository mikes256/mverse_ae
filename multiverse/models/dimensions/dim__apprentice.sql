with apprentice as (
    select 
        id
        ,full_name
        ,dob
        ,status
        ,programme_id
    from {{ref('stg__apprentice_users')}}
)
select *
from apprentice
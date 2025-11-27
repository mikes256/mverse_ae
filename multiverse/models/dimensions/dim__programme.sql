with programme as (
    select
        programme_id
        ,programme_name
        ,programme_start_at
    from {{ref('stg__apprentice_users')}}
)
select *
from programme
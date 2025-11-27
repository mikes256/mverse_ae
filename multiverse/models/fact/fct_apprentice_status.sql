with apprentice_status as (
    select 
        id as apprentice_id
        ,da.programme_id
        ,dp.programme_name
        ,da.status
    from {{ref('dim__apprentice')}} da
    join {{ref('dim__programme')}} dp 
        on da.programme_id = dp.programme_id
)
select *
from apprentice_status
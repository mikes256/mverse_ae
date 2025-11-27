with employer as (
    select
        id
        ,employer_name
        ,employer_tier
        ,employer_total_headcount
    from {{ref('stg__apprentice_users')}}
)
select *
from employer
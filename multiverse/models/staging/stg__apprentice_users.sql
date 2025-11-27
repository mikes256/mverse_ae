with users as (
    select 
        apprentice_id as id
        ,apprentice_full_name as full_name
        ,apprenticedob as dob
        ,apprentice_status as 'status'
        ,apprentice_start_date as 'start_date'
        ,apprentice_employer_name as employer_name
        ,employer_tier
        ,employer_total_headcount
        ,csm_name
        ,programme_name
        ,programme_id
        ,programme_started_date::date as programme_start_at

    from {{ ref ('apprentice_users') }}
)
select *
from users
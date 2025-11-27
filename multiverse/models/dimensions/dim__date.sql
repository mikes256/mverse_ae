with dim_date as (
    select 
        -- date_id
        response_date_at
        ,day(response_date_at)
        ,month(response_date_at)
        ,year(response_date_at)
    from {{ ref('stg__elm_survey_responses')}}
)
select *
from dim_date
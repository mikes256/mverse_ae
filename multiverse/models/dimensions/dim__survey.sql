with survey as (
    select 
        asy.survey_id
        ,asy.survey_name
        ,asy.survey_description
        ,es.effective_from
        ,es.effective_until
    from {{ref('stg__ash_surveys')}} asy
    join {{ref('stg__elm_surveys')}} es
        on asy.survey_id = es.survey_id
)
select *
from survey
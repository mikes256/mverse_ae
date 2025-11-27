with responses as (
    select 
        asr.response_id
        ,asr.apprentice_id
        ,asr.question_id
        ,asr.submitted_response
        ,asr.response_at
    from {{ref('stg__ash_survey_responses')}} asr
    union
    select 
        esr.response_id
        ,esr.apprentice_id
        ,esr.question_id
        ,esr.submitted_response
        ,esr.response_date_at
    from {{ref('stg__elm_survey_responses')}} esr
)
select *
from responses
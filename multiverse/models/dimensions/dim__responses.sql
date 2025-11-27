with responses as (
    select 
        asr.response_id
        ,asr.apprentice_id
        ,asr.question_id
        ,esr.submitted_response
        ,asr.response_at
    from {{ref('stg__ash_survey_responses')}} asr
    join {{ref('stg__elm_survey_responses')}} esr
        on asr.response_id = esr.response_id
)
select *
from responses
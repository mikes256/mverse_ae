with ash_survey_responses as (
    select
        response_id
        ,apprentice_id
        ,question_id
        ,submitted_response
        ,time_of_response::DATETIME as response_at

    from {{ ref('ash_survey_responses')}}
)
select *
from ash_survey_responses
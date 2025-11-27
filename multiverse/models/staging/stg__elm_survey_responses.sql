with elm_survey_responses as (
    select
        response_id
        ,apprentice_id
        ,question_type
        ,question_id
        ,submitted_response
        ,time_of_response::DATETIME as response_date_at
    from {{ ref('elm_survey_responses') }}
)
select *
from elm_survey_responses
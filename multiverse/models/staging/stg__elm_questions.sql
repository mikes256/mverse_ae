with elm_questions as (
    select
        question_id
        ,survey_id
        ,question_content
    from {{ ref('elm_questions') }}
)
select *
from elm_questions
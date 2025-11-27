with ash_questions as (
    select
        question_id
        ,survey_id
        ,question_content
    from {{ ref('ash_questions') }}
)
select *
from ash_questions
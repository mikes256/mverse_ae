with question as (
    select 
        aq.question_id
        ,aq.survey_id
        ,aq.question_content
    from {{ref('stg__ash_questions')}} as aq 
    union
    select 
        eq.question_id
        ,eq.survey_id
        ,eq.question_content
    from {{ref('stg__elm_questions')}} as eq 
)
select *
from question
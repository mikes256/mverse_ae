with question as (
    select 
        aq.question_id
        ,aq.survey_id
        ,eq.question_content
    from {{ref('stg__ash_questions')}} as aq 
    join {{ref('stg__elm_questions')}} as eq 
        on aq.question_id = eq.question_id
)
select *
from question
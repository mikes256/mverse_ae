with survey_responses as (
    select 
        dr.response_id 
        ,dr.apprentice_id
        ,ds.survey_id
        ,dq.question_id
    from {{ref('dim__responses')}} dr
    join {{ref('dim__question')}} dq
        on dr.question_id = dq.question_id
    join {{ref('dim__survey')}} ds
        on ds.survey_id = dq.survey_id
)
select *
from survey_responses
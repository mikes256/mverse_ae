with elm_surveys as (
    select
        survey_id
        ,survey_name
        ,survey_description
        ,effective_from
        ,effective_until
       -- ,datediff(effective_until, effective_from) as effective_datedifference
    from {{ ref('elm_surveys') }}
)
select *
from elm_surveys
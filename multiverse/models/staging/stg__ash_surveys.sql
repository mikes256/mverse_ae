with ash_surveys as (
    select
        survey_id
        ,survey_name
        ,survey_description
        ,effective_from::date as effective_from

    from {{ ref('ash_surveys') }}
)
select *
from ash_surveys
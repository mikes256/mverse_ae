with elm_single_choice_select as (
    select
        question_id
        ,numeric_single_choice
        ,selected_answer

    from {{ ref('elm_single_choice_select') }}
)
select *
from elm_single_choice_select
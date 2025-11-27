# MultiVerse

![alt text](<Screenshot 2025-11-27 at 13.53.57.png>)

![alt text](<Attribute_Table.drawio (1).png>)

![alt text](ERD.drawio.png)
## purpose
this project standardises apprentice survey data from two systems `Ash` and `Elm` into a unified analytics model for consistent reporting and stakeholder insights

## source overview
`apprentice_users.csv`: apprentice metadata
`ash_*`: Ash survey responses
`elm_*`: Elm survey responses

## transformation steps
1. dbt seed all `.csv` files
2. staging layer
    - light transformation and casting appropriate data types
    - rename and snake v camel case consistency
    - review the data and inspect for any inefficiencies
    - surrogate key e.g. `programme_id`
    - dbt tests
3. dimension model
    - joins and unions that are appropriate from staging models to formulate business context
        - deriving real business understanding at this stage
    - new dbt tests for referencial integrity
    - added aggregation and de-duplication data cleansing
4. fact model
    - operates as a star schema with joining dimensions table
    - case statements for flags and easily identifiable KPI's which can answer busniess questions at a glance
    - dbt tests for new join referencial integrity


## business question
**Average Net Promoter Score (NPS) by employer**
- `fact_survey_responses`, filter for Net Promoter Score questions

- Join to `dim_employer`.`apprentice_id` = `dim_apprentice``employer_id`

- Aggregate by `month/quarter` using `response_date_at`
----
**Programme difficulty perception over time**

- `fact_survey_responses` i would include a case statement to easily identify difficulty related questions
- join `dim_programme` to `dim_apprentice`
- `dim__date`.`response_date_at` to track changes over time
---
**Apprentices on-break distributed by age**

- `fact_apprentice_status` where `apprentice_status` = `'on-break'`
- join to `dim_apprentice` to group by `age_group`
---
**Programme content suitability by age group**

- join `fact_survey_responses` to `dim_apprentice`.`programme_id` and `dim_programme`.`programme_id`

- filter for content related questions

- compare responses across age groups with a case statement
WITH int_aggregate_by_category_id as (
    SELECT 
        id
        ,count(*)
    FROM {{ref("stg_crm__nova_tabela")}}
    group by 1
)

select * from int_aggregate_by_category_id

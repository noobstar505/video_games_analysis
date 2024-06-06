{{ config(materialized='table') }}

SELECT
         *,
    CASE
        WHEN critic_score <= 2 THEN '0-2'
        WHEN critic_score < 5.5 THEN '3-5'
        WHEN critic_score < 8.5 THEN '6-8'
        WHEN critic_score <= 10 THEN '9-10'
    END AS crtic_cat
FROM {{ ref('stg_sales_data__sales') }}
WHERE total_sales IS NOT NULL


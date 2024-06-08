{{ config(materialized='table') }}

SELECT
         title,
        platform,
        genres,
        developer,
        critic_score,
        total_sales,
        na_sales,
        jp_sales,
        emea_sales,
        other_sales,
        release_date
        
FROM {{ ref('stg_sales_data__sales') }}
WHERE total_sales IS NOT NULL


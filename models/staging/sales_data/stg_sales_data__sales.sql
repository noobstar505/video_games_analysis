with 

source as (

    select * from {{ source('sales_data', 'sales') }}

),

cleaned AS (

    SELECT
        title,
        console AS platform,
        IF(REGEXP_CONTAINS(LOWER(genre), 'adventure'),'Adventure',genre) AS genres,
        developer,
        critic_score,
        total_sales,
        na_sales,
        jp_sales,
        pal_sales AS emea_sales,
        other_sales,
        release_date
        

    FROM source

)

SELECT * FROM cleaned

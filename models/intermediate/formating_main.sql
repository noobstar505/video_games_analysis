{{ config(materialized='table') }}


WITH formatted_data AS(

SELECT id,
        category,
        FORMAT_TIMESTAMP('%Y-%m-%d',TIMESTAMP_SECONDS(first_release_date_int)) AS first_release_date,
        game_modes,
        genres,
        name,
        platforms,
        themes,
        involved_companies,
        franchise,
        aggregated_rating,
        aggregated_rating_count,
        multiplayer_modes,

FROM {{ ref('stg_igdb__main') }}
),

date_formatted AS(
    SELECT 
        id,
        category,
        PARSE_DATE('%Y-%m-%d',first_release_date) AS release_date,
        game_modes,
        genres,
        name,
        platforms,
        themes,
        involved_companies,
        franchise,
        aggregated_rating,
        aggregated_rating_count,
        multiplayer_modes,
    FROM formatted_data
   


)
SELECT * FROM date_formatted WHERE category = 0
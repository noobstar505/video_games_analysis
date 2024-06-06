
SELECT
        id,
        name,
        release_date,
        aggregated_rating,
        genres,
        game_modes,
        platforms,
        themes,
        developer,
        country,
        company_name,
        IF(franchise_name IS NULL, 'Not a franchise',franchise_name) AS franchise

FROM {{ ref('stg_mart__main_genre') }}

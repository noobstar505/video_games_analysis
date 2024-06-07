SELECT
         id,
        name,
        release_date,
        aggregated_rating,
        developer,
        country,
        company_name,
        updated_game_modes AS game_modes, 
        IF(franchise_name IS NULL, 'Not a franchise',franchise_name) AS franchise

FROM {{ ref('stg_int__mode') }}
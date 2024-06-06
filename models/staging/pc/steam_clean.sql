{{ config(materialized='table') }}

WITH 

    steam_clean AS(
    SELECT
        name,
        REGEXP_REPLACE(release_date,r'\d{1,2},\s*', '') AS release_date,
        num_owners,
        peak_ccu,
        age_certificate,
        price,
        dlc_count,
        reviews,
        metacritic_score,
        positive,
        negative,
        `average playtime forever`,
        `average playtime two weeks`,
        `median playtime forever`,
        `median playtime two weeks`,
        developers,
        publishers,
        genres
    
    from {{ ref('stg_pc__steam') }}
        )

SELECT
*
FROM steam_clean
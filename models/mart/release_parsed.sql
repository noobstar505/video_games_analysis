with 

    release_date as ( 
        select 
        name
        , PARSE_DATE('%h %e, %Y', release_date) AS date_date
        , num_owners
        , peak_ccu
        , age_certificate
        , price
        , dlc_count
        , positive
        , negative
        , `average playtime two weeks` AS avg_play_2_weeks
        , `median playtime two weeks` AS med_play_2_weeks
        , `average playtime forever` AS avg_play_forever
        , `median playtime forever` AS med_play_forever
        , developers
        , publishers
        , genres
        FROM {{ ref('stg_pc__steam') }}
    
     )

SELECT * FROM release_date
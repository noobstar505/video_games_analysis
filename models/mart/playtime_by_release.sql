WITH 
    
    playtime_by_release as(
        SELECT
        parsed_date
        , positive
        , negative
        , avg_play_2_weeks
        , med_play_2_weeks
        , avg_play_forever
        , med_play_forever
        FROM {{ ref('release_parsed') }}
    )
    SELECT * FROM playtime_by_release


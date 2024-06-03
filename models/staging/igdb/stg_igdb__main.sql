with 

source as (

    select * from {{ source('igdb', 'main') }}

),

renamed as (

    select
        int64_field_0,
        id,
        category,
        created_at,
        external_games,
        first_release_date,
        game_modes,
        genres,
        name,
        platforms,
        release_dates,
        screenshots,
        similar_games,
        slug,
        status,
        summary,
        tags,
        themes,
        updated_at,
        url,
        websites,
        age_ratings,
        involved_companies,
        parent_game,
        game_engines,
        player_perspectives,
        videos,
        rating,
        rating_count,
        storyline,
        total_rating,
        total_rating_count,
        version_parent,
        version_title,
        hypes,
        franchises,
        follows,
        franchise,
        aggregated_rating,
        aggregated_rating_count,
        multiplayer_modes,
        dlcs,
        ports,
        expansions,
        remakes,
        expanded_games,
        remasters,
        standalone_expansions,
        forks

    from source

)

select * from renamed

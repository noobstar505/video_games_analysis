-- generating model for source('igdb', 'main')...
with source as (
    select * from {{ source('igdb', 'main') }}
),

cleaned_data as (
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

select * from cleaned_data
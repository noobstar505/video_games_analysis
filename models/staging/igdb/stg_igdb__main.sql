with 

source as (

    select * from {{ source('igdb', 'main') }}

),

renamed as (

    select
        id,
        category,
        first_release_date AS first_release_date_int,
        game_modes,
        genres,
        name,
        platforms,
        themes,
        involved_companies,
        game_engines,
        player_perspectives,
        franchises,
        franchise,
        aggregated_rating,
        aggregated_rating_count,
        multiplayer_modes,

    from source

)

select * from renamed

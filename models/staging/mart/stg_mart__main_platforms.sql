with 

source as (

    select * from {{ source('mart', 'main_platforms') }}

),

renamed as (

    select
        id,
        name,
        release_date,
        aggregated_rating,
        genres,
        game_modes,
        platforms,
        themes,
        developer,
        publisher,
        country,
        company_name,
        franchise_name

    from source

)

select * from renamed

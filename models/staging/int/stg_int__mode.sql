with 

source as (

    select * from {{ source('int', 'mode') }}

),

renamed as (

    select
        id,
        name,
        release_date,
        aggregated_rating,
        developer,
        country,
        company_name,
        franchise_name,
        updated_game_modes

    from source

)

select * from renamed

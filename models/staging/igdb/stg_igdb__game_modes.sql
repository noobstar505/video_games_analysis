with 

source as (

    select * from {{ source('igdb', 'game_modes') }}

),

renamed as (

    select
        id,
        name,
        slug

    from source

)

select * from renamed

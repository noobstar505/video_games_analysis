with 

source as (

    select * from {{ source('igdb', 'involved_company') }}

),

renamed as (

    select
        id,
        company,
        developer,
        game,
        porting,
        publisher,
        supporting,

    from source

)

select * from renamed

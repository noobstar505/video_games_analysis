with 

source as (

    select * from {{ source('igdb', 'involved_company') }}

),

renamed as (

    select
        int64_field_0,
        id,
        company,
        created_at,
        developer,
        game,
        porting,
        publisher,
        supporting,
        updated_at,
        checksum

    from source

)

select * from renamed

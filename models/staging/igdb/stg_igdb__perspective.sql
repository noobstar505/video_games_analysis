with 

source as (

    select * from {{ source('igdb', 'perspective') }}

),

renamed as (

    select
        id,
        created_at,
        name,
        slug,
        updated_at,
        url,
        checksum

    from source

)

select * from renamed

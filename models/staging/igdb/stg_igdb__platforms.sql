with 

source as (

    select * from {{ source('igdb', 'platforms') }}

),

renamed as (

    select
        id,
        alternative_name,
        category,
        created_at,
        name,
        platform_logo,
        slug,
        updated_at,
        url,
        versions,
        websites,
        checksum,
        generation,
        platform_family,
        abbreviation,
        summary

    from source

)

select * from renamed

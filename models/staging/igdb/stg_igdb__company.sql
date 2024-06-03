with 

source as (

    select * from {{ source('igdb', 'company') }}

),

renamed as (

    select
        int64_field_0,
        id,
        change_date_category,
        country,
        created_at,
        description,
        developed,
        logo,
        name,
        slug,
        start_date,
        start_date_category,
        updated_at,
        url,
        websites,
        checksum,
        published,
        parent,
        change_date,
        changed_company_id

    from source

)

select * from renamed

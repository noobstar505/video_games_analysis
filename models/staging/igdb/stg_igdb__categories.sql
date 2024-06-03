with 

source as (

    select * from {{ source('igdb', 'categories') }}

),

renamed as (

    select
        category,
        category_description

    from source

)

select * from renamed

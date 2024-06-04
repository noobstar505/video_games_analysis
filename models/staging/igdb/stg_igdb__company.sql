with 

source as (

    select * from {{ source('igdb', 'company') }}

),

cleaned as (

    select
        id,
        country,
        developed,
        name,
        published,

    from source

)

select * from cleaned

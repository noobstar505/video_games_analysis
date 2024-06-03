with 

source as (

    select * from {{ source('igdb', 'platforms') }}

),

cleaned as (

    select
        id,
        category,
        name,                

    from source

)

select * from cleaned

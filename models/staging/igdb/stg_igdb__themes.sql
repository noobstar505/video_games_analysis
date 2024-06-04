with 

source as (

    select * from {{ source('igdb', 'themes') }}

),

cleaned as (

    select
        id,       
        name

    from source

)

select * from cleaned

-- generating model for source('raw', 'steam')...

with 

source as (

    select * from {{ source('pc', 'steam') }}

),

renamed as (

    select
        

    from source

)

select * from renamed


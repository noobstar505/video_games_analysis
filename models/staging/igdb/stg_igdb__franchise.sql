with 

source as (

    select * from {{ source('igdb', 'franchise') }}

),

renamed as (

    select
        id,
        name

    from source

)

select * from renamed

with 

source as (

    select * from {{ source('igdb', 'perspective') }}

),

renamed as (

    select
        id,
        name,
        
    from source

)

select * from renamed

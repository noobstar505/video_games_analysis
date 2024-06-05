{{ config(materialized='table') }}

with 

source as (

    select * from {{ source('igdb', 'genre') }}

),

renamed as (

    select
        id,
        name,

    from source

)

select * from renamed

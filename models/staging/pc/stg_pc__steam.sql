with 

{{ config(materialized='table') }}

source as (

    select * from {{ source('pc', 'steam') }}

),

clean_steam as (

    select
        name,
        `release date` AS release_date,
        `estimated owners` AS num_owners,
        `peak ccu` AS peak_ccu,
        `required age` AS age_certificate,
        price,
        `dlc count` AS dlc_count,
        reviews,
        `metacritic score`,
        positive,
        negative,
        `average playtime forever`,
        `average playtime two weeks`,
        `median playtime forever`,
        `median playtime two weeks`,
        developers,
        publishers,
        genres,
    
    from source

)

select * from clean_steam

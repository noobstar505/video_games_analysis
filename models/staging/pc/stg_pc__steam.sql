with 

source as (

    select * from {{ source('pc', 'steam') }}

),

renamed as (

    select
        appid,
        name,
        release date,
        estimated owners,
        peak ccu,
        required age,
        price,
        dlc count,
        about the game,
        supported languages,
        full audio languages,
        reviews,
        header image,
        website,
        support url,
        support email,
        windows,
        mac,
        linux,
        metacritic score,
        metacritic url,
        user score,
        positive,
        negative,
        score rank,
        achievements,
        recommendations,
        notes,
        average playtime forever,
        average playtime two weeks,
        median playtime forever,
        median playtime two weeks,
        developers,
        publishers,
        categories,
        genres,
        tags,
        screenshots,
        movies

    from source

)

select * from renamed

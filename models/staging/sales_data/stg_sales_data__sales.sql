with 

source as (

    select * from {{ source('sales_data', 'sales') }}

),

renamed as (

    select
        img,
        title,
        console,
        genre,
        publisher,
        developer,
        critic_score,
        total_sales,
        na_sales,
        jp_sales,
        pal_sales,
        other_sales,
        release_date,
        last_update

    from source

)

select * from renamed

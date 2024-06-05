WITH developer_merged AS( 

SELECT main.id,
main.name,
main.release_date,
main.aggregated_rating,
main.genres,
main.game_modes,
main.platforms,
main.themes,
main.franchise,
companies.developer,
companies.publisher,
companies.country,
companies.name AS company_name
FROM {{ ref('int_company') }} companies
RIGHT JOIN {{ ref('formating_main') }} main
ON main.id = companies.game
)

SELECT *
FROM developer_merged

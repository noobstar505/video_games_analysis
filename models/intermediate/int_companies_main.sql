WITH developer_merged AS( 

SELECT main.name,
main.aggregated_rating,
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

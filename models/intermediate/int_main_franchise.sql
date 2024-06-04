SELECT main.id,
main.name,
aggregated_rating,
release_date,
developer,
publisher,
country,
company_name,
franchise.name AS franchise_name
FROM {{ ref('int_companies_main') }} main
LEFT JOIN {{ ref('stg_igdb__franchise') }} franchise
ON franchise.id = main.franchise
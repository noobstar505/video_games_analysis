SELECT main.*,
franchise.name AS franchise_name
FROM {{ ref('int_companies_main') }} main
LEFT JOIN {{ ref('stg_igdb__franchise') }} franchise
ON franchise.id = main.franchise
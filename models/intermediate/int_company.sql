SELECT 
in_companies.id,
in_companies.developer,
in_companies.game,
in_companies.publisher,
companies.country,
companies.name
FROM {{ ref('stg_igdb__involved_company') }} in_companies
LEFT JOIN {{ ref('stg_igdb__company') }} companies
ON companies.id = in_companies.company
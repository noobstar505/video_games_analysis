SELECT *
FROM {{ ref('stg_igdb__main') }}
ARRAY JOIN genre;
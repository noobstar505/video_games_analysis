WITH cat AS (
SELECT
      *
      , CASE WHEN (metacritic_score >= 0 AND metacritic_score <=50) THEN '0%-50%'
         WHEN (metacritic_score > 50 AND metacritic_score <= 60) THEN '51%-60%'
         WHEN (metacritic_score > 60 AND metacritic_score <= 70) THEN '61%-70%'
         WHEN (metacritic_score > 70 AND metacritic_score <= 80) THEN '71%-80%'
         WHEN (metacritic_score > 80 AND metacritic_score <= 90) THEN '81%-90%'
         ELSE '91%-100%'
    END AS metacritic_review_score
 FROM {{ ref('stg_pc__steam') }}
)
 
 SELECT
      metacritic_review_score
      , COUNT(cat.name) AS games
 FROM cat 
 GROUP BY metacritic_review_score
 ORDER BY games
SELECT SUM(total_sales) AS total_sales
,CASE

  WHEN critic_score >= 0 AND critic_score <=1 THEN "1"
  WHEN critic_score >= 1 AND critic_score <=2 THEN "2"
  WHEN critic_score >= 2 AND critic_score <=3 THEN "3"
  WHEN critic_score >= 3 AND critic_score <=4 THEN "4"
  WHEN critic_score >= 4 AND critic_score <=5 THEN "5"
  WHEN critic_score >= 5 AND critic_score <=6 THEN "6"
  WHEN critic_score >= 6 AND critic_score <=7 THEN "7"
  WHEN critic_score >= 7 AND critic_score <=8 THEN "8"
  WHEN critic_score >= 8 AND critic_score <=9 THEN "9"
  WHEN critic_score >= 9 AND critic_score <=10 THEN "10"
  ELSE "no_critic_score"
END AS critic_review_score
FROM  {{ ref('stg_sales_data__sales') }}
GROUP BY critic_review_score 
ORDER BY total_sales DESC

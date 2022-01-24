SELECT * FROM (SELECT first_name, RANK() OVER(PARTITION BY first_name) AS rank
FROM {{ref('stg_customer')}}) A
WHERE rank > 1

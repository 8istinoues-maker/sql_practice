-- Lv.3 JOIN

-- 問5：顧客ごとの合計支払額

-- customer と payment をJOINして、顧客ごとの合計支払額を求めてください。

-- 取得項目：

-- customer_id
-- first_name
-- last_name
-- total_payment

-- 条件：

-- 合計支払額が 100以上

-- 並び順：

-- total_payment の高い順

SELECT
	c.customer_id
	,first_name
	,last_name 
	,SUM(amount) AS total_payment
FROM customer c
INNER JOIN payment p
	ON c.customer_id = p.customer_id 
GROUP BY 1,2,3
HAVING SUM(p.amount) >= 100 
ORDER BY total_payment desc
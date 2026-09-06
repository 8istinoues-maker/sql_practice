-- 問題1：JOINの基本

-- customer と payment を使用して、顧客ごとの支払総額を求めてください。

-- 表示する列：

-- customer_id
-- first_name
-- last_name
-- total_payment

-- 条件：

-- 支払総額が多い順
-- 上位10人のみ表示


SELECT
	a.customer_id 
	,first_name
	,last_name
	,SUM(b.amount) AS total_payment
FROM customer a
INNER JOIN payment b
			ON a.customer_id  = b.customer_id 
GROUP BY a.customer_id 
ORDER BY total_payment  desc 
LIMIT 10;



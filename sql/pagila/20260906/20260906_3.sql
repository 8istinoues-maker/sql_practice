-- 問題3：GROUP BY + HAVING

-- customer と payment を使用して、支払い回数が30回以上の顧客を抽出してください。

-- 表示する列：

-- customer_id
-- first_name
-- last_name
-- 支払い回数 payment_count
-- 支払総額 total_payment

-- 条件：

-- payment_count >= 30
-- 支払総額が多い順

-- ポイントは、WHEREではなく**集計後の条件なので HAVING**を使うことです。


SELECT
	 c.customer_id
	,c.first_name
	,c.last_name
	,COUNT(p.payment_id  ) AS payment_count
	,SUM(p.amount ) AS total_payment
FROM customer c 
INNER JOIN payment p
		ON c.customer_id = p.customer_id 
GROUP BY 
	c.customer_id 
HAVING 
	count(p.amount) >= 30
ORDER BY total_payment DESC
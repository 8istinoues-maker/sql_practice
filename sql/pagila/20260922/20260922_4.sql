-- 問4：顧客ごとの支払い回数

-- payment テーブルから、顧客ごとの支払い回数を求めてください。

-- 取得項目：

-- customer_id
-- payment_count

-- 条件：

-- 支払い回数が 30回以上

-- 並び順：

-- payment_count の多い順

SELECT
	customer_id 
	,count(amount) AS payment_count
FROM payment
GROUP BY customer_id 
HAVING count(amount) >= 30
ORDER BY payment_count desc 
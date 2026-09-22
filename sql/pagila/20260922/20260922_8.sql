-- 問8：顧客ごとのレンタル実績

-- 以下をJOINします。

-- customer
-- → rental
-- → payment

-- 顧客ごとのレンタル回数と合計支払額を求めてください。

-- 取得項目：

-- customer_id
-- first_name
-- last_name
-- rental_count
-- total_payment

-- 条件：

-- rental_count >= 30

-- 並び順：

-- total_payment 降順
-- rental_count 降順

-- 注意： rental と payment を何のキーで結合するべきか確認してから書いてみてください。
SELECT
     c.customer_id
    ,first_name
    ,last_name
    ,COUNT(r.rental_id) AS rental_count
    ,SUM(p.amount) AS total_payment
FROM customer c
INNER JOIN rental r
    ON r.customer_id = c.customer_id
INNER JOIN payment p
    ON p.rental_id = r.rental_id
GROUP BY 1
HAVING COUNT(r.rental_id) >= 30
ORDER BY
     total_payment DESC
    ,rental_count DESC;
-- 問10：カテゴリ別の売上分析

-- 以下をJOINしてください。

-- category
-- → film_category
-- → inventory
-- → rental
-- → payment

-- カテゴリごとのレンタル回数・合計売上・平均支払額を求めてください。

-- 取得項目：

-- category_id
-- name
-- rental_count
-- total_sales
-- avg_payment

-- 条件：

-- rental_count >= 1000
-- total_sales >= 4000

-- 並び順：

-- total_sales 降順
-- rental_count 降順

-- ここでは WHEREではなくHAVINGに置くべき条件はどれか も意識してください。

SELECT
	c.category_id 
	,name
	,count(r.rental_id ) AS rental_count
	,sum(p.amount ) AS total_sales
	,avg(p.amount ) AS avg_payment
FROM category c 
INNER JOIN film_category fc 
		ON fc.category_id = c.category_id 
INNER JOIN inventory i 
		ON i.film_id = fc.film_id 
INNER JOIN rental r 
		ON r.inventory_id = i.inventory_id 
INNER JOIN payment p 
		ON p.rental_id = r.rental_id 
GROUP BY c.category_id 
HAVING count(r.rental_id) >= 1000 and sum(p.amount) >= 4000
ORDER BY total_sales desc 
		,rental_count desc 

-- SELECT
--      c.category_id
--     ,c.name
--     ,rc.rental_count
--     ,ps.total_sales
--     ,ps.avg_payment
-- FROM category c
-- INNER JOIN (
--     SELECT
--          fc.category_id
--         ,COUNT(r.rental_id) AS rental_count
--     FROM film_category fc
--     INNER JOIN inventory i
--         ON i.film_id = fc.film_id
--     INNER JOIN rental r
--         ON r.inventory_id = i.inventory_id
--     GROUP BY fc.category_id
-- ) rc
--     ON rc.category_id = c.category_id
-- INNER JOIN (
--     SELECT
--          fc.category_id
--         ,SUM(p.amount) AS total_sales
--         ,AVG(p.amount) AS avg_payment
--     FROM film_category fc
--     INNER JOIN inventory i
--         ON i.film_id = fc.film_id
--     INNER JOIN rental r
--         ON r.inventory_id = i.inventory_id
--     INNER JOIN payment p
--         ON p.rental_id = r.rental_id
--     GROUP BY fc.category_id
-- ) ps
--     ON ps.category_id = c.category_id
-- WHERE rc.rental_count >= 1000
--   AND ps.total_sales >= 4000
-- ORDER BY
--      ps.total_sales DESC
--     ,rc.rental_count DESC;
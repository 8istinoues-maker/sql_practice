-- 問7：カテゴリごとのレンタル回数

-- 以下をJOINします。

-- category
-- → film_category
-- → inventory
-- → rental

-- 取得項目：

-- category_id
-- name
-- rental_count

-- 条件：

-- レンタル回数が 1000回以上

-- 並び順：

-- rental_count の多い順

SELECT
    c.category_id,
    name,
    COUNT(r.rental_id) AS rental_count
FROM category c
INNER JOIN film_category fc
    ON fc.category_id = c.category_id
INNER JOIN inventory i
    ON i.film_id = fc.film_id
INNER JOIN rental r
    ON r.inventory_id = i.inventory_id
GROUP BY 1
HAVING COUNT(r.rental_id) >= 1000
ORDER BY rental_count desc 
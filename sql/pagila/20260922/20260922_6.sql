
-- 問6：カテゴリごとの映画本数

-- 以下のテーブルをJOINしてください。

-- category
-- → film_category
-- → film

-- 取得項目：

-- category_id
-- name
-- film_count

-- 並び順：

-- film_count の多い順

-- ※ COUNT(*) を使って考えてみてください。

-- Lv.4 複数JOIN＋集計

SELECT
	c.category_id 
	,name
	,count(*) AS film_count 
FROM category c
INNER JOIN film_category fc  
		ON c.category_id  = fc.category_id 
INNER JOIN film f 
		ON f.film_id = fc.film_id 
GROUP BY c.category_id 
ORDER BY film_count desc 
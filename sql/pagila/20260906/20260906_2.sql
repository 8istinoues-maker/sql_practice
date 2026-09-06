-- 問題2：3テーブルJOIN + 集計

-- film、film_category、category を使用して、カテゴリごとの映画本数を求めてください。

-- 表示する列：

-- カテゴリ名 category_name
-- 映画本数 film_count

-- 条件：

-- 映画本数が多い順

-- ヒント：テーブルの関係は

-- film
--  ↓ film_id
-- film_category
--  ↓ category_id
-- category

-- です。

SELECT
	c.name
	,COUNT(f.film_id ) AS film_count
FROM film f
INNER JOIN film_category fc 
		ON f.film_id = fc.film_id 
INNER JOIN category c 
		ON fc.category_id = c.category_id 
GROUP BY
	c.category_id
ORDER BY film_count DESC 

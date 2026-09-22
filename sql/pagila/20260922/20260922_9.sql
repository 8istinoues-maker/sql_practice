-- Lv.5 サブクエリ

-- 問9：同じレーティングの平均より長い映画

-- 各映画について、同じratingの映画の平均上映時間より長い映画を取得してください。

-- 取得項目：

-- film_id
-- title
-- rating
-- length

-- 条件イメージ：

-- その映画のlength
--     >
-- 同じratingの映画の平均length

-- 並び順：

-- rating 昇順
-- length 降順

-- 今回は前回の復習として、相関サブクエリで解いてください。

-- Lv.6 総合問題

SELECT
	film_id
	,title
	,rating
	,length
FROM film f1
WHERE f1.length  > (SELECT 
						AVG(f2.length) as avg_length
					FROM film f2
					WHERE f1.rating = f2.rating 
					)
ORDER BY rating asc,length desc

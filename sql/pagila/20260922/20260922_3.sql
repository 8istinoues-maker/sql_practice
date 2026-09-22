-- 問3：レーティング別の平均上映時間

-- film テーブルから、レーティングごとの映画本数と平均上映時間を求めてください。

-- 取得項目：

-- rating
-- film_count
-- avg_length

-- 並び順：

-- avg_length の高い順

SELECT
	rating
	,count(film_id) AS film_count
	,avg(length) AS avg_length
FROM film
GROUP BY rating 
ORDER BY avg_length desc
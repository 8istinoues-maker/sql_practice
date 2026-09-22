-- Lv.1 基礎

-- 問1：映画の一覧取得

-- film テーブルから、上映時間が 120分以上 の映画を取得してください。

-- 取得項目：

-- film_id
-- title
-- length

-- 条件：

-- length >= 120
-- length の長い順
-- 上位10件
SELECT
	film_id
	,title
	,length
FROM film 
WHERE length >= 120
ORDER BY length  desc
LIMIT 10;
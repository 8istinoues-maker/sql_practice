-- film テーブルから、上映時間 length が100分以上の映画を、長い順に10件取得してください。
SELECT
	length
FROM film
WHERE length >= 100
ORDER BY length desc
LIMIT 10;

-- film テーブルから、rental_rate が 2.99 以上の映画を取得してください。表示項目は title, rental_rate。
SELECT
	title
	,rental_rate
FROM film
WHERE rental_rate >= 2.99;
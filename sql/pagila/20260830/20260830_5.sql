-- film テーブルで、rating ごとの映画本数を集計してください。表示項目は rating, film_count。本数の多い順に並べてください。

SELECT
	rating
	,count(title) AS film_count
FROM film
GROUP BY rating 
ORDER BY film_count desc 
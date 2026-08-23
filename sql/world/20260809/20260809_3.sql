-- 問題3：GROUP BY ＋ HAVING

-- 大陸ごとに人口を集計し、総人口が300,000,000以上の大陸だけ取得してください。

-- 表示列：

-- continent
-- country_count
-- total_population
-- average_population

-- 条件：

-- country_count → 国数
-- total_population → 人口合計
-- average_population → 平均人口
-- total_population の多い順

SELECT 
	continent 
	,COUNT(name) AS country_count 
	,SUM(population) AS total_population
    ,AVG(population ) AS average_population
FROM world 
GROUP BY continent 
HAVING SUM(population) >= 300000000
ORDER BY total_population DESC
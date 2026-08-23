-- 問題2：大陸別の人口規模

-- 大陸ごとに以下を求めてください。

-- 出力項目

-- continent
-- country_count
-- total_population
-- average_population

-- 条件

-- COUNT
-- SUM
-- AVG
-- GROUP BY
-- 総人口の多い順

SELECT 
	continent 
	,COUNT(name) AS country_count
	,SUM(population) AS total_population
	,AVG(population) AS average_population
FROM world
GROUP BY continent
ORDER BY total_population DESC
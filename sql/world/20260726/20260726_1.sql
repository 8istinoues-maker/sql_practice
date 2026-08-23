-- 問題1：大陸別の平均人口

-- world テーブルから、大陸ごとの平均人口を求めてください。

-- 出力項目：

-- continent
-- average_population

-- 条件：

-- 平均人口が多い順に並べる
-- 平均人口は整数に丸める



SELECT 
	continent
	,ROUND(AVG(population)) AS avarage_population
FROM world
GROUP BY continent
ORDER BY avarage_population  DESC
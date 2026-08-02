-- 問題2：大陸内で人口が多い国

-- 各国について、同じ大陸に属する国の平均人口より人口が多い国を取得してください。

-- 出力項目：

-- name
-- continent
-- population

-- 条件：

-- 相関サブクエリを使用する
-- 人口の多い順に並べる



SELECT
	w1.name
	,w1.continent
	,w1.population
FROM world w1
WHERE population  > (SELECT
                        AVG(w2.population)
                        FROM world w2
                        WHERE w1.continent = w2.continent  
					          )
ORDER BY population DESC
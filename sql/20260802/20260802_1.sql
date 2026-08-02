-- 問題1：人口が大陸平均以上の国

-- 各国について、所属する大陸の平均人口以上の国を取得してください。

-- 出力項目

-- name
-- continent
-- population

-- 条件

-- 相関サブクエリを使用する
-- 人口の多い順に並べる
SELECT
	 name
   ,continent
   ,population
FROM world w1
WHERE w1.population  >= (SELECT AVG(population)
                        FROM world w2
                        WHERE w1.continent = w2.continent 
						             )
ORDER BY population DESC



-- ## 問題4：サブクエリ（初級）

-- 世界全体の平均人口より人口が多い国を取得してください。

-- 取得する列：

-- * `name`
-- * `population`

-- 人口が多い順に並べてください。

-- ---

SELECT
	name
	,population
FROM world
WHERE  population  >  (
                      SELECT
                        AVG(population)
                      FROM world
                      )
ORDER BY population desc 
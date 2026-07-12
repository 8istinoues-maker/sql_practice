-- ## 問題2：計算結果を列として表示

-- 各国の人口密度を、次の計算式で求めてください。

-- 人口密度 = population / area

-- 取得する列：

-- * `name`
-- * `population`
-- * `area`
-- * 人口密度

-- 人口密度の列名は `population_density` とし、人口密度が高い順に並べてください。

-- ---

SELECT
  name
  ,population
  ,area
  ,population / area AS population_density
FROM world
ORDER BY population_density DESC;

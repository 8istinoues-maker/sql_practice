-- ## 問題3：大陸ごとの集計

-- 大陸ごとに、次の情報を取得してください。

-- * 大陸名
-- * 国の数
-- * 人口の合計
-- * 人口の平均

-- 列名は次のようにしてください。

-- * 大陸名：`continent`
-- * 国の数：`country_count`
-- * 人口合計：`total_population`
-- * 人口平均：`average_population`

-- 人口合計が多い順に並べてください。

SELECT
  continent
  ,COUNT (continent ) AS country_count
  ,SUM (population ) AS total_population
  ,AVG(population ) AS average_population
FROM world
GROUP BY continent
ORDER BY total_population DESC

-- ## 問題4：HAVINGを使用した集計結果の絞り込み

-- 大陸ごとの人口合計を求め、人口合計が100,000,000以上の大陸だけを取得してください。

-- 取得する列：

-- * `continent`
-- * 人口合計

-- 人口合計の列名は `total_population` としてください。


SELECT
  continent
  ,SUM(population ) AS total_population
FROM world
GROUP BY continent 
HAVING SUM(population) >= 100000000
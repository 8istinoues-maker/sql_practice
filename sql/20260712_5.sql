-- ## 問題5：CASE式による分類

-- 各国を人口によって、次の3段階に分類してください。

-- * 人口が70,000,000以上：`Large`
-- * 人口が30,000,000以上70,000,000未満：`Medium`
-- * 人口が30,000,000未満：`Small`

-- 取得する列：

-- * `name`
-- * `population`
-- * 分類結果

-- 分類結果の列名は `population_category` としてください。

-- 人口が多い順に並べてください。

SELECT
  name
  ,population
  ,CASE 
      WHEN population >= 70000000 THEN 'Large'
      WHEN population >= 30000000 AND population < 70000000 THEN 'Medium'
      ELSE 'Small'
  END AS population_category
FROM world
ORDER BY population DESC
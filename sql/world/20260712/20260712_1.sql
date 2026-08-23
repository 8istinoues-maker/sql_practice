

-- ## 問題1：複数条件と並び替え

-- 人口が30,000,000以上の国を抽出し、人口が多い順に並べてください。

-- 取得する列：

-- * `name`
-- * `continent`
-- * `population`



SELECT
  name
  ,continent
  ,population
FROM world
WHERE population >= 30000000
ORDER BY population DESC;




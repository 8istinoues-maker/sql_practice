-- ## 問題5：CASEと集計

-- 各大陸について、人口によって国を分類してください。

-- 分類条件：

-- * 70,000,000以上：`Large`
-- * 30,000,000以上70,000,000未満：`Medium`
-- * 30,000,000未満：`Small`

-- 取得する列：

-- * `continent`
-- * 分類（列名：`population_category`）
-- * 国数（列名：`country_count`）

-- `continent`、`population_category` の順で並べてください。


SELECT 
	continent
	,CASE
		WHEN population >= 70000000 THEN 'Large'
		WHEN population >= 30000000 THEN 'Medium'
		ELSE 'Small'
	END AS population_category
	,COUNT(name) AS country_count
FROM world
GROUP BY 1,2
ORDER BY 1,2 
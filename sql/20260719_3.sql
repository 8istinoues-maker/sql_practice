-- ## 問題3：集計と件数

-- 大陸ごとにGDPの合計を求めてください。

-- 取得する列：

-- * `continent`
-- * GDP合計（列名：`total_gdp`）
-- * 国数（列名：`country_count`）

-- GDP合計が多い順に並べてください。

-- ---


SELECT 
	continent
	,SUM(gdp) AS total_gdp
	,COUNT(name) AS country_count
FROM world
GROUP BY continent 
ORDER BY total_gdp  desc
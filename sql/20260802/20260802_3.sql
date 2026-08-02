-- 問題3：GDP区分ごとの国数

-- GDPを以下の3段階に分類し、それぞれの国数を求めてください。

-- High   ：1,000,000,000,000以上
-- Middle ：100,000,000,000以上1,000,000,000,000未満
-- Low    ：100,000,000,000未満

-- 出力項目

-- gdp_category
-- country_count

-- 条件

-- CASE式を使用
-- 国数の多い順

SELECT
	 CASE
		WHEN gdp >= 1000000000000 THEN 'High'
		WHEN gdp >= 100000000000 THEN 'Middle' 
		ELSE 'Low'
	 END AS gdp_category
	 ,COUNT(name) AS country_count
FROM world
GROUP BY gdp_category 
ORDER BY country_count DESC
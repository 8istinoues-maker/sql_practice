-- 問題3：人口規模別の国数

-- 国を以下の人口規模に分類し、それぞれの国数を求めてください。

-- Large  ：人口70,000,000以上
-- Medium ：人口30,000,000以上70,000,000未満
-- Small  ：人口30,000,000未満

-- 出力項目：

-- population_category
-- country_count

-- 条件：

-- CASE 式を使用する
-- 国数の多い順に並べる


SELECT
	CASE
		WHEN population >= 70000000 THEN 'Large'
		WHEN population >= 30000000 THEN 'Medium'
		ELSE 'Small'
	END AS population_category
,count(name) as country_count
FROM world
GROUP BY 1
ORDER BY country_count Desc
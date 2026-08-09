-- 問題5：CASE ＋ GROUP BY

-- 国を人口によって次の3カテゴリーに分類してください。

-- Large  : population >= 70,000,000
-- Medium : population >= 30,000,000
-- Small  : それ以外

-- そして、カテゴリーごとの国数と平均人口を求めてください。

SELECT
	population_category
	,COUNT(*) AS country_count
	,AVG(population) AS avg_population
FROM (
	SELECT
		 CASE
			WHEN population >= 70000000 THEN 'Large'
			WHEN population >= 30000000 THEN 'Medium' 
			ELSE 'Small'
		 END AS population_category
		,population
	FROM world
	) sub
GROUP BY population_category;

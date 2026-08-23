-- 問題2：計算列＋WHERE

-- 各国について「1人あたりGDP」を求め、1人あたりGDPが20,000以上の国だけを取得してください。

-- 計算式：

-- gdp / population

-- 条件：

-- 表示列：name, gdp, population, gdp_per_person
-- gdp_per_person の高い順
-- population > 0 の国を対象とする

-- ポイント： SELECT で付けた別名を WHERE でそのまま使えるかも考えてみてください。

SELECT 
	*
FROM (
	 SELECT
	 	name
	 	,gdp
	 	,population 
	    ,(gdp / population) AS gdp_per_person
	 FROM world 
	 WHERE population > 0
	 ) AS sub
WHERE sub.gdp_per_person >= 20000 
ORDER BY gdp_per_person desc 
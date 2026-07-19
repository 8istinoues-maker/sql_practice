

-- ## 問題1：複数条件と範囲指定

-- 人口が30,000,000以上100,000,000未満の国を取得してください。

-- 取得する列：

-- * `name`
-- * `population`

-- 人口が多い順に並べてください。


SELECT 
	name
	,population
FROM world 
WHERE population >= 30000000 and population < 100000000
ORDER BY population desc 




-- 問題4：大陸別でGDPが最大の国

-- 各大陸で、GDPが最も高い国を取得してください。

-- 出力項目：

-- continent
-- name
-- gdp

-- 条件：

-- サブクエリを使用する
-- GDPが同じ国が複数ある場合は、すべて表示する
-- 大陸名の昇順に並べる

SELECT 
	continent
	,name
	,gdp
FROM world w1 
WHERE w1.gdp = (SELECT
                  MAX(w2.gdp)
                FROM world w2
                WHERE w1.continent  = w2.continent 
                )
ORDER BY w1.continent ASC 


-- 問題1：複数条件＋並び替え

-- world テーブルから、以下の条件をすべて満たす国を取得してください。

-- 人口 population が 20,000,000以上
-- 面積 area が 500,000以上
-- 表示列：name, continent, population, area
-- population の多い順に並べる




SELECT 
	name
	,continent 
	,population
	,area
FROM world
WHERE ( population >= 20000000 )  
 	  AND
 	  ( area >= 500000)
ORDER BY population desc  


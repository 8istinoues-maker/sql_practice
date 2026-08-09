-- 問題4：サブクエリ

-- 自分が所属する大陸の平均人口より、人口が多い国を取得してください。

-- 例えば、ある国が Europe なら、

-- その国の人口 > Europeの平均人口

-- になっている国を取得します。

-- 表示列：

-- name
-- continent
-- population

-- population の多い順にしてください。

-- ヒント： 今回は「世界全体の平均」ではありません。外側のSQLの continent と、サブクエリ側の continent を関連付ける必要があります。

SELECT
	name
	,continent
	,population
FROM world w1
WHERE w1.population > (
						SELECT
							AVG(w2.population)
						FROM world w2
						WHERE w1.continent = w2.continent 
						)  
ORDER BY population  DESC
-- 問題4：相関サブクエリ

-- film テーブルを使用して、同じ rating の映画の平均上映時間より長い映画を取得してください。

-- 表示する列：

-- title
-- rating
-- length

-- 条件：

-- 同じ rating の映画同士で比較する
-- length が平均より大きい映画のみ
-- rating 昇順 → length 降順

-- たとえば、

-- PGの平均上映時間 = 110分

-- なら、PGかつ110分を超える映画を取得するイメージです。

SELECT
	title
	,rating
	,length
FROM film f1
WHERE f1.length > (
					SELECT 
						AVG(f2.length)
					FROM film f2
					WHERE f1.rating  = f2.rating 
				  )
ORDER BY 
	rating ASC
	,length DESC  
        

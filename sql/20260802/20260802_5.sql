-- 問題5：世界GDPに占める割合

-- 各国のGDPが世界全体のGDPに占める割合を求めてください。

-- 出力項目

-- name
-- gdp
-- gdp_percentage

-- 条件

-- 世界GDPはサブクエリで求める
-- 小数第2位まで表示
-- 割合の高い順に並べる

SELECT
    name,
    gdp,
    ROUND(
        gdp * 100.0 / (SELECT SUM(gdp) FROM world),
        2
    ) AS gdp_percentage
FROM world
ORDER BY gdp_percentage DESC;
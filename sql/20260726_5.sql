-- 問題5：世界人口に占める割合

-- 各国の人口が、世界全体の人口に占める割合を求めてください。

-- 出力項目：

-- name
-- population
-- population_percentage

-- 計算式：

-- 国の人口 ÷ 世界全体の人口 × 100

-- 条件：

-- 世界全体の人口はサブクエリで求める
-- 割合は小数第2位まで表示する
-- 割合の高い順に並べる

SELECT
    name,
    population,
    ROUND(
        population * 100.0 /
        (
            SELECT SUM(population)
            FROM world
        ),
        2
    ) AS population_percentage
FROM world
ORDER BY population_percentage DESC;
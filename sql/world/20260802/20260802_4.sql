-- 問題4：各大陸で人口密度が最も高い国

-- 人口密度は

-- population / area

-- で計算します。

-- 出力項目

-- continent
-- name
-- population_density

-- 条件

-- 相関サブクエリを使用
-- 人口密度は小数第2位まで表示
-- 同率1位はすべて表示

SELECT 
    continent,
    name,
    ROUND(population / area, 2) AS population_density
FROM world AS w1
WHERE population / area = (
    SELECT MAX(population / area)
    FROM world AS w2
    WHERE w2.continent = w1.continent
);

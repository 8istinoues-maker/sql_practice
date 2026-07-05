
-- ## 問題4：複数条件

-- continent が 'Europe' の国のうち、
-- 人口(population)が 70,000,000 以上の国を取得してください。

-- 取得列：

-- * name
-- * continent
-- * population

-- ---

select 
  name
  ,continent
  ,population
from world
where continent = 'Europe'
and population >= 70000000
-- ## 問題5：XOR条件

-- 人口(population)が 25,000,000 以上、
-- または面積(area)が 3,000,000 以上の国のうち、

-- 「両方を満たす国は除外」

-- してください。

-- 取得列：

-- * name
-- * population
-- * area

select 
  name
  ,population
  ,area
from world
where (population >= 25000000 or area >= 3000000)
and not(population >= 25000000 and area >= 3000000);


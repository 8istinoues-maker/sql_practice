
-- ## 問題2：WHERE句

-- 人口(population)が 50,000,000 以上の国の

-- * name
-- * population

-- を取得してください。


select
  name
  ,population
from world
where population >= 50000000 ;
-- ---

-- ## 問題3：ORDER BY

-- 面積(area)が大きい順に、

-- * name
-- * area

-- を上位3件取得してください。

-- ---

select
  name
  ,area
from world
order by area desc
limit 3 ;
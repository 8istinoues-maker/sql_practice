-- 問2：支払いデータの条件抽出

-- payment テーブルから、支払額が 8.00以上 のデータ件数を求めてください。

-- 取得項目：

-- payment_count

-- 条件：

-- amount >= 8.00
-- Lv.2 GROUP BY
SELECT
	count(amount) AS payment_count
FROM payment
WHERE amount >= 8.00

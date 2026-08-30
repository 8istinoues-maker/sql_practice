-- payment テーブルで、amount が5以上の支払い件数を数えてください。列名は payment_count にしてください。

SELECT
	count(amount) AS payment_count	
FROM payment
WHERE amount >= 5
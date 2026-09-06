-- 問題5：複数JOIN + 集計 + HAVING

-- category、film_category、inventory、rental、payment を使用して、カテゴリごとの売上合計とレンタル回数を求めてください。

-- 表示する列：

-- カテゴリ名 category_name
-- レンタル回数 rental_count
-- 売上合計 total_sales

-- さらに、次の条件を付けてください。

-- レンタル回数が 1,000回以上のカテゴリのみ
-- 売上合計が多い順

-- テーブルのつながりを自分で考えるのも今回のポイントです。

SELECT
    c.name AS category_name,
    COUNT(r.rental_id) AS rental_count,
    SUM(p.total_amount) AS total_sales
FROM category c
INNER JOIN film_category fc
    ON fc.category_id = c.category_id
INNER JOIN inventory i
    ON i.film_id = fc.film_id
INNER JOIN rental r
    ON r.inventory_id = i.inventory_id
INNER JOIN (
    SELECT
        rental_id,
        SUM(amount) AS total_amount
    FROM payment
    GROUP BY rental_id
) p
    ON p.rental_id = r.rental_id
GROUP BY
    c.category_id
HAVING
    COUNT(r.rental_id) >= 1000
ORDER BY
    total_sales DESC;
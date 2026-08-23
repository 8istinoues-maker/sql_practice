-- ---

-- ## 問題2：文字列検索

-- 国名(`name`)に文字「a」を含む国を取得してください。

-- 取得する列：

-- * `name`
-- * `continent`

-- 国名の昇順に並べてください。

-- ※ PostgreSQLでは大文字・小文字を区別しない検索方法もあります。まずは自分で調べながら挑戦してみましょう。

-- ---


SELECT 
	name
    ,continent
FROM world 
WHERE name LIKE '%a%'
ORDER BY name;



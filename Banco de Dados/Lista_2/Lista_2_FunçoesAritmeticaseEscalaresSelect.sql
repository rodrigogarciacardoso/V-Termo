-- A --
-- 1) --
SELECT ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT
FROM Proposta
WHERE DESCONTO IS NULL;

-- 2) --
SELECT ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, ROUND(VALOR_UNIT-(VALOR_UNIT*(DESCONTO/100)),2) AS VALOR_VENDIDO
FROM Proposta
WHERE DESCONTO IS NOT NULL;

-- 3) --
UPDATE Proposta
SET DESCONTO = 0
WHERE DESCONTO IS NULL;

-- 4) -- 
SELECT ID_NF, ID_ITEM, COD_PROD, VALOR_UNIT, QUANTIDADE * VALOR_UNIT AS VALOR_TOTAL, DESCONTO, ROUND(VALOR_UNIT - (VALOR_UNIT*(DESCONTO/100)),2) AS VALOR_VENDIDO
FROM Proposta;

-- 5) --
SELECT ID_NF, SUM(QUANTIDADE)*VALOR_UNIT
FROM Proposta
GROUP BY ID_NF
ORDER BY ID_NF DESC;

-- 6) --
SELECT ID_NF, ROUND(SUM(VALOR_UNIT-(VALOR_UNIT*(DESCONTO/100))),2) AS VALOR_VENDIDO
FROM Proposta
GROUP BY ID_NF;

-- 7) --
SELECT COD_PROD AS ID_PROD, QUANTIDADE
FROM Proposta
ORDER BY QUANTIDADE DESC
LIMIT 1;

-- 8) --
SELECT ID_NF, COD_PROD AS ID_PROD, QUANTIDADE
FROM Proposta
WHERE QUANTIDADE > 10;

-- 9) --
SELECT ID_NF, ROUND(SUM(QUANTIDADE*VALOR_UNIT),2) AS VALOR_TOT
FROM Proposta
GROUP BY ID_NF 
HAVING SUM(QUANTIDADE*VALOR_UNIT) > 500;

-- 10) --
SELECT COD_PROD AS ID_PROD, ROUND(AVG(DESCONTO),2) AS MEDIA
FROM Proposta
GROUP BY COD_PROD;

-- 11) --
SELECT COD_PROD AS ID_PROD, MIN(DESCONTO) AS MENOR, MAX(DESCONTO) AS MAIOR, ROUND(AVG(DESCONTO),2) AS MEDIA
FROM Proposta
GROUP BY COD_PROD;

-- 12) --
SELECT ID_NF, COUNT(ID_NF) AS QTD_ITENS
FROM Proposta
GROUP BY ID_NF;

-- B --
-- a) --
SELECT h.MAT
FROM Historico AS h INNER JOIN Turma AS t ON h.TurmaID = t.TurmaID
WHERE h.Nota < 5.0 AND t.Cod_Disc LIKE 'BD';

-- b) --
SELECT h.MAT, ROUND(AVG(h.Nota),2) AS MediaNotas
FROM Historico AS h INNER JOIN Turma AS t ON h.TurmaID = t.TurmaID
WHERE t.Cod_Disc LIKE 'POO'
GROUP BY h.MAT;

SELECT h.MAT, h.Nota
FROM Historico AS h INNER JOIN Turma AS t ON h.TurmaID = t.TurmaID
WHERE t.Cod_Disc LIKE 'POO'
GROUP BY h.MAT;
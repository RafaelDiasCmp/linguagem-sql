USE AdventureWorks2019
GO

-- Listando Nome e Cor de produtos com Cor = Black
SELECT Name, Color
FROM Production.Product
WHERE Color = 'Black'
ORDER BY Name;

-- Listando Nome e Cor de produtos com Cor DIFERENTE de Black
SELECT Name, Color
FROM Production.Product
WHERE Color <> 'Black'
ORDER BY Name;


-- Listar produtos com valor de venda superior a R$1000
SELECT Name AS Produto, Color AS Cor, ListPrice AS "Preço do Produto"
FROM Production.Product
WHERE ListPrice > 1000
ORDER BY Name;


-- Filtros com operadores lógicos
-- LIKE + %

-- Listar produtos que INICIAM com CHAIN
SELECT Name, Color
FROM Production.Product
WHERE Name LIKE '%CHAIN'
ORDER BY Name;

-- Listar produtos que possuem CHAINRING em qualquer posição
SELECT Name, Color
FROM Production.Product
WHERE Name LIKE '%chainring%'
ORDER BY Name;


-- LIKE +_
-- Listar produtos que possuem a como segunda letra
SELECT Name, Color
FROM Production.Product
WHERE Name LIKE '_a%'
ORDER BY Name;

-- Listar produtos de cor black OU silver
SELECT Name, Color
FROM Production.Product
WHERE Color = 'Black'
OR Color = 'Silver'
ORDER BY Name;


-- Ordem de avaliação

-- () Primeiro
SELECT Name, Color
FROM Production.Product
WHERE Name LIKE 'Chain%'
AND (Color = 'Black' OR Color = 'Silver')
ORDER BY Name;


-- AND Primeiro
SELECT Name, Color
FROM Production.Product
WHERE Name LIKE 'Chain%'
AND Color = 'Black' OR Color = 'Silver'
ORDER BY Name;

SELECT Name, Color
FROM Production.Product
WHERE (Name LIKE 'Chain%'
AND Color = 'Black') OR Color = 'Silver'
ORDER BY Name;

-- TOP
SELECT TOP (5) Name AS Nome_Produto
FROM Production.Product
ORDER BY Nome_Produto;

-- 10% do total de produtos
SELECT TOP (10) PERCENT Name AS Nome_Produto
FROM Production.Product
ORDER BY Nome_Produto;

SELECT COUNT(*) FROM Production.Product;

-- 50 PRIMEIROS PRODUTOS
SELECT Name AS Produto
FROM Production.Product
ORDER BY Produto
OFFSET 0 ROWS FETCH NEXT 50 ROWS ONLY;

-- 51 ATÉ OS 100 PRODUTOS
SELECT Name AS Produto
FROM Production.Product
ORDER BY Produto
OFFSET 50 ROWS FETCH NEXT 50 ROWS ONLY;

-- Distinct em múltiplas colunas
SELECT DISTINCT Color AS Cores_Produto
FROM Production.Product
WHERE Color IS NOT NULL
ORDER BY Cores_Produto

SELECT DISTINCT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY FirstName, MiddleName, LastName








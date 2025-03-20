USE AdventureWorks2019
GO

-- Alias para coluna
SELECT Name AS Nome_do_Produto,
ProductNumber AS Numero_do_Produto
FROM Production.Product

SELECT Name, Name AS Nome_do_Produto, ProductNumber, ProductNumber AS Numero_do_Produto
FROM Production.Product
GO

-- Outra forma de usar Alias
SELECT Nome_do_Produto = Name,
Numero_do_Produto = ProductNumber
FROM Production.Product
GO

-- Alias com Espaço
SELECT Name AS "Nome do Produto", Name AS [Nome do Produto]
FROM Production.Product
GO

-- Alias de tabela + Alias de coluna
SELECT P.Name AS Nome_do_Produto, P.ProductNumber AS Numero_do_Produto
FROM Production.Product P
GO

-- Ambiguidade de colunas
SELECT Name, ProductionNumber
FROM Production.Product, Production.Location
go

-- Removendo ambiguidade
SELECT P.Name, P.ProductNumber, L.Name
FROM Production.Product P, Production.Location L
GO

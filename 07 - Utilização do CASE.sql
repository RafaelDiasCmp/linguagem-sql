USE AdventureWorks2019
GO

-- CASE Simples

-- Selecionar o ID, Nome e fazer um case da subcategoria
SELECT ProductID, Name, ProductSubcategoryID,
CASE ProductSubcategoryID -- Quando retornar o valor 1 ... 2...
	WHEN 1 THEN 'Mountain Bikes'
	WHEN 2 THEN 'Road Bikes'
	WHEN 3 THEN 'Touring Bikes'
	ELSE 'Unknown Category'
END AS SubCategoryCase
FROM Production.Product
GO


-- CASE com Pesquisa Booleana
SELECT ProductNumber AS "Número do Produto", Name AS "Nome do Produto", ListPrice AS "Preço",
	"Faixa de Preço" = 
		CASE
			WHEN ListPrice = 0 THEN 'Não disponível para venda'
			WHEN ListPrice < 50 THEN 'Abaixo de R$50,00'
			WHEN ListPrice >= 50 and ListPrice < 250 THEN 'Abaixo de R$250,00'
			WHEN ListPrice >= 250 and ListPrice < 1000 THEN 'Abaixo de R$1000,00'
			ELSE 'Acima de R$1000,00'
		END
FROM Production.Product
GO
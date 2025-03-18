USE AdventureWorks2019
GO

-- Selecionar todas as linhas da coluna Name e ProductNumber da tabela Product 
SELECT Name, ProductNumber
FROM Production.Product
GO

-- Selecionar todas as linhas de todas as colunas da tabela product
SELECT * FROM Production.Product
GO

-- Adicionar linha e repetir o comando 
ALTER TABLE Production.Product
ADD SpecialEdition bit NULL
GO

-- Objeto inexistente
SELECT Name, ProductNumber 
FROM master.Production.Product
GO

SELECT Name, ProductNumber 
FROM AdventureWorks2019.Production.Product
GO

-- Coluna inexistente
SELECT ProductName, ProductNumber
FROM AdventureWorks2019.Production.Product
GO
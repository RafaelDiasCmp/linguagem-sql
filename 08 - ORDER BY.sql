USE AdventureWorks2019
GO

-- Classificando Ascendentemente pelo Primeiro Nome com a Instrução ORDER BY (default)
SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY FirstName

-- Classificando Descendentemente pelo Primeiro Nome com a Instrução ORDER BY (default)
SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY FirstName DESC;

-- Classificando Ascendentemente pelo Primeiro e Descendentemente pelo último
SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY FirstName ASC, LastName DESC;

-- Usando campo para ordenar que não está na lista de colunas
SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY ModifiedDate ASC;

-- Usando Alias de Coluna no ORDER BY
SELECT Name AS Nome_do_Produto,
ProductNumber AS Numero_do_Produto
FROM Production.Product
ORDER BY Nome_do_Produto ASC;

-- Usando número da coluna no ORDER BY
SELECT Name AS Nome_do_Produto,
ProductNumber AS Numero_do_Produto
FROM Production.Product
ORDER BY 1 ASC;

SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY 1 ASC, 3 DESC;

/* Igual à:
SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY FirstName ASC, LastName DESC;
*/
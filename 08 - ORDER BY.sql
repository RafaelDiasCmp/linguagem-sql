USE AdventureWorks2019
GO

-- Classificando Ascendentemente pelo Primeiro Nome com a Instru��o ORDER BY (default)
SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY FirstName

-- Classificando Descendentemente pelo Primeiro Nome com a Instru��o ORDER BY (default)
SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY FirstName DESC;

-- Classificando Ascendentemente pelo Primeiro e Descendentemente pelo �ltimo
SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY FirstName ASC, LastName DESC;

-- Usando campo para ordenar que n�o est� na lista de colunas
SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY ModifiedDate ASC;

-- Usando Alias de Coluna no ORDER BY
SELECT Name AS Nome_do_Produto,
ProductNumber AS Numero_do_Produto
FROM Production.Product
ORDER BY Nome_do_Produto ASC;

-- Usando n�mero da coluna no ORDER BY
SELECT Name AS Nome_do_Produto,
ProductNumber AS Numero_do_Produto
FROM Production.Product
ORDER BY 1 ASC;

SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY 1 ASC, 3 DESC;

/* Igual �:
SELECT FirstName, MiddleName, LastName
FROM Person.Person
ORDER BY FirstName ASC, LastName DESC;
*/
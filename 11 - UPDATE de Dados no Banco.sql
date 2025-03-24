USE AdventureWorks2019
GO

SELECT * FROM dbo.TAB1
GO

UPDATE dbo.TAB1 SET COL2 = 'SIM'
WHERE COL1 < 5;
GO

UPDATE dbo.TAB1 SET COL2 = 'SIM';
GO

UPDATE dbo.TAB1 SET COL2 = 'NÃO'
FROM dbo.TAB1
JOIN dbo.TABCOPIA
ON TAB1.COL1 = TABCOPIA.COL1
GO

UPDATE dbo.TAB1 
SET dbo.TAB1.COL2 = dbo.TABCOPIA.COL2
FROM dbo.TAB1
JOIN dbo.TABCOPIA
ON TAB1.COL1 = TABCOPIA.COL1
GO

SELECT * FROM TAB1;
GO

UPDATE dbo.TAB1
SET COL3 = GETDATE()
WHERE COL1 > 5 AND COL2 <> 'SIM'
GO

UPDATE dbo.TAB1
SET COL2 = 'SIM', COL3 = GETDATE()
WHERE COL1 > 5 AND COL2 <> 'SIM'
GO

SELECT *
FROM Production.Product
WHERE SellEndDate IS NULL
AND ListPrice <> 0.00
GO

SELECT * FROM Person.Person
GO

UPDATE Person.Person
SET Title = UPPER(Title), FirstName = UPPER(FirstName),
MiddleName = UPPER(MiddleName), LastName = UPPER(LastName)
GO

UPDATE HumanResources.Employee
SET VacationHours =
	( CASE
		WHEN ((VacationHours - 10.00) < 0) THEN VacationHours + 40
		ELSE (VacationHours + 20.00)
		END
	)
OUTPUT Deleted.BusinessEntityID, Deleted.VacationHours AS BeforeValue,
		inserted.VacationHours AS AfterValue
WHERE SalariedFlag = 0
GO

-- UPDATE COM INTERFACE GRÁFICA DO CLIENT

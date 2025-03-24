USE AdventureWorks2019
GO

SELECT * FROM dbo.TAB1
GO

DELETE dbo.TAB1
WHERE COL1 BETWEEN 6 AND 8
GO

DELETE TOP(2) dbo.TAB1
GO

DELETE FROM dbo.TAB1
GO

-- Client Statics

DELETE FROM dbo.TABCOPIA
WHERE COL3 <= GETDATE()-7
GO



CREATE TABLE dbo.Socios_Titulares
(
	NUM_COTA int NOT NULL PRIMARY KEY,
	NOME	 varchar(255) NOT NULL
);
GO
CREATE TABLE dbo.Socios_Dependentes
(
	ID_Dependente int NOT NULL,
	NUM_COTA_FK int NOT NULL,
	NOME	 varchar(255) NOT NULL
);
GO

ALTER TABLE dbo.Socios_Dependentes
ADD CONSTRAINT FK_Titular FOREIGN KEY
(
	NUM_COTA_FK
) REFERENCES dbo.Socios_Titulares
(
	NUM_COTA
)
ON DELETE CASCADE

INSERT INTO dbo.Socios_Titulares
VALUES (1,'Rafael')
GO

INSERT INTO dbo.Socios_Dependentes
VALUES (1,1,'Juliana'),
		(2,1,'Wellington'),
		(3,1,'Joana'),
		(4,1,'Kléber')
GO

SELECT * FROM Socios_Titulares
SELECT * FROM Socios_Dependentes

DELETE FROM dbo.Socios_Titulares
WHERE NUM_COTA = 1
GO
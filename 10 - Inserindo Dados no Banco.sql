USE AdventureWorks2019
GO

-- INSERT INTO

CREATE TABLE dbo.TAB1 (COL1 int NOT NULL, COL2 varchar(3) DEFAULT 'SIM', COL3 datetime NOT NULL);

-- Especificando o nome das colunas
SET LANGUAGE Portugu�s
GO
SELECT @@LANGUAGE
GO

INSERT INTO dbo.TAB1 (COL1, COL2, COL3)
VALUES (1,'N�O','23/09/2025 00:00:00.000');
GO

SELECT * FROM dbo.TAB1;
GO

INSERT INTO dbo.TAB1 (COL3, COL1, COL2)
VALUES ('23/09/2025 00:00:00.000',2,'N�O');
GO

-- ERRO
INSERT INTO dbo.TAB1
VALUES ('23/09/2025 00:00:00.000',2,'N�O');
GO

-- V�rias Linhas
INSERT INTO dbo.TAB1 (COL1, COL2, COL3)
VALUES	(3,'N�O','23/09/2025 00:00:00.000'),
		(4,'N�O','23/09/2025 00:00:00.000'),
		(5,'N�O','23/09/2025 00:00:00.000'),
		(6,'N�O','23/09/2025 00:00:00.000'),
		(7,'N�O','23/09/2025 00:00:00.000');
GO

-- Utilizando Fun��es
INSERT INTO dbo.TAB1 (COL1, COL2, COL3)
VALUES (1,'N�O',GETDATE());
GO


-- SELECT INTO
-- Cria uma tabela com a mesma estrutura
SELECT *
INTO dbo.TABCOPIA
FROM dbo.TAB1
GO

-- TAB1 -> edit -> cira��o din�mica com interface gr�fica
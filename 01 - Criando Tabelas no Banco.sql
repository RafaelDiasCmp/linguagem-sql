-- Selecionar Banco de Dados
USE [BDTESTE]
GO

CREATE TABLE ALUNO 
(	COD_ALUNO int NOT NULL,
	NOM_ALUNO varchar(100) NOT NULL,
);

-- Com Schema
CREATE TABLE [dbo].[CURSO]
(	[COD_CURSO] [int] NOT NULL,
	[NOM_CURSO] [varchar](100) NOT NULL
)
GO

-- Com Filegroup = Organizações Lógicas
CREATE TABLE [dbo].[MATRICULA]
(	[COD_ALUNO] [int] NOT NULL,
	[COD_CURSO] [int] NOT NULL,
	[DAT_MATRICULA] [datetime] NOT NULL
) ON [PRIMARY]
GO


-- Com Constraints
CREATE TABLE [dbo].[MATRICULA]
(	[COD_ALUNO] [int] NOT NULL,
    [COD_CURSO] [int] NOT NULL,
    [DAT_MATRICULA] [datetime] NOT NULL,
    CONSTRAINT [PK_MATRICULA] PRIMARY KEY CLUSTERED 
    (
        [COD_ALUNO] ASC,
        [COD_CURSO] ASC
    )
) ON [PRIMARY]
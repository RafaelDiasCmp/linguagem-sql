CREATE DATABASE BDTESTE_DROP
GO

USE [BDTESTE_DROP]
GO

-- Criando tabelas
CREATE TABLE ALUNO 
(
	COD_ALUNO int NOT NULL,
	NOM_ALUNO varchar(100) NOT NULL
);

CREATE TABLE CURSO
(
	COD_CURSO int NOT NULL,
	NOM_CURSO varchar(100) NOT NULL
);

-- Adicionando chave primária 
ALTER TABLE ALUNO ADD CONSTRAINT PK_ALUNO PRIMARY KEY CLUSTERED
(	COD_ALUNO	) 
GO

ALTER TABLE CURSO ADD CONSTRAINT PK_CURSO PRIMARY KEY CLUSTERED
(	COD_CURSO	) 
GO

-- Adicionar coluna COD_CURSO_FK na tabela ALUNO 
ALTER TABLE ALUNO ADD COD_CURSO_FK int NULL;
GO

-- Alterar coluna COD_CURSO_FK na tabela ALUNO para NÃO NULO
ALTER TABLE ALUNO ADD COD_CURSO_FK int NOT NULL;
GO

-- Adicionando Chave Estrangeira COD_CURSO_FK na tabela ALUNO
ALTER TABLE ALUNO
ADD CONSTRAINT FK_ALUNO_CURSO FOREIGN KEY
(
	COD_CURSO_FK
) REFERENCES CURSO
(
	COD_CURSO
) ON UPDATE NO ACTION
ON DELETE NO ACTION
GO

CREATE SYNONYM TB_ALUNO_NEW FOR ALUNO
GO

-- Removendo sinônimo
DROP SYNONYM TB_ALUNO_NEW;

-- Removendo tabela com FK
DROP TABLE ALUNO;
DROP TABLE CURSO;

-- Removendo Banco de Dados
USE master
DROP DATABASE BDTESTE_DROP
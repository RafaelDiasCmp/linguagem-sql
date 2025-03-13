USE [BDTESTE]
GO

-- Alterar a tabela - Adicionando chave primária
ALTER TABLE ALUNO
ADD CONSTRAINT PK_ALUNO PRIMARY KEY CLUSTERED
(
	COD_ALUNO
);

ALTER TABLE CURSO
ADD CONSTRAINT PK_CURSO PRIMARY KEY CLUSTERED
(
	COD_CURSO
);

-- Verificar estrutura após as mudanças
sp_help 'ALUNO'
sp_help 'CURSO'

-- Adicionar coluna COD_CURSO_FK na tabela ALUNO como NÃO NULA (não populada)
ALTER TABLE ALUNO ADD COD_CURSO_FK int NOT NULL;

-- Alterar tamanho da coluna NOM_CURSO - AUMENTAR
ALTER TABLE CURSO ALTER COLUMN NOM_CURSO varchar(200) NOT NULL;

-- Alterar tamanho da coluna NOM_CURSO - DIMINUIR
ALTER TABLE CURSO ALTER COLUMN NOM_CURSO varchar(50) NOT NULL;

-- Inserir dados
INSERT INTO CURSO VALUES (1, 'Linguagem SQL');
INSERT INTO CURSO VALUES (2, 'T-SQL');

-- VISUALIZAR DADOS
SELECT * FROM CURSO

-- Tamanho dos valores da coluna NOM_CURSO
SELECT COD_CURSO, LEN(NOM_CURSO) FROM CURSO;

-- Diminuir tamanho com tabela populada sem violar tamanho dos dados existentes
ALTER TABLE CURSO ALTER COLUMN NOM_CURSO varchar(13) NOT NULL;

-- Diminuir tamanho com tabela populada violando tamanho dos dados existentes
ALTER TABLE CURSO ALTER COLUMN NOM_CURSO varchar(10) NOT NULL; --ERRO

-- Adicionar campo NOT NULL em tabela já Populada
-- 1.
ALTER TABLE CURSO ADD VLR_CURSO money NOT NULL; -- erro

ALTER TABLE CURSO ADD VLR_CURSO money NULL;
UPDATE CURSO SET VLR_CURSO = 1000;	
SELECT * FROM CURSO;

ALTER TABLE CURSO ALTER COLUMN VLR_CURSO money NOT NULL;

-- 2.
ALTER TABLE CURSO ADD IND_STATUS char(1) NOT NULL DEFAULT 'S';
SELECT * FROM CURSO;
sp_help 'curso'

-- Adicionando chave estrangeira COD_CURSO_FK na tabela ALUNO
ALTER TABLE ALUNO
ADD CONSTRAINT FK_ALUNO_CURSO FOREIGN KEY
(
	COD_CURSO_FK
) REFERENCES CURSO
(
	COD_CURSO
) ON UPDATE NO ACTION
ON DELETE NO ACTION 

SP_HELP 'ALUNO'
SP_HELP 'CURSO'
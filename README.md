# 📌 Repositório de Estudos de SQL

Este repositório contém scripts SQL para estudo e prática, abordando desde a criação de bancos de dados e tabelas até operações de manipulação e consulta de dados. Abaixo está uma visão geral dos arquivos presentes e os conceitos abordados em cada um.

## 📂 Estrutura dos Arquivos

### 📌 Criando Banco de Dados (`00 - Criando Banco de Dados.sql`)

Este script cria o banco de dados `BDTESTE`. Criar um banco de dados é o primeiro passo para armazenar e gerenciar informações de maneira estruturada.

```sql
CREATE DATABASE BDTESTE;
GO
```

---

### 📌 Criando Tabelas (`01 - Criando Tabelas no Banco.sql`)

Este script contém a criação de tabelas dentro do banco `BDTESTE`.

```sql
CREATE TABLE ALUNO (
    COD_ALUNO INT NOT NULL,
    NOM_ALUNO VARCHAR(100) NOT NULL
);
GO
```

```sql
CREATE TABLE [dbo].[CURSO] (
    [COD_CURSO] INT NOT NULL,
    [NOM_CURSO] VARCHAR(100) NOT NULL
);
GO
```

```sql
CREATE TABLE [dbo].[MATRICULA] (
    [COD_ALUNO] INT NOT NULL,
    [COD_CURSO] INT NOT NULL,
    [DAT_MATRICULA] DATETIME NOT NULL,
    CONSTRAINT [PK_MATRICULA] PRIMARY KEY CLUSTERED (
        [COD_ALUNO] ASC,
        [COD_CURSO] ASC
    )
) ON [PRIMARY];
GO
```

---

### 📌 Criando Sinônimos (`02 - Criando Sinônimos.sql`)

Os sinônimos no SQL Server são atalhos para objetos existentes, facilitando a referência a tabelas, views ou procedures.

```sql
USE [BDTESTE];
GO

CREATE SYNONYM TB_ALUNO_NEW FOR ALUNO;
GO
```

---

### 📌 Alterando Dados no Banco (`03 - Alterando Dados no Banco.sql`)

Este script demonstra operações de manipulação de dados, incluindo inserção, atualização e exclusão de registros.

```sql
INSERT INTO ALUNO (COD_ALUNO, NOM_ALUNO)
VALUES (1, 'João Silva'), (2, 'Maria Oliveira');
GO
```

```sql
UPDATE ALUNO
SET NOM_ALUNO = 'João Souza'
WHERE COD_ALUNO = 1;
GO
```

```sql
DELETE FROM ALUNO
WHERE COD_ALUNO = 2;
GO
```

---
### 📌 Excluindo Dados no Banco ( `04 - Excluindo Dados no Banco.sql`)
Esse script aborda técnicas de consulta para exclusão de dados nas tabelas.

```sql
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
```

### 📌 Selecionando Dados no Banco (`05 - Selecionando Dados no Banco.sql`)

Este script aborda técnicas de consulta para recuperar dados das tabelas.

```sql
SELECT * FROM ALUNO;
GO
```

```sql
SELECT COD_ALUNO, NOM_ALUNO FROM ALUNO;
GO
```

```sql
SELECT * FROM ALUNO
WHERE COD_ALUNO = 1;
GO
```

---

### 📌 Alias para Selecionar Dados (`06 - Alias para Selecionar Dados.sql`)

Este script demonstra o uso de aliases para renomear colunas ou tabelas temporariamente durante uma consulta, melhorando a legibilidade.

```sql
SELECT COD_ALUNO AS Código, NOM_ALUNO AS Nome
FROM ALUNO;
GO
```

```sql
SELECT A.COD_ALUNO, A.NOM_ALUNO
FROM ALUNO AS A;
GO
```

---

📌 **Tecnologias utilizadas:**  
✅ **SQL Server**  
✅ **T-SQL**  

💡 **Contribuições são bem-vindas!** Caso tenha sugestões ou melhorias, fique à vontade para abrir um _Pull Request_. 🚀  

---

✍ **Autor:** [@RafaelDiasCmp](https://github.com/RafaelDiasCmp)

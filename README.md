# 📌 Repositório de Estudos de SQL

Este repositório contém scripts SQL para estudo e prática



## 📂 Estrutura dos Arquivos

### 📌 1. Criando Banco de Dados (`00 - Criando Banco de Dados.sql`)

Este script cria o banco de dados `BDTESTE`. Criar um banco de dados é o primeiro passo para armazenar e gerenciar informações de maneira estruturada.

```sql
CREATE DATABASE BDTESTE;
GO
```

Após a criação, é possível configurar opções adicionais, como:

- Caminho dos arquivos de dados e log.
- Tamanho inicial e crescimento automático.

---

### 📌 2. Criando Tabelas (`01 - Criando Tabelas no Banco.sql`)

Este script contém a criação de tabelas dentro do banco `BDTESTE`.  

**🔹 Exemplo 1: Criando a tabela `ALUNO`**
```sql
CREATE TABLE ALUNO (
    COD_ALUNO INT NOT NULL,
    NOM_ALUNO VARCHAR(100) NOT NULL
);
GO
```
📌 **Colunas:**  
- `COD_ALUNO`: Identificação única do aluno.  
- `NOM_ALUNO`: Nome do aluno.  

**🔹 Exemplo 2: Criando a tabela `CURSO` no esquema `dbo`**
```sql
CREATE TABLE [dbo].[CURSO] (
    [COD_CURSO] INT NOT NULL,
    [NOM_CURSO] VARCHAR(100) NOT NULL
);
GO
```
📌 **Colunas:**  
- `COD_CURSO`: Código do curso.  
- `NOM_CURSO`: Nome do curso.  

**🔹 Exemplo 3: Criando a tabela `MATRICULA` com chave primária composta**
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
📌 **Destaques:**  
✔ Define `COD_ALUNO` e `COD_CURSO` como **chave primária composta**.  
✔ Especifica o **Filegroup `[PRIMARY]`** para armazenamento.  

---

### 📌 3. Criando Sinônimos (`02 - Criando Sinônimos.sql`)

Os sinônimos no SQL Server são atalhos para objetos existentes, facilitando a referência a tabelas, views ou procedures.

**🔹 Exemplo 1: Criando um sinônimo para a tabela `ALUNO`**
```sql
USE [BDTESTE];
GO

CREATE SYNONYM TB_ALUNO_NEW FOR ALUNO;
GO
```
📌 **Agora podemos acessar `ALUNO` de duas formas:**
```sql
SELECT * FROM ALUNO;
SELECT * FROM TB_ALUNO_NEW;
```
Ambas as consultas trazem os mesmos resultados.  

**🔹 Exemplo 2: Obtendo informações do sinônimo**
```sql
sp_help 'TB_ALUNO_NEW';
sp_help 'ALUNO';
```
📌 Exibe detalhes sobre as tabelas e sinônimos.

---

## 📌 Conclusão  

Este repositório serve como um guia prático para iniciantes e profissionais que desejam reforçar seus conhecimentos em **SQL Server**, oferecendo exemplos claros e objetivos das operações essenciais no gerenciamento de bancos de dados.  

📌 **Tecnologias utilizadas:**  
✅ **SQL Server**  
✅ **T-SQL**  
✅ **SQL**  

💡 **Contribuições são bem-vindas!** Caso tenha sugestões ou melhorias, fique à vontade para abrir um _Pull Request_. 🚀  

---
✍ **Autor:** [@RafaelDiasCmp](https://github.com/RafaelDiasCmp)

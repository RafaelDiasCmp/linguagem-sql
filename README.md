# 📌 Repositório de Estudos de SQL

Este repositório contém scripts SQL para estudo e prática, juntamente com o Banco de Dados oferecido pela Microsoft Adventure Works!

## 📂 Estrutura dos Arquivos

### 📌 1. Criando Banco de Dados (`00 - Criando Banco de Dados.sql`)

Este script cria o banco de dados `BDTESTE`, que serve como base para os exemplos e práticas subsequentes.

```sql
CREATE DATABASE BDTESTE;
GO
```

---

### 📌 2. Criando Tabelas (`01 - Criando Tabelas no Banco.sql`)

Este script contém a criação de tabelas dentro do banco `BDTESTE`, estabelecendo a estrutura necessária para armazenar informações de alunos, cursos e matrículas.

**🔹 Exemplo: Criando a tabela `ALUNO`**

```sql
CREATE TABLE ALUNO (
    COD_ALUNO INT NOT NULL,
    NOM_ALUNO VARCHAR(100) NOT NULL
);
GO
```

---

### 📌 3. Criando Sinônimos (`02 - Criando Sinônimos.sql`)

Este script demonstra como criar sinônimos no SQL Server, facilitando a referência a objetos do banco de dados.

**🔹 Exemplo: Criando um sinônimo para a tabela `ALUNO`**

```sql
USE [BDTESTE];
GO

CREATE SYNONYM TB_ALUNO_NEW FOR ALUNO;
GO
```

---

### 📌 4. Alterando Dados no Banco (`03 - Alterando Dados no Banco.sql`)

Este script aborda operações de manipulação de dados, incluindo inserção, atualização e exclusão de registros nas tabelas.

**🔹 Exemplo 1: Inserindo dados na tabela `ALUNO`**

```sql
INSERT INTO ALUNO (COD_ALUNO, NOM_ALUNO)
VALUES (1, 'João Silva'), (2, 'Maria Oliveira');
GO
```

**🔹 Exemplo 2: Atualizando dados na tabela `ALUNO`**

```sql
UPDATE ALUNO
SET NOM_ALUNO = 'João Souza'
WHERE COD_ALUNO = 1;
GO
```

**🔹 Exemplo 3: Excluindo dados na tabela `ALUNO`**

```sql
DELETE FROM ALUNO
WHERE COD_ALUNO = 2;
GO
```

---

## 📌 Utilização do AdventureWorks

Para complementar os estudos, este repositório também utiliza o banco de dados **AdventureWorks**, um banco de dados de exemplo gratuito fornecido pela Microsoft. Ele é amplamente utilizado para aprendizado e demonstração de funcionalidades do SQL Server.

📌 **Como baixar e instalar o AdventureWorks:**

1. Acesse o site oficial da Microsoft e baixe o arquivo `.bak` do AdventureWorks.
2. Restaure o banco de dados no SQL Server Management Studio (SSMS) ou via script T-SQL.
3. Utilize as tabelas e dados do AdventureWorks para testar consultas e aprimorar habilidades em SQL.

🔗 [Download do AdventureWorks](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure)

---

## 📌 Conclusão

Este repositório serve como um guia prático para iniciantes e profissionais que desejam reforçar seus conhecimentos em **SQL Server**, oferecendo exemplos claros e objetivos das operações essenciais no gerenciamento de bancos de dados.

📌 **Tecnologias utilizadas:**

- **SQL Server**
- **T-SQL**
- **AdventureWorks**

💡 **Contribuições são bem-vindas!** Caso tenha sugestões ou melhorias, fique à vontade para abrir um _Pull Request_. 🚀

---

✍ **Autor:** [@RafaelDiasCmp](https://github.com/RafaelDiasCmp)

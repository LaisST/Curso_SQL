/*
Banco de dados
Um banco de dados é uma coleção organizada de informações - ou dados - estruturadas, 
normalmente armazenadas eletronicamente em um sistema de computador. Um banco de dados é 
geralmente controlado por um sistema de gerenciamento de banco de dados (DBMS). Juntos, 
os dados e o DBMS, juntamente com os aplicativos associados a eles, são chamados de sistema 
de banco de dados, geralmente abreviados para apenas banco de dados.

Query: Uma query é uma consulta em SQL. Trata-se de uma ação para buscar dados e trazê-los 
para a memória, a fim de executar procedimentos com eles. 

DDL
Data Definition Language - Linguagemm de Definição de Dados
Criação e manipulação do banco de dados
*/

--Criar um banco de dados
-- Comando: CREATE database nome_do_banco;
-- CREATE database sqlCurso;

--Criar tabelas
-- Comando: CREATE table nome_tabela (nome_coluna tipo );

CREATE table tab_cliente(
	i_ID_cliente INT PRIMARY KEY NOT NULL IDENTITY(1,1), --tipo_nomeColuna_nomeTabela tipo Chave Primaria
  	s_Nome_cliente VARCHAR(50) NOT NULL,
  	s_cpf_cliente VARCHAR(11) NOT NULL,
  	d_nascimento_cliente DATETIME
);

--Deletar tabela
-- Comando: DROP TABLE nome_tabela;
DROP TABLE tab_cliente;

--Alterar algo na tabela
-- Comando: ALTER TABLE nome_tabela ALTER COLUMN nome_coluna o que vai alterar;
ALTER TABLE tab_cliente ALTER COLUMN s_nome_cliente VARCHAR (30) NOT NULL;

--Adicionar nova coluna
-- Comando: ALTER TABLE nome_tabela ADD nome_coluna tipo;
ALTER TABLE tab_cliente ADD s_sexo_cliente CHAR(1);

ALTER TABLE tab_cliente ADD s_teste CHAR(1);
--Excluir coluna
ALTER TABLE tab_cliente DROP COLUMN s_teste;

ALTER TABLE tab_cliente ADD i_tipo_cliente INT ;

-- Alterar tipo de dado
ALTER TABLE tab_cliente ADD i_idade_cliente INT;
ALTER TABLE tab_cliente ALTER COLUMN i_idade_cliente TINYINT;



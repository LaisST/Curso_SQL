
/*  DML - Insert */
/* INSERT INTO <TABELA> (COLUNAS) VALUES (VALORES) */

CREATE table tab_cliente(
	i_ID_cliente INT PRIMARY key AUTO_INCREMENT
  	,s_Nome_cliente VARCHAR(50) NOT NULL
  	,s_cpf_cliente VARCHAR(11) NOT NULL
  	,d_nascimento_cliente DATETIME
  	,i_tipo_cliente INT not NULL
);

CREATE table tab_tipoCliente(
	i_ID_Tipocliente INT PRIMARY key AUTO_INCREMENT
  	,s_Descricao_TipoCliente VARCHAR(50) NOT NULL
);

ALTER TABLE tab_cliente ADD FOREIGN KEY (i_tipo_cliente) REFERENCES tab_tipoCliente(i_ID_Tipocliente);

insert into tab_tipoCliente values (01, 'Pessoa Física');
insert into tab_tipoCliente values (02, 'Pessoa Juridica');
insert into tab_tipoCliente values (03, 'Cliente Especial');

INSERT INTO tab_cliente (s_nome_cliente, s_cpf_cliente, d_nascimento_cliente, i_tipo_cliente)VALUES
('Lais', '369258147', '1993-11-13', 01)
,('Gustavo', '123456789', '2002-06-28', 01);

select * from tab_cliente

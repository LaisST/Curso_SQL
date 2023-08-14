/* DML - Insert com select */
/*
CREATE table tab_cliente_aux(
	i_ID_cliente_aux INT PRIMARY KEY AUTO_INCREMENT
  	,s_Nome_cliente VARCHAR(50) NOT NULL
  	,s_cpf_cliente VARCHAR(11) NOT NULL
  	,d_nascimento_cliente DATETIME
  	,i_tipo_cliente INT not NULL 
);
ALTER TABLE tab_cliente_aux ADD FOREIGN KEY (i_tipo_cliente) REFERENCES tab_tipoCliente(i_ID_Tipocliente);
*/
INSERT into tab_cliente_aux (s_nome_cliente, s_cpf_cliente, d_nascimento_cliente, i_tipo_cliente)

select s_nome_cliente, s_cpf_cliente, d_nascimento_cliente, i_tipo_cliente
from tab_cliente

select * from tab_cliente_aux

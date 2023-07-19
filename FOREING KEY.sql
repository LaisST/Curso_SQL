CREATE TABLE tab_tipoCliente(
  i_id_tipoCliente INT PRIMARY KEY NOT NULL IDENTITY(1,1),
  s_descricao_tipoCliente VARCHAR(100) NOT NULL
);

/*
ALTER TABLE <tab_origem> ADD CONSTRAINT <nome_restricao> FOREING KEY <campo_tab_origem> REFERENCES <tab_destino> (<campo tab_destino>)
*/

ALTER TABLE tab_cliente ADD FOREIGN KEY (i_tipo_cliente) REFERENCES tab_tipoCliente(i_id_tipocliente);


CREATE INDEX USUARIO_IDX1
ON USUARIO (USU_SENHA);

ALTER TABLE CLIENTE
ALTER ENDERECO TYPE VARCHAR(100) CHARACTER SET NONE,
ALTER COMPLEMENTO TYPE VARCHAR(100) CHARACTER SET NONE,
ALTER BAIRRO TYPE VARCHAR(100) CHARACTER SET NONE,
ALTER ENT_ENDERECO TYPE VARCHAR(100) CHARACTER SET NONE,
ALTER ENT_BAIRRO TYPE VARCHAR(100) CHARACTER SET NONE,
ALTER COB_ENDERECO TYPE VARCHAR(100) CHARACTER SET NONE,
ALTER COB_BAIRRO TYPE VARCHAR(100) CHARACTER SET NONE;

CREATE INDEX PRODUTO_IDX_TIPOPRODUTO
ON PRODUTO (TIPO_PRODUTO);

CREATE INDEX CLIENTE_IDX_NOMERAZAO
ON CLIENTE (NOME_RAZAO);

CREATE INDEX USUARIO_IDX_IDVENDEDOR
ON USUARIO (ID_VENDEDOR);

CREATE INDEX NOTA_ENTRADA_IDXDTENTRADA
ON NOTA_ENTRADA (ENTRADA);






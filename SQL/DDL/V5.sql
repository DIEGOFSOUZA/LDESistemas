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

ALTER TABLE CLIENTE
    ADD DATA_ULTIMACOMPRA DATE;

CREATE INDEX CLIENTE_IDX_DTULTCOMPRA
ON CLIENTE (DATA_ULTIMACOMPRA);

SET TERM ^ ;

CREATE trigger tri_ai_pdvmaster_dtcompra for pdv_master
active after insert position 0

as
begin
  update CLIENTE C
  set C.DATA_ULTIMACOMPRA = current_date
  where C.CODIGO = new.ID_CLIENTE;
end^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER procedure PRO_ULTIMAVENDA (
    ID_CLIENTE integer not null)
returns (
    DT_ULTIMACOMPRA date,
    VALOR numeric(15,2))
as
begin
  for select first 1 PM.EMISSAO, PM.VL_TOTAL
      from PDV_MASTER PM
      where PM.ID_CLIENTE = :id_cliente
      order by PM.EMISSAO desc
      into :dt_ultimacompra, :valor
      do
        suspend;
end^

SET TERM ; ^

SET TERM ^ ;

CREATE trigger tri_bu_produto_composicao_total for produto_composicao
active before update position 0
AS
begin
  new.custo_total = cast(new.qtde * new.custo_unit as numeric(10,2));
end^

SET TERM ; ^


SET TERM ^ ;

CREATE OR ALTER trigger tri_bu_prodhistprecocusto for produto
active before update position 0

as
begin
  execute procedure PRO_HIST_PRECOCUSTO('U', new.CODIGO, new.PRECO_CUSTO,
      substring(new.ULTIMA_ALTERACAO from 1 for (position('|', new.ULTIMA_ALTERACAO) - 1)), null);

  if (old.PRECO_CUSTO <> new.PRECO_CUSTO) then
  begin
    update PRODUTO_COMPOSICAO PC
    set PC.CUSTO_UNIT = (select cast((coalesce(new.PRECO_CUSTO, 0) / coalesce(P.CONV_QTDE, 1)) as numeric(15,2))
                         from PRODUTO P
                         where P.CODIGO = new.CODIGO)
    where PC.ID_MATPRIMA = new.CODIGO;
  end
end^

SET TERM ; ^







	






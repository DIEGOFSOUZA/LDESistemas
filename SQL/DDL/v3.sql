ALTER TABLE PDV_ITENS
    ADD QTDE_DISPONIVEL NUMERIC(8,3);

alter table PDV_ITENS
alter ID position 1;

alter table PDV_ITENS
alter TIPO position 2;

alter table PDV_ITENS
alter ORDEM position 3;

alter table PDV_ITENS
alter ID_PRODUTO position 4;

alter table PDV_ITENS
alter VL_UNITARIO position 5;

alter table PDV_ITENS
alter UM position 6;

alter table PDV_ITENS
alter QTDE position 7;

alter table PDV_ITENS
alter QTDE_BAIXA position 8;

alter table PDV_ITENS
alter QTDE_DISPONIVEL position 9;

alter table PDV_ITENS
alter VL_DESCONTO position 10;

alter table PDV_ITENS
alter VL_TOTAL position 11;

alter table PDV_ITENS
alter CFOP position 12;

alter table PDV_ITENS
alter NCM position 13;

alter table PDV_ITENS
alter VL_ICMS position 14;

alter table PDV_ITENS
alter VL_PIS position 15;

alter table PDV_ITENS
alter VL_COFINS position 16;

alter table PDV_ITENS
alter VL_IPI position 17;

alter table PDV_ITENS
alter VL_IMPOSTO position 18;

CREATE TABLE PDV_DEVOLUCAO (
    ID INTEGER GENERATED BY DEFAULT AS IDENTITY,
    TIPO CHAR(1) NOT NULL,
    ID_VENDA INTEGER NOT NULL,
    ORDEM INTEGER NOT NULL,
    ID_PRODUTO INTEGER NOT NULL,
    QTDE NUMERIC(8,3) NOT NULL);

ALTER TABLE PDV_DEVOLUCAO
ADD CONSTRAINT PK_PDV_DEVOLUCAO
PRIMARY KEY (ID);

alter table PDV_DEVOLUCAO
add constraint FK_PDV_DEVOLUCAO_ITEM 
foreign key (ID_VENDA, TIPO, ORDEM) 
references PDV_ITENS (ID, TIPO, ORDEM) 
on delete cascade 
on update cascade;

ALTER TABLE PDV_DEVOLUCAO
ADD CONSTRAINT FK_PDV_DEVOLUCAO_PROD
FOREIGN KEY (ID_PRODUTO)
REFERENCES PRODUTO(CODIGO)
ON DELETE SET NULL
ON UPDATE CASCADE;

CREATE INDEX PDV_MASTER_STATUS
ON PDV_MASTER (STATUS);

ALTER TABLE PDV_DEVOLUCAO
    ADD QTDE_BAIXA NUMERIC(8,3);

SET TERM ^ ;

CREATE trigger pdv_devolucao_ai_estoque for pdv_devolucao
active after insert position 0
AS
begin
  execute procedure PRO_ENTRADA_SAIDA(new.id_produto,new.qtde_baixa,'-') ;
end^

SET TERM ; ^

SET TERM ^ ;

CREATE trigger pdv_devolucao_au_estoque for pdv_devolucao
active after update position 0
AS
begin
  execute procedure PRO_ENTRADA_SAIDA(old.ID_PRODUTO,old.QTDE_BAIXA,'+') ;
  execute procedure PRO_ENTRADA_SAIDA(new.ID_PRODUTO,new.QTDE_BAIXA,'-') ;
end^

SET TERM ; ^

SET TERM ^ ;

CREATE trigger pdv_devolucao_ad_estoque for pdv_devolucao
active after delete position 0
AS
begin
  execute procedure PRO_ENTRADA_SAIDA(old.ID_PRODUTO,old.QTDE_BAIXA,'+') ;
end^

SET TERM ; ^

ALTER TABLE PDV_DEVOLUCAO
    ADD DATA DATE,
    ADD USUARIO VARCHAR(100);

SET TERM ^ ;

CREATE OR ALTER procedure PRO_MOVIMENTOPRODUTO (
    ID_PROD integer)
returns (
    ENTSAI char(1),
    QTDE numeric(15,3),
    QTDE_FECHADA numeric(15,3),
    DTMOVTO date,
    LOTE varchar(20),
    TIPO_MOVIMENTO varchar(20),
    USUARIO varchar(100),
    ID_PRODUTO integer,
    DESCRI varchar(100),
    TIPO_PRODUTO varchar(20),
    CODBARRA varchar(13),
    ESTOQUE_MINIMO numeric(15,3),
    SIGLA_UM varchar(10))
as
begin
  select A.NOME, A.CODIGO,
         case upper(A.TIPO_PRODUTO)
           when 'PA' then 'Produto Acabado'
           when 'MP' then 'Materia Prima'
           else 'Ambos'
         end TIPO_PRODUTO,
         coalesce(A.EAN_CODBARRA, 0), coalesce(A.QTDE_MINIMA, 0), coalesce(C.SIGLA, B.SIGLA) SIGLA
  from PRODUTO A
  left outer join UNIDADE B on (B.CODIGO = A.COD_UNIDADE)
  left join UNIDADE C on (C.CODIGO = A.CONV_UNIDADE)
  where (A.CODIGO = :ID_PROD)
  into :DESCRI, :ID_PRODUTO, :TIPO_PRODUTO, :CODBARRA, :ESTOQUE_MINIMO, :SIGLA_UM;

  /**************ENTRADA - LOTE ****************/
  for select iif(B.ENTSAI = 'ENTRADA', 'E', 'S') ENTSAI, B.QTDE, B.QTDE_FECHADA, A.EMISSAO, A.LOTE, A.USUARIO,
             'LOTE' TIPO_MOVIMENTO
      from LOTE A
      left outer join LOTE_ITENS B on (B.ID_LOTE = A.LOTE)
      where (B.CODPRO = :ID_PROD)
      into :ENTSAI, :QTDE, :QTDE_FECHADA, :DTMOVTO, :LOTE, :USUARIO, :TIPO_MOVIMENTO
  do
  begin
    suspend;
  end
  /****************SAIDA - LOTE MAT. PRIMA *********************************/
  for select 'S' ENTSAI, B.QTDE, B.QTDE_FECHADA, A.EMISSAO, A.LOTE, A.USUARIO, 'LOTE' TIPO_MOVIMENTO
      from LOTE A
      left outer join LOTE_MATPRIMA B on (B.ID_LOTE = A.LOTE)
      where A.GERA_MATPRIMA = 'S' and
            (B.ID_MATPRIMA = :ID_PROD)
      into :ENTSAI, :QTDE, :QTDE_FECHADA, :DTMOVTO, :LOTE, :USUARIO, :TIPO_MOVIMENTO
  do
  begin
    suspend;
  end

  /****************SAIDA - VENDAS*********************************/
  for select 'S' ENTSAI, B.QTDE, B.QTDE_BAIXA, A.EMISSAO, A.TIPO || '-' || A.ID, C.USU_NOME, 'VENDA' TIPO_MOVIMENTO
      from PDV_MASTER A
      left outer join PDV_ITENS B on (B.TIPO = A.TIPO and
            B.ID = A.ID)
      left outer join USUARIO C on (C.ID_VENDEDOR = A.ID_VENDEDOR)
      where (B.ID_PRODUTO = :ID_PROD)
      into :ENTSAI, :QTDE, :QTDE_FECHADA, :DTMOVTO, :LOTE, :USUARIO, :TIPO_MOVIMENTO
  do
  begin
    suspend;
  end

  /****************ENTRADA - NF*********************************/
  for select 'E' ENTSAI, B.QTDE, B.QTDE, A.EMISSAO, 'NF:' || A.N_NF, C.USU_NOME, 'ENT-NF'
      from NOTA_ENTRADA A
      left outer join NOTA_ENTRADA_ITENS B on (B.ID_NOTAENTRADA = A.ID)
      left outer join USUARIO C on (C.USU_ID = A.ID_USUARIO)
      where (B.ID_PRODUTO = :ID_PROD)
      into :ENTSAI, :QTDE, :QTDE_FECHADA, :DTMOVTO, :LOTE, :USUARIO, :TIPO_MOVIMENTO
  do
  begin
    suspend;
  end

  /****************ENTRADA - DEVOLUCAO PDV*********************************/
  for select 'E' ENTSAI, A.QTDE, A.QTDE_BAIXA, A.data, A.TIPO || '-' || A.ID_VENDA, A.USUARIO,
             'DEV/TROCA' TIPO_MOVIMENTO
      from PDV_DEVOLUCAO A
      where (A.ID_PRODUTO = :ID_PROD)
      into :ENTSAI, :QTDE, :QTDE_FECHADA, :DTMOVTO, :LOTE, :USUARIO, :TIPO_MOVIMENTO
  do
  begin
    suspend;
  end

end^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger tri_bi_cliente for cliente
active before insert position 0
AS
declare variable mcodigo integer;
begin
  if ((new.codigo = 0) or (new.codigo is null)) then
   begin
    new.vl_credito = 0;
    new.vl_debito = 0;
    select max(codigo) from CLIENTE into :mCodigo ;
     if (mCodigo is null) then
     begin
       mCodigo = 0 ;
     end
     new.codigo = mCodigo + 1 ;
   end
end^

SET TERM ; ^

CREATE INDEX NOTA_ENTRADA_IDX_NNF
ON NOTA_ENTRADA (N_NF);











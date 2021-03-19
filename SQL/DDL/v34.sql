ALTER TABLE PRODUTO
ADD PRECO_ATACADO NUMERIC(10,2);

ALTER TABLE PRODUTO
ADD QTDE_MIN_ATACADO NUMERIC(15,3);

ALTER TABLE PRODUTO
ADD SITUACAO VARCHAR(10)
NOT NULL ;

SET TERM ^ ;

CREATE OR ALTER procedure pro_movimentoproduto (
    id_prod integer)
returns (
    entsai char(1),
    qtde numeric(15,3),
    qtde_fechada numeric(15,3),
    dtmovto date,
    lote varchar(20),
    tipo_movimento varchar(20),
    usuario varchar(100),
    id_produto integer,
    descri varchar(100),
    tipo_produto varchar(20),
    codbarra varchar(13),
    estoque_minimo numeric(15,3),
    sigla_um varchar(10))
as
begin
  select a.NOME,a.CODIGO,
  case upper(a.TIPO_PRODUTO)
  when 'PA' then 'Produto Acabado'
  when 'MP' then 'Materia Prima'
  else 'Ambos'
  end tipo_produto,
  coalesce(a.EAN_CODBARRA,0),coalesce(a.QTDE_MINIMA,0),
  b.SIGLA
  from PRODUTO a
  left outer join UNIDADE b on (b.CODIGO = a.COD_UNIDADE)
  where (a.codigo = :ID_PROD)
  into :DESCRI,:ID_PRODUTO,:TIPO_PRODUTO,:CODBARRA,:ESTOQUE_MINIMO,:SIGLA_UM; 
  
  /**************ENTRADA - LOTE ****************/
  for SELECT iif(b.entsai = 'ENTRADA','E','S') ENTSAI,b.QTDE, b.QTDE_FECHADA,a.EMISSAO,a.LOTE,a.USUARIO,'LOTE' tipo_movimento
      FROM LOTE a
      left outer join LOTE_ITENS b on (b.ID_LOTE = a.LOTE) 
      where (b.codpro = :ID_PROD)
      into :ENTSAI,:QTDE,:QTDE_FECHADA,:DTMOVTO,:LOTE,:USUARIO,:TIPO_MOVIMENTO do
  begin
    suspend ;
  end
   /****************SAIDA - LOTE MAT. PRIMA *********************************/
  for SELECT 'S' entsai,b.QTDE, b.QTDE_FECHADA,a.EMISSAO,a.LOTE,a.USUARIO,'LOTE' tipo_movimento
      FROM LOTE a
      left outer join LOTE_MATPRIMA b on (b.ID_LOTE = a.LOTE) 
      where a.GERA_MATPRIMA = 'S'
      and (b.ID_MATPRIMA = :ID_PROD)
      into :ENTSAI,:QTDE,:QTDE_FECHADA,:DTMOVTO,:LOTE,:USUARIO,:TIPO_MOVIMENTO do
  begin
    suspend ;
  end
  
   /****************SAIDA - VENDAS*********************************/
  for select 'S' entsai,b.QTDE,b.QTDE_BAIXA,a.EMISSAO,a.TIPO||'-'||a.ID,c.USU_NOME,'VENDA' tipo_movimento
      from PDV_MASTER a
      left outer join PDV_ITENS b on (b.TIPO = a.TIPO and b.ID = a.ID)
      left outer join USUARIO c on (c.ID_VENDEDOR = a.ID_VENDEDOR)
      where (b.ID_PRODUTO = :ID_PROD)
      into :ENTSAI,:QTDE,:QTDE_FECHADA,:DTMOVTO,:LOTE,:USUARIO,:TIPO_MOVIMENTO do
  begin
    suspend ;
  end
  
   /****************ENTRADA - NF*********************************/
  for select 'E' entsai,b.QTDE,b.QTDE,a.EMISSAO,'NF:'||a.N_NF,c.USU_NOME,'ENT-NF'
      from NOTA_ENTRADA a
      left outer join NOTA_ENTRADA_ITENS b on (b.ID_NOTAENTRADA = a.ID)
      left outer join USUARIO c on (c.USU_ID = a.ID_USUARIO)
      where (b.ID_PRODUTO = :ID_PROD)
      into :ENTSAI,:QTDE,:QTDE_FECHADA,:DTMOVTO,:LOTE,:USUARIO,:TIPO_MOVIMENTO do
  begin
    suspend ;
  end
  
end^

SET TERM ; ^

ALTER TABLE PRODUTO DROP COD_NCM;

DROP TABLE NCM;

CREATE TABLE NCM (
    ID INTEGER NOT NULL,
    NCM VARCHAR(10) NOT NULL,
    DESCRICAO VARCHAR(500) NOT NULL,
    NACIONALFEDERAL NUMERIC(15,2) DEFAULT 0,
    IMPORTADOFEDERAL NUMERIC(15,2) DEFAULT 0,
    ESTADUAL NUMERIC(15,2) DEFAULT 0,
    MUNICIPAL NUMERIC(15,2) DEFAULT 0,
    VIGENCIANICIO DATE,
    VIGENCIAFIM DATE);

ALTER TABLE NCM
ADD CONSTRAINT PK_NCM
PRIMARY KEY (ID);

CREATE SEQUENCE GEN_NCM_ID;

SET TERM ^ ;

create trigger TRI_BI_NCM for ncm
active before insert position 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_ncm_id,1);
end^

SET TERM ; ^


CREATE TABLE CEST (
    ID INTEGER NOT NULL,
    CEST VARCHAR(10) NOT NULL,
    NCM VARCHAR(10),
    SEGMENTO VARCHAR(100),
    DESCRICAO VARCHAR(500));

ALTER TABLE CEST
ADD CONSTRAINT PK_CEST
PRIMARY KEY (ID);

CREATE SEQUENCE GEN_CEST_ID;

SET TERM ^ ;

create trigger TRI_BI_CEST for cest
active before insert position 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_cest_id,1);
end^

SET TERM ; ^

ALTER TABLE PRODUTO
    ADD FISCAL_TIPO VARCHAR(30),
    ADD FISCAL_ORIGEM VARCHAR(200),
    ADD FISCAL_NCM INTEGER,
    ADD FISCAL_CEST INTEGER;

ALTER TABLE PRODUTO
ADD CONSTRAINT FK_PRODUTO_NCM
FOREIGN KEY (FISCAL_NCM)
REFERENCES NCM(ID)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE PRODUTO
ADD CONSTRAINT FK_PRODUTO_CEST
FOREIGN KEY (FISCAL_CEST)
REFERENCES CEST(ID)
ON DELETE SET NULL
ON UPDATE CASCADE;




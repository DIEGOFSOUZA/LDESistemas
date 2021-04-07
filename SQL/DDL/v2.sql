ALTER TABLE PRODUTO
ADD PRECO_ATACADO NUMERIC(10,2);

ALTER TABLE PRODUTO
ADD QTDE_MIN_ATACADO NUMERIC(15,3);

ALTER TABLE PRODUTO
    ADD SITUACAO VARCHAR(10) DEFAULT 'ATIVO' NOT NULL;

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

DROP TRIGGER TRI_PRODUTO_FORNECEDOR;

ALTER TABLE PRODUTO_FORNECEDOR DROP CONSTRAINT INTEG_201;

ALTER TABLE PRODUTO_FORNECEDOR DROP ID;

DROP SEQUENCE GEN_PRODUTO_FORNECEDOR;

alter table PRODUTO_FORNECEDOR
alter ID_FORNECEDOR position 1;

alter table PRODUTO_FORNECEDOR
alter ID_PRODUTO position 2;

alter table PRODUTO_FORNECEDOR
alter PRECO position 3;

alter table PRODUTO_FORNECEDOR
alter REFERENCIA_FORNEC position 4;

ALTER TABLE PRODUTO_FORNECEDOR
ADD CONSTRAINT PK_PRODUTO_FORNECEDOR
PRIMARY KEY (ID_FORNECEDOR,ID_PRODUTO);

SET TERM ^ ;

CREATE trigger tri_produto_fornecedor_bi0 for produto_fornecedor
active before insert position 0
AS
begin
  if((new.id_produto = 0) or (new.id_produto is null)) then
    begin
      new.id_produto = gen_id(gen_produto,0);
    end
end^

SET TERM ; ^

DROP TRIGGER TRI_PRODUTO_COMPOSICAO;

ALTER TABLE PRODUTO_COMPOSICAO DROP ID;

ALTER TABLE PRODUTO_COMPOSICAO
ADD CONSTRAINT PK_PRODUTO_COMPOSICAO
PRIMARY KEY (ID_PRODUTO,ID_MATPRIMA);

DROP SEQUENCE GEN_PRODUTO_COMPOSICAO;

ALTER TABLE PRODUTO_FORNECEDOR
    ADD FORNECEDOR VARCHAR(60);
	
ALTER TABLE PRODUTO_COMPOSICAO
    ADD CUSTO_UNIT NUMERIC(15,2),
    ADD CUSTO_TOTAL NUMERIC(15,2);

ALTER TABLE PRODUTO DROP COD_FABRICANTE;

ALTER TABLE PRODUTO
    ADD ULTIMA_ALTERACAO VARCHAR(200);

SET TERM ^ ;

CREATE OR ALTER procedure pro_hist_precovenda (
    tipo char(1),
    id_prod integer,
    usuario varchar(100),
    preco numeric(10,2))
as
begin
  if (:TIPO = 'I') then
  /*insert*/
  begin
    insert into PRECOVENDA_HISTORICO (ID, ID_PROD, USUARIO, PRECO_NOVO, data)
    values (0, :ID_PROD, :USUARIO, :PRECO, current_date);
  end
  else
  begin /*update*/
    if (:PRECO <> (select P.PRECO_VENDA
                   from PRODUTO P
                   where P.CODIGO = :ID_PROD)) then
    begin
      update PRECOVENDA_HISTORICO A
      set A.DT_FIM = current_date
      where A.ID = (select max(B.ID)
                    from PRECOVENDA_HISTORICO B
                    where B.ID_PROD = :ID_PROD);

      insert into PRECOVENDA_HISTORICO (ID, ID_PROD, USUARIO, PRECO_NOVO, data)
      values (0, :ID_PROD, :USUARIO, :PRECO, current_date);
    end
  end

end^

SET TERM ; ^

SET TERM ^ ;

CREATE trigger tri_produto_ai0 for produto
active after insert position 0
AS
begin
  execute procedure pro_hist_precovenda('I',new.codigo,substring(new.ultima_alteracao from 1 for (position('|',new.ultima_alteracao)-1)),new.preco_venda);
end^

SET TERM ; ^

SET TERM ^ ;

CREATE trigger tri_produto_bu0 for produto
active before update position 0
AS
begin
  if (new.preco_venda <> old.preco_venda) then
  begin
    execute procedure pro_hist_precovenda('U',new.codigo,substring(new.ultima_alteracao from 1 for (position('|',new.ultima_alteracao)-1)),new.preco_venda);
  end
end^

SET TERM ; ^

ALTER TABLE PRECOCUSTO_HISTORICO
    ADD DATA_FIM DATE,
    ADD USUARIO VARCHAR(100);

alter table PRECOCUSTO_HISTORICO
alter ID position 1;

alter table PRECOCUSTO_HISTORICO
alter ID_PROD position 2;

alter table PRECOCUSTO_HISTORICO
alter PRECO_NOVO position 3;

alter table PRECOCUSTO_HISTORICO
alter DATA position 4;

alter table PRECOCUSTO_HISTORICO
alter DATA_FIM position 5;

alter table PRECOCUSTO_HISTORICO
alter USUARIO position 6;

alter table PRECOCUSTO_HISTORICO
alter ID_NFENTRADA position 7;


SET TERM ^ ;

CREATE OR ALTER procedure pro_hist_precocusto (
    tipo char(1),
    idproduto integer,
    preco numeric(10,2),
    usuario varchar(100),
    idnf integer)
as
begin
  if (:TIPO = 'I') then
  /*insert*/
  begin
    insert into PRECOCUSTO_HISTORICO (ID, ID_PROD, PRECO_NOVO, data, USUARIO, ID_NFENTRADA)
    values (0, :IDPRODUTO, :PRECO, current_date, :USUARIO, :IDNF);
  end
  else
  begin /*update*/
    if (:PRECO <> (select P.PRECO_CUSTO
                   from PRODUTO P
                   where P.CODIGO = :IDPRODUTO)) then
    begin
      update PRECOCUSTO_HISTORICO A
      set A.DATA_FIM = current_date
      where A.ID = (select max(B.ID)
                    from PRECOCUSTO_HISTORICO B
                    where B.ID_PROD = :IDPRODUTO);

      insert into PRECOCUSTO_HISTORICO (ID, ID_PROD, PRECO_NOVO, data, USUARIO, ID_NFENTRADA)
      values (0, :IDPRODUTO, :PRECO, current_date, :USUARIO, :IDNF);
    end
  end
end^

SET TERM ; ^

SET TERM ^ ;

CREATE trigger tri_prod_ai_histprecocusto for produto
active after insert position 0
AS
begin
  execute procedure pro_hist_precocusto('I',new.codigo,new.preco_custo,substring(new.ultima_alteracao from 1 for (position('|',new.ultima_alteracao)-1)),null);
end^

SET TERM ; ^

SET TERM ^ ;

CREATE trigger tri_prod_bu_histprecocusto for produto
active before update position 0
AS
begin
  execute procedure pro_hist_precocusto('U',new.codigo,new.preco_custo,substring(new.ultima_alteracao from 1 for (position('|',new.ultima_alteracao)-1)),null);
end^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger tri_ai_estoque for nota_entrada_itens
active after insert position 0
AS
begin
  if (NEW.QTDE is not null) then
  begin
    execute procedure PRO_ENTRADA_SAIDA(new.ID_PRODUTO,new.QTDE,'+') ;
  end
end^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger tri_au_estoque for nota_entrada_itens
active after update position 0

as
begin
  execute procedure PRO_ENTRADA_SAIDA(old.ID_PRODUTO, old.QTDE, '-');
  execute procedure PRO_ENTRADA_SAIDA(new.ID_PRODUTO, new.QTDE, '+');
end^

SET TERM ; ^

SET TERM ^ ;

CREATE trigger tri_nf_itens_ai_precocusto for nota_entrada_itens
active after insert position 0

as
begin
  if (new.PRECO_CUSTO > 0) then
  begin
    update PRODUTO A
    set A.PRECO_CUSTO = new.PRECO_CUSTO
    where A.CODIGO = new.ID_PRODUTO;

    if (exists(select A.CODIGO
               from PRODUTO A
               where A.CODIGO = new.id_produto)) then
    begin
      execute procedure PRO_HIST_PRECOCUSTO('U', new.ID_PRODUTO, new.PRECO_CUSTO, null, new.ID_NOTAENTRADA);
    end
    else
    begin
      execute procedure PRO_HIST_PRECOCUSTO('I', new.ID_PRODUTO, new.PRECO_CUSTO, null, new.ID_NOTAENTRADA);
    end
  end
end^

SET TERM ; ^

SET TERM ^ ;

CREATE trigger nota_entrada_itens_bu0 for nota_entrada_itens
active before update position 0
AS
begin
  if ((new.preco_custo > 0) and (new.preco_custo <> old.preco_custo)) then
  begin
    update PRODUTO A
    set A.PRECO_CUSTO = new.PRECO_CUSTO
    where A.CODIGO = new.ID_PRODUTO;

    execute procedure pro_hist_precocusto('U',new.id_produto,new.preco_custo,null, new.id_notaentrada);
  end
end^

SET TERM ; ^


drop table cidades;

CREATE TABLE CIDADE (
    ID INTEGER NOT NULL,
    ID_IBGE VARCHAR(10),
    NOME VARCHAR(500) NOT NULL,
    UF CHAR(2) NOT NULL);

ALTER TABLE CIDADE
ADD CONSTRAINT PK_CIDADE
PRIMARY KEY (ID);

SET TERM ^ ;

create trigger cidade_bi for cidade
active before insert position 0
as
begin
  if (new.id is null) then
    new.id = gen_id(gen_cidades_id,1);
end^

SET TERM ; ^

ALTER TABLE PRODUTO
    ADD CALC_CUSTO_COMPOSICAO CHAR(1);
	
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
  coalesce(c.sigla,b.SIGLA)sigla
  from PRODUTO a
  left outer join UNIDADE b on (b.CODIGO = a.COD_UNIDADE)
  left join UNIDADE c on (c.CODIGO = a.conv_unidade)
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

	


	









	








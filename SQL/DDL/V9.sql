﻿DROP TABLE PEDIDO_VENDAPAGAR;

DROP TABLE PEDIDO_VENDAITENS;

DROP TABLE PEDIDO_VENDA;

CREATE TABLE PEDIDO_VENDA (
    ID INTEGER GENERATED BY DEFAULT AS IDENTITY,
    EMISSAO DATE NOT NULL,
    ENTRADA TIMESTAMP NOT NULL,
    ENTREGA DATE,
    ID_CLIENTE INTEGER NOT NULL);

ALTER TABLE PEDIDO_VENDA
ADD CONSTRAINT PK_PEDIDO_VENDA
PRIMARY KEY (ID);

ALTER TABLE PEDIDO_VENDA
ADD CONSTRAINT FK_PEDIDO_VENDA_CLIENTE
FOREIGN KEY (ID_CLIENTE)
REFERENCES CLIENTE(CODIGO)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE PEDIDO_VENDA
    ADD ID_VENDEDOR INTEGER;

ALTER TABLE PEDIDO_VENDA
ADD CONSTRAINT FK_PEDIDO_VENDA_1
FOREIGN KEY (ID_VENDEDOR)
REFERENCES REPRESENTANTE(CODIGO)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE PEDIDO_VENDA DROP CONSTRAINT FK_PEDIDO_VENDA_1;

ALTER TABLE PEDIDO_VENDA
ADD CONSTRAINT FK_PEDIDO_VENDA_VENDEDOR
FOREIGN KEY (ID_VENDEDOR)
REFERENCES REPRESENTANTE(CODIGO)
ON DELETE SET NULL
ON UPDATE CASCADE
USING INDEX FK_PEDIDO_VENDA_1;

CREATE TABLE PEDIDO_VENDA_STATUS (
    ID_PEDIDO INTEGER NOT NULL,
    ORDEM INTEGER NOT NULL,
    STATUS VARCHAR(50) NOT NULL,
    USUARIO VARCHAR(30) NOT NULL,
    DATA_HORA TIMESTAMP NOT NULL);

ALTER TABLE PEDIDO_VENDA_STATUS
ADD CONSTRAINT PK_PEDIDO_VENDA_PEDIDO
PRIMARY KEY (ID_PEDIDO,ORDEM);

CREATE TABLE CONTAS_A_RECEBER (
    ID INTEGER GENERATED BY DEFAULT AS IDENTITY,
    TIPO INTEGER DEFAULT 1 NOT NULL,
    ID_TABELA_MASTER INTEGER,
    ID_CONTA CHAR(5) NOT NULL,
    ID_HISTORICO INTEGER NOT NULL,
    NDUP INTEGER NOT NULL,
    VDUP NUMERIC(15,2) NOT NULL,
    VDESC NUMERIC(15,2),
    VJUROS NUMERIC(15,2),
    DVENC DATE NOT NULL);

ALTER TABLE CONTAS_A_RECEBER
ADD CONSTRAINT PK_CONTAS_A_RECEBER
PRIMARY KEY (ID);

COMMENT ON COLUMN CONTAS_A_RECEBER.TIPO IS
'PEDIDO_VENDA=1';

CREATE TABLE CONTAS_A_RECEBER_LOG (
    ID_CONTASRECEBER INTEGER NOT NULL,
    ORDEM INTEGER NOT NULL,
    USUARIO VARCHAR(30) NOT NULL,
    COMANDO VARCHAR(50) DEFAULT 'BAIXA' NOT NULL,
    DATA_HORA TIMESTAMP DEFAULT current_timestamp NOT NULL);

COMMENT ON COLUMN CONTAS_A_RECEBER_LOG.COMANDO IS
'BAIXA
RESTAURACAO
PARCIAL';

ALTER TABLE CONTAS_A_RECEBER_LOG
ADD CONSTRAINT PK_CONTAS_A_RECEBER_LOG
PRIMARY KEY (ID_CONTASRECEBER,ORDEM);

ALTER TABLE PEDIDO_VENDA
    ADD OBSERVACAO VARCHAR(500);

CREATE TABLE PEDIDO_VENDA_ITEM (
    ID_PEDIDO INTEGER NOT NULL,
    ORDEM INTEGER NOT NULL,
    ID_PRODUTO INTEGER NOT NULL,
    VUNIT NUMERIC(15,2) NOT NULL,
    QTDE NUMERIC(15,4) NOT NULL,
    UNIDADE VARCHAR(10) NOT NULL,
    QTDE_BAIXA NUMERIC(15,4) NOT NULL,
    VDESC NUMERIC(15,2),
    SUBTOTAL NUMERIC(15,2),
    TOTAL NUMERIC(15,2));

ALTER TABLE PEDIDO_VENDA_ITEM
ADD CONSTRAINT PK_PEDIDO_VENDA_ITEM
PRIMARY KEY (ID_PEDIDO,ORDEM);

ALTER TABLE PEDIDO_VENDA_ITEM
ADD CONSTRAINT FK_PEDIDO_VENDA_ITEM_1
FOREIGN KEY (ID_PRODUTO)
REFERENCES PRODUTO(CODIGO)
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE PEDIDO_VENDA_ITEM DROP CONSTRAINT FK_PEDIDO_VENDA_ITEM_1;

ALTER TABLE PEDIDO_VENDA_ITEM
ADD CONSTRAINT FK_PEDIDO_VENDA_ITEM_PRODUTO
FOREIGN KEY (ID_PRODUTO)
REFERENCES PRODUTO(CODIGO)
ON DELETE SET NULL
ON UPDATE CASCADE
USING INDEX FK_PEDIDO_VENDA_ITEM_1;

SET TERM ^ ;

CREATE trigger tri_ai_pedido_venda_item for pedido_venda_item
active after insert position 0
AS
begin
  execute procedure PRO_ENTRADA_SAIDA(new.ID_PRODUTO,new.QTDE_BAIXA,'-') ;
end^

SET TERM ; ^

SET TERM ^ ;

CREATE trigger tri_au_pedido_venda_item for pedido_venda_item
active after update position 0

as
begin
  execute procedure PRO_ENTRADA_SAIDA(old.ID_PRODUTO, old.QTDE_BAIXA, '+');
  execute procedure PRO_ENTRADA_SAIDA(new.ID_PRODUTO, new.QTDE_BAIXA, '-');
end^

SET TERM ; ^

SET TERM ^ ;

CREATE trigger tri_ad_pedido_venda_item for pedido_venda_item
active after delete position 0

as
begin
  execute procedure PRO_ENTRADA_SAIDA(old.ID_PRODUTO, old.QTDE_BAIXA, '+');
end^

SET TERM ; ^

ALTER TABLE PEDIDO_VENDA ALTER COLUMN EMISSAO
SET DEFAULT CURRENT_DATE;

ALTER TABLE PEDIDO_VENDA ALTER COLUMN ENTRADA
SET DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE CONTAS_A_RECEBER
    ALTER ID_CONTA DROP NOT NULL,
    ALTER ID_HISTORICO DROP NOT NULL;

GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CAIXA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CAIXA_ABERT_FECH TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CAIXA_APURACAO_VALORES TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CAIXA_ENT_SAI TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CEST TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CFOP TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CHEQUE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CIDADE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CLIENTE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CONDPAGTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CONTAS_A_RECEBER TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CONTAS_A_RECEBER_LOG TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CONTA_BANCARIA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CONTROL TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON DEL_PDV_RECEBER TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON EMPRESA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ESTADO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON FABRICANTE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON FUNCIONARIO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON GRUPO_FABRICANTE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON GRUPO_PROD TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON HISTORICO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON HISTORICO_GRUPO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON LANCAMENTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON LOG_BAIXA_RESTAURA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON LOTE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON LOTE_ITENS TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON LOTE_MATPRIMA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NATOPERACAO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NCM TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NOTA_ENTRADA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NOTA_ENTRADA_ANEXO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NOTA_ENTRADA_ITENS TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NOTA_ENTRADA_PAGAR TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NOTA_ENTRADA_PARCIAL TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ORCAMENTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ORCAMENTO_ITEM TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ORCAMENTO_PAGTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PAGTO_FORMA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PAGTO_PARCELAMENTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PAIS TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_CANCELAMENTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_DEVOLUCAO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_ITENS TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_MASTER TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_RECEBER TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_RECEBER_PARCIAL TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PEDIDO_VENDA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PEDIDO_VENDA_ITEM TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PEDIDO_VENDA_STATUS TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PRECOCUSTO_HISTORICO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PRECOVENDA_HISTORICO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PRODUTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PRODUTO_COMPOSICAO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PRODUTO_FORNECEDOR TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON RAMO_ATIVIDADE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON REPRESENTANTE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON SUBGRUPO_PROD TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TRANSPORTADORA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON UNIDADE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON USUARIO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON USUARIO_GRUPO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON VW_FORMAPAGTO TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_ENTRADA_SAIDA TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_GET_SCRIPT TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_HIST_PRECOCUSTO TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_HIST_PRECOVENDA TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_ISCREDIARIO TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_MOVIMENTOPRODUTO TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_RECEBER_VLLIQ TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_SONUMEROS TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_TOT_DUPLICATAS TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_ULTIMAVENDA TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_UPDATE_DEBITO_CLIENTE TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_UPD_PRODUTO_CUSTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_ATENDIMENTO_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CAIXA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CAIXA_ABERT_FECH TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CAIXA_APURACAO_VALORES TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CAIXA_ENT_SAI TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CEST_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CIDADES_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CLIENTE TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CONDPAGTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CONTABANCARIA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_HISTORICO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_HISTORICO_GRUPO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_HIS_PRECOCUSTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_LANCAMENTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_LOTE TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_LOTE_ITENS TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_LOTE_MATPRIMA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_NCM_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_NOTAENTRADA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_NOTAENTRADA_ITENS TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_ORCAMENTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PAGTOFORMA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PAGTOPARCELAMENTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PEDIDOVENDA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PRAZO_PAGAMENTO_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PRAZO_PAGAMENTO_PARCELA_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PRECOHISTORICO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PRODUTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_RECEBER_PARCIAL TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_UNIDADE TO R_SISTEMA;

SET TERM ^ ;

CREATE trigger tri_ad_pedido_venda_receber for pedido_venda
active after delete position 0
AS
begin
  delete from contas_a_receber c
  where c.tipo = 1 and
  c.id_tabela_master = old.id;
end^

SET TERM ; ^

ALTER TABLE PEDIDO_VENDA_ITEM
ADD CONSTRAINT FK_PEDIDO_VENDA_ITEM_PEDIDO
FOREIGN KEY (ID_PEDIDO)
REFERENCES PEDIDO_VENDA(ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE PEDIDO_VENDA_STATUS
ADD CONSTRAINT FK_PEDIDO_VENDA_STATUS_PEDIDO
FOREIGN KEY (ID_PEDIDO)
REFERENCES PEDIDO_VENDA(ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE PEDIDO_VENDA
    ADD USUARIO VARCHAR(40);
    

SET TERM ^ ;

CREATE OR ALTER trigger tri_ai_pedido_venda_status for pedido_venda
active after insert position 0

as
begin
  insert into PEDIDO_VENDA_STATUS (ID_PEDIDO, ORDEM, USUARIO, DATA_HORA)
  values (new.ID, 1, new.USUARIO, localtimestamp);
end^

SET TERM ; ^


COMMENT ON COLUMN PEDIDO_VENDA_STATUS.STATUS IS
'DIGITADO
APROVADO
PRODUÇÃO
CONCLUÍDO';

ALTER TABLE PEDIDO_VENDA_STATUS ALTER COLUMN STATUS
SET DEFAULT 'DIGITADO';

ALTER TABLE PEDIDO_VENDA
    ADD STATUS VARCHAR(50);

SET TERM ^ ;

CREATE trigger tri_ai_pedido_venda_status_0 for pedido_venda_status
active after insert position 0

as
begin
  update PEDIDO_VENDA P
  set P.STATUS = new.STATUS
  where P.ID = new.ID_PEDIDO;
end^

SET TERM ; ^

CREATE INDEX PEDIDO_VENDA_IDX_STATUS
ON PEDIDO_VENDA (STATUS);

CREATE INDEX PEDIDO_VENDA_IDX_EMISSAO
ON PEDIDO_VENDA (EMISSAO);

CREATE INDEX PEDIDO_VENDA_STATUS_IDX_ORDEM
ON PEDIDO_VENDA_STATUS (ORDEM);

ALTER TABLE PEDIDO_VENDA_STATUS DROP CONSTRAINT PK_PEDIDO_VENDA_PEDIDO;

ALTER TABLE PEDIDO_VENDA_STATUS
    ADD ID INTEGER GENERATED BY DEFAULT AS IDENTITY;

alter table PEDIDO_VENDA_STATUS
alter ID position 1;

alter table PEDIDO_VENDA_STATUS
alter ID_PEDIDO position 2;

alter table PEDIDO_VENDA_STATUS
alter ORDEM position 3;

alter table PEDIDO_VENDA_STATUS
alter STATUS position 4;

alter table PEDIDO_VENDA_STATUS
alter USUARIO position 5;

alter table PEDIDO_VENDA_STATUS
alter DATA_HORA position 6;

ALTER TABLE PEDIDO_VENDA_STATUS
ADD CONSTRAINT PK_PEDIDO_VENDA_STATUS
PRIMARY KEY (ID);

DROP INDEX PEDIDO_VENDA_STATUS_IDX_ORDEM;

SET TERM ^ ;

CREATE OR ALTER trigger tri_ai_pedido_venda_status for pedido_venda
active after insert position 0
as
begin
  insert into PEDIDO_VENDA_STATUS (ID_PEDIDO, USUARIO, DATA_HORA)
  values (new.ID, new.USUARIO, localtimestamp);
end^

SET TERM ; ^

ALTER TABLE PEDIDO_VENDA_STATUS DROP ORDEM;

ALTER TABLE PEDIDO_VENDA_STATUS ALTER COLUMN DATA_HORA
SET DEFAULT LOCALTIMESTAMP;


CREATE TABLE PEDIDO_VENDA_IMG (
    ID INTEGER GENERATED BY DEFAULT AS IDENTITY,
    ID_PEDIDO INTEGER NOT NULL,
    IMAGEM BLOB SUB_TYPE 0 SEGMENT SIZE 80);

ALTER TABLE PEDIDO_VENDA_IMG
ADD CONSTRAINT PK_PEDIDO_VENDA_IMG
PRIMARY KEY (ID);

ALTER TABLE PEDIDO_VENDA_IMG
ADD CONSTRAINT FK_PEDIDO_VENDA_IMG_1
FOREIGN KEY (ID_PEDIDO)
REFERENCES PEDIDO_VENDA(ID)
ON DELETE CASCADE
ON UPDATE CASCADE;



GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CAIXA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CAIXA_ABERT_FECH TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CAIXA_APURACAO_VALORES TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CAIXA_ENT_SAI TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CEST TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CFOP TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CHEQUE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CIDADE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CLIENTE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CONDPAGTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CONTAS_A_RECEBER TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CONTAS_A_RECEBER_LOG TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CONTA_BANCARIA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON CONTROL TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON DEL_PDV_RECEBER TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON EMPRESA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ESTADO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON FABRICANTE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON FUNCIONARIO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON GRUPO_FABRICANTE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON GRUPO_PROD TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON HISTORICO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON HISTORICO_GRUPO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON LANCAMENTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON LOG_BAIXA_RESTAURA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON LOTE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON LOTE_ITENS TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON LOTE_MATPRIMA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NATOPERACAO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NCM TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NOTA_ENTRADA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NOTA_ENTRADA_ANEXO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NOTA_ENTRADA_ITENS TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NOTA_ENTRADA_PAGAR TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON NOTA_ENTRADA_PARCIAL TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ORCAMENTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ORCAMENTO_ITEM TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ORCAMENTO_PAGTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PAGTO_FORMA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PAGTO_PARCELAMENTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PAIS TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_CANCELAMENTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_DEVOLUCAO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_ITENS TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_MASTER TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_RECEBER TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PDV_RECEBER_PARCIAL TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PEDIDO_VENDA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PEDIDO_VENDA_IMG TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PEDIDO_VENDA_ITEM TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PEDIDO_VENDA_STATUS TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PRECOCUSTO_HISTORICO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PRECOVENDA_HISTORICO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PRODUTO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PRODUTO_COMPOSICAO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON PRODUTO_FORNECEDOR TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON RAMO_ATIVIDADE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON REPRESENTANTE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON SUBGRUPO_PROD TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TRANSPORTADORA TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON UNIDADE TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON USUARIO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON USUARIO_GRUPO TO R_SISTEMA;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON VW_FORMAPAGTO TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_ENTRADA_SAIDA TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_GET_SCRIPT TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_HIST_PRECOCUSTO TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_HIST_PRECOVENDA TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_ISCREDIARIO TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_MOVIMENTOPRODUTO TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_RECEBER_VLLIQ TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_SONUMEROS TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_TOT_DUPLICATAS TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_ULTIMAVENDA TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_UPDATE_DEBITO_CLIENTE TO R_SISTEMA;
GRANT EXECUTE ON PROCEDURE PRO_UPD_PRODUTO_CUSTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_ATENDIMENTO_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CAIXA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CAIXA_ABERT_FECH TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CAIXA_APURACAO_VALORES TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CAIXA_ENT_SAI TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CEST_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CIDADES_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CLIENTE TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CONDPAGTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_CONTABANCARIA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_HISTORICO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_HISTORICO_GRUPO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_HIS_PRECOCUSTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_LANCAMENTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_LOTE TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_LOTE_ITENS TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_LOTE_MATPRIMA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_NCM_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_NOTAENTRADA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_NOTAENTRADA_ITENS TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_ORCAMENTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PAGTOFORMA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PAGTOPARCELAMENTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PEDIDOVENDA TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PRAZO_PAGAMENTO_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PRAZO_PAGAMENTO_PARCELA_ID TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PRECOHISTORICO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_PRODUTO TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_RECEBER_PARCIAL TO R_SISTEMA;
GRANT USAGE ON SEQUENCE GEN_UNIDADE TO R_SISTEMA;

ALTER TABLE PEDIDO_VENDA_ITEM
    ADD QTDE_BAIXADA NUMERIC(15,4) DEFAULT 0 NOT NULL;
	
alter table PEDIDO_VENDA_ITEM
alter ID_PEDIDO position 1;

alter table PEDIDO_VENDA_ITEM
alter ORDEM position 2;

alter table PEDIDO_VENDA_ITEM
alter ID_PRODUTO position 3;

alter table PEDIDO_VENDA_ITEM
alter VUNIT position 4;

alter table PEDIDO_VENDA_ITEM
alter QTDE position 5;

alter table PEDIDO_VENDA_ITEM
alter UNIDADE position 6;

alter table PEDIDO_VENDA_ITEM
alter QTDE_BAIXA position 7;

alter table PEDIDO_VENDA_ITEM
alter QTDE_BAIXADA position 8;

alter table PEDIDO_VENDA_ITEM
alter VDESC position 9;

alter table PEDIDO_VENDA_ITEM
alter SUBTOTAL position 10;

alter table PEDIDO_VENDA_ITEM
alter TOTAL position 11;

SET TERM ^ ;

CREATE OR ALTER trigger tri_ai_pedido_venda_item for pedido_venda_item
active after insert position 0

as
begin
  execute procedure PRO_ENTRADA_SAIDA(new.ID_PRODUTO, new.QTDE_BAIXADA, '-');
end^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger tri_au_pedido_venda_item for pedido_venda_item
active after update position 0
as
begin
  execute procedure PRO_ENTRADA_SAIDA(old.ID_PRODUTO, old.QTDE_BAIXADA, '+');
  execute procedure PRO_ENTRADA_SAIDA(new.ID_PRODUTO, new.QTDE_BAIXADA, '-');
end^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger tri_ad_pedido_venda_item for pedido_venda_item
active after delete position 0
as
begin
  execute procedure PRO_ENTRADA_SAIDA(old.ID_PRODUTO, old.QTDE_BAIXADA, '+');
end^

SET TERM ; ^

ALTER TABLE PEDIDO_VENDA_ITEM
    ALTER QTDE_BAIXA TO QTDE_A_BAIXAR;

alter table PEDIDO_VENDA_ITEM
alter ID_PEDIDO position 1;

alter table PEDIDO_VENDA_ITEM
alter ORDEM position 2;

alter table PEDIDO_VENDA_ITEM
alter ID_PRODUTO position 3;

alter table PEDIDO_VENDA_ITEM
alter VUNIT position 4;

alter table PEDIDO_VENDA_ITEM
alter QTDE position 5;

alter table PEDIDO_VENDA_ITEM
alter QTDE_A_BAIXAR position 6;

alter table PEDIDO_VENDA_ITEM
alter QTDE_BAIXADA position 7;

alter table PEDIDO_VENDA_ITEM
alter UNIDADE position 8;

alter table PEDIDO_VENDA_ITEM
alter VDESC position 9;

alter table PEDIDO_VENDA_ITEM
alter SUBTOTAL position 10;

alter table PEDIDO_VENDA_ITEM
alter TOTAL position 11;

	








    




    









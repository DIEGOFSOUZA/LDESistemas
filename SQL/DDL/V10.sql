﻿CREATE TABLE FABRICANTE_LOTE (
    ID INTEGER GENERATED BY DEFAULT AS IDENTITY,
    ID_NF INTEGER NOT NULL,
    ID_PRODUTO INTEGER NOT NULL,
    LOTE VARCHAR(100) NOT NULL,
    DT_PRODUCAO DATE,
    DT_VALIDADE DATE,
    QTDE NUMERIC(15,4) NOT NULL,
    QTDE_DISPONIVEL NUMERIC(15,4) NOT NULL);

ALTER TABLE FABRICANTE_LOTE
ADD CONSTRAINT PK_FABRICANTE_LOTE
PRIMARY KEY (ID);

ALTER TABLE FABRICANTE_LOTE
ADD CONSTRAINT FK_FABRICANTE_LOTE_1
FOREIGN KEY (ID_NF)
REFERENCES NOTA_ENTRADA(ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE FABRICANTE_LOTE
ADD CONSTRAINT FK_FABRICANTE_LOTE_2
FOREIGN KEY (ID_PRODUTO)
REFERENCES PRODUTO(CODIGO)
ON DELETE CASCADE
ON UPDATE CASCADE;

CREATE TABLE LOTE_MATPRIMA_FABRICANTE (
    ID INTEGER GENERATED BY DEFAULT AS IDENTITY,
    ID_LOTEMATPRIMA INTEGER NOT NULL,
    ID_LOTEFABRICANTE INTEGER NOT NULL,
    QTDE NUMERIC(15,4) NOT NULL);

ALTER TABLE LOTE_MATPRIMA_FABRICANTE
ADD CONSTRAINT PK_LOTE_MATPRIMA_FABRICANTE
PRIMARY KEY (ID);

ALTER TABLE LOTE_MATPRIMA_FABRICANTE
ADD CONSTRAINT FK_LOTE_MATPRIMA_FABRICANTE_1
FOREIGN KEY (ID_LOTEMATPRIMA)
REFERENCES LOTE_MATPRIMA(ID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE LOTE_MATPRIMA_FABRICANTE
ADD CONSTRAINT FK_LOTE_MATPRIMA_FABRICANTE_2
FOREIGN KEY (ID_LOTEFABRICANTE)
REFERENCES FABRICANTE_LOTE(ID)
ON DELETE CASCADE
ON UPDATE CASCADE;


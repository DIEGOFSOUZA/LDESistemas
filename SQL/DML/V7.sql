﻿INSERT INTO HISTORICO (CHAVE, DESCRICAO, DEBITO_CREDITO, ID_GRUPO) VALUES ('1.015', 'DUPLICATA RECEBIDA - PIX', 'Crédito', 1);

INSERT INTO HISTORICO (CHAVE, DESCRICAO, DEBITO_CREDITO, ID_GRUPO) VALUES ('1.016', 'VENDA - PIX', 'Crédito', 1);

INSERT INTO HISTORICO (CHAVE, DESCRICAO, DEBITO_CREDITO, ID_GRUPO) VALUES ('3.022', 'DUPLICATA PAGA - PIX', 'Débito', 3);

update CONTROL C
set C.DB_VERSAO = 7;
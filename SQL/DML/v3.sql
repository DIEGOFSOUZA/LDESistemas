INSERT INTO CONTROL (DB_VERSAO, SISTEMA_VERSAO, EM_MANUTENCAO) VALUES (3, 36, 'N');

update control c
set c.db_versao = 3,
c.sistema_versao = 36,
c.em_manutencao = 'N';

update pdv_itens a
set a.qtde_disponivel = a.qtde;

update cliente a
set a.vl_credito = 0;

INSERT INTO HISTORICO (CHAVE, DESCRICAO, DEBITO_CREDITO, ID_GRUPO) VALUES ('1.014', 'VENDA - CREDITO DEV/TROCA', 'Débito', 5);

update cliente c
set c.cliente_default = 'S'
where c.codigo = 2;



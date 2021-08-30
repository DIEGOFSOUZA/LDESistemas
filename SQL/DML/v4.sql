update control c
set c.db_versao = 4;

INSERT INTO USUARIO_GRUPO (DESCRICAO, ATIVO, ACESSO_PDV, ACESSO_OP, ACESSO_FINANCEIRO) VALUES ('PADRAO', 1, 1, 1, 1);

update usuario u
set u.id_grupo = 1;
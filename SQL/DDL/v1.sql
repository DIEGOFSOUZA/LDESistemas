alter table PRODUTO 
add dt_cadastro date;

alter table PRECOVENDA_HISTORICO 
add dt_fim date;

alter table PRODUTO
add DESC_MAXIMO numeric(18,3);

alter table ORCAMENTO
add solicitacao blob sub_type 1,
add liberado char(3),
add tipo_liberacao varchar(50);

alter table ORCAMENTO
add USU_LIBEROU varchar(100);

alter table nota_entrada
add historico varchar(60);


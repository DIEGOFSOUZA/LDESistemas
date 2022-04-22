update lote l
set l.dt_fim_producao = l.emissao
where l.dt_fim_producao is null;

update CONTROL C
set C.DB_VERSAO = 10;

update lote l
set l.dt_fim_producao = l.emissao
where l.dt_fim_producao is null;

update lote_itens i
set i.vl_custo = (select cast(coalesce(sum(c.custo_total)*i.qtde,0) as numeric(15,2)) custo from produto_composicao c where c.id_produto=i.codpro);

update lote_itens i
set i.cod_um = (select p.cod_unidade from produto p where p.codigo=i.codpro)
where i.cod_um is null;

update lote l
 set l.status = 'PRODUZIDA'
where l.status = 'FINALIZADO';


update CONTROL C
set C.DB_VERSAO = 10;

commit work;

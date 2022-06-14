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

/*  --rodar para empresa Takano
update empresa e
set
  e.rastreabilidade_producao = true,
  e.bloq_venda_negativo = true, 
  e.bloq_produc_negativo = true
where e.codigo = 1;

insert into FABRICANTE_LOTE (ID_NF, ID_PRODUTO, LOTE, DT_PRODUCAO, DT_VALIDADE, QTDE, QTDE_DISPONIVEL)
select max(A.ID) ID_NF, A.ID_PRODUTO, 'INICIAL' LOTE, current_date DT_PRODUCAO,
       dateadd(month, 1, current_date) DT_VALIDADE, A.QTDE_ESTOQUE, A.QTDE_ESTOQUE DISPONIVEL
from (select N.ID, NI.ID_PRODUTO, P.QTDE_ESTOQUE
      from NOTA_ENTRADA N
      left join NOTA_ENTRADA_ITENS NI on (NI.ID_NOTAENTRADA = N.ID)
      left join PRODUTO P on (P.CODIGO = NI.ID_PRODUTO)
      where NI.ID_PRODUTO in (select P.CODIGO
                              from PRODUTO P
                              where P.TIPO_PRODUTO in ('A', 'MP') and
                                    P.QTDE_ESTOQUE > 0)
      order by NI.ID_PRODUTO, N.ID desc) A
group by A.ID_PRODUTO, A.QTDE_ESTOQUE;


insert into FABRICANTE_LOTE (ID_NF, ID_PRODUTO, LOTE, DT_PRODUCAO, DT_VALIDADE, QTDE, QTDE_DISPONIVEL)
select cast(563 as integer)id, P.CODIGO, 'INICIAL',current_date,dateadd(month, 1, current_date),P.QTDE_ESTOQUE,P.QTDE_ESTOQUE
from PRODUTO P
where p.codigo in (30,33,34);
*/

update lote_itens i
set i.qtde_disponivel = 0;

update CONTROL C
set C.DB_VERSAO = 10;

commit work;

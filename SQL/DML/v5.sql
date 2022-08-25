update control c
set c.db_versao = 5;

update CLIENTE C
set C.DATA_ULTIMACOMPRA = (select first 1 PM.EMISSAO
                           from PDV_MASTER PM
                           where PM.ID_CLIENTE = C.CODIGO
                           order by PM.EMISSAO desc);


update PRODUTO_COMPOSICAO PC
set PC.CUSTO_UNIT = (select cast((coalesce(P.PRECO_CUSTO, 0) / coalesce(P.CONV_QTDE, 1)) as numeric(15,2))
                     from PRODUTO P
                     where P.CODIGO = PC.ID_MATPRIMA);


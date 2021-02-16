select a.TIPO,a.ID,a.EMISSAO,a.VL_TOTAL vl_bruto,
(a.VL_TOTAL - a.VL_DESCONTO) vl_liquido,
b.NOME_RAZAO cliente,e.NOME VENDEDORA,
cast( (select list(upper(f.FORMA_PAGTO)||': '||'R$ '||f.VALOR,'  ') from PDV_RECEBER f where f.tipo = a.TIPO and f.ID = a.ID) as varchar(500) ) formas_pagto
from PDV_MASTER a 
left outer join CLIENTE b on (b.codigo = a.ID_CLIENTE) 
left outer join FUNCIONARIO e on (e.codigo = a.ID_VENDEDOR) 
left outer join PDV_ITENS h on (h.tipo = a.tipo and h.id = a.id)
where a.EMISSAO between '01.01.2019' and 'today' 
and h.id_produto = 56
group by 1,2,3,4,5,6,7;


select a.TIPO,a.ID,a.ORDEM,cast(a.QTDE as integer) qtde,c.SIGLA unidade,
a.VL_UNITARIO,a.VL_DESCONTO,cast(a.VL_TOTAL as numeric(10,2)) vl_liquido,
b.CODIGO codpro,b.NOME
from PDV_MASTER d
left outer join PDV_ITENS a on (a.TIPO = d.TIPO and a.ID = d.ID)
left outer join PRODUTO b on (b.CODIGO = a.ID_PRODUTO)
left outer join UNIDADE c on (c.CODIGO = b.COD_UNIDADE)
where a.TIPO = %s and a.ID = %s

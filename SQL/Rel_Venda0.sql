select a.QTDE,c.SIGLA unidade,b.NOME descri_produto,a.VL_UNITARIO,a.VL_DESCONTO,a.VL_TOTAL,
e.NOME_RAZAO,e.ENDERECO,e.NUMERO,e.BAIRRO,e.CEP,e.CIDADE,e.UF,e.CPF_CNPJ,
e.DDD_FONE||'-'||e.TELEFONE1 telefone,e.DDD_CEL||'-'||e.CEL celular,e.EMAIL,e.RG_INSC,
d.ID venda,d.EMISSAO,d.ID_VENDEDOR||' - '||f.NOME vendedor,
iif(h.percent_acrescimo > 0,h.descricao||' - '||h.percent_acrescimo||'%',h.descricao) crediario,a.TIPO,a.ID,
cast( (select list(upper(x.FORMA_PAGTO)||': '||'R$ '||x.VALOR,'  ') from PDV_RECEBER x where x.forma_pagto <> 'CREDIARIO' and x.tipo = a.TIPO and x.ID = a.ID ) as varchar(500) ) formas_pagto,
(select sum(y.VALOR) from PDV_RECEBER y where y.forma_pagto <> 'DESCONTO' and y.tipo = a.TIPO and y.ID = a.ID) tot_pagar
from PDV_ITENS a
left outer join PRODUTO b on (b.CODIGO = a.ID_PRODUTO)
left outer join UNIDADE c on (c.CODIGO = b.COD_UNIDADE)
left outer join PDV_MASTER d on (d.ID = a.ID and d.TIPO = a.TIPO)
left outer join CLIENTE e on (e.CODIGO = d.ID_CLIENTE)
left outer join FUNCIONARIO f on (f.CODIGO = d.ID_VENDEDOR)
left outer join CONDPAGTO h on (h.CODIGO = d.ID_CREDIARIO)
where a.TIPO = '0' and a.ID = 3 ;


select a.VALOR,a.DT_VENC
from PDV_RECEBER a
where a.FORMA_PAGTO = 'CREDIARIO' ;

select a.*
from PDV_RECEBER a

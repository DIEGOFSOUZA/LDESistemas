select a.CODIGO,a.NOME,a.QTDE_ESTOQUE,
(select  sum(iif(b.ENTSAI = 'S',b.QTDE_FECHADA*-1,b.QTDE_FECHADA)) from PRO_MOVIMENTOPRODUTO(a.CODIGO) b) qtde_recalculo
from PRODUTO a
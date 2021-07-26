update PDV_MASTER a 
set a.STATUS = 'CANCELADA',
    a.MOTIVO_CANCELAMENTO = 'SOLICITACAO',
    a.USUARIO_CANCELAMENTO = 'ADMIN'
where a.TIPO = '0'
and a.ID = :id;

delete from pdv_receber pr
where pr.tipo = '0' and
pr.id = :id;

select 'INSERT INTO PDV_CANCELAMENTO (TIPO, ID_VENDA, ORDEM, ID_PRODUTO, QTDE, QTDE_BAIXA, DATA, USUARIO) VALUES ('||
''''||pi.tipo||''','||pi.id||','||pi.ordem||','||pi.id_produto||','||pi.qtde||','||pi.qtde_baixa||','''||current_date||''','||'''ADMIN'''||');'
from pdv_itens pi
where pi.tipo = '0' and
pi.id = :id
order by pi.ordem;
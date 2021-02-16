select a.ID,sum(a.valor)
from PDV_RECEBER a
where a.ID = 2
group by 1;

select a.id,a.VL_TOTAL,
sum(b.VALOR) valor
from PDV_MASTER a
left outer join PDV_RECEBER b on (b.TIPO = a.TIPO and b.ID = a.ID)
/*where b.FORMA_PAGTO <> 'DESCONTO'*/
where b.ORDEM <> '1/1'
and b.VL_PAGO is not null
group by 1,2
having sum(b.VALOR) > a.VL_TOTAL

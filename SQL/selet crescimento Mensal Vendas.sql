select
  v.ano_mes,
  v.total_mes_ant,
  v.total_mes,
  v.dif,
  cast(cast(v.dif as numeric (15,4)) / cast(v.total_mes_ant as numeric (15,4)) * 100.00 as numeric (15,6)) pec_crescimento
from (
  select
    v.ano_mes,
    v.total_mes_ant,
    v.total_mes,
    v.total_mes - v.total_mes_ant dif
  from (
    select
      v.ano_mes,
      lag(v.total_mes) over() total_mes_ant,
      v.total_mes
    from (
      select
        left(v.emissao,7) ano_mes,
        sum(v.vl_total) total_mes
      from pdv_master v
      where v.status = 'EFETUADA' and
      v.emissao >= '01.12.'||'2020'
      group by 1) v) v) v;

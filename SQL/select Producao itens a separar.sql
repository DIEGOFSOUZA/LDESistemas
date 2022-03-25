with recursive r as (
  select
    p.codigo,
    p.nome,
    0 as id_mestre,
    0 as quantidade_mestre,
    cast(:pQuantidade as numeric(15,4)) quantidade,
    cast(:pQuantidade as numeric(15,4)) quantidade_total
  from produto p
  where p.codigo = :pIdProduto

  union all

  select
    pc.id_matprima,
    p.nome,
    pc.id_produto,
    r.quantidade_total quantidade_mestre,
    pc.qtde,
    pc.qtde * r.quantidade_total

  from r
  join produto_composicao pc on pc.id_produto = r.codigo
  join produto p on p.codigo = pc.id_matprima

)

select
  r.codigo,
  r.nome,
  sum(r.quantidade_total) quantidade_a_separar,
  'Use '||list((r.quantidade * r.quantidade_mestre)||' do ID '||r.codigo||' para montar '||r.quantidade_mestre||' do ID '||r.id_mestre,', ')
from r
where r.codigo <> :pIdProduto
group by 1,2
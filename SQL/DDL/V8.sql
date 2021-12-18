SET TERM ^ ;

CREATE OR ALTER trigger tri_au_produto_composicao_0 for produto_composicao
active after update position 0

as
begin
  execute procedure PRO_UPD_PRODUTO_CUSTO(new.ID_PRODUTO,
      coalesce((select cast(sum(PC.CUSTO_TOTAL) as numeric(10,2)) from PRODUTO_COMPOSICAO PC where PC.ID_PRODUTO = new.ID_PRODUTO), 0));
end^

SET TERM ; ^

alter table PRODUTO 
add dt_cadastro date;

alter table PRECOVENDA_HISTORICO 
add dt_fim date;

alter table PRODUTO
add DESC_MAXIMO numeric(18,3);

alter table ORCAMENTO
add solicitacao blob sub_type 1,
add liberado char(3),
add tipo_liberacao varchar(50);

alter table ORCAMENTO
add USU_LIBEROU varchar(100);

alter table nota_entrada
add historico varchar(60);

SET TERM ^ ;

CREATE OR ALTER procedure pro_hist_precocusto (
    idproduto integer,
    preco numeric(10,2),
    idnf integer,
    data date)
as
BEGIN
  INSERT INTO PRECOCUSTO_HISTORICO (ID, ID_PROD, PRECO_NOVO, DATA,
    ID_NFENTRADA)
  VALUES (
    '0', 
    :IDPRODUTO, 
    :PRECO,
    :DATA, 
    :IDNF
  );  
END^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger tri_ai_estoque for nota_entrada_itens
active after insert position 0
AS
begin
  if (NEW.QTDE is not null) then
  begin
    execute procedure PRO_ENTRADA_SAIDA(new.ID_PRODUTO,new.QTDE,'+') ;
  end
  
  if ( (NEW.PRECO_CUSTO > 0) and (NEW.PRECO_CUSTO is not null) ) then
  begin
    execute procedure PRO_UPD_PRODUTO_CUSTO(new.ID_PRODUTO,new.PRECO_CUSTO);
    execute procedure PRO_HIST_PRECOCUSTO (new.ID_PRODUTO, new.PRECO_CUSTO, new.ID_NOTAENTRADA,current_date);
  end
end^

SET TERM ; ^

SET TERM ^ ;

CREATE OR ALTER trigger tri_au_estoque for nota_entrada_itens
active after update position 0
AS
begin
    execute procedure PRO_ENTRADA_SAIDA(old.ID_PRODUTO,old.QTDE,'-') ;
	execute procedure PRO_ENTRADA_SAIDA(new.ID_PRODUTO,new.QTDE,'+') ;
  
    if ( (NEW.PRECO_CUSTO > 0) and (NEW.PRECO_CUSTO is not null) ) then
    begin
      execute procedure PRO_UPD_PRODUTO_CUSTO(new.ID_PRODUTO,new.PRECO_CUSTO);
      execute procedure PRO_HIST_PRECOCUSTO (new.ID_PRODUTO, new.PRECO_CUSTO, new.ID_NOTAENTRADA,current_date);
    end
end^

SET TERM ; ^



ALTER TABLE PRECOCUSTO_HISTORICO DROP USUARIO;





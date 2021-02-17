select 'insert into PRECOVENDA_HISTORICO(ID,ID_PRODUTO,USUARIO,PRECO_NOVO,DATA)
       VALUES ('||0||','||a.CODIGO||','''||'SISTEMA'||''','||a.PRECO_VENDA||','''||'14.10.2019'||''');'
FROM PRODUTO a;



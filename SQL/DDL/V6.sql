DROP TABLE CONTROL;

CREATE TABLE CONTROL (
    DB_VERSAO INTEGER NOT NULL,
    EM_MANUTENCAO INTEGER NOT NULL);

COMMENT ON COLUMN CONTROL.EM_MANUTENCAO IS
'1 = em manutencao, 0 = livre';


SET TERM ^ ;

CREATE OR ALTER procedure PRO_GET_SCRIPT (
    VERSAO integer not null)
returns (
    SCRIPT_DDL blob sub_type 1 segment size 80,
    SCRIPT_DML blob sub_type 1 segment size 80)
as
declare variable SQL blob sub_type 1 segment size 80;
begin
  sql = 'select s.ddl, s.dml from script s where s.versao = '||:versao;

   EXECUTE STATEMENT sql
   ON EXTERNAL '127.0.0.1/3060:C:\projetos\bancos\FB30\ldecliente.fdb'
   AS USER 'SYSDBA'
   PASSWORD 'masterkey'
   INTO :script_ddl,:script_dml;

  suspend;
end^

SET TERM ; ^




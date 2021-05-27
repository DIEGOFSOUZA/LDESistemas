unit USM_PDV;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, 
  Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet, System.Variants;

type
  TsmPDV = class(TDSServerModule)
    fdqryOrcamento: TFDQuery;
    fdqryOrItem: TFDQuery;
    fdqryOrPagar: TFDQuery;
    dspOrcamento: TDataSetProvider;
    dsOrcamento: TClientDataSet;
    sOrcamento: TDataSource;
    TranOrcamento: TFDTransaction;
    fdqryOrcamentoID: TIntegerField;
    fdqryOrcamentoEMISSAO: TDateField;
    fdqryOrcamentoID_CLIENTE: TIntegerField;
    fdqryOrcamentoID_FORMAPAGTO: TIntegerField;
    fdqryOrcamentoUSUARIO: TStringField;
    fdqryOrcamentoSTATUS: TStringField;
    fdqryOrItemID_ORCAMENTO: TIntegerField;
    fdqryOrItemORDEM: TIntegerField;
    fdqryOrItemID_PROD: TIntegerField;
    fdqryOrItemQTDE: TFMTBCDField;
    fdqryOrItemVUNIT: TFMTBCDField;
    fdqryOrItemVDESC: TFMTBCDField;
    fdqryOrPagarID_ORCAMENTO: TIntegerField;
    fdqryOrPagarPARCELA: TStringField;
    fdqryOrPagarVALOR: TFMTBCDField;
    fdqryOrPagarVENCTO: TDateField;
    fdqryOrcamentoDT_VALIDADE: TDateField;
    fdqryOrItemUNID: TStringField;
    fdqryOrItemQTDE_BAIXA: TFMTBCDField;
    fdqryOrcamentoSOLICITACAO: TMemoField;
    fdqryOrcamentoLIBERADO: TStringField;
    fdqryOrcamentoTIPO_LIBERACAO: TStringField;
    fdqryOrcamentoUSU_LIBEROU: TStringField;
  private
    { Private declarations }
  public
    function setOrcamento(const BD: string; pID: integer; const Dados: OleVariant): Boolean;
    function getOrcamento(const BD: string; pID: integer): OleVariant;

    function setFechaVenda(const BD: string; Dados: OleVariant; pID, pTipo : string): Boolean;
    function setCancelarVenda(const BD: string; pID : Integer; pTipo,pMotivo,pUsuario : string) : Boolean ;
    function setDevolucao(const BD: string; pUsuario: string; pVlCredito: Currency; pIDCliente: integer; pcds: OleVariant; pIDCaixa:integer): Boolean;
    function setAtualizarTabelas(const BD: string; aIdOrcamento: Integer; aIdCliente: Integer; aCredUtilizado: Currency): Boolean;

  end;
const
    SQL_Fields = 'with Campos as( '+
                 'SELECT a.RDB$FIELD_NAME NOME_DO_CAMPO '+
                 'FROM RDB$RELATION_FIELDS a '+
                 'left join RDB$FIELDS b on (b.RDB$FIELD_NAME = a.RDB$FIELD_SOURCE) '+
                 'WHERE a.RDB$RELATION_NAME = %s '+ {Tabela}
                 'and b.RDB$COMPUTED_SOURCE is null '+ {Ignora Campo calculado}
                 'ORDER BY RDB$FIELD_POSITION '+
                 ') '+
                 'select list(trim(nome_do_campo),'','') nome_campo '+
                 'from campos' ;

implementation

uses
  uServerDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TsmPDV }

function TsmPDV.setAtualizarTabelas(const BD: string; aIdOrcamento: Integer; aIdCliente: Integer; aCredUtilizado: Currency): Boolean;
const
  SQLUpCredito = 'update cliente c set c.vl_credito = c.vl_credito - :aCredUtilizado where c.codigo = :codigo';
  SQLUpOrcamento = 'update ORCAMENTO a set a.STATUS = ''VENDIDO'' where a.ID = :id';
var
  DM: TServerDM;
begin
  Result := False;
  DM := TServerDM.Create(BD);
  try
    try
      if (aIdOrcamento > 0) then
      begin
        DM.Gravar.SQL.Clear;
        DM.Gravar.SQL.Add(SQLUpOrcamento);
        DM.Gravar.Params.ParamByName('id').AsInteger := aIdOrcamento;
        DM.Gravar.ExecSQL;
      end;

      if (aIdCliente > 0) then
      begin
        DM.Gravar.SQL.Clear;
        DM.Gravar.SQL.Add(SQLUpCredito);
        DM.Gravar.Params.ParamByName('aCredUtilizado').AsCurrency := aCredUtilizado;
        DM.Gravar.Params.ParamByName('codigo').AsInteger := aIdCliente;
        DM.Gravar.ExecSQL;
      end;
      Result := True;
    except
      Result := False;
    end;
  finally
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TsmPDV.setCancelarVenda(const BD: string; pID: Integer; pTipo, pMotivo,
  pUsuario: string): Boolean;
const
      SQL_MASTER =     'update PDV_MASTER a '+
                       'set a.STATUS = ''CANCELADA'','+
                       '    a.MOTIVO_CANCELAMENTO = %s,'+
                       '    a.USUARIO_CANCELAMENTO = %s '+
                       'where a.TIPO = %s '+
                       'and a.ID = %s' ;

      SQL_DELRECEBER = 'delete from pdv_receber pr '+
                       'where pr.tipo = %s and '+
                       'pr.id = %s';

      SQL_GETITENS  = 'select pi.tipo,pi.id,pi.ordem,pi.id_produto,pi.qtde,pi.qtde_baixa '+
                      'from pdv_itens pi '+
                      'where pi.tipo = %s and '+
                      'pi.id = %s '+
                      'order by pi.ordem';


      SQL_INSERTCANC = 'INSERT INTO PDV_CANCELAMENTO (TIPO, ID_VENDA, ORDEM, ID_PRODUTO, QTDE, QTDE_BAIXA, DATA, USUARIO) '+
                       'VALUES (:TIPO, :ID_VENDA, :ORDEM, :ID_PRODUTO, :QTDE, :QTDE_BAIXA, :DATA, :USUARIO);';
var
  DM: TServerDM;
  lTemp: TClientDataSet;
  lQuery: TFDQuery;
begin
  DM := TServerDM.Create(BD);
  lTemp := TClientDataSet.Create(nil);
  lQuery := TFDQuery.Create(nil);
  lQuery.Connection := DM.Conexao;
  try
    lTemp.Close;
    lTemp.Data := DM.LerDataSet(Format(SQL_GETITENS, [QuotedStr(pTipo), IntToStr(pID)]));
    try
      DM.Executar(Format(SQL_MASTER, [QuotedStr(pMotivo), QuotedStr(pUsuario), QuotedStr(pTipo), IntToStr(pID)]));

      lTemp.First;
      while not lTemp.Eof do
      begin
        lQuery.SQL.Clear;
        lQuery.SQL.Add(SQL_INSERTCANC);
        lQuery.Params.ParamByName('tipo').AsString := lTemp.FieldByName('TIPO').AsString;
        lQuery.Params.ParamByName('id_venda').AsInteger := lTemp.FieldByName('ID').AsInteger;
        lQuery.Params.ParamByName('ordem').AsInteger := lTemp.FieldByName('ORDEM').AsInteger;
        lQuery.Params.ParamByName('id_produto').AsInteger := lTemp.FieldByName('ID_PRODUTO').AsInteger;
        lQuery.Params.ParamByName('qtde').AsFloat := lTemp.FieldByName('QTDE').AsFloat;
        lQuery.Params.ParamByName('qtde_baixa').AsFloat := lTemp.FieldByName('QTDE_BAIXA').AsFloat;
        lQuery.Params.ParamByName('data').AsDate := Date;
        lQuery.Params.ParamByName('usuario').AsString := pUsuario;
        lQuery.ExecSQL;
        lTemp.Next;
      end;

      DM.Executar(Format(SQL_DELRECEBER, [QuotedStr(pTipo), IntToStr(pID)]));

      Result := True;
    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create('Servidor' + #13 + E.Message);
      end;
    end;
  finally
    FreeAndNil(lTemp);
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TsmPDV.getOrcamento(const BD: string; pID: integer): OleVariant;
var
  DM: TServerDM;
  lID: Integer;
begin
  lID := pID;
  DM := TServerDM.Create(BD);
  try
    fdqryOrcamento.Connection := DM.Conexao;
    fdqryOrItem.Connection := DM.Conexao;
    fdqryOrPagar.Connection := DM.Conexao;
    TranOrcamento.Connection := DM.Conexao;
    TranOrcamento.StartTransaction;

    if (lID = 0) then
      lID := DM.LerDataSetInteger('select max(ID) id from ORCAMENTO', 'id');

    if ((lID > 0) or (lID = -1))then
    begin
      fdqryOrcamento.ParamByName('id').AsInteger := lId;

      dsOrcamento.close;
      dsOrcamento.Open;
      Result := dsOrcamento.Data;
    end
    else
      raise Exception.Create('Documento não encontrado.');

  finally
    if TranOrcamento.Active then
      TranOrcamento.Commit;
    dsOrcamento.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TsmPDV.setDevolucao(const BD: string; pUsuario: string; pVlCredito: Currency; pIDCliente: integer; pcds: OleVariant; pIDCaixa:integer): Boolean;
const
  SQLInsertDev = 'insert into PDV_DEVOLUCAO (TIPO, ID_VENDA, ORDEM, ID_PRODUTO, QTDE, QTDE_BAIXA, DATA, USUARIO)'+sLineBreak+
                 'values (:tipo, :id_venda, :ordem, :id_produto, :qtde, :qtde_baixa, :data, :usuario)';

  SQLUpItens = 'update PDV_ITENS pi '+
               'set pi.QTDE_DISPONIVEL = :QTDE_DISPONIVEL '+
               'where pi.TIPO = :TIPO and '+
               '      pi.ID = :ID and '+
               '      pi.ORDEM = :ORDEM';

  SQLUpCredito = 'update cliente c '+
                 'set c.vl_credito = c.vl_credito + :credito '+
                 'where c.codigo = :codigo';

  SQLInsertSangria = 'INSERT INTO CAIXA_ENT_SAI (ID_CAIXA, FORMA_PAGTO, VALOR, DATA_HORA, USUARIO, TIPO, OBS) '+
                     'VALUES (:ID_CAIXA, :FORMA_PAGTO, :VALOR, :DATA_HORA, :USUARIO, :TIPO, :OBS)';
var
  DM: TServerDM;
  txt: string;
  lQtdeBaixa, lQtdeDisponivel: Extended;
  lQuery: TFDQuery;
  lCds: TClientDataSet;
  lIdVenda: Integer;
begin
  Result := False;
  DM := TServerDM.Create(BD);
  lQuery := TFDQuery.Create(nil);
  lCds := TClientDataSet.Create(nil);
  try
    lCds.Close;
    lCds.Data := pcds;
    lIdVenda := lCds.FieldByName('ID').AsInteger;
    try
      lQuery.Connection := DM.Conexao;

      lCds.First;
      while not lCds.Eof do
      begin
        lQuery.SQL.Clear;
        lQuery.SQL.Add(SQLInsertDev);
        lQuery.Params.ParamByName('tipo').AsString := lCds.FieldByName('TIPO').AsString;
        lQuery.Params.ParamByName('id_venda').AsInteger := lCds.FieldByName('ID').AsInteger;
        lQuery.Params.ParamByName('ordem').AsInteger := lCds.FieldByName('ORDEM').AsInteger;
        lQuery.Params.ParamByName('id_produto').AsInteger := lCds.FieldByName('ID_PROD').AsInteger;
        lQuery.Params.ParamByName('qtde').AsFloat := lCds.FieldByName('QTDE').AsFloat;
        lQuery.Params.ParamByName('qtde_baixa').AsFloat := lCds.FieldByName('QTDE_BAIXA').AsFloat;
        lQuery.Params.ParamByName('data').AsDate := Date;
        lQuery.Params.ParamByName('usuario').AsString := pUsuario;
        lQuery.ExecSQL;   //Gera registro em tabela PDV_DEVOLUCAO

        lQuery.SQL.Clear;
        lQuery.SQL.Add(SQLUpItens);
        lQuery.Params.ParamByName('tipo').AsString := lCds.FieldByName('TIPO').AsString;
        lQuery.Params.ParamByName('id').AsInteger := lCds.FieldByName('ID').AsInteger;
        lQuery.Params.ParamByName('ordem').AsInteger := lCds.FieldByName('ORDEM').AsInteger;
        lQuery.Params.ParamByName('qtde_disponivel').AsFloat := lCds.FieldByName('NOVA_QTDE_DISP').AsFloat;
        lQuery.ExecSQL; //Atualiza qtde disponivel em tabela PDV_ITENS
        lCds.Next;
      end;

      if (pIDCaixa = 0) then //vale
      begin
        lQuery.SQL.Clear;
        lQuery.SQL.Add(SQLUpCredito);
        lQuery.Params.ParamByName('credito').AsCurrency := pVlCredito;
        lQuery.Params.ParamByName('codigo').AsInteger := pIDCliente;
        lQuery.ExecSQL;
      end
      else
      begin  //Devolucao do dinheiro
        lQuery.SQL.Clear;
        lQuery.SQL.Add(SQLInsertSangria);
        lQuery.Params.ParamByName('ID_CAIXA').AsInteger := pIDCaixa;
        lQuery.Params.ParamByName('FORMA_PAGTO').AsString := 'DINHEIRO';
        lQuery.Params.ParamByName('VALOR').AsCurrency := pVlCredito*-1;
        lQuery.Params.ParamByName('DATA_HORA').AsString := FormatDateTime('dd.mm.yyyy hh:mm',Now);
        lQuery.Params.ParamByName('USUARIO').AsString := Copy(pUsuario,1,Pos('|',pUsuario)-1);
        lQuery.Params.ParamByName('TIPO').AsString := 'ENT/SAIDA CAIXA';
        lQuery.Params.ParamByName('OBS').AsString := 'ESTORNO DE VALOR REFERENTE A DEVOLUCAO DA VENDA Nº '+lIdVenda.ToString;
        lQuery.ExecSQL; //Gera sangria no caixa para Devolução de valor R$
      end;

      Result := True;
    except
      Result := False;
    end;
  finally
    FreeAndNil(lCds);
    FreeAndNil(lQuery);
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TsmPDV.setFechaVenda(const BD: string; Dados: OleVariant; pID,
  pTipo: string): Boolean;
var
  txt: string;
  DM: TServerDM;
  CampoID, CampoTipo: TCampoValor;
begin
  try
    try
      DM := TServerDM.Create(BD);

      {Tabela Master}
      if Dados[0] <> Null then
      begin
        txt := DM.LerDataSetString(Format(SQL_Fields, [QuotedStr('PDV_MASTER')]), 'nome_campo');

        CampoID.Campo := 'ID';
        CampoID.Valor := pID;

        CampoTipo.Campo := 'TIPO';
        CampoTipo.Valor := pTipo;

        DM.GravarTabelaSimples(True, 'PDV_MASTER', txt, Dados[0], [CampoID, CampoTipo], [], True);
      end;

     {Tabela Detail}
      if Dados[1] <> null then
      begin
        txt := DM.LerDataSetString(Format(SQL_Fields, [QuotedStr('PDV_ITENS')]), 'nome_campo');
        DM.GravarTabelaSimples(False, 'PDV_ITENS', txt, Dados[1], [CampoID, CampoTipo], [], False);
      end;

     {Tabela Receber}
      if Dados[2] <> null then
      begin
        txt := DM.LerDataSetString(Format(SQL_Fields, [QuotedStr('PDV_RECEBER')]), 'nome_campo');
        DM.GravarTabelaSimples(False, 'PDV_RECEBER', txt, Dados[2], [CampoID, CampoTipo], [], False);
      end;

      DM.Commit;

      Result := True;
    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create('Servidor' + #13 + E.Message);
      end;
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TsmPDV.setOrcamento(const BD: string; pID: integer; const Dados: OleVariant): Boolean;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    fdqryOrcamento.Connection := DM.Conexao;
    fdqryOrItem.Connection := DM.Conexao;
    fdqryOrPagar.Connection := DM.Conexao;
    TranOrcamento.Connection := DM.Conexao;
    TranOrcamento.StartTransaction;

    try
      dsOrcamento.Data := Dados;
      dsOrcamento.ApplyUpdates(0);
      TranOrcamento.Commit;
      Result := True; //getNotaEntrada(BD, pID);
    except
      on e: Exception do
      begin
        TranOrcamento.Rollback;
        Result := False;
        raise Exception.Create(e.Message);
      end;
    end;
  finally
    dsOrcamento.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

end.


unit uSMProducao;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, 
  Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TSMProducao = class(TDSServerModule)
    FDTranGravar: TFDTransaction;
    fdqryLote: TFDQuery;
    fdqryLoteItens: TFDQuery;
    dspProducao: TDataSetProvider;
    dsProducao: TClientDataSet;
    sProducao: TDataSource;
    fdqryLoteID: TIntegerField;
    fdqryLoteLOTE: TStringField;
    fdqryLoteEMISSAO: TDateField;
    fdqryLoteVALIDADE: TDateField;
    fdqryLoteENTREGA: TDateField;
    fdqryLoteESTIMATIVA_PRONTO: TSQLTimeStampField;
    fdqryLoteOBS: TStringField;
    fdqryLoteSTATUS: TStringField;
    fdqryLoteGERA_MATPRIMA: TStringField;
    fdqryLoteUSUARIO: TStringField;
    fdqryLoteLOTE_ACERTO: TStringField;
    fdqryLoteItensID: TIntegerField;
    fdqryLoteItensID_LOTE: TStringField;
    fdqryLoteItensCODPRO: TIntegerField;
    fdqryLoteItensQTDE: TFMTBCDField;
    fdqryLoteItensQTDE_FECHADA: TFMTBCDField;
    fdqryLoteItensCOD_UM: TIntegerField;
    fdqryLoteItensENTSAI: TStringField;
    fdqryLoteItensDESCRI_ITEM: TStringField;
    fdqryLoteAUTORIZACAO: TStringField;
    cdsLER: TClientDataSet;
  private
    procedure getClientDataSet(aClientDataSet: OleVariant);
  public
    function setProducao(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
    function getProducao(const BD: string; pID: integer): OleVariant;
    function setMovimento(const BD: string; aUsuario: string; aCodPro: Integer;
        aQtde,aQtdeFechada: Double;
        aCodUND: Integer; aEntSai, aDescriProd: string): Boolean;
    function setProducao_Insert(const BD: string; aTabelas: OleVariant): Boolean;
    function setProducao_Cancelar(const BD: string; aIDLote: integer): Boolean;
    function getLote(const BD: string; aValue: integer): OleVariant;
  end;

implementation

uses
  uServerDM, System.Variants;




{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TSMProducao }

procedure TSMProducao.getClientDataSet(aClientDataSet: OleVariant);
begin
  cdsLER.Close;
  cdsLER.Data := aClientDataSet;
end;

function TSMProducao.getLote(const BD: string; aValue: integer): OleVariant;
const
  SQLLOTE = 'select l.id, l.emissao,l.dt_fim_producao,l.obs,l.usuario,'+
            'l.status,l.gera_matprima,l.lote_acerto,l.autorizacao '+
            'from lote l '+
            'where l.id = %s';
  SQLITEM = 'select I.ID_LOTE, I.LOTE, I.CODPRO, I.QTDE, I.QTDE_FECHADA, I.COD_UM, I.ENTSAI, I.DT_VALIDADE VALIDADE,'+
            '       I.VL_CUSTO CUSTO, P.NOME PRODUTO, U.SIGLA UNIDADE '+
            'from LOTE_ITENS I '+
            'left join PRODUTO P on (P.CODIGO = I.CODPRO) '+
            'left join UNIDADE U on (U.CODIGO = I.COD_UM) '+
            'where I.ID_LOTE = %s';
var
  DM: TServerDM;
  lLote, lItem: OleVariant;
begin
  Result := Null;
  DM := TServerDM.Create(BD);
  try
   try
      lLote := DM.LerDataSet(Format(SQLLOTE, [aValue.ToString]));
      lItem := DM.LerDataSet(Format(SQLITEM, [aValue.ToString]));
      Result := VarArrayOf([lLote, lItem]);
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TSMProducao.getProducao(const BD: string; pID: integer): OleVariant;
var
  DM: TServerDM;
  lID: Integer;
begin
  lID := pID;
  DM := TServerDM.Create(BD);
  try
    fdqryLote.Connection := DM.Conexao;
    fdqryLoteItens.Connection := DM.Conexao;
    FDTranGravar.Connection := DM.Conexao;
    FDTranGravar.StartTransaction;

    if (lID = 0) then
      lID := DM.LerDataSetInteger('select GEN_ID(GEN_LOTE,0) id from RDB$DATABASE;', 'id');

    if ((lID > 0) or (lID = -1)) then
    begin
      fdqryLote.ParamByName('id').AsInteger := lID;
      dsProducao.Close;
      dsProducao.Open;
      Result := dsProducao.Data;
    end
    else
      raise Exception.Create('Documento não encontrado.');
  finally
    if FDTranGravar.Active then
      FDTranGravar.Commit;
    dsProducao.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TSMProducao.setMovimento(const BD: string; aUsuario: string; aCodPro: Integer;
        aQtde,aQtdeFechada: Double;
        aCodUND: Integer; aEntSai, aDescriProd: string): Boolean;
var
  DM: TServerDM;
  SQLLote, SQLLoteItem: string;
  lHora, lDataBD, lData: string;
  lQtde,lQtdeFechada: Extended;
begin
  Result := False;
  DM := TServerDM.Create(BD);
  try
    try
      FormatSettings.DecimalSeparator := '.';
      lHora := FormatDateTime('hhmmss', Now);
      lDataBD := FormatDateTime('dd.mm.yyyy', date);
      lData := FormatDateTime('dd/mm/yyyy', date);
      lQtde := aQtde;
      lQtdeFechada := aQtdeFechada;
      if (aEntSai = 'SAIDA') then
      begin
        lQtde := lQtde *  - 1;
        lQtdeFechada := lQtdeFechada *  - 1;
      end
      else
      begin
        lQtde := aQtde;
        lQtdeFechada := aQtdeFechada;
      end;


      SQLLote := 'insert into LOTE (ID, LOTE, EMISSAO, STATUS, GERA_MATPRIMA, USUARIO, LOTE_ACERTO) '+
                 'values (0, '+QuotedStr('PROD'+lHora)+', '+QuotedStr(lDataBD)+', '+QuotedStr('FINALIZADO')+', '+QuotedStr('N')+', '+
                        QuotedStr(aUsuario+'|'+lData+'|'+lHora)+', '+QuotedStr('N')+')';
      DM.Executar(SQLLote);

      SQLLoteItem := 'insert into LOTE_ITENS (ID, ID_LOTE, CODPRO, QTDE, QTDE_FECHADA, COD_UM, ENTSAI, DESCRI_ITEM) '+
                     'values (0, '+QuotedStr('PROD'+lHora)+', '+aCodPro.ToString+', '+FormatFloat('##0.000',lQtde)+', '+
                      FormatFloat('##0.000',lQtdeFechada)+', '+aCodUND.ToString+', '+QuotedStr(aEntSai)+', '+
                      QuotedStr(aDescriProd)+')';
      DM.Executar(SQLLoteItem);
      Result := True;
    except
      Result := False;
    end;
  finally
    DM.FecharConexao;
    FreeAndNil(DM);
  end;

end;

function TSMProducao.setProducao(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    fdqryLote.Connection := DM.Conexao;
    fdqryLoteItens.Connection := DM.Conexao;
    FDTranGravar.Connection := DM.Conexao;
    FDTranGravar.StartTransaction;
    try
      dsProducao.Data := Dados;
      dsProducao.ApplyUpdates(0);
      FDTranGravar.Commit;
      Result := getProducao(BD, pID);
    except
      on e: Exception do
      begin
        FDTranGravar.Rollback;
        raise Exception.Create(e.Message);
      end;
    end;
  finally
    dsProducao.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TSMProducao.setProducao_Cancelar(const BD: string;
  aIDLote: integer): Boolean;
const
  delete_MP = 'delete from lote_matprima m where m.id_lote_item = %s';
  upd_item  = 'update lote_itens i '+
              'set i.qtde_fechada = 0 '+
              'where i.id_lote = %s';
  upd_lote  = 'update lote l '+
              'set l.status = ''CANCELADA'' '+
              'where l.id = %s';
  sql_itens = 'select i.id from lote_itens i '+
              'where i.id_lote = %s';
var
  DM: TServerDM;
begin
  Result := False;
  DM := TServerDM.Create(BD);
  try
    try
      cdsLER.Close;
      cdsLER.Data := DM.LerDataSet(Format(sql_itens, [aIDLote.ToString]));
      if not cdsLER.IsEmpty then
      begin
        cdsLER.First;
        while not cdsLER.Eof do
        begin
          DM.Gravar.SQL.Clear;
          DM.Gravar.SQL.Add(Format(delete_MP, [cdsLER.FieldByName('id').AsString]));
          DM.Gravar.ExecSQL;
          cdsLER.Next;
        end;
      end;

      DM.Gravar.SQL.Clear;
      DM.Gravar.SQL.Add(Format(upd_item, [aIDLote.ToString]));
      DM.Gravar.ExecSQL;

      DM.Gravar.SQL.Clear;
      DM.Gravar.SQL.Add(Format(upd_lote, [aIDLote.ToString]));
      DM.Gravar.ExecSQL;
      Result := True;
    except
      Result := False;
    end;
  finally
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TSMProducao.setProducao_Insert(const BD: string; aTabelas: OleVariant): Boolean;
const
  insert_lote = 'insert into LOTE (EMISSAO, DT_FIM_PRODUCAO, OBS, STATUS, GERA_MATPRIMA, USUARIO, LOTE_ACERTO) '+
                'values (:EMISSAO, :DT_FIM_PRODUCAO, :OBS, :STATUS, :GERA_MATPRIMA, :USUARIO, :LOTE_ACERTO) '+
                'returning ID '+
                '{into :ID}';
  insert_item = 'insert into LOTE_ITENS (ID_LOTE, LOTE, CODPRO, QTDE, QTDE_FECHADA, COD_UM, ENTSAI, DT_VALIDADE, VL_CUSTO) '+
                'values (:ID_LOTE, :LOTE, :CODPRO, :QTDE, :QTDE_FECHADA, :COD_UM, :ENTSAI, :DT_VALIDADE, :VL_CUSTO) '+
                'returning ID '+
                '{into :ID}';
  insert_mtpm = 'insert into LOTE_MATPRIMA (ID_LOTE_ITEM, ID_MATPRIMA, QTDE, QTDE_FECHADA) '+
                'values (:ID_LOTE_ITEM, :ID_MATPRIMA, :QTDE, :QTDE_FECHADA)';

  sql_insumos = 'select ID_MATPRIMA, QTDE from PRODUTO_COMPOSICAO c '+
                'where c.id_produto = %s';
var
  DM: TServerDM;
  lIDLote, lIdLoteItem: Integer;
begin
  Result := False;
  DM := TServerDM.Create(BD);
  try
    try
//      *****************LOTE******************************
      if (aTabelas[0] <> Null) then
      begin
        getClientDataSet(aTabelas[0]);
        DM.Gravar.SQL.Clear;
        DM.Gravar.SQL.Add(insert_lote);
        DM.Gravar.ParamByName('EMISSAO').AsDate := cdsLER.FieldByName('EMISSAO').AsDateTime;
        DM.Gravar.ParamByName('DT_FIM_PRODUCAO').AsDate := cdsLER.FieldByName('DT_FIM_PRODUCAO').AsDateTime;
        DM.Gravar.ParamByName('OBS').AsString := cdsLER.FieldByName('OBS').AsString;
        DM.Gravar.ParamByName('STATUS').AsString := cdsLER.FieldByName('STATUS').AsString;
        DM.Gravar.ParamByName('GERA_MATPRIMA').AsString := cdsLER.FieldByName('GERA_MATPRIMA').AsString;
        DM.Gravar.ParamByName('USUARIO').AsString := cdsLER.FieldByName('USUARIO').AsString;
        DM.Gravar.ParamByName('LOTE_ACERTO').AsString := cdsLER.FieldByName('LOTE_ACERTO').AsString;
        DM.Gravar.ExecSQL;
        lIDLote := DM.Gravar.Params[7].Value;
      end;

//      *****************LOTE_ITENS******************************
      if (aTabelas[1] <> Null) then
      begin
        getClientDataSet(aTabelas[1]);
        cdsLER.First;
        while not cdsLER.Eof do
        begin
          DM.Gravar.SQL.Clear;
          DM.Gravar.SQL.Add(insert_item);
          DM.Gravar.ParamByName('ID_LOTE').AsInteger := lIDLote;
          DM.Gravar.ParamByName('LOTE').AsString := cdsLER.FieldByName('LOTE').AsString;
          DM.Gravar.ParamByName('CODPRO').AsInteger := cdsLER.FieldByName('CODPRO').AsInteger;
          DM.Gravar.ParamByName('QTDE').AsFloat := cdsLER.FieldByName('QTDE').AsFloat;
          DM.Gravar.ParamByName('QTDE_FECHADA').AsFloat := cdsLER.FieldByName('QTDE_FECHADA').AsFloat;
          DM.Gravar.ParamByName('COD_UM').AsInteger := cdsLER.FieldByName('COD_UM').AsInteger;
          DM.Gravar.ParamByName('ENTSAI').AsString := cdsLER.FieldByName('ENTSAI').AsString;
          DM.Gravar.ParamByName('DT_VALIDADE').AsDate := cdsLER.FieldByName('VALIDADE').AsDateTime;
          DM.Gravar.ParamByName('VL_CUSTO').AsCurrency := cdsLER.FieldByName('CUSTO').AsCurrency;
          DM.Gravar.ExecSQL;
          lIdLoteItem := DM.Gravar.Params[9].Value;

//      *****************LOTE_MATPRIMA******************************
          DM.SQLLer.SQL.Clear;
          DM.SQLLer.Open(Format(sql_insumos, [cdsLER.FieldByName('CODPRO').AsString]));
          if not DM.SQLLer.IsEmpty then
          begin
            DM.SQLLer.First;
            while not DM.SQLLer.Eof do
            begin
              DM.Gravar.SQL.Clear;
              DM.Gravar.SQL.Add(insert_mtpm);
              DM.Gravar.ParamByName('ID_LOTE_ITEM').AsInteger := lIdLoteItem;
              DM.Gravar.ParamByName('ID_MATPRIMA').AsInteger := DM.SQLLer.FieldByName('ID_MATPRIMA').AsInteger;
              DM.Gravar.ParamByName('QTDE').AsFloat := DM.SQLLer.FieldByName('QTDE').AsFloat*cdsLER.FieldByName('QTDE').AsFloat;
              DM.Gravar.ParamByName('QTDE_FECHADA').AsFloat := 0;
              DM.Gravar.ExecSQL;
              DM.SQLLer.Next;
            end;
          end;
          cdsLER.Next;
        end;
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

end.


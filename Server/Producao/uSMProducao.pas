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
  private
    { Private declarations }
  public
    function setProducao(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
    function getProducao(const BD: string; pID: integer): OleVariant;
    function setMovimento(const BD: string; aUsuario: string; aCodPro: Integer; aQtde: Double;
        aCodUND: Integer; aEntSai, aDescriProd: string): Boolean;
  end;

implementation

uses
  UDM;


{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TSMProducao }

function TSMProducao.getProducao(const BD: string; pID: integer): OleVariant;
var
  DM: TDM;
  lID: Integer;
begin
  lID := pID;
  DM := TDM.Create(BD);
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

function TSMProducao.setMovimento(const BD: string; aUsuario: string; aCodPro: Integer; aQtde: Double;
        aCodUND: Integer; aEntSai, aDescriProd: string): Boolean;
var
  DM: TDM;
  SQLLote, SQLLoteItem: string;
  lHora, lDataBD, lData: string;
  lQtde: Double;
begin
  Result := False;
  DM := TDM.Create(BD);
  try
    try
      FormatSettings.DecimalSeparator := '.';
      lHora := FormatDateTime('hhmmss', Now);
      lDataBD := FormatDateTime('dd.mm.yyyy', date);
      lData := FormatDateTime('dd/mm/yyyy', date);
      lQtde := aQtde;
      if (aEntSai = 'SAIDA') then
        lQtde := lQtde*-1;


      SQLLote := 'insert into LOTE (ID, LOTE, EMISSAO, STATUS, GERA_MATPRIMA, USUARIO, LOTE_ACERTO) '+
                 'values (0, '+QuotedStr('PROD'+lHora)+', '+QuotedStr(lDataBD)+', '+QuotedStr('FINALIZADO')+', '+QuotedStr('N')+', '+
                        QuotedStr(aUsuario+'|'+lData+'|'+lHora)+', '+QuotedStr('N')+')';
      DM.Executar(SQLLote);

      SQLLoteItem := 'insert into LOTE_ITENS (ID, ID_LOTE, CODPRO, QTDE, QTDE_FECHADA, COD_UM, ENTSAI, DESCRI_ITEM) '+
                     'values (0, '+QuotedStr('PROD'+lHora)+', '+aCodPro.ToString+', '+FormatFloat('##0.000',lQtde)+', '+
                      FormatFloat('##0.000',lQtde)+', '+aCodUND.ToString+', '+QuotedStr(aEntSai)+', '+
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
  DM: TDM;
begin
  DM := TDM.Create(BD);
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

end.


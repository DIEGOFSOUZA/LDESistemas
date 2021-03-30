unit uSM_Financeiro;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Datasnap.DSProviderDataModuleAdapter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,System.Variants;

type
  TSM_Financeiro = class(TDSServerModule)
    TranGravar: TFDTransaction;
    fdqryForma: TFDQuery;
    fdqryParcelamento: TFDQuery;
    dspFormaPagto: TDataSetProvider;
    dsFormaPagto: TClientDataSet;
    sFormaPagto: TDataSource;
    fdqryFormaDESCRI: TStringField;
    fdqryFormaATIVO: TStringField;
    fdqryFormaUSO_PDV: TStringField;
    fdqryParcelamentoID_PAGTOFORMA: TIntegerField;
    fdqryParcelamentoID: TIntegerField;
    fdqryParcelamentoDESCRI: TStringField;
    fdqryParcelamentoNUM_PARCELAS: TIntegerField;
    fdqryParcelamentoINTV_PARCELAS: TIntegerField;
    fdqryParcelamentoPRIMEIRA_PARC: TIntegerField;
    fdqryParcelamentoACRESCIMO: TFMTBCDField;
    fdqryParcelamentoUSO_COMPRAS: TStringField;
    fdqryParcelamentoUSO_VENDAS: TStringField;
    fdqryFormaID_PAGTOFORMA: TIntegerField;
  private
    { Private declarations }
  public
    function setFormaPagto(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
    function getFormaPagto(const BD: string; pID: integer): OleVariant;
  end;

implementation

uses
  uServerDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TSM_Financeiro }

function TSM_Financeiro.getFormaPagto(const BD: string; pID: integer): OleVariant;
const
  SQL = 'SELECT r.ID_PAGTOFORMA,r.ID,r.DESCRI,r.NUM_PARCELAS,'+
        'r.INTV_PARCELAS,r.INTV_PARCELAS,r.PRIMEIRA_PARC,r.ACRESCIMO,'+
        'iif(r.USO_COMPRAS = ''S'',''Sim'',''Não'')uso_compras,iif(r.USO_VENDAS = ''S'',''Sim'',''Não'')uso_vendas '+
        'FROM PAGTO_PARCELAMENTO r '+
        'where r.ID_PAGTOFORMA = %s';
var
  DM: TServerDM;
  lID: Integer;
  lGrid : OleVariant;
begin
  lID := pID;
  lGrid := 'null';
  DM := TServerDM.Create(BD);
  try
    fdqryForma.Connection := DM.Conexao;
    fdqryParcelamento.Connection := DM.Conexao;
    TranGravar.Connection := DM.Conexao;
    TranGravar.StartTransaction;

    if (lID = 0) then
      lID := DM.LerDataSetInteger('select max(ID_PAGTOFORMA) id from PAGTO_FORMA', 'id');

    if ((lID > 0) or (lID = -1)) then
    begin
      fdqryForma.ParamByName('ID_PAGTOFORMA').AsInteger := lID;

      dsFormaPagto.close;
      dsFormaPagto.Open;

      lGrid := DM.LerDataSet(Format(SQL,[IntToStr(lID)])) ;

      Result := VarArrayOf([dsFormaPagto.Data,lGrid]) ;
    end
    else
    begin
      Result := VarArrayOf(['null','null']) ;
      raise Exception.Create('Documento não encontrado.');
    end;

  finally
    if TranGravar.Active then
      TranGravar.Commit;
    dsFormaPagto.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TSM_Financeiro.setFormaPagto(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    fdqryForma.Connection := DM.Conexao;
    fdqryParcelamento.Connection := DM.Conexao;
    TranGravar.Connection := DM.Conexao;
    TranGravar.StartTransaction;

    try
      dsFormaPagto.Data := Dados;
      dsFormaPagto.ApplyUpdates(0);
      TranGravar.Commit;
      Result := getFormaPagto(BD, pID);
    except
      on e: Exception do
      begin
        TranGravar.Rollback;
        Result := False;
        raise Exception.Create(e.Message);
      end;
    end;
  finally
    dsFormaPagto.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

end.


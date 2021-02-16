unit USM_PDV;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, 
  Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet;

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
  private
    { Private declarations }
  public
    function setOrcamento(const BD: string; pID: integer; const Dados: OleVariant): Boolean;
    function getOrcamento(const BD: string; pID: integer): OleVariant;
  end;

implementation

uses
  UDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TsmPDV }

function TsmPDV.getOrcamento(const BD: string; pID: integer): OleVariant;
var
  DM: TDM;
  lID: Integer;
begin
  lID := pID;
  DM := TDM.Create(BD);
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

function TsmPDV.setOrcamento(const BD: string; pID: integer; const Dados: OleVariant): Boolean;
var
  DM: TDM;
begin
  DM := TDM.Create(BD);
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


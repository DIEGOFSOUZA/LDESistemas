unit uSM_Pedido;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, 
  Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet;

type
  TSM_Pedido = class(TDSServerModule)
    fdqryPedVenda: TFDQuery;
    fdqryPedVendaItem: TFDQuery;
    fdqryPedVendaPagar: TFDQuery;
    dspPedVenda: TDataSetProvider;
    dsPedVenda: TClientDataSet;
    sPedVenda: TDataSource;
    TranGravar: TFDTransaction;
    fdqryPedVendaID_PEDVENDA: TIntegerField;
    fdqryPedVendaID_VENDEDOR: TIntegerField;
    fdqryPedVendaDT_EMISSAO: TDateField;
    fdqryPedVendaDT_ENTRADA: TDateField;
    fdqryPedVendaDT_ENTREGA: TDateField;
    fdqryPedVendaID_CLIENTE: TIntegerField;
    fdqryPedVendaCLI_CPFCNPJ: TStringField;
    fdqryPedVendaCLI_RGINSC: TStringField;
    fdqryPedVendaCLI_EMAIL: TStringField;
    fdqryPedVendaCLI_TELEFONE: TStringField;
    fdqryPedVendaCLI_F_CEP: TStringField;
    fdqryPedVendaCLI_F_END: TStringField;
    fdqryPedVendaCLI_F_NUM: TStringField;
    fdqryPedVendaCLI_F_COMPL: TStringField;
    fdqryPedVendaCLI_F_BAIRRO: TStringField;
    fdqryPedVendaCLI_E_CEP: TStringField;
    fdqryPedVendaCLI_E_END: TStringField;
    fdqryPedVendaCLI_E_NUM: TStringField;
    fdqryPedVendaCLI_E_COMPL: TStringField;
    fdqryPedVendaCLI_E_BAIRRO: TStringField;
    fdqryPedVendaDESCONTO: TFMTBCDField;
    fdqryPedVendaVL_DESCONTO: TFMTBCDField;
    fdqryPedVendaVL_FRETE: TFMTBCDField;
    fdqryPedVendaVL_O_CUSTOS: TFMTBCDField;
    fdqryPedVendaVL_TOTAL: TFMTBCDField;
    fdqryPedVendaItemID_PEDVENDA: TIntegerField;
    fdqryPedVendaItemORDEM: TIntegerField;
    fdqryPedVendaItemID_PROD: TIntegerField;
    fdqryPedVendaItemID_UNIDADE: TIntegerField;
    fdqryPedVendaItemQTDE: TFMTBCDField;
    fdqryPedVendaItemDESCONTO: TFMTBCDField;
    fdqryPedVendaItemVL_UNITARIO: TFMTBCDField;
    fdqryPedVendaItemVL_DESCONTO: TFMTBCDField;
    fdqryPedVendaItemVL_TOTAL: TFMTBCDField;
    fdqryPedVendaPagarID_PEDVENDA: TIntegerField;
    fdqryPedVendaPagarORDEM: TStringField;
    fdqryPedVendaPagarDT_VENC: TDateField;
    fdqryPedVendaPagarID_CONDPAGTO: TIntegerField;
    fdqryPedVendaPagarOBS: TStringField;
    fdqryPedVendaPagarVL_PARCELA: TFMTBCDField;
    fdqryPedVendaPagarVL_PAGO: TFMTBCDField;
    fdqryPedVendaPagarDTIME_BAIXA: TSQLTimeStampField;
    fdqryPedVendaPagarUSUARIO: TStringField;
    fdqryPedVendaREPRESENTANTE: TStringField;
    fdqryPedVendaCLIENTE: TStringField;
    fdqryPedVendaItemPRODUTO: TStringField;
    fdqryPedVendaItemUNIDADE: TStringField;
    fdqryPedVendaPagarPAGTO: TStringField;
  private
    { Private declarations }
  public
    function setPedVenda(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
    function getPedVenda(const BD: string; pID: integer): OleVariant;
  end;

implementation

uses
  UDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TSM_Pedido }



{ TSM_Pedido }

function TSM_Pedido.getPedVenda(const BD: string; pID: integer): OleVariant;
begin

end;

function TSM_Pedido.setPedVenda(const BD: string; pID: integer;
  const Dados: OleVariant): OleVariant;
var
  DM: TDM;
begin
  DM := TDM.Create(BD);
  try
    fdqryPedVenda.Connection := DM.Conexao;
    fdqryPedVendaItem.Connection := DM.Conexao;
    fdqryPedVendaPagar.Connection := DM.Conexao;
    TranGravar.Connection := DM.Conexao;
    TranGravar.StartTransaction;

    try
      dsPedVenda.Data := Dados;
      dsPedVenda.ApplyUpdates(0);
      TranGravar.Commit;
      Result := getPedVenda(BD, pID);
    except
      on e: Exception do
      begin
        TranGravar.Rollback;
        Result := False;
        raise Exception.Create(e.Message);
      end;
    end;
  finally
    dsPedVenda.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

end.


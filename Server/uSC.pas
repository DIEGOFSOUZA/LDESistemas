unit uSC;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSTCPServerTransport,
  Datasnap.DSHTTPCommon, Datasnap.DSHTTP, Datasnap.DSServer,
  Datasnap.DSCommonServer, Datasnap.DSAuth, IPPeerServer;

type
  TSC = class(TDataModule)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSHTTPService1: TDSHTTPService;
    DSServerClass1: TDSServerClass;
    DSServerClassCadastro: TDSServerClass;
    dsrvrclsNotaEntrada: TDSServerClass;
    dsrvrclsOrcamento: TDSServerClass;
    dsrvrclsFormaPagto: TDSServerClass;
    dsrvrclsPedVenda: TDSServerClass;
    dsrvrclsProducao: TDSServerClass;
    dsrvrclsProduto: TDSServerClass;
    dsrvrclsSaveInCloud: TDSServerClass;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure DSServerClassCadastroGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure dsrvrclsNotaEntradaGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure dsrvrclsOrcamentoGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure dsrvrclsFormaPagtoGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure dsrvrclsPedVendaGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure dsrvrclsProducaoGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure dsrvrclsProdutoGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
    procedure dsrvrclsSaveInCloudGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
  private
    { Private declarations }
  public
  end;

var
  SC: TSC;

implementation


{$R *.dfm}

uses
  Winapi.Windows, uSM, uSMCadastro, USMNota, USM_PDV, uSM_Financeiro, uSM_Pedido,
  uSMProducao, USMProduto, uSM_SaveInCloud;

procedure TSC.dsrvrclsFormaPagtoGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := uSM_Financeiro.TSM_Financeiro;
end;

procedure TSC.dsrvrclsNotaEntradaGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := USMNota.TSMNota;
end;

procedure TSC.dsrvrclsOrcamentoGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := USM_PDV.TsmPDV;
end;

procedure TSC.dsrvrclsPedVendaGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := uSM_Pedido.TSM_Pedido;
end;

procedure TSC.dsrvrclsProducaoGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := uSMProducao.TSMProducao;
end;

procedure TSC.dsrvrclsProdutoGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := USMProduto.TSMProduto;
end;

procedure TSC.dsrvrclsSaveInCloudGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass := uSM_SaveInCloud.TSM_SaveInCloud;
end;

procedure TSC.DSServerClass1GetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := uSM.TSM;
end;

procedure TSC.DSServerClassCadastroGetClass(DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := uSMCadastro.TSMCadastro;
end;

end.


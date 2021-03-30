program LDEServer;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uPrincipal in 'uPrincipal.pas' {Frm_Principal},
  uSM in 'uSM.pas' {SM: TDSServerModule},
  uSC in 'uSC.pas' {SC: TDataModule},
  uSMCadastro in 'uSMCadastro.pas' {SMCadastro: TDSServerModule},
  UServidorStartStop in 'UServidorStartStop.pas',
  USMNota in 'Nota\USMNota.pas' {SMNota: TDSServerModule},
  USM_PDV in 'PDV\USM_PDV.pas' {smPDV: TDSServerModule},
  uSM_Financeiro in 'Financeiro\uSM_Financeiro.pas' {SM_Financeiro: TDSServerModule},
  uSM_Pedido in 'Pedido\uSM_Pedido.pas' {SM_Pedido: TDSServerModule},
  uSMProducao in 'Producao\uSMProducao.pas' {SMProducao: TDSServerModule},
  USM0 in 'Heranca\USM0.pas' {SM0: TDataModule},
  USMProduto in 'Produto\USMProduto.pas' {SMProduto: TDataModule},
  uServerDM in 'uServerDM.pas' {ServerDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServerDM, ServerDM);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.


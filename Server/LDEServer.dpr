program LDEServer;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uPrincipal in 'uPrincipal.pas' {Frm_Principal},
  uSM in 'uSM.pas' {SM: TDSServerModule},
  uSC in 'uSC.pas' {SC: TDataModule},
  UDM in 'UDM.pas' {DM: TDataModule},
  uSMCadastro in 'uSMCadastro.pas' {SMCadastro: TDSServerModule},
  UServidorStartStop in 'UServidorStartStop.pas',
  USMNota in 'Nota\USMNota.pas' {SMNota: TDSServerModule},
  USM_PDV in 'PDV\USM_PDV.pas' {smPDV: TDSServerModule},
  uSM_Financeiro in 'Financeiro\uSM_Financeiro.pas' {SM_Financeiro: TDSServerModule},
  uSM_Pedido in 'Pedido\uSM_Pedido.pas' {SM_Pedido: TDSServerModule},
  uSMProducao in 'Producao\uSMProducao.pas' {SMProducao: TDSServerModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.


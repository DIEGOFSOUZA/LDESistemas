unit UPdr_Relatorio2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio, Vcl.ExtCtrls, RLReport,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TPdr_Relatorio2 = class(TPdr_Relatorio)
    RLBand10: TRLBand;
    rlblTitRelatorio: TRLLabel;
    RLBand9: TRLBand;
    rlblEmpresaRazao: TRLLabel;
    rlblEmpresaCNPJ: TRLLabel;
    rlblEmpresaLog: TRLLabel;
    rlblEmpresaCep: TRLLabel;
    rlblEmpresaFone: TRLLabel;
    pnlFundo: TPanel;
    pnlButtons: TPanel;
    btnGerarRelatorio: TButton;
    actlst1: TActionList;
    actGerarRelatorio: TAction;
    actSair: TAction;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    imgFechar: TImage;
    pnlClient: TPanel;
    pnlRodape: TPanel;
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure actGerarRelatorioExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pdr_Relatorio2: TPdr_Relatorio2;

implementation

uses
  UDM;

{$R *.dfm}

procedure TPdr_Relatorio2.actGerarRelatorioExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TPdr_Relatorio2.actSairExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPdr_Relatorio2.imgFecharClick(Sender: TObject);
begin
  inherited;
  actSair.Execute;
end;

procedure TPdr_Relatorio2.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  with DM.Empresa do
  begin
    rlblEmpresaRazao.Caption := RazaoSocial;
    rlblEmpresaCNPJ.Caption := 'CNPJ: ' + CNPJ;
    rlblEmpresaLog.Caption := Endereco + ',' + Numero;
    rlblEmpresaCep.Caption := Cep + ' - ' + Cidade + ' - ' + UF;
    rlblEmpresaFone.Caption := DM.Empresa.Fone;
  end;
end;

end.

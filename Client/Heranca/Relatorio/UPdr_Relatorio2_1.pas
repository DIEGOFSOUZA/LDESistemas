unit UPdr_Relatorio2_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TPdr_Relatorio2_1 = class(TForm)
    Relatorio: TRLReport;
    rlbndTitulo: TRLBand;
    rlblTitRelatorio: TRLLabel;
    rlbndDadosEmpresa: TRLBand;
    rlblEmpresaRazao: TRLLabel;
    rlblEmpresaCNPJ: TRLLabel;
    rlblEmpresaLog: TRLLabel;
    rlblEmpresaCep: TRLLabel;
    rlblEmpresaFone: TRLLabel;
    procedure RelatorioBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pdr_Relatorio2_1: TPdr_Relatorio2_1;

implementation

uses
  UDM;

{$R *.dfm}

procedure TPdr_Relatorio2_1.RelatorioBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
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

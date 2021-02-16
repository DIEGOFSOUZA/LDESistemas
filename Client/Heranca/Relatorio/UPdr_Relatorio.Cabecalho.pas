unit UPdr_Relatorio.Cabecalho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio, RLReport,
  RLPDFFilter, RLFilters;

type
  TPdr_RelatorioRetratoCabecalho = class(TPdr_Relatorio)
    RLPDFFilter1: TRLPDFFilter;
    RLBand1: TRLBand;
    rlpnlEmpresa: TRLPanel;
    rlblEmpFantasia: TRLLabel;
    rlpnlInfo: TRLPanel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    rlblNomeRelatorio: TRLLabel;
    rlMemoParametros: TRLMemo;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pdr_RelatorioRetratoCabecalho: TPdr_RelatorioRetratoCabecalho;

implementation

{$R *.dfm}

uses UDM;

procedure TPdr_RelatorioRetratoCabecalho.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
//  DM.CarregaEmpresa ;
  rlblEmpFantasia.Caption := DM.Empresa.Fantasia ;
//  rlMemoParametros.Lines.Clear ;
end;

end.

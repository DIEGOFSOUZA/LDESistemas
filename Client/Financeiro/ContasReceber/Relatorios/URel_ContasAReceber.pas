unit URel_ContasAReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio.Cabecalho,
  RLReport, Data.DB, RLFilters, RLPDFFilter;

type
  TRel_ContasAReceber = class(TPdr_RelatorioRetratoCabecalho)
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    ds1: TDataSource;
    RLDBResult1: TRLDBResult;
    RLLabel9: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Executar() ;
  end;

var
  Rel_ContasAReceber: TRel_ContasAReceber;

implementation



{$R *.dfm}

{ TRel_ContasAReceber }

procedure TRel_ContasAReceber.Executar;
begin
  Relatorio.PreviewModal ;
end;

end.

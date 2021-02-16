unit URel_ContasAPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Relatorio.Cabecalho, RLFilters, RLPDFFilter, RLReport, Data.DB;

type
  TRel_ContasAPagar = class(TPdr_RelatorioRetratoCabecalho)
    ds1: TDataSource;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand4: TRLBand;
    rlblTotal: TRLLabel;
    RLLabel5: TRLLabel;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RelatorioBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    Total : Currency;
    procedure Executar();
  end;

var
  Rel_ContasAPagar: TRel_ContasAPagar;

implementation

{$R *.dfm}

uses
  UFrmContasPagar;

{ TRel_ContasAPagar }

procedure TRel_ContasAPagar.Executar;
begin
  Relatorio.PreviewModal;
end;

procedure TRel_ContasAPagar.RelatorioBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  Total := 0;
end;

procedure TRel_ContasAPagar.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  Total := Total + ds1.DataSet.FieldByName('vdup').AsCurrency;
end;

procedure TRel_ContasAPagar.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblTotal.Caption := FormatCurr('#,##0.00',Total);
end;

end.


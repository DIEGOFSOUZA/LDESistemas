unit URel_ContasAPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Relatorio.Cabecalho, RLFilters, RLPDFFilter, RLReport, Data.DB,
  Datasnap.DBClient;

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
    cdsReport: TClientDataSet;
    cdsReportID_NOTA: TIntegerField;
    cdsReportEMISSAO: TDateField;
    cdsReportN_NF: TIntegerField;
    cdsReportFORNECEDOR: TStringField;
    cdsReportNDUP: TIntegerField;
    cdsReportDVENC: TDateField;
    cdsReportVDUP: TFMTBCDField;
    cdsReportBAIXA_DATA: TDateField;
    cdsReportBAIXA_VALOR: TFMTBCDField;
    cdsReportBAIXA_USUARIO: TStringField;
    cdsReportID_HISTORICODUP: TIntegerField;
    cdsReportID_CONTA: TStringField;
    cdsReportID_CAIXA: TIntegerField;
    cdsReportBAIXADA: TStringField;
    cdsReportVDESC: TFMTBCDField;
    cdsReportVJUROS: TFMTBCDField;
    cdsReportCHEQUE_NUMERO: TIntegerField;
    cdsReportDT_COMPENSA: TDateField;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RelatorioBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    Total : Currency;
    procedure Executar(aTemp : TClientDataSet);
  end;

var
  Rel_ContasAPagar: TRel_ContasAPagar;

implementation

{$R *.dfm}

uses
  UFrmContasPagar, UDM;

{ TRel_ContasAPagar }

procedure TRel_ContasAPagar.Executar(aTemp : TClientDataSet);
begin
  cdsReport.IndexFieldNames := 'dvenc';
  cdsReport.Close;
  cdsReport.Data := aTemp.Data;
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
  rlblTotal.Caption := 'Total geral: R$ '+FormatCurr('#,##0.00',Total);
end;

end.


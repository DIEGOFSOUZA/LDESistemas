unit UPdr_RelRetrato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Relatorio.Cabecalho, RLFilters, RLPDFFilter, RLReport, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.Buttons, System.Actions, Vcl.ActnList;

type
  TPdr_RelRetrato = class(TPdr_RelatorioRetratoCabecalho)
    pnlFundo: TPanel;
    pnlBotoes: TPanel;
    pnlFiltros: TPanel;
    pnlRodape: TPanel;
    chkParametro: TCheckBox;
    pnlGerar: TPanel;
    btnGerar: TSpeedButton;
    imgGerar: TImage;
    pnlSair: TPanel;
    SpeedButton1: TSpeedButton;
    imgSair: TImage;
    actlst: TActionList;
    acrGerarRelatorio: TAction;
    actSair: TAction;
    procedure actSairExecute(Sender: TObject);
    procedure acrGerarRelatorioExecute(Sender: TObject);
  private
    fTitRelatorio: string;
    procedure setTitRelatorio(const Value: string);
    { Private declarations }
  public
    property TitRelatorio: string read fTitRelatorio write setTitRelatorio;
    procedure MontaSQL(); virtual; abstract;
    procedure Filtro(); virtual;
  end;

var
  Pdr_RelRetrato: TPdr_RelRetrato;

implementation

{$R *.dfm}

procedure TPdr_RelRetrato.acrGerarRelatorioExecute(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    {Filtro}
    rlMemoParametros.Lines.Clear;
    if chkParametro.Checked then
      Filtro();

    MontaSQL();

    Relatorio.PreviewModal;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TPdr_RelRetrato.actSairExecute(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TPdr_RelRetrato.Filtro;
begin
  rlMemoParametros.Lines.Clear;
  rlMemoParametros.Lines.Add('Filtro: ');
end;

procedure TPdr_RelRetrato.setTitRelatorio(const Value: string);
begin
  fTitRelatorio := Value;
  rlblNomeRelatorio.Caption := fTitRelatorio;
end;

end.


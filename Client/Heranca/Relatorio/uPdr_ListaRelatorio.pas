unit uPdr_ListaRelatorio; //pnlFundo0 H 420 W 744

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList,
  Datasnap.DBClient, RLReport, RLXLSFilter, RLFilters, RLPDFFilter,U_DataCorrida;

type
  TPdr_ListaRelatorio = class(TPdr_Child)
    pnlFundo0: TPanel;
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    pnlFundo1: TPanel;
    pnlRight: TPanel;
    pnlGrid: TPanel;
    pnlRodape: TPanel;
    dbgrd1: TDBGrid;
    lblTitBanco: TLabel;
    pnlPeriodo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    pnlGerar: TPanel;
    btnGerar: TSpeedButton;
    pnlVisualizar: TPanel;
    pnlVisualizaBotao: TPanel;
    btnVisualizar: TSpeedButton;
    imgGerar: TImage;
    imgVisualizar: TImage;
    pnlTitulo: TPanel;
    cbbLista: TComboBox;
    actlst1: TActionList;
    actGerar: TAction;
    actLista: TAction;
    actSair: TAction;
    dsGrid: TClientDataSet;
    sGrid: TDataSource;
    pnlNaoExisteReg: TPanel;
    Label4: TLabel;
    imgSeta: TImage;
    Label3: TLabel;
    Rel_1: TRLReport;
    RLBand9: TRLBand;
    rlblEmpresaRazao: TRLLabel;
    rlblEmpresaCNPJ: TRLLabel;
    rlblEmpresaLog: TRLLabel;
    rlblEmpresaCep: TRLLabel;
    rlblEmpresaFone: TRLLabel;
    RLBand10: TRLBand;
    RLLabel13: TRLLabel;
    imgFechar: TImage;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    chkExibirResumo: TCheckBox;
    procedure actGerarExecute(Sender: TObject);
    procedure actListaExecute(Sender: TObject);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure imgFecharClick(Sender: TObject);
    procedure dbgrd1TitleClick(Column: TColumn);
    procedure lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure chkExibirResumoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pdr_ListaRelatorio: TPdr_ListaRelatorio;

implementation

{$R *.dfm}

uses
  UDM;

procedure TPdr_ListaRelatorio.actGerarExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TPdr_ListaRelatorio.actListaExecute(Sender: TObject);
begin
  inherited;
//  cbbLista.Visible := not cbbLista.Visible;

  cbbLista.BringToFront;
  cbbLista.Visible := True;
  cbbLista.DroppedDown := True;
  cbbLista.ItemIndex := 0;
  cbbLista.SetFocus;
  cbbLista.Top := 0;
end;

procedure TPdr_ListaRelatorio.chkExibirResumoClick(Sender: TObject);
begin
  inherited;
  if chkExibirResumo.Checked then
  begin
    chkExibirResumo.Caption := 'Ocultar resumo';
    pnlRight.Visible := True;
  end
  else
  begin
    chkExibirResumo.Caption := 'Exibir resumo';
    pnlRight.Visible := False;
  end;
end;

procedure TPdr_ListaRelatorio.dbgrd1TitleClick(Column: TColumn);
begin
  inherited;
  dsGrid.IndexFieldNames := Column.FieldName;
end;

procedure TPdr_ListaRelatorio.imgFecharClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPdr_ListaRelatorio.lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TPdr_ListaRelatorio.RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
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


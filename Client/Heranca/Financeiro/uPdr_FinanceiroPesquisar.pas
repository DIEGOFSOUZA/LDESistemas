unit uPdr_FinanceiroPesquisar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TPdr_FinanceiroPesquisar = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    pnlFiltroBotoes: TPanel;
    pnlFiltro: TPanel;
    pnlBotoes: TPanel;
    actlst1: TActionList;
    pnlRodape: TPanel;
    pnlGrid: TPanel;
    pnlRodapeGrid: TPanel;
    dbgrd1: TDBGrid;
    dsGrid: TClientDataSet;
    sGrid: TDataSource;
    lblTotValor: TLabel;
    lblTotSaldo: TLabel;
    lblTotSel: TLabel;
    lblTotRegistro: TLabel;
    pnlPesquisar: TPanel;
    imgPesquisar: TImage;
    btnPesquisar: TSpeedButton;
    pnlAdd: TPanel;
    imgAdd: TImage;
    btnAdd: TSpeedButton;
    actAdd: TAction;
    actImprimir: TAction;
    actPesquisar: TAction;
    pnlImprimir: TPanel;
    imgImprimir: TImage;
    btnImprimir: TSpeedButton;
    imgFechar: TImage;
    actSair: TAction;
    pnlSemRegistro: TPanel;
    Label9: TLabel;
    procedure actAddExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure lblTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pdr_FinanceiroPesquisar: TPdr_FinanceiroPesquisar;

implementation

{$R *.dfm}

procedure TPdr_FinanceiroPesquisar.actAddExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TPdr_FinanceiroPesquisar.actImprimirExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TPdr_FinanceiroPesquisar.actPesquisarExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TPdr_FinanceiroPesquisar.actSairExecute(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TPdr_FinanceiroPesquisar.lblTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.

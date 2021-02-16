unit uPdr_FinanceiroDuplicata;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.Buttons, UEDPesquisa, Vcl.ComCtrls;

type
  TPdr_FinanceiroDuplicata = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    imgFechar: TImage;
    pnlCentro: TPanel;
    pnlRodape: TPanel;
    pnlRight: TPanel;
    pnlLeft: TPanel;
    pnlRecebido: TPanel;
    Label8: TLabel;
    Label1: TLabel;
    pnlGridRecebidos: TPanel;
    pnlGridRecRodape: TPanel;
    Label2: TLabel;
    lblSaldoAReceber: TLabel;
    il1: TImageList;
    dbgrdRecebidos: TDBGrid;
    pnlStatus: TPanel;
    actlst1: TActionList;
    pnlIncRecebimento: TPanel;
    btnIncRecebimento: TSpeedButton;
    actIncRecebimento: TAction;
    Label11: TLabel;
    Label12: TLabel;
    dtpRecebido: TDateTimePicker;
    Label13: TLabel;
    Label14: TLabel;
    edtJuros: TEdit;
    Label15: TLabel;
    edtDescontos: TEdit;
    Label16: TLabel;
    edtVlRecebido: TEdit;
    Label17: TLabel;
    cbbConta: TComboBox;
    cbbEfetuado: TComboBox;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    actSalvar: TAction;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    actCancelar: TAction;
    pnlDadosDup: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtDescricao: TEdit;
    pnlSacadoAlt: TPanel;
    Label6: TLabel;
    edpsqsSacado: TEdPesquisa;
    pnlSacadoPesquisa: TPanel;
    lbl1: TLabel;
    edtSacado: TEdit;
    dtpEmissao: TDateTimePicker;
    dtpVencimento: TDateTimePicker;
    edtVlTotal: TEdit;
    pnlClassificacaoAlt: TPanel;
    Label4: TLabel;
    edpsqsClassificacao: TEdPesquisa;
    pnlClassPesquisa: TPanel;
    lbl2: TLabel;
    edtClassificacao: TEdit;
    procedure dbgrdRecebidosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actIncRecebimentoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure lblTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure actCancelarExecute(Sender: TObject);
    procedure edtJurosEnter(Sender: TObject);
    procedure edtDescontosEnter(Sender: TObject);
    procedure edtVlRecebidoEnter(Sender: TObject);
    procedure edtJurosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pdr_FinanceiroDuplicata: TPdr_FinanceiroDuplicata;

implementation

{$R *.dfm}

procedure TPdr_FinanceiroDuplicata.actCancelarExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPdr_FinanceiroDuplicata.actIncRecebimentoExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TPdr_FinanceiroDuplicata.actSalvarExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TPdr_FinanceiroDuplicata.dbgrdRecebidosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if UpperCase(Column.Field.FieldName) = 'LIXEIRA' then
  begin
    dbgrdRecebidos.Canvas.FillRect(Rect);
    // desenha a imagem conforme a condição acima
    il1.Draw(dbgrdRecebidos.Canvas, Rect.Left + 24, Rect.Top + 1, 0);
  end;
end;

procedure TPdr_FinanceiroDuplicata.edtDescontosEnter(Sender: TObject);
begin
  inherited;
  edtDescontos.SelectAll;
end;

procedure TPdr_FinanceiroDuplicata.edtJurosEnter(Sender: TObject);
begin
  inherited;
  edtJuros.SelectAll;
end;

procedure TPdr_FinanceiroDuplicata.edtJurosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TPdr_FinanceiroDuplicata.edtVlRecebidoEnter(Sender: TObject);
begin
  inherited;
  edtVlRecebido.SelectAll;
end;

procedure TPdr_FinanceiroDuplicata.lblTituloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.

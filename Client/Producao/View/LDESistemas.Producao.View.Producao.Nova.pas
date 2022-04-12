unit LDESistemas.Producao.View.Producao.Nova;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Samples.Spin, UEDPesquisa,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TFrmProducaoNova = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlBotoes: TPanel;
    pnlIncluir: TPanel;
    btnIncluir: TSpeedButton;
    pnlCenter: TPanel;
    pnlIncRodapeIncProduto: TPanel;
    pnlIncProduto: TPanel;
    btnIncProduto: TSpeedButton;
    pnlRodapeCustoTotal: TPanel;
    pnlGrid: TPanel;
    dbgrdPedidos: TDBGrid;
    lblCustoTotal: TLabel;
    lbl1: TLabel;
    pnlTop: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edtInicio: TEdit;
    edtFimProducao: TEdit;
    Label1: TLabel;
    edtResponsavel: TEdit;
    Label4: TLabel;
    edtObservacao: TEdit;
    dsItem: TDataSource;
    cdsItem: TClientDataSet;
    procedure edtInicioKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncProdutoClick(Sender: TObject);
    procedure edtFimProducaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCustoTotal: Currency;
    FIDLote: integer;
    procedure Iniciar();
    procedure SetCustoTotal(const Value: Currency);
  public
    property CustoTotal : Currency read FCustoTotal write SetCustoTotal;
    property IDLote : integer read FIDLote write FIDLote;
  end;

var
  FrmProducaoNova: TFrmProducaoNova;

implementation

uses
  UDM, LDESistemas.Producao.View.Producao.IncluirItem, uFormat;

{$R *.dfm}

{ TFrmProducaoNova }

procedure TFrmProducaoNova.btnIncProdutoClick(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmProducaoIncluirItem) then
    FrmProducaoIncluirItem := TFrmProducaoIncluirItem.Create(Self);
  AlphaBlend := True;
  AlphaBlendValue := 128;
  try
    FrmProducaoIncluirItem.IDLote := 0;
    FrmProducaoIncluirItem.ShowModal;

  finally
    FreeAndNil(FrmProducaoIncluirItem);
    AlphaBlend := False;
  end;
end;

procedure TFrmProducaoNova.edtFimProducaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Formatar(edtFimProducao, TFormato.Dt);
end;

procedure TFrmProducaoNova.edtInicioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Formatar(edtInicio, TFormato.Dt);
end;

procedure TFrmProducaoNova.FormCreate(Sender: TObject);
begin
  inherited;
  Self.ClientHeight := 685;
  Self.ClientWidth := 1300;
  Self.Position := poScreenCenter;
end;

procedure TFrmProducaoNova.FormShow(Sender: TObject);
begin
  inherited;
  Iniciar;
end;

procedure TFrmProducaoNova.Iniciar;
begin
  edtInicio.Text := FormatDateTime('dd/mm/yyyy',Date);
  edtFimProducao.Text := FormatDateTime('dd/mm/yyyy',Date);
  edtResponsavel.Text := DM.Usuario.Login;
  edtFimProducao.SetFocus;
end;

procedure TFrmProducaoNova.SetCustoTotal(const Value: Currency);
begin
  FCustoTotal := Value;
  lblCustoTotal.Caption := FormatCurr('R$ #,##0.00',Value);
end;

end.

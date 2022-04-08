unit LDESistemas.Producao.View.Producao.IncluirItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, UEDPesquisa,
  UDBPesquisa, Vcl.Samples.Spin, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrmProducaoIncluirItem = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlLeft: TPanel;
    pnlRight: TPanel;
    pnlBotoes: TPanel;
    pnlCancelar: TPanel;
    pnlIncluir: TPanel;
    btnCancelar: TSpeedButton;
    btnIncluir: TSpeedButton;
    edpesProduto: TEdPesquisa;
    lblProduto: TLabel;
    Label1: TLabel;
    seQude: TSpinEdit;
    Label2: TLabel;
    edtValidade: TEdit;
    Label3: TLabel;
    edtLote: TEdit;
    pnlEstoque: TPanel;
    pnlCusto: TPanel;
    pnlTitInsumo: TPanel;
    lblTitInsumo: TLabel;
    lbl1: TLabel;
    Label4: TLabel;
    lblEstoque: TLabel;
    lblCusto: TLabel;
    pnlGrid: TPanel;
    dbgrdPedidos: TDBGrid;
    dsInsumo: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProducaoIncluirItem: TFrmProducaoIncluirItem;

implementation

{$R *.dfm}

end.

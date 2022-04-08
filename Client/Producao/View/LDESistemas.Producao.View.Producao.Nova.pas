unit LDESistemas.Producao.View.Producao.Nova;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Samples.Spin, UEDPesquisa,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

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
    edtValidade: TEdit;
    edtLote: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProducaoNova: TFrmProducaoNova;

implementation

{$R *.dfm}

end.

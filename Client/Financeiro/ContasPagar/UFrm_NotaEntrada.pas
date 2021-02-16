unit UFrm_NotaEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, UDBPesquisa, Vcl.DBCtrls,
  Data.DB, Datasnap.DBClient, Vcl.DBGrids, Vcl.Mask, Vcl.Grids;

type
  TFrm_NotaEntrada = class(TPdr_Child)
    lblTitulo: TLabel;
    pnlRodape: TPanel;
    pgc1: TPageControl;
    tsPagamento: TTabSheet;
    tsAnexo: TTabSheet;
    DBPesquisa3: TDBPesquisa;
    dbgrdParcela: TDBGrid;
    dsParcela: TClientDataSet;
    sParcela: TDataSource;
    dsItem: TClientDataSet;
    sItem: TDataSource;
    pnlDados: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBPesquisa1: TDBPesquisa;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBPesquisa2: TDBPesquisa;
    pnlItens: TPanel;
    dbgrdItens: TDBGrid;
    tsObs: TTabSheet;
    pnlObs: TPanel;
    DBMemo1: TDBMemo;
    pnlUserInclusao: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    pnlSalvar: TPanel;
    imgSalvar: TImage;
    lblSalvar: TLabel;
    pnlCancelar: TPanel;
    imgCancelar: TImage;
    lblCancelar: TLabel;
    tsTotais: TTabSheet;
    tsInfClienteFornecedor: TTabSheet;
    tsInfAdicional: TTabSheet;
    tsDescFreteDespesas: TTabSheet;
    tsImpostos: TTabSheet;
    procedure imgCancelarClick(Sender: TObject);
    procedure pgc1DrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
  private
    { Private declarations }
    procedure Cancelar();
  public
    { Public declarations }
  end;

var
  Frm_NotaEntrada: TFrm_NotaEntrada;

implementation

{$R *.dfm}

procedure TFrm_NotaEntrada.Cancelar;
begin
  Close ;
end;

procedure TFrm_NotaEntrada.imgCancelarClick(Sender: TObject);
begin
  inherited;
  Cancelar();
end;

procedure TFrm_NotaEntrada.pgc1DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  inherited;
  pgc1.canvas.font.color := clblue;     //cor da aba do tabsheet

  Control.Canvas.TextOut(Rect.left + 2, Rect.top + 2, TTabSheet(pgc1.Pages[TabIndex]).Caption);

  pgc1.Pages[TabIndex].Font.Color := clblack;     //cor da fonte na "page" inteiira.
end;

end.

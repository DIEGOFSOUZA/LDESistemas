unit LDESistemas.Producao.View.Producao.Pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, PngSpeedButton, Vcl.ComCtrls;

type
  TFrmProducaoPesquisa = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlBotoes: TPanel;
    pnlIncluir: TPanel;
    btnIncluir: TSpeedButton;
    pnlCenter: TPanel;
    pnlGrid: TPanel;
    dbgrdPedidos: TDBGrid;
    pnlTop: TPanel;
    pnlPeriodo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    pngspdbtnBuscar: TPngSpeedButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProducaoPesquisa: TFrmProducaoPesquisa;

implementation

uses
  LDESistemas.Producao.View.Producao.Nova;

{$R *.dfm}

procedure TFrmProducaoPesquisa.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmProducaoNova) then
    FrmProducaoNova := TFrmProducaoNova.Create(Self);
  AlphaBlend := True;
  AlphaBlendValue := 128;
  try
    FrmProducaoNova.ShowModal;

  finally
    FreeAndNil(FrmProducaoNova);
    AlphaBlend := False;
  end;
end;

procedure TFrmProducaoPesquisa.FormCreate(Sender: TObject);
begin
  inherited;
  Self.ClientHeight := 765;
  Self.ClientWidth := 1373;
  Self.Position := poScreenCenter;
end;

end.

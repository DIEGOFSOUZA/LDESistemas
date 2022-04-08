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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProducaoPesquisa: TFrmProducaoPesquisa;

implementation

{$R *.dfm}

end.

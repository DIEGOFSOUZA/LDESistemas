unit UPdr_Child2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList;

type
  TPdr_Child2 = class(TPdr_Child)
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    pnlBotaoSair: TPanel;
    actlst1: TActionList;
    actSair: TAction;
    procedure actSairExecute(Sender: TObject);
    procedure lblTituloMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pdr_Child2: TPdr_Child2;

implementation

{$R *.dfm}

procedure TPdr_Child2.actSairExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPdr_Child2.lblTituloMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
const
  sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.

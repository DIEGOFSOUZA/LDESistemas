unit UFrm_RetornoEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.StdCtrls, Vcl.Mask;

type
  TFrm_RetornoEdit = class(TPdr_Child)
    edt1: TEdit;
    lbl1: TLabel;
    medt1: TMaskEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure medt1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    aRetorno : string ;
  end;

var
  Frm_RetornoEdit: TFrm_RetornoEdit;

implementation

uses
  UFuncoes;

{$R *.dfm}

procedure TFrm_RetornoEdit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = Vk_Escape then
  begin
    aRetorno := 'exit' ;
    Close;
  end;
end;


procedure TFrm_RetornoEdit.medt1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if ValidaData(medt1.Text) then
    begin
      aRetorno := StringReplace(medt1.Text,'/','.',[rfReplaceAll]) ;
      Close ;
    end;
  end;
end;

end.

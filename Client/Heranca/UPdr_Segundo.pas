unit UPdr_Segundo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Primeiro, Vcl.DBGrids, Data.DB,
  Vcl.DBCtrls ;

type
  TPdr_Segundo = class(TPdr_Primeiro)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pdr_Segundo: TPdr_Segundo;

implementation

{$R *.dfm}

procedure TPdr_Segundo.FormKeyPress(Sender: TObject; var Key: Char);
var tmp : TField ;
begin
  inherited;
  if Key = #13 then
  begin
     if not (ActiveControl is TDBGrid) then
        Perform(Wm_NextDlgCtl,0,0)
     else
        with TDBGrid(ActiveControl) do
        begin
           if not (dgEditing in Options) then
           begin
              PostMessage(handle,WM_keydown,vk_tab,1) ;
              Exit ;
           end ;
           if SelectedIndex < (fieldcount - 1) then
              SelectedIndex := selectedindex + 1
           else
              SelectedIndex := 0;
        end ;
     Exit ;
  end ;
end;


end.

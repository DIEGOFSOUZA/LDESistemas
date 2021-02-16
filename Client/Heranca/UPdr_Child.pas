unit UPdr_Child;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,

  UPdr_Segundo;

type
  TPdr_Child = class(TPdr_Segundo)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor CreateChild(AOwner : TComponent) ;
  end;

var
  Pdr_Child: TPdr_Child;

implementation

{$R *.dfm}

{ TPdr_Child }

constructor TPdr_Child.CreateChild(AOwner : TComponent);
begin
  inherited Create(AOwner) ;
  self.FormStyle := fsMDIForm ;
  Self.Visible := True;
end;

procedure TPdr_Child.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Self.FormStyle = fsMDIChild then
    Action := caFree ;
end;

procedure TPdr_Child.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  {Enter funcionando como a tecla Tab}
//  if Key = #13 then
//  begin
//    Perform(WM_NEXTDLGCTL,0,0) ;
//  end;
end;

end.

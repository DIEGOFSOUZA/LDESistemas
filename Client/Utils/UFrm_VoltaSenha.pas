unit UFrm_VoltaSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrm_VoltaSenha = class(TPdr_Child)
    pnlFundo: TPanel;
    edtSenha: TEdit;
    lblTitulo: TLabel;
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public

  end;

var
  Frm_VoltaSenha: TFrm_VoltaSenha;

function VoltaSenha(txt: string = 'Informe a senha'): string;

implementation

{$R *.dfm}

procedure TFrm_VoltaSenha.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #27 then
  begin
    edtSenha.Text := '';
    Close;
    Exit;
  end;
  if Key = #13 then
    Close;
end;

function VoltaSenha(txt: string): string;
var
  tmp: TFrm_VoltaSenha;
begin
  Result := '';
  tmp := TFrm_VoltaSenha.Create(nil);
  try
    tmp.lblTitulo.Caption := txt;
    tmp.ShowModal;
    Result := tmp.edtSenha.Text;
  finally
    FreeAndNil(tmp);
  end;
end;

end.


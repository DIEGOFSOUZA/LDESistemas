unit u_Mensagem;

interface

uses
  Winapi.Windows, Vcl.Forms;

type
  TMensagem = class
  public
    class function Pergunta(AMsg: string; ACaption: string = 'Confirmação'): Boolean;
    class procedure Atencao(AMsg: string; ACaption: string = 'Atenção');
    class procedure Erro(AMsg: string; ACaption: string = 'Atenção');
    class procedure Informacao(AMsg: string; ACaption: string = 'Aviso');
  end;

implementation

{ TMensagem }

class procedure TMensagem.Atencao(AMsg: string; ACaption: string);
begin
  Application.MessageBox(PChar(AMsg), PChar(ACaption), MB_ICONWARNING + MB_OK);
end;

class procedure TMensagem.Erro(AMsg: string; ACaption: string);
begin
  Application.MessageBox(PChar(AMsg), PChar(ACaption), MB_ICONERROR + MB_OK);
end;

class procedure TMensagem.Informacao(AMsg: string; ACaption: string);
begin
  Application.MessageBox(PChar(AMsg), PChar(ACaption), MB_ICONINFORMATION + MB_OK);
end;

class function TMensagem.Pergunta(AMsg: string; ACaption: string): Boolean;
begin
  Result := Application.MessageBox(PChar(AMsg), PChar(ACaption), MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES;
end;

end.

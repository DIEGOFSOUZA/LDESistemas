unit UClassIniciar;

interface

function Iniciar() : boolean ;

implementation

uses UDM, UFrm_Login;

function Iniciar(): boolean;
var
  Retorno: TLoginSenha;
begin
  Result := False;
  Retorno := UsuarioSenha('');

  if Retorno.Ok then
  begin
    if (DM.ValidaUser(Retorno.Usuario, Retorno.Senha)) then
      Result := Retorno.Ok
    else
      Result := False;
  end;
end;

end.

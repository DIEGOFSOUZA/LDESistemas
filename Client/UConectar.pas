unit UConectar;

interface

uses System.SysUtils, Winapi.ShellApi, Winapi.Windows,
     System.Win.Registry,Vcl.Dialogs;

function AtualizaExe() : Boolean;
function Iniciar() : boolean ;
function Login() : Boolean ;

implementation

uses
  UDM, UFrm_Login, UFrm_AtualizacaoSistema, UPdr_Configuracao, u_Mensagem,
  UFuncoes;


function Iniciar() : boolean ;
begin
  Result := False ;

//  if not Login() then
//    Exit;

  if not Assigned(Frm_Login) then
    Frm_Login := TFrm_Login.Create(nil);
  try
    Frm_Login.ShowModal;

    ShowMessage(Frm_Login.Retorno.ToString);
  finally
    FreeAndNil(Frm_Login);
  end;

  try
  //Update Base de dados
//    DM.SMClient.UpdateBaseDados(DM.BancoDados, OnlyDigit(DM.Empresa.CNPJ));

  //update Sistema
//    AtualizaExe;

//    Result := True;
  except
//    Result := False;
  end;

//  Result := Login() ;
//  if not Result then
//    Exit ;

end;

function Login() : Boolean ;
var
  Aux: TLoginSenha;
begin
//  Result := False;
//
//  Aux := UsuarioSenha('');
//  if Aux.Usuario = '' then
//    Exit;
//
//  try
//    DM.ConfiguraConexao(Aux.Empresa);
//    if not DM.AbrirConexao() then
//      Exit;
//
//    DM.CarregaEmpresa;
//    Result := DM.ValidaUser(Aux.Usuario, Aux.Senha);
//  except
//    on e: Exception do
//    begin
//      TMensagem.Erro('Erro: Não foi possível a conexão com o banco de dados.'+#13#10+
//                      e.Message );
//    end;
//  end;
end;

function AtualizaExe(): Boolean;
const
  NomeArquivo = 'Atualizador.exe';
  NomeArquivoPendente = 'Atualizar.lde';
var
  Temp: TFrm_AtualizacaoSistema;
  Destino, Pendente: string;
  tmp: TConfiguracaoSistema;
  F: TextFile;
begin
  Result := True;

  Destino := ExtractFilePath(ParamStr(0)) + NomeArquivo;
  Pendente := ExtractFilePath(ParamStr(0)) + NomeArquivoPendente;

  //.... verifica se tem atualização pendente .......
  if FileExists(Pendente) and FileExists(Destino) then
  begin
    Result := False;
    ShellExecute(0, 'open', PWidechar(Destino), PWideChar(' /VERYSILENT'), nil, SW_SHOWNORMAL);
    Exit;
  end;

  tmp := getConfiguracao(DM.ArquivoConfiguracao);

  if (tmp.FTP_Servidor = '') or (tmp.FTP_Porta = 0) then
    Exit;

  Temp := TFrm_AtualizacaoSistema.Create(nil);
  try
    Temp.pnlAtualiza.Visible := False;
    Temp.Width := 198;

    Temp.Show;
    Temp.Update;

    Temp.Host := tmp.FTP_Servidor; //'34.69.143.79';
    Temp.Port := tmp.FTP_Porta; //6061;
    Temp.Username := tmp.FTP_Usuario; //'producao';
    Temp.Password := tmp.FTP_Senha; //'producao';
    Temp.Passive := True; { usa modo passivo }

    Result := Temp.Download(NomeArquivo, Destino);

    if not Result then
    begin
      try
        AssignFile(F, Pendente);
        Rewrite(F);
        Writeln(F, FormatDateTime('dd/mm/yy hh:nn:ss', Now));
      finally
        CloseFile(F);
      end;
      ShellExecute(0, 'open', PWidechar(Destino), PWideChar(' /VERYSILENT'), nil, SW_SHOWNORMAL);
    end;
  finally
    FreeAndNil(Temp);
  end;
end;

end.

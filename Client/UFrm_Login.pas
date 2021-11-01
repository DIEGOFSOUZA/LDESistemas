unit UFrm_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, MidasLib,
  System.Actions, Vcl.ActnList;

type
  TLoginSenha = record
    Usuario: string;
    Senha: string;
    Ok: boolean;
    Empresa: string;
  end;

type
  TFrm_Login = class(TForm)
    lblTitulo: TLabel;
    pnlFundo: TPanel;
    pnlLabels: TPanel;
    pnlConexao: TPanel;
    rgEmpresa: TRadioGroup;
    lblTitEmp: TLabel;
    pnlbtnConexao: TPanel;
    btnConexao: TSpeedButton;
    pnlLeft: TPanel;
    img1: TImage;
    pnlTopLogin: TPanel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    pnlBottonLogin: TPanel;
    pnlEntrar: TPanel;
    btnEntrar: TSpeedButton;
    actlst1: TActionList;
    actESC: TAction;
    actEntrar: TAction;
    actConfConexao: TAction;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure actESCExecute(Sender: TObject);
    procedure actEntrarExecute(Sender: TObject);
    procedure actConfConexaoExecute(Sender: TObject);
  private
    maximoTentativas : Integer;
    gTentativaAtual: Integer;
    FRetorno: integer;
    procedure EditarConexao(pEmpresa: string);
    procedure CarregaEmpresas() ;
    function ExisteArqConf():Boolean;
    function ValidaLogin: Boolean;
  public
//    Retorno : TLoginSenha ;
//    gFinalizar : Boolean;
    //0-Esc|1-Ok|2-Usuario/senha invalido|3-Não se conctou ao banco|4-banco em manutencao

    property Retorno: integer read FRetorno;

  end;

var
  Frm_Login: TFrm_Login;

function UsuarioSenha(pUsuario : string) : TLoginSenha ;

implementation

uses
  UPdr_Configuracao, UFrm_VoltaSenha, UDM, UConectar, u_Mensagem;

{$R *.dfm}

function UsuarioSenha(pUsuario: string): TLoginSenha;
var
  Aux: TFrm_Login;
begin
//  Aux := TFrm_Login.Create(nil);
//  try
//    if pUsuario <> '' then
//      Aux.edtUsuario.Text := pUsuario;
//
//    if Aux.gFinalizar then
//    begin
//      Aux.ShowModal;
//      Result := Aux.Retorno;
//    end;
//  finally
//    FreeAndNil(Aux);
//  end;
end;

procedure TFrm_Login.actConfConexaoExecute(Sender: TObject);
begin
  if (rgEmpresa.Items.Count > 0) then
    EditarConexao(rgEmpresa.Items[rgEmpresa.ItemIndex] + '.conf')
  else
    EditarConexao('');
  CarregaEmpresas();
end;

procedure TFrm_Login.actEntrarExecute(Sender: TObject);
begin
  if (rgEmpresa.Items.Count < 1) then
  begin
    TMensagem.Atencao('Nenhuma empresa encontrada.');
    Abort;
  end;

  try
    DM.ConfiguraConexao(rgEmpresa.Items[rgEmpresa.ItemIndex] + '.conf');
    if not DM.AbrirConexao() then
    begin
      FRetorno := 3;
      Close;
    end;
  except
    on e: Exception do
    begin
      TMensagem.Erro('Erro: Não foi possível a conexão com o banco de dados.' + #13#10 + e.Message);
    end;
  end;

  Inc(gTentativaAtual);
  if not ValidaLogin then
  begin
    if (gTentativaAtual = maximoTentativas) then
    begin
      FRetorno := 2;
      Close;
    end
    else
      Exit;
  end
  else
  begin
    if DM.SMClient.BancoInManutencao(DM.BancoDados) then
    begin
      FRetorno := 4;
      TMensagem.Informacao('Sistema está sendo atualizado. Por favor, aguarde alguns minutos e tente o acesso novamente mais tarde.');
      Close;
    end
    else
    begin
      DM.CarregaEmpresa;
      FRetorno := 1;
      Close;
    end;
  end;
end;

procedure TFrm_Login.actESCExecute(Sender: TObject);
begin
  FRetorno := 0;
  Close;
end;

procedure TFrm_Login.CarregaEmpresas;
begin
  pnlTopLogin.Enabled := False;

  if (ListaArquivosConf('*.conf').Count > 0) then
  begin
      // Preencher com os arquivos disponiveis
    rgEmpresa.Items.Clear;
    rgEmpresa.Items.AddStrings(ListaArquivosConf('*.conf'));
    rgEmpresa.ItemIndex := 0;
    pnlTopLogin.Enabled := True;
  end;
end;

procedure TFrm_Login.EditarConexao(pEmpresa: string);
var
  Aux: TPdr_Configuracao;
begin
  if VoltaSenha() <> mSenha then
  begin
    TMensagem.Informacao('Senha incorreta.');
    Exit;
  end;

  Aux := TPdr_Configuracao.Create(nil);
  try
    if pEmpresa <> '' then
    begin
      Aux.edtEmpresaConf.Text := pEmpresa;
      Aux.AbrirArquivo;
    end;
    Aux.ShowModal;
  finally
    FreeAndNil(Aux);
  end;
end;

procedure TFrm_Login.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   btnEntrar.Click ;
end;

function TFrm_Login.ExisteArqConf: Boolean;
begin
  Result := False;
  rgEmpresa.Items.Clear;
  try
    if (ListaArquivosConf('*.conf').Count > 0) then
    begin
      // Preencher com os arquivos disponiveis
      rgEmpresa.Items.AddStrings(ListaArquivosConf('*.conf'));
      rgEmpresa.ItemIndex := 0;
      Result := True;
    end;
  except
    Result := False;
  end;
end;

procedure TFrm_Login.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Escape then
    actESC.Execute;

  if Key = VK_RETURN then
    actEntrar.Execute;
end;

procedure TFrm_Login.FormShow(Sender: TObject);
begin
  FRetorno := 0;
  edtUsuario.Text := '';
  edtSenha.Text := '';
  maximoTentativas := 3;
  gTentativaAtual := 0;
  pnlTopLogin.Enabled := False;

  if ExisteArqConf then
  begin
    DM.ArquivoConfiguracao := rgEmpresa.Items[rgEmpresa.ItemIndex] + '.conf';
  {$IFDEF DEBUG}
    edtUsuario.Text := 'ADMIN';
    edtSenha.Text := 'ldesistemas';
  {$ENDIF}

    pnlTopLogin.Enabled := True;
    edtUsuario.SetFocus;
  end
  else
  begin

  end;
end;


function TFrm_Login.ValidaLogin: Boolean;
var
  lValidaUser: Integer;
begin
  Result := True;

//  if (gTentativaAtual = maximoTentativas) then
//  begin
//    Result := False;
//    Exit;
//  end;

  if ((edtUsuario.Text = '') or (edtSenha.Text = '')) then
  begin
    Result := False;
    TMensagem.Informacao('Usuário/Senha não informado.'+#13+'Tentativa ' + IntToStr(gTentativaAtual) + ' de ' + IntToStr(maximoTentativas));
//    edtUsuario.SetFocus;
    Exit;
  end;

   //0 invalido; 1 valido; 2 inativo
  lValidaUser := DM.ValidaUser(edtUsuario.Text, edtSenha.Text, False);
  if (lValidaUser = 0) then
  begin
    Result := False;
//    Inc(gTentativaAtual);
    TMensagem.Informacao('Usuário/Senha inválido.'+#13+'Tentativa ' + IntToStr(gTentativaAtual) + ' de ' + IntToStr(maximoTentativas));
    Exit;
  end;

  if (lValidaUser = 2) then
  begin
    Result := False;
//    Inc(gTentativaAtual);
    TMensagem.Informacao('Usuário inativo.'+ #13 + 'Tentativa ' + IntToStr(gTentativaAtual) + ' de ' + IntToStr(maximoTentativas));
    Exit;
  end;
end;

//procedure TFrm_Login.FormCreate(Sender: TObject);
//begin
//  Retorno.Usuario := '' ;
//  Retorno.Senha   := '' ;
//  Retorno.Ok      := False ;
//  Retorno.Empresa := '';

//  {$IFDEF DEBUG}
//    edtUsuario.Text := 'ADMIN' ;
//    edtSenha.Text   := 'ldesistemas' ;
//  {$ENDIF}

//  CarregaEmpresas() ;
//
//  DM.ArquivoConfiguracao := rgEmpresa.Items[rgEmpresa.ItemIndex]+'.conf' ;
//
//  gfinalizar := AtualizaExe() ;
//end;

end.

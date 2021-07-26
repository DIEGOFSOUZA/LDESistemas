unit UFrm_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,MidasLib;

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
    img1: TImage;
    pnlLabels: TPanel;
    lbl2: TLabel;
    edtUsuario: TEdit;
    lbl3: TLabel;
    edtSenha: TEdit;
    pnlConexao: TPanel;
    rgEmpresa: TRadioGroup;
    lblTitEmp: TLabel;
    pnlEntrar: TPanel;
    btnEntrar: TSpeedButton;
    pnlbtnConexao: TPanel;
    btnConexao: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSenhaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure btnConexaoClick(Sender: TObject);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    tentativas: Smallint;
    procedure EditarConexao(pEmpresa: string);
    procedure CarregaEmpresas() ;
  public
    { Public declarations }
    Retorno : TLoginSenha ;
    gFinalizar : Boolean;
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
  Aux := TFrm_Login.Create(nil);
  try
    if pUsuario <> '' then
      Aux.edtUsuario.Text := pUsuario;

    if Aux.gFinalizar then
    begin
      Aux.ShowModal;
      Result := Aux.Retorno;
    end;
  finally
    FreeAndNil(Aux);
  end;
end;

procedure TFrm_Login.btnConexaoClick(Sender: TObject);
begin
  EditarConexao(rgEmpresa.Items[rgEmpresa.ItemIndex]+'.conf');
  CarregaEmpresas();
end;

procedure TFrm_Login.btnEntrarClick(Sender: TObject);
begin
  if edtUsuario.Text = '' then
  begin
    TMensagem.Atencao('Usuário tem que ser preenchido');
    edtUsuario.SetFocus;
    Exit;
  end;
  if edtSenha.Text = '' then
  begin
    TMensagem.Atencao('Senha não pode estar em branco');
    edtSenha.SetFocus;
    Exit;
  end;
  Retorno.Usuario := edtUsuario.Text;
  Retorno.Senha := edtSenha.Text;
  Retorno.Empresa := rgEmpresa.Items[rgEmpresa.ItemIndex]+'.conf';
  Close;
end;

procedure TFrm_Login.CarregaEmpresas;
begin
  if ListaArquivosConf('*.conf').Count = 0 then
  begin
    TMensagem.Erro('Arquivo de conexão não encontrado.' + #13#10 + 'Solicite o suporte da LDE Sistemas.');
    Application.Terminate;
  end
  else
  begin
      // Preencher com os arquivos disponiveis
    rgEmpresa.Items.Clear;
    rgEmpresa.Items.AddStrings(ListaArquivosConf('*.conf'));
    rgEmpresa.ItemIndex := 0;
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

procedure TFrm_Login.edtSenhaChange(Sender: TObject);
begin
  btnEntrar.Enabled := (edtUsuario.Text <> '') and (edtSenha.Text <> '') ;
end;

procedure TFrm_Login.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
   btnEntrar.Click ;
end;

procedure TFrm_Login.FormCreate(Sender: TObject);
begin
  Retorno.Usuario := '' ;
  Retorno.Senha   := '' ;
  Retorno.Ok      := False ;
  Retorno.Empresa := '';

  {$IFDEF DEBUG}
    edtUsuario.Text := 'ADMIN' ;
    edtSenha.Text   := 'ldesistemas' ;
  {$ENDIF}

  CarregaEmpresas() ;

  DM.ArquivoConfiguracao := rgEmpresa.Items[rgEmpresa.ItemIndex]+'.conf' ;

  gfinalizar := AtualizaExe() ;

end;

procedure TFrm_Login.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Escape then
  begin
    Retorno.Usuario := '';
    Retorno.Senha := '';
    Retorno.Empresa := '';

    Close;
  end;

  if Key = VK_RETURN then
    btnEntrar.Click;
end;

end.

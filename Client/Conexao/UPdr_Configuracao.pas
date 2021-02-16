unit UPdr_Configuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.StrUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Segundo, Vcl.StdCtrls, Vcl.Buttons, System.UITypes, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

const
  mSenha = 'Takano2020';

type
  TConfiguracaoSistema = record
    NomeArquivo: string;
    BancoDados: string;
    Protocolo: string;
    Servidor: string;
    Porta: integer;
    FTP_Servidor: string;
    FTP_Porta: integer;
    FTP_Usuario: string;
    FTP_Senha: string;
  end;

type
  TPdr_Configuracao = class(TPdr_Segundo)
    OpenDialog1: TOpenDialog;
    pnlFundo: TPanel;
    lblTitulo: TLabel;
    pnlConfig: TPanel;
    pnlFTP: TPanel;
    pnlRodape: TPanel;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    imgSalvar: TImage;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    imgCancelar: TImage;
    lblTitConexao: TLabel;
    lblTitFtp: TLabel;
    Label8: TLabel;
    edtEmpresaConf: TEdit;
    Button2: TButton;
    lblBanco: TLabel;
    edtBanco: TEdit;
    lblPorta: TLabel;
    edtPorta: TEdit;
    lblProtocolo: TLabel;
    cbbProtocolo: TComboBox;
    lblFtpIP: TLabel;
    edtFtpIP: TEdit;
    lblFtpPorta: TLabel;
    edtFtpPorta: TEdit;
    lblIpServidor: TLabel;
    edtIpServidor: TEdit;
    Label1: TLabel;
    edtFtpUsuario: TEdit;
    Label2: TLabel;
    edtFtpSenha: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure edNomeArquivoKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirArquivo();
  end;

procedure EditarConfiguracao(pNomeArquivo: string);

function getConfiguracao(pNomeArquivo: string): TConfiguracaoSistema;

procedure setConfiguracao(pNomeArquivo: string; pConfiguracao: TConfiguracaoSistema);

function ListaArquivosConf(pDiretorio: string): TStrings;

var
  Pdr_Configuracao: TPdr_Configuracao;

implementation

{$R *.dfm}

uses
  UCriptografia, u_Mensagem, UFrm_VoltaSenha;

procedure EditarConfiguracao(pNomeArquivo: string);
var
  Aux: TPdr_Configuracao;
begin
  if VoltaSenha() <> mSenha then
    Exit;

  Aux := TPdr_Configuracao.Create(nil);
  try
    if pNomeArquivo <> '' then
    begin
      Aux.edtEmpresaConf.Text := pNomeArquivo;
      Aux.AbrirArquivo;
    end;
    Aux.ShowModal;
  finally
    FreeAndNil(Aux);
  end;
end;

function getConfiguracao(pNomeArquivo: string): TConfiguracaoSistema;
var
  Aux: TStringList;
begin
  if not FileExists(pNomeArquivo) then
    raise Exception.Create('Arquivo não encontrado');

  Aux := TStringList.Create;
  try
    Aux.LoadFromFile(pNomeArquivo);

    Criptografia.DecodificarTStrings(Aux, '');

    Result.BancoDados := Aux.Values['BancoDados'];
    Result.NomeArquivo := pNomeArquivo;
    Result.Porta := StrToIntDef(Aux.Values['Porta'], 0);
    Result.Protocolo := Aux.Values['Protocolo'];
    Result.Servidor := Aux.Values['Servidor'];

    Result.FTP_Servidor := Aux.Values['FTP_Servidor'];
    Result.FTP_Porta := StrToIntDef(Aux.Values['FTP_Porta'], 0);
    Result.FTP_Usuario := Aux.Values['FTP_Usuario'];
    Result.FTP_Senha := Aux.Values['FTP_Senha'];
  finally
    FreeAndNil(Aux);
  end;
end;

procedure setConfiguracao(pNomeArquivo: string; pConfiguracao: TConfiguracaoSistema);
var
  Aux: TStringList;
begin
  if pNomeArquivo = '' then
    raise Exception.Create('Nome do arquivo não pode estar em branco');

  Aux := TStringList.Create;
  try
    Aux.Values['BancoDados'] := pConfiguracao.BancoDados;
    Aux.Values['Porta'] := IntToStr(pConfiguracao.Porta);
    Aux.Values['Protocolo'] := pConfiguracao.Protocolo;
    Aux.Values['Servidor'] := pConfiguracao.Servidor;

    Aux.Values['FTP_Servidor'] := pConfiguracao.FTP_Servidor;
    Aux.Values['FTP_Porta'] := IntToStr(pConfiguracao.FTP_Porta);
    Aux.Values['FTP_Usuario'] := pConfiguracao.FTP_Usuario;
    Aux.Values['FTP_Senha'] := pConfiguracao.FTP_Senha;

    Criptografia.CodificarTStrings(Aux, '');

    Aux.SaveToFile(pNomeArquivo);
  finally
    FreeAndNil(Aux);
  end;

end;

function ListaArquivosConf(pDiretorio: string): TStrings;
var
  I: Integer;
  SearchRec: TSearchRec;
begin
  Result := TStringList.Create;
  try
    I := FindFirst(pDiretorio, 0, SearchRec);
    while I = 0 do
    begin

      if SearchRec.Attr <> faDirectory then
      begin
        Result.Add(
          ReverseString(
          Copy(ReverseString(SearchRec.Name),6,length(SearchRec.Name))));

//        Result.Add(SearchRec.Name);
      end;


      I := FindNext(SearchRec);
    end;
  except
    Result.Free;
    raise;
  end;
end;

procedure TPdr_Configuracao.AbrirArquivo;
var
  tmp: TConfiguracaoSistema;
begin
  if edtEmpresaConf.Text = '' then
  begin
    TMensagem.Atencao('Nome do arquivo não pode estar em branco.');
    edtEmpresaConf.SetFocus;
  end;
  tmp := getConfiguracao(edtEmpresaConf.Text);
  edtBanco.Text := tmp.BancoDados;
  cbbProtocolo.Text := tmp.Protocolo;
  edtIpServidor.Text := tmp.Servidor;
  edtPorta.Text := IntToStr(tmp.Porta);

  edtFtpIP.Text := tmp.FTP_Servidor;
  edtFtpPorta.Text := IntToStr(tmp.FTP_Porta);
  edtFtpUsuario.Text := tmp.FTP_Usuario;
  edtFtpSenha.Text := tmp.FTP_Senha;

 { if edFTPServidor.Text = '' then
    edFTPServidor.Text := '192.168.20.4' ;
  if (edFTPPorta.Text = '') or (edFTPPorta.Text = '0') then
    edFTPPorta.Text := '2121' ;}

end;

procedure TPdr_Configuracao.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TPdr_Configuracao.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TPdr_Configuracao.btnSalvarClick(Sender: TObject);
var
  tmp: TConfiguracaoSistema;
begin
  inherited;
  if edtEmpresaConf.Text = '' then
  begin
    TMensagem.Atencao('Nome do arquivo não pode estar em branco.');
    edtEmpresaConf.SetFocus;
  end;

  if Pos('.CONF', UpperCase(edtEmpresaConf.Text)) = 0 then
    edtEmpresaConf.Text := edtEmpresaConf.Text + '.conf';

  tmp.BancoDados := edtBanco.Text;
  tmp.Protocolo := cbbProtocolo.Text;
  tmp.Servidor := edtIpServidor.Text;
  tmp.Porta := StrToIntDef(edtPorta.Text, 0);

  tmp.FTP_Servidor := edtFtpIP.Text;
  tmp.FTP_Porta := StrToIntDef(edtFtpPorta.Text, 0);
  tmp.FTP_Usuario := edtFtpUsuario.Text;
  tmp.FTP_Senha := edtFtpSenha.Text;

  setConfiguracao(edtEmpresaConf.Text, tmp);
  Close;
end;

procedure TPdr_Configuracao.Button2Click(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
  begin
    edtEmpresaConf.Text := OpenDialog1.FileName;
    AbrirArquivo();
  end;
end;

procedure TPdr_Configuracao.edNomeArquivoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then  // enter
    AbrirArquivo;
end;

end.


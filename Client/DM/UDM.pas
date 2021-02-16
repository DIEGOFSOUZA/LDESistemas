Unit UDM;

interface

uses
  System.SysUtils,
  System.Classes,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,

  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait,


  FireDAC.Comp.Client,
  FireDAC.Phys.MSAcc,
  FireDAC.Stan.Param,
  FireDAC.DatS,

  FireDAC.DApt,

  FireDAC.Phys.DS,

  Data.DB,

  Vcl.ImgList,
  Vcl.Controls,
  Vcl.AppEvnts,

  Datasnap.DBClient,

  Data.DBXDataSnap,
  IPPeerClient,
  Data.DBXCommon,
  Datasnap.DSConnect,
  Data.SqlExpr,

  Data.DbxHTTPLayer,

  UClassDataSnap,
  UPadraoExecutaConsultaSQL,

  System.ImageList,
  System.IniFiles,Vcl.Dialogs,

  PngImageList;

type
  TEmpresa = record
    RazaoSocial : string ;
    Fantasia : string ;
    CNPJ : string ;
    InscEst : string ;
    UF : string ;
    Cidade : string;
    Endereco : string ;
    Numero : string ;
    Bairro : string ;
    Email : string ;
    Fone : string ;
    Celular : string;
    Cep : string;
end;

type
  TConexao = record
    Servidor : string ;
    Banco : string ;
    Porta : string ;
    Protocolo : string ;
  end;

type
  TDM = class(TDataModule)
    Conexao: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    PngImageList1: TPngImageList;
    il1: TImageList;
    il2: TImageList;
    ApplicationEvents1: TApplicationEvents;
    dsConsulta: TClientDataSet;
    dsConsulta2: TClientDataSet;
    dsConsulta3: TClientDataSet;
    dspRemotoNotaEntrada: TDSProviderConnection;
    dspROrcamento: TDSProviderConnection;
    ExecutaSQL1: TExecutaSQL;
    dspRFormaPagto: TDSProviderConnection;
    dspRPedido: TDSProviderConnection;
    dspRProducao: TDSProviderConnection;
    procedure DataModuleCreate(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure ExecutaSQL1ExecutaSQL(Sender: TObject; const pSQL: string;
      var pRetorno: OleVariant);
  private
    { Private declarations }
    FInstanceOwner: Boolean;
    FSMClient: TSMClient;
    fSMCadastroClient: TSMCadastroClient;
    fEmpresa: TEmpresa;
    FConexao: TConexao;
    fSMNotaClient: TSMNotaClient;
    fArquivoConfiguracao: string;
    fBancoDados: string;
    fSMOrcamento: TsmPDVClient;
    fSMFormaPagto: TSM_FinanceiroClient;
    fSMPedido: TSM_PedidoClient;
    fSMProducao: TSMProducaoClient;
    function GetSMClient: TSMClient;
  public
    { Public declarations }
    User,UserPerfil : string ;
    UserID : Integer ;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property SMClient: TSMClient read GetSMClient write FSMClient;
    property SMCadastroClient : TSMCadastroClient read fSMCadastroClient ;
    property SMNotaClient : TSMNotaClient read fSMNotaClient ;
    property SMOrcamento : TsmPDVClient read fSMOrcamento ;
    property SMFormaPagto : TSM_FinanceiroClient read fSMFormaPagto ;
    property SMPedido : TSM_PedidoClient read fSMPedido ;
    property SMProducao : TSMProducaoClient read fSMProducao ;
    property ArquivoConfiguracao : string read fArquivoConfiguracao write fArquivoConfiguracao ;

    function UsuarioDataHora() : string ;
    function ValidaUser(usuario, senha : string) : boolean ;
    function ProdutoExiste(pCodProduto: string): boolean;
    function VerificaProdutoFabricado(codProduto:string):boolean;
    function LerDataSet(pSQL : string) : OleVariant ;

    function LerConfig(sArq : string) : Boolean ;
    function AbrirConexao() : Boolean ;
    procedure FechaConexao() ;

    function UpdateorInsert(const BD, Tabela: string; pk: string; Dados: OleVariant): Integer;
    function ExecutarSQL(pBanco: string; pSQL: string): integer;

    function GetString(pSQL,pCampoRetorno : string) : string ;
    function GetInteger(pSQL,pCampoRetorno : string) : integer ;
    function GetFloat(pSQL,pCampoRetorno : string) : Double ;

    property Empresa : TEmpresa read fEmpresa ;
    property AConexao: TConexao read FConexao;
    property BancoDados : string read fBancoDados ;
    procedure CarregaEmpresa() ;
    procedure ConfiguraConexao(pEmpresa : string) ;
  end;

var
  DM: TDM;

implementation

uses
  UPdr_Configuracao, u_Mensagem;

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}

function TDM.AbrirConexao: Boolean;
var
  x: integer;
begin
  FechaConexao() ;

//  for x := 1 to 5 do
//  begin
//    try
//      SistemainternoConnection.Connected := True ;
//      Break ;
//    except on E : Exception do
//      begin
//        if Mensagem('Conexão com o Servidor','Erro na conexão com o Servidor' + #13 +
//                 'Tentando nova Conexão...'+ #13 +'Tentativa: '+IntToStr(x)+ ' / 5',
//                 [bdTentarNovamente,bdCancelar],imgErro) = 'cancelar' then
//          break
//        else
//          Sleep(2000) ;
//      end;
//    end;
//  end;

  try
    Conexao.Connected := True;
    Result := Conexao.Connected;
    if Result then
    begin
      FSMClient := TSMClient.Create(Conexao.DBXConnection);
      fSMCadastroClient := TSMCadastroClient.Create(Conexao.DBXConnection);
      fSMNotaClient := TSMNotaClient.Create(Conexao.DBXConnection);
      fSMOrcamento := TsmPDVClient.Create(Conexao.DBXConnection);
      fSMFormaPagto := TSM_FinanceiroClient.Create(Conexao.DBXConnection);
      fSMPedido := TSM_PedidoClient.Create(Conexao.DBXConnection);
      fSMProducao := TSMProducaoClient.Create(Conexao.DBXConnection);
    end;
  except
    on e: Exception do
    begin
      TMensagem.Erro('Erro: Servidor off-line. Contate o suporte.');
    end;

  end;
end;

procedure TDM.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
  if (Pos('Key violation', E.Message) > 0) or (Pos('violation of PRIMARY or UNIQUE KEY', E.Message) > 0) then
    TMensagem.Erro('Registro já existe na base de Dados' + #13 + 'Gravação não efetuada');
end;

procedure TDM.CarregaEmpresa;
var
  Aux: TClientDataSet;
begin
  Aux := TClientDataSet.Create(nil);
  try
    Aux.Data := LerDataSet('select a.CNPJ,a.INSC,a.RAZAO,a.FANTASIA,'+
                           'a.ENDERECO,a.NUMERO,a.BAIRRO,a.CIDADE,'+
                           'a.UF,a.FONE,a.CEL,a.EMAIL,a.CEP '+
                           'from EMPRESA a ');
    fEmpresa.Fantasia := Aux.FieldByName('fantasia').AsString;
    fEmpresa.RazaoSocial := Aux.FieldByName('razao').AsString;
    fEmpresa.CNPJ := Aux.FieldByName('cnpj').AsString;
    fEmpresa.InscEst := Aux.FieldByName('insc').AsString;
    fEmpresa.Cep := Aux.FieldByName('cep').AsString;
    fEmpresa.Cidade := Aux.FieldByName('cidade').AsString;
    fEmpresa.Endereco := Aux.FieldByName('endereco').AsString;
    fEmpresa.Numero := Aux.FieldByName('numero').AsString;
    fEmpresa.Bairro := Aux.FieldByName('bairro').AsString;
    fEmpresa.UF := Aux.FieldByName('uf').AsString;
    fEmpresa.Fone := Aux.FieldByName('fone').AsString;
    fEmpresa.Celular := Aux.FieldByName('cel').AsString;
    fEmpresa.Email := Aux.FieldByName('email').AsString;
//    fEmpresa.GravarXML   := Trim(Aux.FieldByName('GravarXML').AsString) ;
//    fEmpresa.Certificado := Trim(Aux.FieldByName('Certificado').AsString) ;
//    fEmpresa.Certificado_Senha := Trim(Aux.FieldByName('Certificado_Senha').AsString) ;
  finally
    FreeAndNil(Aux);
  end;
end;

procedure TDM.ConfiguraConexao(pEmpresa: string);
var
  tmp: TConfiguracaoSistema;
begin
  FechaConexao;

  fArquivoConfiguracao := pEmpresa;

  tmp := getConfiguracao(pEmpresa);

  fBancoDados := tmp.BancoDados;
  Conexao.Params.Values[TDBXPropertyNames.HostName] := tmp.Servidor;
  Conexao.Params.Values[TDBXPropertyNames.CommunicationProtocol] := tmp.Protocolo;
  Conexao.Params.Values[TDBXPropertyNames.Port] := IntToStr(tmp.Porta);

  fConexao.Servidor := tmp.Servidor;
  fConexao.Banco := pEmpresa;

  //***********Tempo de Espera de Resposta do Servidor********
  //Conexao.Params.Values[TDBXPropertyNames.CommunicationTimeout] := '10000' ;
end;

constructor TDM.Create(AOwner: TComponent);
begin
  inherited;
//  FInstanceOwner := True;
//  BancoDados := 'C:\BD\SISTEMA.FDB' ;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  fArquivoConfiguracao := '';
  FSMClient := nil;
  fSMCadastroClient := nil;
  fSMNotaClient := nil;
  fSMOrcamento := nil;
  fSMFormaPagto := nil;
  fSMPedido := nil;
  fSMProducao := nil;
end;

destructor TDM.Destroy;
begin
  FechaConexao ;
//  inherited;
end;


function TDM.ExecutarSQL(pBanco, pSQL: string): integer;
begin
  Result := FSMClient.Executar(pBanco,pSQL) ;
end;

procedure TDM.ExecutaSQL1ExecutaSQL(Sender: TObject; const pSQL: string; var pRetorno: OleVariant);
begin
  pRetorno := LerDataSet(pSQL);
end;

procedure TDM.FechaConexao;
begin
  if Conexao.Connected then
    Conexao.Close;
  FreeAndNil(fSMCadastroClient);
  FreeAndNil(FSMClient);
  FreeAndNil(fSMNotaClient);
  FreeAndNil(fSMOrcamento);
  FreeAndNil(fSMFormaPagto);
  FreeAndNil(fSMPedido);
  FreeAndNil(fSMProducao);
end;

function TDM.GetSMClient: TSMClient;
begin
//  if FSMClient = nil then
//  begin
//    SistemainternoConnection.Open;
//    FSMClient := TSMClient.Create(SistemainternoConnection.DBXConnection, FInstanceOwner);
//    fSMCadastroClient := TSMCadastroClient.Create(SistemainternoConnection.DBXConnection, FInstanceOwner);
//  end;
//  Result := FSMClient;
end;

function TDM.GetString(pSQL, pCampoRetorno: string): string;
begin
  Result := fSMCadastroClient.GetString(BancoDados,pSQL,pCampoRetorno) ;
end;

function TDM.GetFloat(pSQL, pCampoRetorno: string): Double;
begin
    Result := fSMCadastroClient.GetFloat(BancoDados,pSQL,pCampoRetorno) ;
end;

function TDM.GetInteger(pSQL, pCampoRetorno: string): integer;
begin
  Result := fSMCadastroClient.GetInteger(BancoDados,pSQL,pCampoRetorno) ;
end;

function TDM.LerConfig(sArq: string): Boolean;
var
  tmp: TConfiguracaoSistema;
begin
//  FechaConexao;
//
//  fArquivoConfiguracao := pNomeArquivo;
//
//  tmp := getConfiguracao(pNomeArquivo);
//
//  fBancoDados := tmp.BancoDados;
//  Conexao.Params.Values[TDBXPropertyNames.HostName] := tmp.Servidor;
//  Conexao.Params.Values[TDBXPropertyNames.CommunicationProtocol] := tmp.Protocolo;
//  Conexao.Params.Values[TDBXPropertyNames.Port] := IntToStr(tmp.Porta);

  //***********Tempo de Espera de Resposta do Servidor********
  //Conexao.Params.Values[TDBXPropertyNames.CommunicationTimeout] := '10000' ;
end;
//var
//  aConf: TiniFile;
//  servidor, protocolo, porta, banco: string;
//begin
//  Result := False ;
//
//  if FileExists(sArq) then
//  begin
//    try
//      aConf := TIniFile.Create(sArq);
//      servidor := aConf.ReadString('CONFIGURACAO', 'servidor', servidor);
//      protocolo := aConf.ReadString('CONFIGURACAO', 'protocolo', protocolo);
//      porta := aConf.ReadString('CONFIGURACAO', 'porta', porta);
//      BancoDados := aConf.ReadString('CONFIGURACAO', 'banco', banco);
//
//      Conexao.Params.Values[TDBXPropertyNames.HostName] := servidor;
//      Conexao.Params.Values[TDBXPropertyNames.CommunicationProtocol] := protocolo;
//      Conexao.Params.Values[TDBXPropertyNames.Port] := porta;
//      Result := True;
//
//      FConexao.Servidor := servidor ;
//      FConexao.Banco := BancoDados ;
//      FConexao.Porta := porta ;
//      FConexao.Protocolo := protocolo ;
//    except
//      begin
//        Result := False;
//        MessageDlg('Erro: Arquivo de Configuração não encontrado.', mtError, [mbOK], 0);
//      end;
//
//    end;
//  end
//  else
//    MessageDlg('Erro: Arquivo de Configuração não encontrado.', mtError, [mbOK], 0);
//end;

function TDM.LerDataSet(pSQL: string): OleVariant;
begin
  Result := FSMClient.LerDataSet(BancoDados,pSQL) ;
end;

function TDM.ValidaUser(usuario, senha: string): boolean;
var
  txt: string;
  tmp: TClientDataSet;
begin
  Result := False;

  tmp := TClientDataSet.Create(nil);
  try
    txt := 'SELECT USU_ID,USU_NOME,ATIVO,PERFIL FROM USUARIO '+
           'WHERE UPPER(USU_NOME) = '+QuotedStr(AnsiUpperCase(Trim(usuario)))+
           ' AND USU_SENHA = ' + QuotedStr(Trim(senha));

    tmp.Close;
    tmp.Data := fSMClient.LerDataSet(BancoDados, txt);

    if not tmp.IsEmpty then
    begin
      if tmp.FieldByName('ativo').AsString = 'Não' then
      begin
        TMensagem.Informacao('Não foi possivel logar no sistema.'+#13+'Usuário está inativo');
      end
      else
      begin
        Result := True;
        user := usuario;
        UserID := tmp.FieldByName('USU_ID').AsInteger;
        UserPerfil := tmp.FieldByName('PERFIL').AsString;
      end;
    end
    else
    begin
      TMensagem.Informacao('Login não efetuado.' + #13#10 + 'Usuário / senha não encontrados.');
    end;

  finally
    FreeAndNil(tmp);
  end;


end;

function TDM.ProdutoExiste(pCodProduto: string): boolean;
var
  txt: string;
  tmp: TClientDataSet;
begin
  Result := False;

  tmp := TClientDataSet.Create(nil);
  try
    txt := 'SELECT CODIGO FROM PRODUTO WHERE CODIGO = ' + pCodProduto +
           ' and TIPO_PRODUTO = ''PA'' ' ;
    tmp.Close;
    tmp.Data := FSMClient.LerDataSet(BancoDados, txt);

    if not tmp.IsEmpty then
    begin
      Result := True;

    end;
  finally
    FreeAndNil(tmp);
  end;
end;

function TDM.UpdateorInsert(const BD, Tabela: string; pk: string;
  Dados: OleVariant): Integer;
begin
  Result := fSMCadastroClient.UpdateorInsert(BD,Tabela,pk,Dados) ;
end;

function TDM.UsuarioDataHora: string;
begin
  Result := User+'|'+ FormatDateTime('dd/mm/yy|hh:MM',Now) ;
end;

function TDM.VerificaProdutoFabricado(codProduto: string): boolean;
var
  txt: string;
  tmp: TClientDataSet;
begin
  Result := False;

  tmp := TClientDataSet.Create(nil);
  try
    txt := 'SELECT CODIGO_PRODUTO FROM PRODUTO_FABRICADO ' + ' WHERE CODIGO_PRODUTO = ' + QuotedStr(AnsiUpperCase(Trim(codProduto)));
    tmp.Close;
    tmp.Data := SMClient.LerDataSet(BancoDados, txt);

    if not tmp.IsEmpty then
    begin
      Result := True;
    end;
  finally
    FreeAndNil(tmp);
  end;
end;

end.


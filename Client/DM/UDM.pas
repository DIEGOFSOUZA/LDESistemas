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

  Winapi.ActiveX,
  PngImageList, scExcelExport;

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
  TUsuario = record
    ID : Integer;
    Login : string;
    Ativo : Boolean;
    Perfil : string;

    GrupoAtivo : Boolean;
    AcessoPDV : Boolean;
    AcessoFinanceiro : Boolean;
    AcessoOP : Boolean;//OP = Ordem de producao
  end;

type
  TVersao = record
    SistemaRelease : string ;
    SistemaBuild : string ;
    BDRelease : string ;
    BDBuild : string ;
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
    dspRLer: TDSProviderConnection;
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
    dspRProduto: TDSProviderConnection;
    dspRSaveInCloud: TDSProviderConnection;
    dsConsulta4: TClientDataSet;
    scExcelExport1: TscExcelExport;
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
    fSMProduto: TSMProdutoClient;
    fVersao: TVersao;
    fUsuario: TUsuario;
    fSMSaveInCloud: TSM_SaveInCloudClient;
    function GetSMClient: TSMClient;
  public
//    User,UserPerfil : string ;
//    UserID : Integer ;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property SMClient: TSMClient read FSMClient;
    property SMCadastroClient : TSMCadastroClient read fSMCadastroClient ;
    property SMNotaClient : TSMNotaClient read fSMNotaClient ;
    property SMOrcamento : TsmPDVClient read fSMOrcamento ;
    property SMFormaPagto : TSM_FinanceiroClient read fSMFormaPagto ;
    property SMPedido : TSM_PedidoClient read fSMPedido ;
    property SMProducao : TSMProducaoClient read fSMProducao ;
    property SMProduto : TSMProdutoClient read fSMProduto ;
    property SMSaveInCloud : TSM_SaveInCloudClient read fSMSaveInCloud ;
    property ArquivoConfiguracao : string read fArquivoConfiguracao write fArquivoConfiguracao ;

    function UsuarioDataHora() : string ;
    function ValidaUser(usuario, senha: string; aExibirMSG:Boolean = true): integer;
    function ProdutoExiste(pCodProduto: string): boolean;
    function VerificaProdutoFabricado(codProduto:string):boolean;
    function LerDataSet(pSQL : string) : OleVariant ;

    function LerConfig(sArq : string) : Boolean ;
    function AbrirConexao() : Boolean ;
    procedure FechaConexao() ;
    procedure ExportarExcel(cds : TClientDataSet) ;

    function UpdateorInsert(const BD, Tabela: string; pk: string; Dados: OleVariant): Integer;
    function ExecutarSQL(pBanco: string; pSQL: string): integer;

    function GetString(pSQL,pCampoRetorno : string) : string ;
    function GetInteger(pSQL,pCampoRetorno : string) : integer ;
    function GetFloat(pSQL,pCampoRetorno : string) : Double ;

    property Empresa : TEmpresa read fEmpresa ;
    property Usuario : TUsuario read fUsuario;
    property SistemaVersao : TVersao read fVersao ;
    property AConexao: TConexao read FConexao;
    property BancoDados : string read fBancoDados ;
    procedure CarregaEmpresa() ;
    procedure ConfiguraConexao(pEmpresa : string) ;
  end;

var
  DM: TDM;

implementation

uses
  UPdr_Configuracao, u_Mensagem, UConstantes;

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
      fSMProduto := TSMProdutoClient.Create(Conexao.DBXConnection);
      fSMSaveInCloud := TSM_SaveInCloudClient.Create(Conexao.DBXConnection);
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
                           'a.UF,a.FONE,a.CEL,a.EMAIL,a.CEP,'+
                           '(select c.db_versao from control c)db_versao '+
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

    fVersao.BDRelease := Aux.FieldByName('db_versao').AsString;
    fVersao.BDBuild := '0';
    fVersao.SistemaRelease := UConstantes.Release;
    fVersao.SistemaBuild := UConstantes.Build;
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

procedure TDM.ExportarExcel(cds: TClientDataSet);
var
  sNomePlanilha: string;
begin
  if not DirectoryExists(GetCurrentDir + '\EXCEL\') then
    ForceDirectories(GetCurrentDir + '\EXCEL\');

  sNomePlanilha := InputBox('Salvar como', 'Dê o nome da Planilha: ', FormatDateTime('ddmmyyhhmmss', Now));

  if sNomePlanilha = EmptyStr then
    Exit;

  try
    CoInitialize(nil);
    scExcelExport1.ExcelVisible := False;
    scExcelExport1.Dataset := cds;
    scExcelExport1.ExportDataset;
    scExcelExport1.SaveAs(GetCurrentDir + '\EXCEL\' + sNomePlanilha, ffXLSX);
    scExcelExport1.Disconnect;
    MessageDlg('Arquivo gerado em: ' + GetCurrentDir + '\EXCEL\', mtInformation, [mbOK], 0);
  finally
    CoUninitialize;
  end;
end;

procedure TDM.FechaConexao;
begin
  if Conexao.Connected then
    Conexao.Close;
  FreeAndNil(FSMClient);
  FreeAndNil(fSMCadastroClient);
  FreeAndNil(fSMNotaClient);
  FreeAndNil(fSMOrcamento);
  FreeAndNil(fSMFormaPagto);
  FreeAndNil(fSMPedido);
  FreeAndNil(fSMProducao);
  FreeAndNil(fSMProduto);
  FreeAndNil(fSMSaveInCloud);
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
//
end;


function TDM.LerDataSet(pSQL: string): OleVariant;
begin
  Result := FSMClient.LerDataSet(BancoDados,pSQL) ;
end;

function TDM.ValidaUser(usuario, senha: string; aExibirMSG:Boolean = true): integer;
var
  txt: string;
  tmp: TClientDataSet;
begin               //0 invalido; 1 valido; 2 inativo
  Result := 0;

  tmp := TClientDataSet.Create(nil);
  try
    txt := 'select U.USU_ID, U.USU_NOME, U.ATIVO, U.PERFIL, UG.ATIVO GRUPOATIVO,'+
           'UG.ACESSO_PDV, UG.ACESSO_OP, UG.ACESSO_FINANCEIRO '+
           'from USUARIO U '+
           'left join USUARIO_GRUPO UG on (UG.ID = U.ID_GRUPO) '+
           'WHERE UPPER(USU_NOME) = '+QuotedStr(AnsiUpperCase(Trim(usuario)))+
           ' AND USU_SENHA = ' + QuotedStr(Trim(senha));

    tmp.Close;
    tmp.Data := fSMClient.LerDataSet(BancoDados, txt);

    if not tmp.IsEmpty then
    begin
      if (tmp.FieldByName('ativo').AsString = 'Não') then
      begin
        Result := 2;
//        TMensagem.Informacao('Usuário Inativo');
      end
      else
      begin
        Result := 1;
        fUsuario.ID := tmp.FieldByName('USU_ID').AsInteger;
        fUsuario.login := usuario;
        fUsuario.Ativo := True;
        fUsuario.Perfil := tmp.FieldByName('PERFIL').AsString;

        //***Tabela USUARIO_GRUPO***
        fUsuario.GrupoAtivo := (tmp.FieldByName('GRUPOATIVO').AsInteger = 1);
        fUsuario.AcessoPDV := (tmp.FieldByName('ACESSO_PDV').AsInteger = 1);
        fUsuario.AcessoFinanceiro := (tmp.FieldByName('ACESSO_FINANCEIRO').AsInteger = 1);
        fUsuario.AcessoOP := (tmp.FieldByName('ACESSO_OP').AsInteger = 1);
      end;
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
  Result := Usuario.login+'|'+ FormatDateTime('dd/mm/yy|hh:MM',Now) ;
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


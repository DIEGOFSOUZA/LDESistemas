unit uSMCadastro;

interface

uses
  System.SysUtils,
  System.Classes,
  System.Variants,
  System.DateUtils,

  Datasnap.DSServer,
  Datasnap.DSAuth,
  Datasnap.DSProviderDataModuleAdapter,
  Datasnap.DBClient,
  Data.DB;

type
  TSMCadastro = class(TDSServerModule)
  private
    { Private declarations }
  public
    { Public declarations }
    //Volta Generator
    function GetGenerator(const BD, pNomeGenerator: string; pIncremento: SmallInt): integer;
    function Insert(const BD, Tabela: string; Dados: OleVariant): Integer;
    function UpdateorInsert(const BD, Tabela: string; pk: string; Dados: OleVariant): Integer;
    function Executar(const BD, Txt: string): integer;
    function GetString(const BD, Txt, campoRetorno: string): string;
    function GetInteger(const BD, Txt, campoRetorno: string): Integer;
    function GetFloat(const BD, Txt, campoRetorno: string): Double;

    //Cadastro da Empresa
    function getEmpresa(const BD: string; pCodigo: integer): OleVariant;
    function setEmpresa(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;

    {Cadastro de Cidades}
    function getCidades(const BD: string; pCodigo: integer): OleVariant;
    function setCidades(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;

    {Cadastro de Funcionarios}
    function getFuncionario(const BD: string; pCodigo: integer): OleVariant;
    function setFuncionario(const BD: string; pCodigo: integer; const pDados: OleVariant): OleVariant;
    function getUsuario(const BD: string; pCodigo: integer): OleVariant;
    function setUsuario(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;

    {Cadastro de Clientes}
    function getCliente(const BD: string; pCodigo: integer): OleVariant;
    function setCliente(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getRamo(const BD: string; pCodigo: integer): OleVariant;
    function setRamo(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function setClientePDV(const BD: string; pCPF_CNPJ: string; const Dados: OleVariant): Integer;

    {Cadastro de Representante}
    function getRepresentante(const BD: string; pCodigo: integer): OleVariant;
    function setRepresentante(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;

    {Cadastro de Fornecedores}
    function getFornecedor(const BD: string; pCodigo: integer): OleVariant;
    function setFornecedor(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getProdutoFornecedor(const BD: string; pCodigo: integer): OleVariant;
    function getGrupoFornecedor(const BD: string; pCodigo: integer): OleVariant;
    function setGrupoFornecedor(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;

    {Cadastro de Transportadora}
    function getTransportadora(const BD: string; pCodigo: integer): OleVariant;
    function setTransportadora(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;

    {Cadastro de Produtos}
    function setProduto(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getProduto(const BD: string; pCodigo: integer): OleVariant;
    function setGrupoProdutos(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getGrupoProdutos(const BD: string; pCodigo: integer): OleVariant;
    function setSubGrupoProdutos(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getSubGrupoProdutos(const BD: string; pCodigo: integer): OleVariant;
    function getUnidade(const BD: string; pCodigo: string): OleVariant;
    function setUnidade(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;

    {Materia Prima}
    function setMateriaPrima(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getMateriaPrima(const BD: string; pCodigo: integer): OleVariant;

    {Cadastro Ficha-Tecnica Produto}
    function getProdutoComposicao(const BD: string; pCodPro: integer): OleVariant;
    function getProdutoInsumo(const BD: string; pCodigo: integer): OleVariant;

    {Ordem de Producao}
    function setOrdemProducao(const BD: string; pCodigo: integer; pLote: string; const Dados: OleVariant): OleVariant;
    function getOrdemProducao(const BD: string; pCodigo: integer; pLote: string): OleVariant;

    {Serviços}
    function getGrupoServico(const BD: string; pCodigo: integer): OleVariant;
    function setGrupoServico(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getServico(const BD: string; pCodigo: integer): OleVariant;
    function setServico(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;

    {NFe - NOTAS DE SAIDA}
    function getNfeMsgAdicional(const BD: string; pCodigo: integer): OleVariant;
    function setNfeMsgAdicional(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getNfeConfigFiscal(const BD: string; pCodigo: integer): OleVariant;
    function setNfeConfigFiscal(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getNfeCenario(const BD: string; pCodigo: integer): OleVariant;
    function setNfeCenario(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;

    {NFe - NOTAS DE ENTRADA(CONTAS A PAGAR)}
    function setNotaEntrada(const BD: string; pID : Integer; pNota, pItens,
                            pPagar: OleVariant): Integer;
    function getHistorico(const BD: string; pCodigo: integer): OleVariant;
    function setHistorico(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getHistoricoGrupo(const BD: string; pCodigo: integer): OleVariant;
    function setHistoricoGrupo(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getContaBancaria(const BD: string; pCodigo: integer): OleVariant;
    function setContaBancaria(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;

    {Contabilidade}
    function setNatOperacao(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
    function getNatOperacao(const BD: string; pCodigo: integer): OleVariant;

    {Contas a Receber}
    function getCondPagto(const BD : string; pID : Integer) : OleVariant ;
    function setCondPagto(const BD : string; pID : Integer; const Dados : OleVariant) : OleVariant ;
    {CAIXA}
    function setCaixa(const BD : string; setTipo : string; IDCaixa : integer;
                        usuario : string; FormaPagto : string;Valor : Currency;
                        Obs_AbertFech, obsEntSaida : string) : Boolean;
    {Lancamento}
    function getLancamento(const BD : string; pID : Integer) : OleVariant ;
    function setLancamento(const BD : string; pID : Integer; const Dados : OleVariant) : OleVariant ;
    {Cheque}
    function getCheque(const BD : string; pIDConta : string; pNCheque : Integer) : OleVariant ;
    function setCheque(const BD : string; pIDConta : string; pNCheque : Integer; const Dados : OleVariant) : OleVariant ;

  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uServerDM, uSM, uFields;

{$R *.dfm}

{ TSMCadastro }

function TSMCadastro.Executar(const BD, Txt: string): integer;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    Result := DM.Executar(Txt);
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;


function TSMCadastro.getCheque(const BD: string; pIDConta: string;
  pNCheque: Integer): OleVariant;
const
  SQL = 'SELECT r.ID_BANCO, r.NUM_CHEQUE, r.DT_EMISSAO,'+
        'r.DT_COMPENSA, r.VALOR, r.NOMINAL, r.OBS,a.BCO_NOME '+
        'FROM CHEQUE r '+
        'left outer join CONTA_BANCARIA a on (a.ID = r.ID_BANCO) '+
        'where r.id_banco = %s and r.num_cheque = %s';
var
  DM: TServerDM;
begin
  if pIDConta = '' then
  begin
    raise Exception.Create('Servidor Aplicativo: Parâmetro nao informado.');
  end;

  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet(Format(SQL, [QuotedStr(pIDConta),IntToStr(pNCheque)]));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setCheque(const BD: string; pIDConta: string;
  pNCheque: Integer; const Dados: OleVariant): OleVariant;
var
  mCodigo: integer;
  DM: TServerDM;
  Campo : Array[0..1] of TCampoValor ;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    Campo[0].Campo := 'id_banco';
    Campo[0].Valor := pIDConta;
    Campo[1].Campo := 'num_cheque';
    Campo[1].Valor := IntToStr(pNCheque);

    txt := GetString(BD, Format(SQL_Fields, [QuotedStr('CHEQUE')]), 'nome_campo');

    try
      DM.GravarTabelaSimples(True, 'CHEQUE', txt, Dados, Campo, [], True);
      Result := getCheque(BD, pIDConta,pNCheque);
    except
      on E: Exception do
        raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getCidades(const BD: string; pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from CIDADES ' + ' where codigo = ' + IntToStr(pCodigo));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getCliente(const BD: string; pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select a.*, b.descri ramo,c.nome repnome '+
                              'from cliente a '+
                              'left outer join RAMO_ATIVIDADE b on (b.codigo = a.cod_ramoatividade) '+
                              'left outer join REPRESENTANTE c on (c.codigo = a.cod_representante) '+
                              'where a.codigo = '+ IntToStr(pCodigo) ) ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getCondPagto(const BD: string; pID: Integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from CONDPAGTO ' + ' where codigo = ' + IntToStr(pID));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setCondPagto(const BD: string; pID: Integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
    txt : string ;
begin
  DM := TServerDM.Create(BD);
  try
    if pID = 0 then
      mCodigo := GetGenerator(BD,'GEN_CONDPAGTO',1)
    else
      mCodigo := pID ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    txt := GetString(BD,Format(SQL_Fields,[QuotedStr('CONDPAGTO')]),'nome_campo') ;

    try
      DM.GravarTabelaSimples(True,'CONDPAGTO',txt,Dados,[Campo],[],True);
      Result := getCondPagto(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getEmpresa(const BD: string; pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select e.* from EMPRESA e ' + 'where e.codigo = ' + IntToStr(pCodigo));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getFornecedor(const BD: string; pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select a.*,b.DESCRI grupo ' + 'from FABRICANTE a ' +
                              'left outer join GRUPO_FABRICANTE b on (b.CODIGO = a.CODGRUPO) ' +
                              'where a.codigo = ' + IntToStr(pCodigo));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getFuncionario(const BD: string; pCodigo: integer): OleVariant;
var
  DM: TServerDM;
  mFuncionario, mUsuario: OleVariant;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    try
      //***************Tabela Funcionario*********************
      txt := 'select * from FUNCIONARIO ' + ' where codigo = ' + IntToStr(pCodigo);
      mFuncionario := DM.LerDataSet(txt);

      Result := VarArrayOf([mFuncionario]);
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.GetGenerator(const BD, pNomeGenerator: string; pIncremento: SmallInt): integer;
var
  Aux: TClientDataSet;
  txt: string;
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  Aux := TClientDataSet.Create(nil);
  txt := 'select GEN_ID(' + pNomeGenerator + ',' + IntToStr(pIncremento) + ') cd from RDB$DATABASE';
  try
    try
      Aux.Data := DM.LerDataSet(txt);
      Result := Aux.FieldByName('cd').AsInteger;
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    FreeAndNil(Aux);
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;


function TSMCadastro.getGrupoFornecedor(const BD: string; pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from GRUPO_FABRICANTE ' + ' where codigo = ' + IntToStr(pCodigo));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;


function TSMCadastro.getGrupoProdutos(const BD: string; pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from GRUPO_PROD ' + ' where codigo = ' + IntToStr(pCodigo));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getGrupoServico(const BD: string; pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from GRUPO_SERVICO ' + ' where codigo = ' + IntToStr(pCodigo));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getLancamento(const BD: string; pID: Integer): OleVariant;
const
  SQL = 'SELECT r.ID, r.ID_CONTA, r.DTMOVTO, r.DOC, r.VALOR, r.ID_HISTORICO, r.DC, r.OBS,'+
        'r.ID_FORNECEDOR,a.BCO_NOME,b.DESCRICAO,c.RAZAO_NOME '+
        'FROM LANCAMENTO r '+
        'left outer join CONTA_BANCARIA a on (a.ID = r.ID_CONTA) '+
        'left outer join HISTORICO b on (b.ID = r.ID_HISTORICO) '+
        'left outer join FABRICANTE c on (c.CODIGO = r.ID_FORNECEDOR) '+
        'where r.ID = %s';
var
  DM: TServerDM;
begin
  if pID < 0 then
    Exit;

  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet(Format(SQL, [IntToStr(pID)]));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setLancamento(const BD: string; pID: Integer;
  const Dados: OleVariant): OleVariant;
var
  mCodigo: integer;
  DM: TServerDM;
  Campo: TCampoValor;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    if pID = 0 then
      mCodigo := GetGenerator(BD, 'GEN_LANCAMENTO', 1)
    else
      mCodigo := pID;

    Campo.Campo := 'id';
    Campo.Valor := IntToStr(mCodigo);

    txt := GetString(BD, Format(SQL_Fields, [QuotedStr('LANCAMENTO')]), 'nome_campo');

    try
      DM.GravarTabelaSimples(True, 'LANCAMENTO', txt, Dados, [Campo], [], True);
      Result := getLancamento(BD, mCodigo);
    except
      on E: Exception do
        raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getMateriaPrima(const BD: string;
  pCodigo: integer): OleVariant;
var
  DM: TServerDM;
  mProduto, mProdutoFornecedor: OleVariant;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    try
      //***************Tabela Produto(Mat. Prima)*********************
       txt := 'SELECT P.*,U.NOME DESCRI_UNIDADE,'+
              'F.RAZAO_NOME FABRICANTE,G.DESCRI GRUPO,S.DESCRI SUBGRUPO,'+
              'N.DESCRICAO DESCRI_NCM,X.NOME CONV_DESCRIUNIDADE '+
              'FROM PRODUTO P '+
              'LEFT OUTER JOIN UNIDADE U ON (U.CODIGO = P.COD_UNIDADE) '+
              'LEFT OUTER JOIN UNIDADE X ON (X.CODIGO = P.CONV_UNIDADE) '+
              'LEFT OUTER JOIN FABRICANTE F ON (F.CODIGO = P.COD_FABRICANTE) '+
              'LEFT OUTER JOIN GRUPO_PROD G ON (G.CODIGO = P.COD_GRUPO) '+
              'LEFT OUTER JOIN SUBGRUPO_PROD S ON (S.CODIGO = P.COD_SUBGRUPO) '+
              'LEFT OUTER JOIN NCM N ON (N.NCM = P.COD_NCM)  '+
              'WHERE P.CODIGO = ' + IntToStr(pCodigo);

       mProduto := DM.LerDataSet(txt) ;

         //***************Tabela ProdutoFornecedor*********************
      txt := 'select a.*,b.RAZAO_NOME '+
             'from PRODUTO_FORNECEDOR a '+
             'LEFT OUTER JOIN FABRICANTE b ON (b.CODIGO = a.ID_FORNECEDOR) '+
             'where a.ID_PRODUTO = '+ IntToStr(pCodigo);

      mProdutoFornecedor := DM.LerDataSet(txt) ;

      Result := VarArrayOf([mProduto,mProdutoFornecedor]) ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getNatOperacao(const BD: string; pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from NATOPERACAO ' + ' where codigo = ' + IntToStr(pCodigo));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getNfeCenario(const BD: string;
  pCodigo: integer): OleVariant;
var DM : TServerDM ;
begin
  DM := TServerDM.Create(BD);
  try
    try
       Result := DM.LerDataSet('select nc.*,c.cfnome cfopEstado,cf.cfnome cfopInterEstadual '+
                               'from NFE_CENARIO nc '+
                               'left outer join CFOP c on (c.cfcod = nc.ICMS_CFOP_EST) '+
                               'left outer join CFOP cf on (cf.cfcod = nc.ICMS_CFOP_INTEREST) '+
                               'where codigo = ''' + IntToStr(pCodigo) +'''' +
                               ' order by descri') ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getNfeConfigFiscal(const BD: string;
  pCodigo: integer): OleVariant;
var DM : TServerDM ;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from NFE_CONFIGURACAOFISCAL '+
                              'where codigo = ' + IntToStr(pCodigo) ) ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getNfeMsgAdicional(const BD: string;
  pCodigo: integer): OleVariant;
var DM : TServerDM ;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from NFE_MSGADICIONAL ' +
        ' where codigo = ' + IntToStr(pCodigo) ) ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getHistorico(const BD: string;
  pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select a.*,b.descri grupo from HISTORICO a ' +
                              'left outer join HISTORICO_GRUPO b on (b.codigo = a.id_grupo) ' +
                              'where a.ID = ' + IntToStr(pCodigo));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getHistoricoGrupo(const BD: string;
  pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select a.* from HISTORICO_GRUPO a ' + 'where a.codigo = ' + IntToStr(pCodigo));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setHistorico(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var
  mCodigo: integer;
  DM: TServerDM;
  Campo: TCampoValor;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := GetGenerator(BD, 'GEN_HISTORICO', 1)
    else
      mCodigo := pCodigo;

    Campo.Campo := 'id';
    Campo.Valor := IntToStr(mCodigo);

    txt := GetString(BD, Format(SQL_Fields, [QuotedStr('HISTORICO')]), 'nome_campo');

    try
      DM.GravarTabelaSimples(True, 'HISTORICO', txt, Dados, [Campo], [], True);
      Result := getHistorico(BD, mCodigo);
    except
      on E: Exception do
        raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setHistoricoGrupo(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
var
  mCodigo: integer;
  DM: TServerDM;
  Campo: TCampoValor;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := GetGenerator(BD, 'GEN_HISTORICO_GRUPO', 1)
    else
      mCodigo := pCodigo;

    Campo.Campo := 'codigo';
    Campo.Valor := IntToStr(mCodigo);

    txt := GetString(BD, Format(SQL_Fields, [QuotedStr('HISTORICO_GRUPO')]), 'nome_campo');

    try
      DM.GravarTabelaSimples(True, 'HISTORICO_GRUPO', txt, Dados, [Campo], [], True);
      Result := getHistoricoGrupo(BD, mCodigo);
    except
      on E: Exception do
        raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getContaBancaria(const BD: string;
  pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select a.* from CONTA_BANCARIA a ' +
                              'where a.ID = ' + IntToStr(pCodigo));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setContaBancaria(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
var
  mCodigo: integer;
  DM: TServerDM;
  Campo: TCampoValor;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := GetGenerator(BD, 'GEN_CONTABANCARIA', 1)
    else
      mCodigo := pCodigo;

    Campo.Campo := 'id';
    Campo.Valor := IntToStr(mCodigo);

    txt := GetString(BD, Format(SQL_Fields, [QuotedStr('CONTA_BANCARIA')]), 'nome_campo');

    try
      DM.GravarTabelaSimples(True, 'CONTA_BANCARIA', txt, Dados, [Campo], [], True);
      Result := getContaBancaria(BD, mCodigo);
    except
      on E: Exception do
        raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getOrdemProducao(const BD: string;
  pCodigo: integer; pLote : string): OleVariant;
const
    SQL_LOTE      =    'SELECT a.* FROM LOTE a where a.ID = %s' ;

    SQL_LOTEITENS =    'SELECT a.*,b.NOME,c.SIGLA UM FROM LOTE_ITENS a '+
                       'left outer join PRODUTO b on (b.CODIGO = a.CODPRO) '+
                       'left outer join UNIDADE c on (c.codigo = a.COD_UM) '+
                       'where a.ID_LOTE = %s' ;

    SQL_LOTE_MAPRIMA = 'SELECT a.* FROM LOTE_MATPRIMA a '+
                       'where a.ID_LOTE = %s' ;
var
  DM: TServerDM;
  mLote, mLoteItens, mLoteMatPrima : OleVariant;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    try
      mLote := DM.LerDataSet(Format(SQL_LOTE, [IntToStr(pCodigo)]));

      mLoteItens := DM.LerDataSet(Format(SQL_LOTEITENS, [QuotedStr(pLote)]));

      mLoteMatPrima := DM.LerDataSet(Format(SQL_LOTE_MAPRIMA, [QuotedStr(pLote)]));

      Result := VarArrayOf([mLote, mLoteItens, mLoteMatPrima]);
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setOrdemProducao(const BD: string; pCodigo : integer; pLote: string; const Dados: OleVariant): OleVariant;
const
      SQL_MATPRIMA = 'with MATERIAIS as '+
                     '( '+
                     'select b.ID_MATPRIMA,(a.QTDE * b.QTDE) qtde '+
                     'from LOTE_ITENS a '+
                     'left outer join PRODUTO_COMPOSICAO b on (b.ID_PRODUTO = a.CODPRO) '+
                     'where a.ID_LOTE = %s '+
                     ') '+
                     'select x.id_matprima,sum(x.qtde)qtde '+
                     'from MATERIAIS x '+
                     'group by 1' ;
var
  mCodigo: integer;
  DM: TServerDM;
  CampoLote, CampoLoteItens: TCampoValor;
  txt : string ;
begin
  try
    try
      DM := TServerDM.Create(BD);

       {Grava Tabela LOTE}
      if Dados[0] <> Null then
      begin
        if pCodigo = 0 then
          mCodigo := GetGenerator(BD, 'GEN_LOTE', 1)
        else
          mCodigo := pCodigo;

        CampoLote.Campo := 'ID';
        CampoLote.Valor := IntToStr(mCodigo);

        txt := GetString(BD, Format(SQL_Fields, [QuotedStr('LOTE')]), 'nome_campo');

        DM.GravarTabelaSimples(False, 'LOTE', txt, Dados[0], [CampoLote], [], True);
      end;

     {Grava Tabela LOTE_ITENS}
      if Dados[1] <> null then
      begin
        CampoLoteItens.Campo := 'ID';
        CampoLoteItens.Valor := '0';

        txt := GetString(BD,Format(SQL_Fields,[QuotedStr('LOTE_ITENS')]),'nome_campo');
        DM.GravarTabelaSimples(False, 'LOTE_ITENS', txt, Dados[1], [CampoLoteItens], [], False);
      end;

     {Criar registros de saida Matéria-Prima}
      if Dados[2] <> null then
      begin
        DM.GravarTabelaSimples(False, 'LOTE_MATPRIMA', 'ID,ID_LOTE,ID_MATPRIMA,QTDE,QTDE_FECHADA', Dados[2], [CampoLoteItens], [], False);
      end;

      DM.Commit;

      Result := getOrdemProducao(BD, mCodigo, pLote);
    except
      on E: Exception do
        raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;

end;

function TSMCadastro.setCidades(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select gen_id(gen_cidades_id,1) cd from RDB$DATABASE','cd')
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
//      DM.GravarTabelaSimples(True,'CIDADES','codigo,cod_uf,nome,uf,cod_ibge,cep',Dados,[Campo],[],True);
      Result := getCidades(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setCliente(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var
  mCodigo: integer;
  DM: TServerDM;
  Campo: TCampoValor;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from CLIENTE','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      txt := GetString(BD, Format(SQL_Fields, [QuotedStr('CLIENTE')]), 'nome_campo');
      DM.GravarTabelaSimples(True,'CLIENTE',txt,Dados,[Campo],[],True);

      Result := getCliente(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setClientePDV(const BD: string; pCPF_CNPJ: string;
  const Dados: OleVariant): Integer;
begin
  {Gravar Cliente}
  try
    Insert(BD, 'CLIENTE', Dados);
    Result := GetInteger(BD,'select a.CODIGO from CLIENTE a where a.CPF_CNPJ = '+QuotedStr(pCPF_CNPJ),'codigo');
  except
    on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
  end;

end;

function TSMCadastro.setEmpresa(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var
  mCodigo: integer;
  DM: TServerDM;
  Campo: TCampoValor;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from EMPRESA', 'cd') + 1
    else
      mCodigo := pCodigo;

    Campo.Campo := 'codigo';
    Campo.Valor := IntToStr(mCodigo);

    try
      txt := GetString(BD, Format(SQL_Fields, [QuotedStr('EMPRESA')]), 'nome_campo');
      DM.GravarTabelaSimples(True, 'EMPRESA', txt, Dados, [Campo], [], True);
      Result := getEmpresa(BD, mCodigo);
    except
      on E: Exception do
        raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setCaixa(const BD : string; setTipo : string; IDCaixa : integer;
                        usuario : string; FormaPagto : string;Valor : Currency;
                        Obs_AbertFech, obsEntSaida : string) : Boolean;
var
  txt: string;
  mCodigo : Integer ;
  mDataHora : TDateTime ;
  DM: TServerDM;
begin                         {setTipo = ABERTURA|FECHAMENTO|ENT/SAIDA|REABETURA}
  try
    DM := TServerDM.Create(BD);
    mDataHora := Now ;
//    mDataHora := IncDay(Now,-9) ;
    mCodigo := IDCaixa ;
    try
      if setTipo = 'ABERTURA' then //insert tab Caixa
      begin
        mCodigo := GetGenerator(BD,'GEN_CAIXA',1);
        txt := 'INSERT INTO CAIXA (ID, ABERTO_FECHADO)'+
               'VALUES ( '+
               '    :ID, '+
               '    :ABERTO_FECHADO '+
               ')';
        DM.Gravar.Close ;
        DM.Gravar.SQL.Clear ;
        DM.Gravar.SQL.Text := txt ;
        DM.Gravar.ParamByName('ID').AsInteger := mCodigo;
        DM.Gravar.ParamByName('ABERTO_FECHADO').AsString := 'A';
        DM.StartTransaction ;
        DM.Gravar.ExecSQL ;
        DM.TranGravacao.Commit ;
      end;

      if ((setTipo = 'FECHAMENTO') or (setTipo = 'REABERTURA')) then
      begin
        if setTipo = 'FECHAMENTO' then
          txt := 'UPDATE CAIXA a '+
                 'SET a.ABERTO_FECHADO = ''F'' '+
                 'WHERE a.ID = :ID' ;

        if setTipo = 'REABERTURA' then
          txt := 'UPDATE CAIXA a '+
                 'SET a.ABERTO_FECHADO = ''A'' '+
                 'WHERE a.ID = :ID' ;

        DM.Gravar.Close ;
        DM.Gravar.SQL.Clear ;
        DM.Gravar.SQL.Text := txt ;
        DM.Gravar.ParamByName('ID').AsInteger := mCodigo;
        DM.StartTransaction ;
        DM.Gravar.ExecSQL ;
        DM.TranGravacao.Commit ;
      end;

      if ((setTipo = 'ABERTURA') or (setTipo = 'FECHAMENTO')
           or (setTipo = 'REABERTURA')) then
      begin
      //insert tab Caixa_abert_fech
      txt := 'INSERT INTO CAIXA_ABERT_FECH (ID, ID_CAIXA, DT_HORA_ABERT_FECH,'+
             'USUARIO_ABERT_FECH, TIPO, SALDO, OBS ) '+
             'VALUES ( '+
             ':ID, :ID_CAIXA, :DT_HORA_ABERT_FECH, :USUARIO_ABERT_FECH,'+
             ':TIPO, :SALDO, :OBS)';

        DM.Gravar.Close ;
        DM.Gravar.SQL.Clear ;
        DM.Gravar.SQL.Text := txt ;
        DM.Gravar.ParamByName('ID').AsInteger := 0;
        DM.Gravar.ParamByName('ID_CAIXA').AsInteger := mCodigo;
        DM.Gravar.ParamByName('DT_HORA_ABERT_FECH').AsDateTime := mDataHora;
        DM.Gravar.ParamByName('USUARIO_ABERT_FECH').AsString := usuario;
        if ((setTipo = 'ABERTURA') or (setTipo = 'REABERTURA')) then
        begin
          DM.Gravar.ParamByName('TIPO').AsString := 'A';
        end
        else if setTipo = 'FECHAMENTO' then
        begin
          DM.Gravar.ParamByName('TIPO').AsString := 'F';
        end;
        DM.Gravar.ParamByName('SALDO').AsFloat := Valor;
        DM.Gravar.ParamByName('OBS').AsString := Obs_AbertFech;
        DM.StartTransaction ;
        DM.Gravar.ExecSQL ;
        DM.TranGravacao.Commit ;
      end;

      if ((setTipo <> 'FECHAMENTO') and (setTipo <> 'REABERTURA')) then
      begin
        {insert tab CAIXA_ENT_SAI}
        txt := 'INSERT INTO CAIXA_ENT_SAI (ID, ID_CAIXA, FORMA_PAGTO,'+
               'VALOR, TIPO, DATA_HORA, USUARIO, OBS) '+
               'VALUES ( :ID, :ID_CAIXA, :FORMA_PAGTO, :VALOR, :TIPO,'+
               ':DATA_HORA, :USUARIO, :OBS)';
        DM.Gravar.Close;
        DM.Gravar.SQL.Clear;
        DM.Gravar.SQL.Text := txt;
        DM.Gravar.ParamByName('ID').AsInteger := 0;
        DM.Gravar.ParamByName('ID_CAIXA').AsInteger := mCodigo;
        DM.Gravar.ParamByName('FORMA_PAGTO').AsString := FormaPagto;
        DM.Gravar.ParamByName('VALOR').AsFloat := Valor;
        DM.Gravar.ParamByName('DATA_HORA').AsDateTime := mDataHora;
        DM.Gravar.ParamByName('USUARIO').AsString := usuario;
        DM.Gravar.ParamByName('TIPO').AsString := setTipo + ' CAIXA';
        DM.Gravar.ParamByName('OBS').AsString := obsEntSaida;

        DM.StartTransaction;
        DM.Gravar.ExecSQL;
        DM.TranGravacao.Commit;
      end;

      Result := True ;
    except
      if DM.TranGravacao.Active then
        DM.TranGravacao.Rollback;
      Result := False ;
    end;
  finally
    DM.FecharConexao ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setFornecedor(const BD: string; pCodigo: integer; const Dados: OleVariant): OleVariant;
var
  mCodigo: integer;
  DM: TServerDM;
  Campo: TCampoValor;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from FABRICANTE', 'cd') + 1
    else
      mCodigo := pCodigo;

    Campo.Campo := 'codigo';
    Campo.Valor := IntToStr(mCodigo);

    try
      txt := GetString(BD,Format(SQL_Fields,[QuotedStr('FABRICANTE')]),'nome_campo') ;


      DM.GravarTabelaSimples(True, 'FABRICANTE', txt, Dados, [Campo], [], True);
      Result := getFornecedor(BD, mCodigo);
    except
      on E: Exception do
        raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setFuncionario(const BD: string; pCodigo: integer; const pDados: OleVariant): OleVariant;
var
  mCodigo: integer;
  DM: TServerDM;
  CampoCodFun: TCampoValor;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from FUNCIONARIO', 'cd') + 1
    else
      mCodigo := pCodigo;

    CampoCodFun.Campo := 'codigo';
    CampoCodFun.Valor := IntToStr(mCodigo);

    try
      //**************tabela Funcionario*****************************
      txt := GetString(BD, Format(SQL_Fields, [QuotedStr('FUNCIONARIO')]), 'nome_campo');
      if pDados[0] <> Null then
        DM.GravarTabelaSimples(False, 'FUNCIONARIO', txt, pDados[0], [CampoCodFun], [], True);

      Result := getFuncionario(BD, mCodigo);
    except
      on E: Exception do
        raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setGrupoFornecedor(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from GRUPO_FABRICANTE','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      DM.GravarTabelaSimples(True,'GRUPO_FABRICANTE','codigo,descri,obs',Dados,[Campo],[],True);
      Result := getGrupoFornecedor(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setGrupoProdutos(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from GRUPO_PROD','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      DM.GravarTabelaSimples(True,'GRUPO_PROD','codigo,descri,obs',Dados,[Campo],[],True);
      Result := getGrupoProdutos(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setGrupoServico(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from GRUPO_SERVICO','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      DM.GravarTabelaSimples(True,'GRUPO_SERVICO','codigo,descri,obs',Dados,[Campo],[],True);
      Result := getGrupoServico(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setMateriaPrima(const BD: string;
  pCodigo: integer; const Dados:OleVariant): OleVariant;
var
  txt: string;
  mCodigo: integer;
  DM: TServerDM;
  CampoID: TCampoValor;
begin
  try
    try
      DM := TServerDM.Create(BD);

      if pCodigo = 0 then
        mCodigo := GetGenerator(BD, 'GEN_PRODUTO', 1)
      else
        mCodigo := pCodigo;

      {Tabela Materia-Prima}
      if Dados[0] <> Null then
      begin
        txt := GetString(BD, Format(SQL_Fields, [QuotedStr('PRODUTO')]), 'nome_campo');

        CampoID.Campo := 'codigo';
        CampoID.Valor := IntToStr(mCodigo);

        DM.GravarTabelaSimples(True, 'PRODUTO', txt, Dados[0], [CampoID], [], True);
      end;

     {Tabela Fornecedor}
      if Dados[1] <> null then
      begin
        txt := GetString(BD, Format(SQL_Fields, [QuotedStr('PRODUTO_FORNECEDOR')]), 'nome_campo');
        DM.GravarTabelaSimples(False, 'PRODUTO_FORNECEDOR', txt, Dados[1], [], [], False);
      end;

      DM.Commit;

      Result := getMateriaPrima(BD,mCodigo);
    except
      on E: Exception do
      begin
        Result := False;
        raise Exception.Create('Servidor' + #13 + E.Message);
      end;
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;


function TSMCadastro.setNatOperacao(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from NATOPERACAO','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      DM.GravarTabelaSimples(True,'NATOPERACAO','codigo,descricao,datacadastro',Dados,[Campo],[],True);
      Result := getNatOperacao(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setNfeCenario(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
    txt : string ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from NFE_CENARIO','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      txt := 'CODIGO,DESCRI,ICMS_TRIB,ICMS_CFOP_EST,ICMS_CFOP_INTEREST,'+
             'ICMS_ORIGEM,ICMS_ALIQ,IPI_SIMNAO,IPI_TRIB,IPI_ALIQ,'+
             'PIS_TRIB,PIS_ALIQ,COFINS_TRIB,COFINS_ALIQ,OUTRAS_OBS' ;
      DM.GravarTabelaSimples(True,'NFE_CENARIO',txt,Dados,[Campo],[],True);
      Result := getNfeCenario(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setNfeConfigFiscal(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
    txt : string ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from NFE_CONFIGURACAOFISCAL','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      txt := 'CODIGO,CERTIFICADO,SENHA,AMBIENTE,PROXIMANOTA,SERIE,'+
              'TIPO_VOLUME_TRANSPORTADO,MOD_FRETEPADRAO,LOGONFE' ;
      DM.GravarTabelaSimples(True,'NFE_CONFIGURACAOFISCAL',txt,Dados,[Campo],[],True);
      Result := getNfeConfigFiscal(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setNfeMsgAdicional(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from NFE_MSGADICIONAL','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      DM.GravarTabelaSimples(True,'NFE_MSGADICIONAL','codigo,mensagem',Dados,[Campo],[],True);
      Result := getNfeMsgAdicional(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setNotaEntrada(const BD: string; pID: Integer; pNota, pItens, pPagar: OleVariant): Integer;
var
  mCodigo: integer;
  DM: TServerDM;
  Campo: TCampoValor;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    if pID = 0 then
      mCodigo := GetGenerator(BD, 'GEN_NOTAENTRADA', 1)
    else
      mCodigo := pID;

    Campo.Campo := 'ID';
    Campo.Valor := IntToStr(mCodigo);

    txt := GetString(BD, Format(SQL_Fields, [QuotedStr('NOTA_ENTRADA')]), 'nome_campo');

    try
      DM.GravarTabelaSimples(True, 'NOTA_ENTRADA', txt, pNota, [Campo], [], True);

      //Gravar Tabela Itens
      txt := GetString(BD, Format(SQL_Fields, [QuotedStr('NOTA_ENTRADA_ITENS')]), 'nome_campo');
      DM.GravarTabelaSimples(True, 'NOTA_ENTRADA_ITENS', txt, pNota, [Campo], [], True);

      //Gravar Tabela Duplicatas
      txt := GetString(BD, Format(SQL_Fields, [QuotedStr('NOTA_ENTRADA_PAGAR')]), 'nome_campo');
      DM.GravarTabelaSimples(True, 'NOTA_ENTRADA_PAGAR', txt, pNota, [Campo], [], True);

      Result := mCodigo;
    except
      on E: Exception do
      begin
        Result := -1;
        raise Exception.Create('Servidor' + #13 + E.Message);
      end;
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setProduto(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var
  DM: TServerDM;
  txt : string ;
  CampoProduto,CampoProdComposicao: TCampoValor;
begin
  try
    try
      DM := TServerDM.Create(BD);

    {Tabela PRODUTO}
      if Dados[0] <> Null then
      begin
        txt := GetString(BD, Format(SQL_Fields, [QuotedStr('PRODUTO')]), 'nome_campo');

        CampoProduto.Campo := 'CODIGO';
        CampoProduto.Valor := IntToStr(pCodigo) ;

        DM.GravarTabelaSimples(True, 'PRODUTO', Txt, Dados[0], [CampoProduto], [], True);
      end;

     {Tabela PRODUTO_COMPOSICAO}
      if Dados[1] <> null then
      begin
        txt := GetString(BD, Format(SQL_Fields, [QuotedStr('PRODUTO_COMPOSICAO')]), 'nome_campo');
        DM.GravarTabelaSimples(False, 'PRODUTO_COMPOSICAO', Txt, Dados[1], [], [], False);
      end;
      DM.Commit;

      Result := getProduto(BD, pCodigo);
    except
      on E: Exception do
        raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setRamo(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
    txt : string ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from RAMO_ATIVIDADE','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      txt := 'CODIGO,DESCRI' ;
      DM.GravarTabelaSimples(True,'RAMO_ATIVIDADE',txt,Dados,[Campo],[],True);
      Result := getRamo(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setServico(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from SERVICO','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      DM.GravarTabelaSimples(True,'SERVICO','codigo,descri,preco,unidade,codgrupo,obs',Dados,[Campo],[],True);
      Result := getServico(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setSubGrupoProdutos(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from SUBGRUPO_PROD','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      DM.GravarTabelaSimples(True,'SUBGRUPO_PROD','codigo,descri,obs',Dados,[Campo],[],True);
      Result := getSubGrupoProdutos(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setTransportadora(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var mCodigo : integer ;
    DM : TServerDM ;
    Campo : TCampoValor ;
    txt : string ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from TRANSPORTADORA','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      txt := 'CODIGO,TIPO_PESSOA,RAZAO,FANTASIA,CNPJ,CPF,CODFORNECEDOR,ISENTO_ICMS,'+
             'INSC_ESTADUAL,INSC_MUNICIPAL,MODAL,CONTATO_FONE,CONTATO_CEL,CONTATO_EMAIL,'+
             'CONTATO_NOME,CONTATO_SITE,CEP,ENDERECO,NUMERO,COMPLEMENTO,BAIRRO,'+
             'CIDADE,COD_PAIS,COD_EST' ;
      DM.GravarTabelaSimples(True,'TRANSPORTADORA',txt,Dados,[Campo],[],True);

     Result := getTransportadora(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;

end;

function TSMCadastro.setUnidade(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var
  DM: TServerDM;
  Campo: TCampoValor;
  mCodigo : Integer ;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := GetGenerator(BD,'GEN_UNIDADE',1)
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(pCodigo) ;

    try
      DM.GravarTabelaSimples(True,'UNIDADE','codigo,nome,sigla,padrao',Dados,[Campo],[],True);
      Result := getUnidade(BD,IntToStr(mCodigo) ) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.UpdateorInsert(const BD, Tabela: string; pk: string;
  Dados: OleVariant): Integer;
var
  DM: TServerDM;
  Origem: TClientDataSet;
  txt, campo1, campo2: string;
  x: integer;
begin
  campo1 := '';
  campo2 := '';
  Origem := TClientDataSet.Create(nil);
  DM := TServerDM.Create(BD);
  try
    Origem.Data := Dados;
    DM.StartTransaction;

    DM.Gravar.SQL.Clear;
    for x := 0 to Origem.FieldCount - 1 do
    begin
      if (not Origem.Fields[x].ReadOnly) then
      begin
        campo1 := campo1 + Origem.Fields[x].FieldName + ',';
        campo2 := campo2 + ':' + Origem.Fields[x].FieldName + ',';
      end;
    end;

    txt := 'update or insert into '+Tabela+'('+
            Copy(campo1, 1, Length(campo1) - 1)+')'+
            'values ('+Copy(campo2, 1, Length(campo2) - 1)+')'+
            'matching ('+pk+')';
    DM.Gravar.SQL.Add(txt);
//   DM.Gravar.SQL.SaveToFile('c:\up_ins.sql');

    try
      Origem.DisableControls;
      Origem.First;
      while not Origem.Eof do
      begin
        for x := 0 to Origem.FieldCount - 1 do
        begin
          if (not Origem.Fields[x].ReadOnly) then
          begin
            campo1 := Origem.Fields[x].FieldName;
            DM.Gravar.ParamByName(campo1).DataType := Origem.FieldByName(campo1).DataType;
            DM.Gravar.ParamByName(campo1).Value := Origem.FieldByName(campo1).Value;
          end;
        end;
        DM.Gravar.ExecSQL;
        Origem.Next;
      end;
      Origem.EnableControls;
      DM.Commit;
    except
      on e: Exception do
      begin
        DM.Rollback;
        raise Exception.Create(e.Message);
      end;
    end;

  finally
    DM.FecharConexao;
    FreeAndNil(DM);
    Origem.Close;
    FreeAndNil(Origem);
  end;
end;

function TSMCadastro.getProduto(const BD: string; pCodigo: integer): OleVariant;
var
  DM: TServerDM;
  mProduto, mComposicao: OleVariant;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    try
      //***************Tabela Produto*********************
       txt := 'SELECT P.*,U.NOME DESCRI_UNIDADE,' +
              'F.RAZAO_NOME FABRICANTE,G.DESCRI GRUPO,S.DESCRI SUBGRUPO,' +
              'N.DESCRICAO DESCRI_NCM,x.NOME CONV_DESCRIUNIDADE '+
              'FROM PRODUTO P '+
              'LEFT OUTER JOIN UNIDADE U ON (U.CODIGO = P.COD_UNIDADE) ' +
              'LEFT OUTER JOIN UNIDADE X ON (X.CODIGO = P.CONV_UNIDADE) '+
              'LEFT OUTER JOIN FABRICANTE F ON (F.CODIGO = P.COD_FABRICANTE) ' +
              'LEFT OUTER JOIN GRUPO_PROD G ON (G.CODIGO = P.COD_GRUPO) '+
              'LEFT OUTER JOIN SUBGRUPO_PROD S ON (S.CODIGO = P.COD_SUBGRUPO) ' +
              'LEFT OUTER JOIN NCM N ON (N.NCM = P.COD_NCM) '+
              'where p.codigo = ' + IntToStr(pCodigo);
             mProduto := DM.LerDataSet(txt) ;


         //***************Tabela Composicao*********************
      txt := 'select a.*,b.NOME materiaprima '+
             'from PRODUTO_COMPOSICAO a '+
             'left outer join PRODUTO b on (b.CODIGO = a.ID_MATPRIMA) '+
             'where a.ID_PRODUTO = '+ IntToStr(pCodigo) ;

      mComposicao := DM.LerDataSet(txt) ;


      Result := VarArrayOf([mProduto,mComposicao]) ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;

end;

function TSMCadastro.getProdutoComposicao(const BD: string;
  pCodPro: integer): OleVariant;
const
  SQL = 'select a.*,b.NOME materiaprima ' +
        'from PRODUTO_COMPOSICAO a ' +
        'left outer join PRODUTO b on (b.CODIGO = a.ID_MATPRIMA) ' +
        'where a.ID_PRODUTO = %s ';
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet(Format(SQL, [IntToStr(pCodPro)]));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getProdutoFornecedor(const BD: string;
  pCodigo: integer): OleVariant;
const
  SQL = 'select pf.id, pf.id_produto,p.nome as produto, pf.id_fornecedor,f.razao_nome,pf.preco,pf.referencia_fornec '+
             'from produto_fornecedor pf '+
             'LEFT OUTER JOIN produto  P on (p.codigo = pf.id_produto) '+
             'LEFT OUTER JOIN fabricante F ON (F.CODIGO = PF.id_fornecedor) '+
             'where pf.ID_PRODUTO = %s ';
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet(Format(SQL, [IntToStr(pCodigo)]));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;

end;

function TSMCadastro.getProdutoInsumo(const BD: string;
  pCodigo: integer): OleVariant;
var DM : TServerDM ;
begin

  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('SELECT PF.codigo_Produto,PF.codigo_insumo,pf.qtde,P.NOME as descricao_insumo FROM PRODUTO_FABRICADO PF '+
                              'LEFT OUTER JOIN PRODUTO P ON (P.CODIGO = PF.CODIGO_INSUMO) '+
                              'where PF.codigo_produto = ' + IntToStr(pCodigo) ) ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;

end;

function TSMCadastro.getRamo(const BD: string; pCodigo: integer): OleVariant;
var DM : TServerDM ;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from RAMO_ATIVIDADE '+
                              'where codigo = ' + IntToStr(pCodigo) ) ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getRepresentante(const BD: string;
  pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select r.* '+
                              'from REPRESENTANTE r '+
                              'where r.codigo = '+ IntToStr(pCodigo) ) ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setRepresentante(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var
  mCodigo: integer;
  DM: TServerDM;
  Campo: TCampoValor;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
      mCodigo := DM.LerDataSetInteger('select max(codigo) cd from REPRESENTANTE','cd') + 1
    else
      mCodigo := pCodigo ;

    Campo.Campo := 'codigo' ;
    Campo.Valor := IntToStr(mCodigo) ;

    try
      txt := GetString(BD, Format(SQL_Fields, [QuotedStr('REPRESENTANTE')]), 'nome_campo');
      DM.GravarTabelaSimples(True,'REPRESENTANTE',txt,Dados,[Campo],[],True);

      Result := getRepresentante(BD,mCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getServico(const BD: string; pCodigo: integer): OleVariant;
var DM : TServerDM ;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from SERVICO ' +
        ' where codigo = ' + IntToStr(pCodigo) ) ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.GetInteger(const BD, Txt, campoRetorno: string): Integer;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    Result := DM.LerDataSetInteger(Txt, campoRetorno);
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.GetFloat(const BD, Txt, campoRetorno: string): Double;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    Result := DM.LerDataSetFloat(Txt, campoRetorno);
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.GetString(const BD, Txt, campoRetorno: string): string;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    Result := DM.LerDataSetString(Txt, campoRetorno);
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;


function TSMCadastro.getSubGrupoProdutos(const BD: string;
  pCodigo: integer): OleVariant;
var DM : TServerDM ;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from SUBGRUPO_PROD ' +
        ' where codigo = ' + IntToStr(pCodigo) ) ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getTransportadora(const BD: string;
  pCodigo: integer): OleVariant;
var DM : TServerDM ;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select t.*, f.razao_nome fornecedor, e.nome estado, p.nome pais '+
                              'from transportadora t '+
                              'left outer join fabricante f on (f.codigo = t.codfornecedor) '+
                              'left outer join ESTADO e on (e.sigla = f.cod_est) '+
                              'left outer join PAIS p on (p.codigo = f.cod_pais) '+
                              'where t.codigo = ' + IntToStr(pCodigo) ) ;
   except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getUnidade(const BD: string; pCodigo: string): OleVariant;
var DM : TServerDM ;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select * from UNIDADE ' +
        ' where codigo = ' + pCodigo) ;
    except on E: Exception do
      raise Exception.Create('Servidor Aplicativo: ' + #10+#13 + E.Message);
    end;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.getUsuario(const BD: string; pCodigo: integer): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    try
      Result := DM.LerDataSet('select a.* from USUARIO a '+
                              'where a.usu_id = ' + IntToStr(pCodigo));
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.setUsuario(const BD: string; pCodigo: integer;
  const Dados: OleVariant): OleVariant;
var
  lCodigo: integer;
  DM: TServerDM;
  Campo: TCampoValor;
  txt: string;
begin
  DM := TServerDM.Create(BD);
  try
    if pCodigo = 0 then
    begin
      lCodigo := DM.LerDataSetInteger('select max(usu_id) id from USUARIO','id')+1;
    end
    else
      lCodigo := pCodigo;

    Campo.Campo := 'usu_id';
    Campo.Valor := IntToStr(lCodigo);

    txt := GetString(BD, Format(SQL_Fields, [QuotedStr('USUARIO')]), 'nome_campo');

    try
      DM.GravarTabelaSimples(True, 'USUARIO', txt, Dados, [Campo], [], True);
      Result := getUsuario(BD, lCodigo);
    except
      on E: Exception do
        raise Exception.Create('Servidor' + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSMCadastro.Insert(const BD, Tabela: string;
  Dados: OleVariant): Integer;
var
  DM: TServerDM;
  txt, campos, values, cp: string;
  i, x, rwaf: Integer;
  temp: TClientDataSet;
  campos1: TStringList;
begin
  rwaf := 0;
  Result := -1;

  DM := TServerDM.Create(BD);
  temp := TClientDataSet.Create(nil);
  campos1 := TStringList.Create;
  try
    temp.Data := Dados;
    if temp.IsEmpty then
      Exit;

    for i := 0 to temp.Fields.Count - 1 do
    begin
      campos := campos + ',' + temp.Fields.Fields[i].FieldName;
      values := values + ':' + temp.Fields.Fields[i].FieldName + ',';
    end;
    campos := Copy(campos, 2, length(campos));
    values := Copy(values, 1, length(values) - 1);

    txt := 'insert into ' + Tabela + '(' + campos + ')' + ' values (' + values + ')';

    campos1.Delimiter := ',';
    campos1.DelimitedText := campos;

    try
      DM.StartTransaction;

      DM.Gravar.SQL.Clear;
      DM.Gravar.SQL.Add(txt);
   //DM.Gravar.SQL.SaveToFile('c:\t.sql');

      temp.First;
      while not temp.Eof do
      begin
        for x := 0 to campos1.Count - 1 do
        begin
          cp := campos1.Strings[x];
          DM.Gravar.ParamByName(cp).DataType := temp.FieldByName(cp).DataType;
          DM.Gravar.ParamByName(cp).Value := temp.FieldByName(cp).Value;
        end;
        DM.Gravar.ExecSQL;
        rwaf := rwaf + DM.Gravar.RowsAffected;
        temp.Next;
      end;
      DM.Commit;
      Result := rwaf;
    except
      on e: Exception do
      begin
        if DM.TranGravacao.Active then
          DM.Rollback;
        raise Exception.Create(e.Message);
      end;
    end;

  finally
    FreeAndNil(temp);
    FreeAndNil(campos1);
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

end.


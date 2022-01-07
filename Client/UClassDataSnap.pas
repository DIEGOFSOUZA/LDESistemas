//
// Created by the DataSnap proxy generator.
// 07/01/2022 17:27:05
//

unit UClassDataSnap;

interface

uses System.JSON, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TSMClient = class(TDSAdminClient)
  private
    FLerDataSetCommand: TDBXCommand;
    FExecutarCommand: TDBXCommand;
    FTestaCominicacaoCommand: TDBXCommand;
    FBancoInManutencaoCommand: TDBXCommand;
    FUpdateBaseDadosCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function LerDataSet(BD: string; Txt: string): OleVariant;
    function Executar(BD: string; Txt: string): Integer;
    function TestaCominicacao: string;
    function BancoInManutencao(aBD: string): Boolean;
    function UpdateBaseDados(aBanco: string; aCPFCNPJ: string): Integer;
  end;

  TSMCadastroClient = class(TDSAdminClient)
  private
    FGetGeneratorCommand: TDBXCommand;
    FInsertCommand: TDBXCommand;
    FUpdateorInsertCommand: TDBXCommand;
    FExecutarCommand: TDBXCommand;
    FGetStringCommand: TDBXCommand;
    FGetIntegerCommand: TDBXCommand;
    FGetFloatCommand: TDBXCommand;
    FgetEmpresaCommand: TDBXCommand;
    FsetEmpresaCommand: TDBXCommand;
    FgetCidadesCommand: TDBXCommand;
    FsetCidadesCommand: TDBXCommand;
    FgetFuncionarioCommand: TDBXCommand;
    FsetFuncionarioCommand: TDBXCommand;
    FgetUsuarioCommand: TDBXCommand;
    FsetUsuarioCommand: TDBXCommand;
    FgetClienteCommand: TDBXCommand;
    FsetClienteCommand: TDBXCommand;
    FgetRamoCommand: TDBXCommand;
    FsetRamoCommand: TDBXCommand;
    FsetClientePDVCommand: TDBXCommand;
    FgetRepresentanteCommand: TDBXCommand;
    FsetRepresentanteCommand: TDBXCommand;
    FgetFornecedorCommand: TDBXCommand;
    FsetFornecedorCommand: TDBXCommand;
    FgetProdutoFornecedorCommand: TDBXCommand;
    FgetGrupoFornecedorCommand: TDBXCommand;
    FsetGrupoFornecedorCommand: TDBXCommand;
    FgetTransportadoraCommand: TDBXCommand;
    FsetTransportadoraCommand: TDBXCommand;
    FsetProdutoCommand: TDBXCommand;
    FgetProdutoCommand: TDBXCommand;
    FsetGrupoProdutosCommand: TDBXCommand;
    FgetGrupoProdutosCommand: TDBXCommand;
    FsetSubGrupoProdutosCommand: TDBXCommand;
    FgetSubGrupoProdutosCommand: TDBXCommand;
    FgetUnidadeCommand: TDBXCommand;
    FsetUnidadeCommand: TDBXCommand;
    FsetMateriaPrimaCommand: TDBXCommand;
    FgetMateriaPrimaCommand: TDBXCommand;
    FgetProdutoComposicaoCommand: TDBXCommand;
    FgetProdutoInsumoCommand: TDBXCommand;
    FsetOrdemProducaoCommand: TDBXCommand;
    FgetOrdemProducaoCommand: TDBXCommand;
    FgetGrupoServicoCommand: TDBXCommand;
    FsetGrupoServicoCommand: TDBXCommand;
    FgetServicoCommand: TDBXCommand;
    FsetServicoCommand: TDBXCommand;
    FgetNfeMsgAdicionalCommand: TDBXCommand;
    FsetNfeMsgAdicionalCommand: TDBXCommand;
    FgetNfeConfigFiscalCommand: TDBXCommand;
    FsetNfeConfigFiscalCommand: TDBXCommand;
    FgetNfeCenarioCommand: TDBXCommand;
    FsetNfeCenarioCommand: TDBXCommand;
    FsetNotaEntradaCommand: TDBXCommand;
    FgetHistoricoCommand: TDBXCommand;
    FsetHistoricoCommand: TDBXCommand;
    FgetHistoricoGrupoCommand: TDBXCommand;
    FsetHistoricoGrupoCommand: TDBXCommand;
    FgetContaBancariaCommand: TDBXCommand;
    FsetContaBancariaCommand: TDBXCommand;
    FsetNatOperacaoCommand: TDBXCommand;
    FgetNatOperacaoCommand: TDBXCommand;
    FgetCondPagtoCommand: TDBXCommand;
    FsetCondPagtoCommand: TDBXCommand;
    FsetCaixaCommand: TDBXCommand;
    FgetLancamentoCommand: TDBXCommand;
    FsetLancamentoCommand: TDBXCommand;
    FgetChequeCommand: TDBXCommand;
    FsetChequeCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function GetGenerator(BD: string; pNomeGenerator: string; pIncremento: SmallInt): Integer;
    function Insert(BD: string; Tabela: string; Dados: OleVariant): Integer;
    function UpdateorInsert(BD: string; Tabela: string; pk: string; Dados: OleVariant): Integer;
    function Executar(BD: string; Txt: string): Integer;
    function GetString(BD: string; Txt: string; campoRetorno: string): string;
    function GetInteger(BD: string; Txt: string; campoRetorno: string): Integer;
    function GetFloat(BD: string; Txt: string; campoRetorno: string): Double;
    function getEmpresa(BD: string; pCodigo: Integer): OleVariant;
    function setEmpresa(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getCidades(BD: string; pCodigo: Integer): OleVariant;
    function setCidades(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getFuncionario(BD: string; pCodigo: Integer): OleVariant;
    function setFuncionario(BD: string; pCodigo: Integer; pDados: OleVariant): OleVariant;
    function getUsuario(BD: string; pCodigo: Integer): OleVariant;
    function setUsuario(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getCliente(BD: string; pCodigo: Integer): OleVariant;
    function setCliente(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getRamo(BD: string; pCodigo: Integer): OleVariant;
    function setRamo(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function setClientePDV(BD: string; pCPF_CNPJ: string; Dados: OleVariant): Integer;
    function getRepresentante(BD: string; pCodigo: Integer): OleVariant;
    function setRepresentante(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getFornecedor(BD: string; pCodigo: Integer): OleVariant;
    function setFornecedor(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getProdutoFornecedor(BD: string; pCodigo: Integer): OleVariant;
    function getGrupoFornecedor(BD: string; pCodigo: Integer): OleVariant;
    function setGrupoFornecedor(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getTransportadora(BD: string; pCodigo: Integer): OleVariant;
    function setTransportadora(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function setProduto(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getProduto(BD: string; pCodigo: Integer): OleVariant;
    function setGrupoProdutos(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getGrupoProdutos(BD: string; pCodigo: Integer): OleVariant;
    function setSubGrupoProdutos(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getSubGrupoProdutos(BD: string; pCodigo: Integer): OleVariant;
    function getUnidade(BD: string; pCodigo: string): OleVariant;
    function setUnidade(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function setMateriaPrima(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getMateriaPrima(BD: string; pCodigo: Integer): OleVariant;
    function getProdutoComposicao(BD: string; pCodPro: Integer): OleVariant;
    function getProdutoInsumo(BD: string; pCodigo: Integer): OleVariant;
    function setOrdemProducao(BD: string; pCodigo: Integer; pLote: string; Dados: OleVariant): OleVariant;
    function getOrdemProducao(BD: string; pCodigo: Integer; pLote: string): OleVariant;
    function getGrupoServico(BD: string; pCodigo: Integer): OleVariant;
    function setGrupoServico(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getServico(BD: string; pCodigo: Integer): OleVariant;
    function setServico(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getNfeMsgAdicional(BD: string; pCodigo: Integer): OleVariant;
    function setNfeMsgAdicional(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getNfeConfigFiscal(BD: string; pCodigo: Integer): OleVariant;
    function setNfeConfigFiscal(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getNfeCenario(BD: string; pCodigo: Integer): OleVariant;
    function setNfeCenario(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function setNotaEntrada(BD: string; pID: Integer; pNota: OleVariant; pItens: OleVariant; pPagar: OleVariant): Integer;
    function getHistorico(BD: string; pCodigo: Integer): OleVariant;
    function setHistorico(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getHistoricoGrupo(BD: string; pCodigo: Integer): OleVariant;
    function setHistoricoGrupo(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getContaBancaria(BD: string; pCodigo: Integer): OleVariant;
    function setContaBancaria(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function setNatOperacao(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
    function getNatOperacao(BD: string; pCodigo: Integer): OleVariant;
    function getCondPagto(BD: string; pID: Integer): OleVariant;
    function setCondPagto(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
    function setCaixa(BD: string; setTipo: string; IDCaixa: Integer; usuario: string; FormaPagto: string; Valor: Currency; Obs_AbertFech: string; obsEntSaida: string): Boolean;
    function getLancamento(BD: string; pID: Integer): OleVariant;
    function setLancamento(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
    function getCheque(BD: string; pIDConta: string; pNCheque: Integer): OleVariant;
    function setCheque(BD: string; pIDConta: string; pNCheque: Integer; Dados: OleVariant): OleVariant;
  end;

  TSMNotaClient = class(TDSAdminClient)
  private
    FsetNotaEntradaCommand: TDBXCommand;
    FgetNotaEntradaCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function setNotaEntrada(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
    function getNotaEntrada(BD: string; pID: Integer): OleVariant;
  end;

  TsmPDVClient = class(TDSAdminClient)
  private
    FsetOrcamentoCommand: TDBXCommand;
    FgetOrcamentoCommand: TDBXCommand;
    FsetFechaVendaCommand: TDBXCommand;
    FsetCancelarVendaCommand: TDBXCommand;
    FsetDevolucaoCommand: TDBXCommand;
    FsetAtualizarTabelasCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function setOrcamento(BD: string; pID: Integer; Dados: OleVariant): Boolean;
    function getOrcamento(BD: string; pID: Integer): OleVariant;
    function setFechaVenda(BD: string; Dados: OleVariant; pID: string; pTipo: string): Boolean;
    function setCancelarVenda(BD: string; pID: Integer; pTipo: string; pMotivo: string; pUsuario: string): Boolean;
    function setDevolucao(BD: string; pUsuario: string; pVlCredito: Currency; pIDCliente: Integer; pcds: OleVariant; pIDCaixa: Integer): Boolean;
    function setAtualizarTabelas(BD: string; aIdOrcamento: Integer; aIdCliente: Integer; aCredUtilizado: Currency): Boolean;
  end;

  TSM_FinanceiroClient = class(TDSAdminClient)
  private
    FsetFormaPagtoCommand: TDBXCommand;
    FgetFormaPagtoCommand: TDBXCommand;
    FsetBaixaRestauraCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function setFormaPagto(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
    function getFormaPagto(BD: string; pID: Integer): OleVariant;
    function setBaixaRestaura(BD: string; pBaixaParcial: Boolean; pVlDiferenca: Currency; pReceberPagar: string; pBaixaRestaura: string; pTipo: string; pID: Integer; pOrdem: string; pData: string; pJuros: Currency; pDesconto: Currency; pValor: Currency; pUsuario: string; pIdHistorico: string; pIdConta: string; pIdCaixa: string; pNumCheque: Integer): Boolean;
  end;

  TSM_PedidoClient = class(TDSAdminClient)
  private
    FPedidoVenda_AdicionarCommand: TDBXCommand;
    FPedidoVenda_EditarCommand: TDBXCommand;
    FPedidoVenda_CriaProdutoCommand: TDBXCommand;
    FPedidoVenda_AvancaStatusCommand: TDBXCommand;
    FPedidoVenda_ExcluirCommand: TDBXCommand;
    FPedidoVenda_CarregarCommand: TDBXCommand;
    FPedidoVenda_RelA3Command: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function PedidoVenda_Adicionar(BD: string; aTabelas: OleVariant): Boolean;
    function PedidoVenda_Editar(BD: string; aTabelas: OleVariant): Boolean;
    function PedidoVenda_CriaProduto(BD: string; aProduto: OleVariant; aProdComposicao: OleVariant): Integer;
    function PedidoVenda_AvancaStatus(BD: string; aPedidos: OleVariant): Integer;
    function PedidoVenda_Excluir(BD: string; aPedidos: OleVariant): Integer;
    function PedidoVenda_Carregar(BD: string; aIDPedido: Integer): OleVariant;
    function PedidoVenda_RelA3(BD: string; aIdPedido: Integer): OleVariant;
  end;

  TSMProducaoClient = class(TDSAdminClient)
  private
    FsetProducaoCommand: TDBXCommand;
    FgetProducaoCommand: TDBXCommand;
    FsetMovimentoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function setProducao(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
    function getProducao(BD: string; pID: Integer): OleVariant;
    function setMovimento(BD: string; aUsuario: string; aCodPro: Integer; aQtde: Double; aQtdeFechada: Double; aCodUND: Integer; aEntSai: string; aDescriProd: string): Boolean;
  end;

  TSMProdutoClient = class(TDSAdminClient)
  private
    FsetProdutoCommand: TDBXCommand;
    FgetProdutoCommand: TDBXCommand;
    FsetServicoCommand: TDBXCommand;
    FgetServicoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function setProduto(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
    function getProduto(BD: string; pID: Integer): OleVariant;
    function setServico(BD: string; aDados: OleVariant; aID: Integer): OleVariant;
    function getServico(BD: string; aID: Integer): OleVariant;
  end;

  TSM_SaveInCloudClient = class(TDSAdminClient)
  private
    FClienteLiberadoCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function ClienteLiberado(aCpfCnpj: string): Boolean;
  end;

implementation

function TSMClient.LerDataSet(BD: string; Txt: string): OleVariant;
begin
  if FLerDataSetCommand = nil then
  begin
    FLerDataSetCommand := FDBXConnection.CreateCommand;
    FLerDataSetCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FLerDataSetCommand.Text := 'TSM.LerDataSet';
    FLerDataSetCommand.Prepare;
  end;
  FLerDataSetCommand.Parameters[0].Value.SetWideString(BD);
  FLerDataSetCommand.Parameters[1].Value.SetWideString(Txt);
  FLerDataSetCommand.ExecuteUpdate;
  Result := FLerDataSetCommand.Parameters[2].Value.AsVariant;
end;

function TSMClient.Executar(BD: string; Txt: string): Integer;
begin
  if FExecutarCommand = nil then
  begin
    FExecutarCommand := FDBXConnection.CreateCommand;
    FExecutarCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecutarCommand.Text := 'TSM.Executar';
    FExecutarCommand.Prepare;
  end;
  FExecutarCommand.Parameters[0].Value.SetWideString(BD);
  FExecutarCommand.Parameters[1].Value.SetWideString(Txt);
  FExecutarCommand.ExecuteUpdate;
  Result := FExecutarCommand.Parameters[2].Value.GetInt32;
end;

function TSMClient.TestaCominicacao: string;
begin
  if FTestaCominicacaoCommand = nil then
  begin
    FTestaCominicacaoCommand := FDBXConnection.CreateCommand;
    FTestaCominicacaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FTestaCominicacaoCommand.Text := 'TSM.TestaCominicacao';
    FTestaCominicacaoCommand.Prepare;
  end;
  FTestaCominicacaoCommand.ExecuteUpdate;
  Result := FTestaCominicacaoCommand.Parameters[0].Value.GetWideString;
end;

function TSMClient.BancoInManutencao(aBD: string): Boolean;
begin
  if FBancoInManutencaoCommand = nil then
  begin
    FBancoInManutencaoCommand := FDBXConnection.CreateCommand;
    FBancoInManutencaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FBancoInManutencaoCommand.Text := 'TSM.BancoInManutencao';
    FBancoInManutencaoCommand.Prepare;
  end;
  FBancoInManutencaoCommand.Parameters[0].Value.SetWideString(aBD);
  FBancoInManutencaoCommand.ExecuteUpdate;
  Result := FBancoInManutencaoCommand.Parameters[1].Value.GetBoolean;
end;

function TSMClient.UpdateBaseDados(aBanco: string; aCPFCNPJ: string): Integer;
begin
  if FUpdateBaseDadosCommand = nil then
  begin
    FUpdateBaseDadosCommand := FDBXConnection.CreateCommand;
    FUpdateBaseDadosCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateBaseDadosCommand.Text := 'TSM.UpdateBaseDados';
    FUpdateBaseDadosCommand.Prepare;
  end;
  FUpdateBaseDadosCommand.Parameters[0].Value.SetWideString(aBanco);
  FUpdateBaseDadosCommand.Parameters[1].Value.SetWideString(aCPFCNPJ);
  FUpdateBaseDadosCommand.ExecuteUpdate;
  Result := FUpdateBaseDadosCommand.Parameters[2].Value.GetInt32;
end;

constructor TSMClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TSMClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TSMClient.Destroy;
begin
  FLerDataSetCommand.DisposeOf;
  FExecutarCommand.DisposeOf;
  FTestaCominicacaoCommand.DisposeOf;
  FBancoInManutencaoCommand.DisposeOf;
  FUpdateBaseDadosCommand.DisposeOf;
  inherited;
end;

function TSMCadastroClient.GetGenerator(BD: string; pNomeGenerator: string; pIncremento: SmallInt): Integer;
begin
  if FGetGeneratorCommand = nil then
  begin
    FGetGeneratorCommand := FDBXConnection.CreateCommand;
    FGetGeneratorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetGeneratorCommand.Text := 'TSMCadastro.GetGenerator';
    FGetGeneratorCommand.Prepare;
  end;
  FGetGeneratorCommand.Parameters[0].Value.SetWideString(BD);
  FGetGeneratorCommand.Parameters[1].Value.SetWideString(pNomeGenerator);
  FGetGeneratorCommand.Parameters[2].Value.SetInt16(pIncremento);
  FGetGeneratorCommand.ExecuteUpdate;
  Result := FGetGeneratorCommand.Parameters[3].Value.GetInt32;
end;

function TSMCadastroClient.Insert(BD: string; Tabela: string; Dados: OleVariant): Integer;
begin
  if FInsertCommand = nil then
  begin
    FInsertCommand := FDBXConnection.CreateCommand;
    FInsertCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FInsertCommand.Text := 'TSMCadastro.Insert';
    FInsertCommand.Prepare;
  end;
  FInsertCommand.Parameters[0].Value.SetWideString(BD);
  FInsertCommand.Parameters[1].Value.SetWideString(Tabela);
  FInsertCommand.Parameters[2].Value.AsVariant := Dados;
  FInsertCommand.ExecuteUpdate;
  Result := FInsertCommand.Parameters[3].Value.GetInt32;
end;

function TSMCadastroClient.UpdateorInsert(BD: string; Tabela: string; pk: string; Dados: OleVariant): Integer;
begin
  if FUpdateorInsertCommand = nil then
  begin
    FUpdateorInsertCommand := FDBXConnection.CreateCommand;
    FUpdateorInsertCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FUpdateorInsertCommand.Text := 'TSMCadastro.UpdateorInsert';
    FUpdateorInsertCommand.Prepare;
  end;
  FUpdateorInsertCommand.Parameters[0].Value.SetWideString(BD);
  FUpdateorInsertCommand.Parameters[1].Value.SetWideString(Tabela);
  FUpdateorInsertCommand.Parameters[2].Value.SetWideString(pk);
  FUpdateorInsertCommand.Parameters[3].Value.AsVariant := Dados;
  FUpdateorInsertCommand.ExecuteUpdate;
  Result := FUpdateorInsertCommand.Parameters[4].Value.GetInt32;
end;

function TSMCadastroClient.Executar(BD: string; Txt: string): Integer;
begin
  if FExecutarCommand = nil then
  begin
    FExecutarCommand := FDBXConnection.CreateCommand;
    FExecutarCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FExecutarCommand.Text := 'TSMCadastro.Executar';
    FExecutarCommand.Prepare;
  end;
  FExecutarCommand.Parameters[0].Value.SetWideString(BD);
  FExecutarCommand.Parameters[1].Value.SetWideString(Txt);
  FExecutarCommand.ExecuteUpdate;
  Result := FExecutarCommand.Parameters[2].Value.GetInt32;
end;

function TSMCadastroClient.GetString(BD: string; Txt: string; campoRetorno: string): string;
begin
  if FGetStringCommand = nil then
  begin
    FGetStringCommand := FDBXConnection.CreateCommand;
    FGetStringCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetStringCommand.Text := 'TSMCadastro.GetString';
    FGetStringCommand.Prepare;
  end;
  FGetStringCommand.Parameters[0].Value.SetWideString(BD);
  FGetStringCommand.Parameters[1].Value.SetWideString(Txt);
  FGetStringCommand.Parameters[2].Value.SetWideString(campoRetorno);
  FGetStringCommand.ExecuteUpdate;
  Result := FGetStringCommand.Parameters[3].Value.GetWideString;
end;

function TSMCadastroClient.GetInteger(BD: string; Txt: string; campoRetorno: string): Integer;
begin
  if FGetIntegerCommand = nil then
  begin
    FGetIntegerCommand := FDBXConnection.CreateCommand;
    FGetIntegerCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetIntegerCommand.Text := 'TSMCadastro.GetInteger';
    FGetIntegerCommand.Prepare;
  end;
  FGetIntegerCommand.Parameters[0].Value.SetWideString(BD);
  FGetIntegerCommand.Parameters[1].Value.SetWideString(Txt);
  FGetIntegerCommand.Parameters[2].Value.SetWideString(campoRetorno);
  FGetIntegerCommand.ExecuteUpdate;
  Result := FGetIntegerCommand.Parameters[3].Value.GetInt32;
end;

function TSMCadastroClient.GetFloat(BD: string; Txt: string; campoRetorno: string): Double;
begin
  if FGetFloatCommand = nil then
  begin
    FGetFloatCommand := FDBXConnection.CreateCommand;
    FGetFloatCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetFloatCommand.Text := 'TSMCadastro.GetFloat';
    FGetFloatCommand.Prepare;
  end;
  FGetFloatCommand.Parameters[0].Value.SetWideString(BD);
  FGetFloatCommand.Parameters[1].Value.SetWideString(Txt);
  FGetFloatCommand.Parameters[2].Value.SetWideString(campoRetorno);
  FGetFloatCommand.ExecuteUpdate;
  Result := FGetFloatCommand.Parameters[3].Value.GetDouble;
end;

function TSMCadastroClient.getEmpresa(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetEmpresaCommand = nil then
  begin
    FgetEmpresaCommand := FDBXConnection.CreateCommand;
    FgetEmpresaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetEmpresaCommand.Text := 'TSMCadastro.getEmpresa';
    FgetEmpresaCommand.Prepare;
  end;
  FgetEmpresaCommand.Parameters[0].Value.SetWideString(BD);
  FgetEmpresaCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetEmpresaCommand.ExecuteUpdate;
  Result := FgetEmpresaCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setEmpresa(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetEmpresaCommand = nil then
  begin
    FsetEmpresaCommand := FDBXConnection.CreateCommand;
    FsetEmpresaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetEmpresaCommand.Text := 'TSMCadastro.setEmpresa';
    FsetEmpresaCommand.Prepare;
  end;
  FsetEmpresaCommand.Parameters[0].Value.SetWideString(BD);
  FsetEmpresaCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetEmpresaCommand.Parameters[2].Value.AsVariant := Dados;
  FsetEmpresaCommand.ExecuteUpdate;
  Result := FsetEmpresaCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getCidades(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetCidadesCommand = nil then
  begin
    FgetCidadesCommand := FDBXConnection.CreateCommand;
    FgetCidadesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetCidadesCommand.Text := 'TSMCadastro.getCidades';
    FgetCidadesCommand.Prepare;
  end;
  FgetCidadesCommand.Parameters[0].Value.SetWideString(BD);
  FgetCidadesCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetCidadesCommand.ExecuteUpdate;
  Result := FgetCidadesCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setCidades(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetCidadesCommand = nil then
  begin
    FsetCidadesCommand := FDBXConnection.CreateCommand;
    FsetCidadesCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetCidadesCommand.Text := 'TSMCadastro.setCidades';
    FsetCidadesCommand.Prepare;
  end;
  FsetCidadesCommand.Parameters[0].Value.SetWideString(BD);
  FsetCidadesCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetCidadesCommand.Parameters[2].Value.AsVariant := Dados;
  FsetCidadesCommand.ExecuteUpdate;
  Result := FsetCidadesCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getFuncionario(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetFuncionarioCommand = nil then
  begin
    FgetFuncionarioCommand := FDBXConnection.CreateCommand;
    FgetFuncionarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetFuncionarioCommand.Text := 'TSMCadastro.getFuncionario';
    FgetFuncionarioCommand.Prepare;
  end;
  FgetFuncionarioCommand.Parameters[0].Value.SetWideString(BD);
  FgetFuncionarioCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetFuncionarioCommand.ExecuteUpdate;
  Result := FgetFuncionarioCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setFuncionario(BD: string; pCodigo: Integer; pDados: OleVariant): OleVariant;
begin
  if FsetFuncionarioCommand = nil then
  begin
    FsetFuncionarioCommand := FDBXConnection.CreateCommand;
    FsetFuncionarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetFuncionarioCommand.Text := 'TSMCadastro.setFuncionario';
    FsetFuncionarioCommand.Prepare;
  end;
  FsetFuncionarioCommand.Parameters[0].Value.SetWideString(BD);
  FsetFuncionarioCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetFuncionarioCommand.Parameters[2].Value.AsVariant := pDados;
  FsetFuncionarioCommand.ExecuteUpdate;
  Result := FsetFuncionarioCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getUsuario(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetUsuarioCommand = nil then
  begin
    FgetUsuarioCommand := FDBXConnection.CreateCommand;
    FgetUsuarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetUsuarioCommand.Text := 'TSMCadastro.getUsuario';
    FgetUsuarioCommand.Prepare;
  end;
  FgetUsuarioCommand.Parameters[0].Value.SetWideString(BD);
  FgetUsuarioCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetUsuarioCommand.ExecuteUpdate;
  Result := FgetUsuarioCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setUsuario(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetUsuarioCommand = nil then
  begin
    FsetUsuarioCommand := FDBXConnection.CreateCommand;
    FsetUsuarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetUsuarioCommand.Text := 'TSMCadastro.setUsuario';
    FsetUsuarioCommand.Prepare;
  end;
  FsetUsuarioCommand.Parameters[0].Value.SetWideString(BD);
  FsetUsuarioCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetUsuarioCommand.Parameters[2].Value.AsVariant := Dados;
  FsetUsuarioCommand.ExecuteUpdate;
  Result := FsetUsuarioCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getCliente(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetClienteCommand = nil then
  begin
    FgetClienteCommand := FDBXConnection.CreateCommand;
    FgetClienteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetClienteCommand.Text := 'TSMCadastro.getCliente';
    FgetClienteCommand.Prepare;
  end;
  FgetClienteCommand.Parameters[0].Value.SetWideString(BD);
  FgetClienteCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetClienteCommand.ExecuteUpdate;
  Result := FgetClienteCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setCliente(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetClienteCommand = nil then
  begin
    FsetClienteCommand := FDBXConnection.CreateCommand;
    FsetClienteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetClienteCommand.Text := 'TSMCadastro.setCliente';
    FsetClienteCommand.Prepare;
  end;
  FsetClienteCommand.Parameters[0].Value.SetWideString(BD);
  FsetClienteCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetClienteCommand.Parameters[2].Value.AsVariant := Dados;
  FsetClienteCommand.ExecuteUpdate;
  Result := FsetClienteCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getRamo(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetRamoCommand = nil then
  begin
    FgetRamoCommand := FDBXConnection.CreateCommand;
    FgetRamoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetRamoCommand.Text := 'TSMCadastro.getRamo';
    FgetRamoCommand.Prepare;
  end;
  FgetRamoCommand.Parameters[0].Value.SetWideString(BD);
  FgetRamoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetRamoCommand.ExecuteUpdate;
  Result := FgetRamoCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setRamo(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetRamoCommand = nil then
  begin
    FsetRamoCommand := FDBXConnection.CreateCommand;
    FsetRamoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetRamoCommand.Text := 'TSMCadastro.setRamo';
    FsetRamoCommand.Prepare;
  end;
  FsetRamoCommand.Parameters[0].Value.SetWideString(BD);
  FsetRamoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetRamoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetRamoCommand.ExecuteUpdate;
  Result := FsetRamoCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.setClientePDV(BD: string; pCPF_CNPJ: string; Dados: OleVariant): Integer;
begin
  if FsetClientePDVCommand = nil then
  begin
    FsetClientePDVCommand := FDBXConnection.CreateCommand;
    FsetClientePDVCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetClientePDVCommand.Text := 'TSMCadastro.setClientePDV';
    FsetClientePDVCommand.Prepare;
  end;
  FsetClientePDVCommand.Parameters[0].Value.SetWideString(BD);
  FsetClientePDVCommand.Parameters[1].Value.SetWideString(pCPF_CNPJ);
  FsetClientePDVCommand.Parameters[2].Value.AsVariant := Dados;
  FsetClientePDVCommand.ExecuteUpdate;
  Result := FsetClientePDVCommand.Parameters[3].Value.GetInt32;
end;

function TSMCadastroClient.getRepresentante(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetRepresentanteCommand = nil then
  begin
    FgetRepresentanteCommand := FDBXConnection.CreateCommand;
    FgetRepresentanteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetRepresentanteCommand.Text := 'TSMCadastro.getRepresentante';
    FgetRepresentanteCommand.Prepare;
  end;
  FgetRepresentanteCommand.Parameters[0].Value.SetWideString(BD);
  FgetRepresentanteCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetRepresentanteCommand.ExecuteUpdate;
  Result := FgetRepresentanteCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setRepresentante(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetRepresentanteCommand = nil then
  begin
    FsetRepresentanteCommand := FDBXConnection.CreateCommand;
    FsetRepresentanteCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetRepresentanteCommand.Text := 'TSMCadastro.setRepresentante';
    FsetRepresentanteCommand.Prepare;
  end;
  FsetRepresentanteCommand.Parameters[0].Value.SetWideString(BD);
  FsetRepresentanteCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetRepresentanteCommand.Parameters[2].Value.AsVariant := Dados;
  FsetRepresentanteCommand.ExecuteUpdate;
  Result := FsetRepresentanteCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getFornecedor(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetFornecedorCommand = nil then
  begin
    FgetFornecedorCommand := FDBXConnection.CreateCommand;
    FgetFornecedorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetFornecedorCommand.Text := 'TSMCadastro.getFornecedor';
    FgetFornecedorCommand.Prepare;
  end;
  FgetFornecedorCommand.Parameters[0].Value.SetWideString(BD);
  FgetFornecedorCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetFornecedorCommand.ExecuteUpdate;
  Result := FgetFornecedorCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setFornecedor(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetFornecedorCommand = nil then
  begin
    FsetFornecedorCommand := FDBXConnection.CreateCommand;
    FsetFornecedorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetFornecedorCommand.Text := 'TSMCadastro.setFornecedor';
    FsetFornecedorCommand.Prepare;
  end;
  FsetFornecedorCommand.Parameters[0].Value.SetWideString(BD);
  FsetFornecedorCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetFornecedorCommand.Parameters[2].Value.AsVariant := Dados;
  FsetFornecedorCommand.ExecuteUpdate;
  Result := FsetFornecedorCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getProdutoFornecedor(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetProdutoFornecedorCommand = nil then
  begin
    FgetProdutoFornecedorCommand := FDBXConnection.CreateCommand;
    FgetProdutoFornecedorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetProdutoFornecedorCommand.Text := 'TSMCadastro.getProdutoFornecedor';
    FgetProdutoFornecedorCommand.Prepare;
  end;
  FgetProdutoFornecedorCommand.Parameters[0].Value.SetWideString(BD);
  FgetProdutoFornecedorCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetProdutoFornecedorCommand.ExecuteUpdate;
  Result := FgetProdutoFornecedorCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.getGrupoFornecedor(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetGrupoFornecedorCommand = nil then
  begin
    FgetGrupoFornecedorCommand := FDBXConnection.CreateCommand;
    FgetGrupoFornecedorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetGrupoFornecedorCommand.Text := 'TSMCadastro.getGrupoFornecedor';
    FgetGrupoFornecedorCommand.Prepare;
  end;
  FgetGrupoFornecedorCommand.Parameters[0].Value.SetWideString(BD);
  FgetGrupoFornecedorCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetGrupoFornecedorCommand.ExecuteUpdate;
  Result := FgetGrupoFornecedorCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setGrupoFornecedor(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetGrupoFornecedorCommand = nil then
  begin
    FsetGrupoFornecedorCommand := FDBXConnection.CreateCommand;
    FsetGrupoFornecedorCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetGrupoFornecedorCommand.Text := 'TSMCadastro.setGrupoFornecedor';
    FsetGrupoFornecedorCommand.Prepare;
  end;
  FsetGrupoFornecedorCommand.Parameters[0].Value.SetWideString(BD);
  FsetGrupoFornecedorCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetGrupoFornecedorCommand.Parameters[2].Value.AsVariant := Dados;
  FsetGrupoFornecedorCommand.ExecuteUpdate;
  Result := FsetGrupoFornecedorCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getTransportadora(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetTransportadoraCommand = nil then
  begin
    FgetTransportadoraCommand := FDBXConnection.CreateCommand;
    FgetTransportadoraCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetTransportadoraCommand.Text := 'TSMCadastro.getTransportadora';
    FgetTransportadoraCommand.Prepare;
  end;
  FgetTransportadoraCommand.Parameters[0].Value.SetWideString(BD);
  FgetTransportadoraCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetTransportadoraCommand.ExecuteUpdate;
  Result := FgetTransportadoraCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setTransportadora(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetTransportadoraCommand = nil then
  begin
    FsetTransportadoraCommand := FDBXConnection.CreateCommand;
    FsetTransportadoraCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetTransportadoraCommand.Text := 'TSMCadastro.setTransportadora';
    FsetTransportadoraCommand.Prepare;
  end;
  FsetTransportadoraCommand.Parameters[0].Value.SetWideString(BD);
  FsetTransportadoraCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetTransportadoraCommand.Parameters[2].Value.AsVariant := Dados;
  FsetTransportadoraCommand.ExecuteUpdate;
  Result := FsetTransportadoraCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.setProduto(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetProdutoCommand = nil then
  begin
    FsetProdutoCommand := FDBXConnection.CreateCommand;
    FsetProdutoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetProdutoCommand.Text := 'TSMCadastro.setProduto';
    FsetProdutoCommand.Prepare;
  end;
  FsetProdutoCommand.Parameters[0].Value.SetWideString(BD);
  FsetProdutoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetProdutoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetProdutoCommand.ExecuteUpdate;
  Result := FsetProdutoCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getProduto(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetProdutoCommand = nil then
  begin
    FgetProdutoCommand := FDBXConnection.CreateCommand;
    FgetProdutoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetProdutoCommand.Text := 'TSMCadastro.getProduto';
    FgetProdutoCommand.Prepare;
  end;
  FgetProdutoCommand.Parameters[0].Value.SetWideString(BD);
  FgetProdutoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetProdutoCommand.ExecuteUpdate;
  Result := FgetProdutoCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setGrupoProdutos(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetGrupoProdutosCommand = nil then
  begin
    FsetGrupoProdutosCommand := FDBXConnection.CreateCommand;
    FsetGrupoProdutosCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetGrupoProdutosCommand.Text := 'TSMCadastro.setGrupoProdutos';
    FsetGrupoProdutosCommand.Prepare;
  end;
  FsetGrupoProdutosCommand.Parameters[0].Value.SetWideString(BD);
  FsetGrupoProdutosCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetGrupoProdutosCommand.Parameters[2].Value.AsVariant := Dados;
  FsetGrupoProdutosCommand.ExecuteUpdate;
  Result := FsetGrupoProdutosCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getGrupoProdutos(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetGrupoProdutosCommand = nil then
  begin
    FgetGrupoProdutosCommand := FDBXConnection.CreateCommand;
    FgetGrupoProdutosCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetGrupoProdutosCommand.Text := 'TSMCadastro.getGrupoProdutos';
    FgetGrupoProdutosCommand.Prepare;
  end;
  FgetGrupoProdutosCommand.Parameters[0].Value.SetWideString(BD);
  FgetGrupoProdutosCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetGrupoProdutosCommand.ExecuteUpdate;
  Result := FgetGrupoProdutosCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setSubGrupoProdutos(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetSubGrupoProdutosCommand = nil then
  begin
    FsetSubGrupoProdutosCommand := FDBXConnection.CreateCommand;
    FsetSubGrupoProdutosCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetSubGrupoProdutosCommand.Text := 'TSMCadastro.setSubGrupoProdutos';
    FsetSubGrupoProdutosCommand.Prepare;
  end;
  FsetSubGrupoProdutosCommand.Parameters[0].Value.SetWideString(BD);
  FsetSubGrupoProdutosCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetSubGrupoProdutosCommand.Parameters[2].Value.AsVariant := Dados;
  FsetSubGrupoProdutosCommand.ExecuteUpdate;
  Result := FsetSubGrupoProdutosCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getSubGrupoProdutos(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetSubGrupoProdutosCommand = nil then
  begin
    FgetSubGrupoProdutosCommand := FDBXConnection.CreateCommand;
    FgetSubGrupoProdutosCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetSubGrupoProdutosCommand.Text := 'TSMCadastro.getSubGrupoProdutos';
    FgetSubGrupoProdutosCommand.Prepare;
  end;
  FgetSubGrupoProdutosCommand.Parameters[0].Value.SetWideString(BD);
  FgetSubGrupoProdutosCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetSubGrupoProdutosCommand.ExecuteUpdate;
  Result := FgetSubGrupoProdutosCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.getUnidade(BD: string; pCodigo: string): OleVariant;
begin
  if FgetUnidadeCommand = nil then
  begin
    FgetUnidadeCommand := FDBXConnection.CreateCommand;
    FgetUnidadeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetUnidadeCommand.Text := 'TSMCadastro.getUnidade';
    FgetUnidadeCommand.Prepare;
  end;
  FgetUnidadeCommand.Parameters[0].Value.SetWideString(BD);
  FgetUnidadeCommand.Parameters[1].Value.SetWideString(pCodigo);
  FgetUnidadeCommand.ExecuteUpdate;
  Result := FgetUnidadeCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setUnidade(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetUnidadeCommand = nil then
  begin
    FsetUnidadeCommand := FDBXConnection.CreateCommand;
    FsetUnidadeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetUnidadeCommand.Text := 'TSMCadastro.setUnidade';
    FsetUnidadeCommand.Prepare;
  end;
  FsetUnidadeCommand.Parameters[0].Value.SetWideString(BD);
  FsetUnidadeCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetUnidadeCommand.Parameters[2].Value.AsVariant := Dados;
  FsetUnidadeCommand.ExecuteUpdate;
  Result := FsetUnidadeCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.setMateriaPrima(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetMateriaPrimaCommand = nil then
  begin
    FsetMateriaPrimaCommand := FDBXConnection.CreateCommand;
    FsetMateriaPrimaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetMateriaPrimaCommand.Text := 'TSMCadastro.setMateriaPrima';
    FsetMateriaPrimaCommand.Prepare;
  end;
  FsetMateriaPrimaCommand.Parameters[0].Value.SetWideString(BD);
  FsetMateriaPrimaCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetMateriaPrimaCommand.Parameters[2].Value.AsVariant := Dados;
  FsetMateriaPrimaCommand.ExecuteUpdate;
  Result := FsetMateriaPrimaCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getMateriaPrima(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetMateriaPrimaCommand = nil then
  begin
    FgetMateriaPrimaCommand := FDBXConnection.CreateCommand;
    FgetMateriaPrimaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetMateriaPrimaCommand.Text := 'TSMCadastro.getMateriaPrima';
    FgetMateriaPrimaCommand.Prepare;
  end;
  FgetMateriaPrimaCommand.Parameters[0].Value.SetWideString(BD);
  FgetMateriaPrimaCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetMateriaPrimaCommand.ExecuteUpdate;
  Result := FgetMateriaPrimaCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.getProdutoComposicao(BD: string; pCodPro: Integer): OleVariant;
begin
  if FgetProdutoComposicaoCommand = nil then
  begin
    FgetProdutoComposicaoCommand := FDBXConnection.CreateCommand;
    FgetProdutoComposicaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetProdutoComposicaoCommand.Text := 'TSMCadastro.getProdutoComposicao';
    FgetProdutoComposicaoCommand.Prepare;
  end;
  FgetProdutoComposicaoCommand.Parameters[0].Value.SetWideString(BD);
  FgetProdutoComposicaoCommand.Parameters[1].Value.SetInt32(pCodPro);
  FgetProdutoComposicaoCommand.ExecuteUpdate;
  Result := FgetProdutoComposicaoCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.getProdutoInsumo(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetProdutoInsumoCommand = nil then
  begin
    FgetProdutoInsumoCommand := FDBXConnection.CreateCommand;
    FgetProdutoInsumoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetProdutoInsumoCommand.Text := 'TSMCadastro.getProdutoInsumo';
    FgetProdutoInsumoCommand.Prepare;
  end;
  FgetProdutoInsumoCommand.Parameters[0].Value.SetWideString(BD);
  FgetProdutoInsumoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetProdutoInsumoCommand.ExecuteUpdate;
  Result := FgetProdutoInsumoCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setOrdemProducao(BD: string; pCodigo: Integer; pLote: string; Dados: OleVariant): OleVariant;
begin
  if FsetOrdemProducaoCommand = nil then
  begin
    FsetOrdemProducaoCommand := FDBXConnection.CreateCommand;
    FsetOrdemProducaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetOrdemProducaoCommand.Text := 'TSMCadastro.setOrdemProducao';
    FsetOrdemProducaoCommand.Prepare;
  end;
  FsetOrdemProducaoCommand.Parameters[0].Value.SetWideString(BD);
  FsetOrdemProducaoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetOrdemProducaoCommand.Parameters[2].Value.SetWideString(pLote);
  FsetOrdemProducaoCommand.Parameters[3].Value.AsVariant := Dados;
  FsetOrdemProducaoCommand.ExecuteUpdate;
  Result := FsetOrdemProducaoCommand.Parameters[4].Value.AsVariant;
end;

function TSMCadastroClient.getOrdemProducao(BD: string; pCodigo: Integer; pLote: string): OleVariant;
begin
  if FgetOrdemProducaoCommand = nil then
  begin
    FgetOrdemProducaoCommand := FDBXConnection.CreateCommand;
    FgetOrdemProducaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetOrdemProducaoCommand.Text := 'TSMCadastro.getOrdemProducao';
    FgetOrdemProducaoCommand.Prepare;
  end;
  FgetOrdemProducaoCommand.Parameters[0].Value.SetWideString(BD);
  FgetOrdemProducaoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetOrdemProducaoCommand.Parameters[2].Value.SetWideString(pLote);
  FgetOrdemProducaoCommand.ExecuteUpdate;
  Result := FgetOrdemProducaoCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getGrupoServico(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetGrupoServicoCommand = nil then
  begin
    FgetGrupoServicoCommand := FDBXConnection.CreateCommand;
    FgetGrupoServicoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetGrupoServicoCommand.Text := 'TSMCadastro.getGrupoServico';
    FgetGrupoServicoCommand.Prepare;
  end;
  FgetGrupoServicoCommand.Parameters[0].Value.SetWideString(BD);
  FgetGrupoServicoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetGrupoServicoCommand.ExecuteUpdate;
  Result := FgetGrupoServicoCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setGrupoServico(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetGrupoServicoCommand = nil then
  begin
    FsetGrupoServicoCommand := FDBXConnection.CreateCommand;
    FsetGrupoServicoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetGrupoServicoCommand.Text := 'TSMCadastro.setGrupoServico';
    FsetGrupoServicoCommand.Prepare;
  end;
  FsetGrupoServicoCommand.Parameters[0].Value.SetWideString(BD);
  FsetGrupoServicoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetGrupoServicoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetGrupoServicoCommand.ExecuteUpdate;
  Result := FsetGrupoServicoCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getServico(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetServicoCommand = nil then
  begin
    FgetServicoCommand := FDBXConnection.CreateCommand;
    FgetServicoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetServicoCommand.Text := 'TSMCadastro.getServico';
    FgetServicoCommand.Prepare;
  end;
  FgetServicoCommand.Parameters[0].Value.SetWideString(BD);
  FgetServicoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetServicoCommand.ExecuteUpdate;
  Result := FgetServicoCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setServico(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetServicoCommand = nil then
  begin
    FsetServicoCommand := FDBXConnection.CreateCommand;
    FsetServicoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetServicoCommand.Text := 'TSMCadastro.setServico';
    FsetServicoCommand.Prepare;
  end;
  FsetServicoCommand.Parameters[0].Value.SetWideString(BD);
  FsetServicoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetServicoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetServicoCommand.ExecuteUpdate;
  Result := FsetServicoCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getNfeMsgAdicional(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetNfeMsgAdicionalCommand = nil then
  begin
    FgetNfeMsgAdicionalCommand := FDBXConnection.CreateCommand;
    FgetNfeMsgAdicionalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetNfeMsgAdicionalCommand.Text := 'TSMCadastro.getNfeMsgAdicional';
    FgetNfeMsgAdicionalCommand.Prepare;
  end;
  FgetNfeMsgAdicionalCommand.Parameters[0].Value.SetWideString(BD);
  FgetNfeMsgAdicionalCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetNfeMsgAdicionalCommand.ExecuteUpdate;
  Result := FgetNfeMsgAdicionalCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setNfeMsgAdicional(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetNfeMsgAdicionalCommand = nil then
  begin
    FsetNfeMsgAdicionalCommand := FDBXConnection.CreateCommand;
    FsetNfeMsgAdicionalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetNfeMsgAdicionalCommand.Text := 'TSMCadastro.setNfeMsgAdicional';
    FsetNfeMsgAdicionalCommand.Prepare;
  end;
  FsetNfeMsgAdicionalCommand.Parameters[0].Value.SetWideString(BD);
  FsetNfeMsgAdicionalCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetNfeMsgAdicionalCommand.Parameters[2].Value.AsVariant := Dados;
  FsetNfeMsgAdicionalCommand.ExecuteUpdate;
  Result := FsetNfeMsgAdicionalCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getNfeConfigFiscal(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetNfeConfigFiscalCommand = nil then
  begin
    FgetNfeConfigFiscalCommand := FDBXConnection.CreateCommand;
    FgetNfeConfigFiscalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetNfeConfigFiscalCommand.Text := 'TSMCadastro.getNfeConfigFiscal';
    FgetNfeConfigFiscalCommand.Prepare;
  end;
  FgetNfeConfigFiscalCommand.Parameters[0].Value.SetWideString(BD);
  FgetNfeConfigFiscalCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetNfeConfigFiscalCommand.ExecuteUpdate;
  Result := FgetNfeConfigFiscalCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setNfeConfigFiscal(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetNfeConfigFiscalCommand = nil then
  begin
    FsetNfeConfigFiscalCommand := FDBXConnection.CreateCommand;
    FsetNfeConfigFiscalCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetNfeConfigFiscalCommand.Text := 'TSMCadastro.setNfeConfigFiscal';
    FsetNfeConfigFiscalCommand.Prepare;
  end;
  FsetNfeConfigFiscalCommand.Parameters[0].Value.SetWideString(BD);
  FsetNfeConfigFiscalCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetNfeConfigFiscalCommand.Parameters[2].Value.AsVariant := Dados;
  FsetNfeConfigFiscalCommand.ExecuteUpdate;
  Result := FsetNfeConfigFiscalCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getNfeCenario(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetNfeCenarioCommand = nil then
  begin
    FgetNfeCenarioCommand := FDBXConnection.CreateCommand;
    FgetNfeCenarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetNfeCenarioCommand.Text := 'TSMCadastro.getNfeCenario';
    FgetNfeCenarioCommand.Prepare;
  end;
  FgetNfeCenarioCommand.Parameters[0].Value.SetWideString(BD);
  FgetNfeCenarioCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetNfeCenarioCommand.ExecuteUpdate;
  Result := FgetNfeCenarioCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setNfeCenario(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetNfeCenarioCommand = nil then
  begin
    FsetNfeCenarioCommand := FDBXConnection.CreateCommand;
    FsetNfeCenarioCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetNfeCenarioCommand.Text := 'TSMCadastro.setNfeCenario';
    FsetNfeCenarioCommand.Prepare;
  end;
  FsetNfeCenarioCommand.Parameters[0].Value.SetWideString(BD);
  FsetNfeCenarioCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetNfeCenarioCommand.Parameters[2].Value.AsVariant := Dados;
  FsetNfeCenarioCommand.ExecuteUpdate;
  Result := FsetNfeCenarioCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.setNotaEntrada(BD: string; pID: Integer; pNota: OleVariant; pItens: OleVariant; pPagar: OleVariant): Integer;
begin
  if FsetNotaEntradaCommand = nil then
  begin
    FsetNotaEntradaCommand := FDBXConnection.CreateCommand;
    FsetNotaEntradaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetNotaEntradaCommand.Text := 'TSMCadastro.setNotaEntrada';
    FsetNotaEntradaCommand.Prepare;
  end;
  FsetNotaEntradaCommand.Parameters[0].Value.SetWideString(BD);
  FsetNotaEntradaCommand.Parameters[1].Value.SetInt32(pID);
  FsetNotaEntradaCommand.Parameters[2].Value.AsVariant := pNota;
  FsetNotaEntradaCommand.Parameters[3].Value.AsVariant := pItens;
  FsetNotaEntradaCommand.Parameters[4].Value.AsVariant := pPagar;
  FsetNotaEntradaCommand.ExecuteUpdate;
  Result := FsetNotaEntradaCommand.Parameters[5].Value.GetInt32;
end;

function TSMCadastroClient.getHistorico(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetHistoricoCommand = nil then
  begin
    FgetHistoricoCommand := FDBXConnection.CreateCommand;
    FgetHistoricoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetHistoricoCommand.Text := 'TSMCadastro.getHistorico';
    FgetHistoricoCommand.Prepare;
  end;
  FgetHistoricoCommand.Parameters[0].Value.SetWideString(BD);
  FgetHistoricoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetHistoricoCommand.ExecuteUpdate;
  Result := FgetHistoricoCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setHistorico(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetHistoricoCommand = nil then
  begin
    FsetHistoricoCommand := FDBXConnection.CreateCommand;
    FsetHistoricoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetHistoricoCommand.Text := 'TSMCadastro.setHistorico';
    FsetHistoricoCommand.Prepare;
  end;
  FsetHistoricoCommand.Parameters[0].Value.SetWideString(BD);
  FsetHistoricoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetHistoricoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetHistoricoCommand.ExecuteUpdate;
  Result := FsetHistoricoCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getHistoricoGrupo(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetHistoricoGrupoCommand = nil then
  begin
    FgetHistoricoGrupoCommand := FDBXConnection.CreateCommand;
    FgetHistoricoGrupoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetHistoricoGrupoCommand.Text := 'TSMCadastro.getHistoricoGrupo';
    FgetHistoricoGrupoCommand.Prepare;
  end;
  FgetHistoricoGrupoCommand.Parameters[0].Value.SetWideString(BD);
  FgetHistoricoGrupoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetHistoricoGrupoCommand.ExecuteUpdate;
  Result := FgetHistoricoGrupoCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setHistoricoGrupo(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetHistoricoGrupoCommand = nil then
  begin
    FsetHistoricoGrupoCommand := FDBXConnection.CreateCommand;
    FsetHistoricoGrupoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetHistoricoGrupoCommand.Text := 'TSMCadastro.setHistoricoGrupo';
    FsetHistoricoGrupoCommand.Prepare;
  end;
  FsetHistoricoGrupoCommand.Parameters[0].Value.SetWideString(BD);
  FsetHistoricoGrupoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetHistoricoGrupoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetHistoricoGrupoCommand.ExecuteUpdate;
  Result := FsetHistoricoGrupoCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getContaBancaria(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetContaBancariaCommand = nil then
  begin
    FgetContaBancariaCommand := FDBXConnection.CreateCommand;
    FgetContaBancariaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetContaBancariaCommand.Text := 'TSMCadastro.getContaBancaria';
    FgetContaBancariaCommand.Prepare;
  end;
  FgetContaBancariaCommand.Parameters[0].Value.SetWideString(BD);
  FgetContaBancariaCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetContaBancariaCommand.ExecuteUpdate;
  Result := FgetContaBancariaCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setContaBancaria(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetContaBancariaCommand = nil then
  begin
    FsetContaBancariaCommand := FDBXConnection.CreateCommand;
    FsetContaBancariaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetContaBancariaCommand.Text := 'TSMCadastro.setContaBancaria';
    FsetContaBancariaCommand.Prepare;
  end;
  FsetContaBancariaCommand.Parameters[0].Value.SetWideString(BD);
  FsetContaBancariaCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetContaBancariaCommand.Parameters[2].Value.AsVariant := Dados;
  FsetContaBancariaCommand.ExecuteUpdate;
  Result := FsetContaBancariaCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.setNatOperacao(BD: string; pCodigo: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetNatOperacaoCommand = nil then
  begin
    FsetNatOperacaoCommand := FDBXConnection.CreateCommand;
    FsetNatOperacaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetNatOperacaoCommand.Text := 'TSMCadastro.setNatOperacao';
    FsetNatOperacaoCommand.Prepare;
  end;
  FsetNatOperacaoCommand.Parameters[0].Value.SetWideString(BD);
  FsetNatOperacaoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FsetNatOperacaoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetNatOperacaoCommand.ExecuteUpdate;
  Result := FsetNatOperacaoCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getNatOperacao(BD: string; pCodigo: Integer): OleVariant;
begin
  if FgetNatOperacaoCommand = nil then
  begin
    FgetNatOperacaoCommand := FDBXConnection.CreateCommand;
    FgetNatOperacaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetNatOperacaoCommand.Text := 'TSMCadastro.getNatOperacao';
    FgetNatOperacaoCommand.Prepare;
  end;
  FgetNatOperacaoCommand.Parameters[0].Value.SetWideString(BD);
  FgetNatOperacaoCommand.Parameters[1].Value.SetInt32(pCodigo);
  FgetNatOperacaoCommand.ExecuteUpdate;
  Result := FgetNatOperacaoCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.getCondPagto(BD: string; pID: Integer): OleVariant;
begin
  if FgetCondPagtoCommand = nil then
  begin
    FgetCondPagtoCommand := FDBXConnection.CreateCommand;
    FgetCondPagtoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetCondPagtoCommand.Text := 'TSMCadastro.getCondPagto';
    FgetCondPagtoCommand.Prepare;
  end;
  FgetCondPagtoCommand.Parameters[0].Value.SetWideString(BD);
  FgetCondPagtoCommand.Parameters[1].Value.SetInt32(pID);
  FgetCondPagtoCommand.ExecuteUpdate;
  Result := FgetCondPagtoCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setCondPagto(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetCondPagtoCommand = nil then
  begin
    FsetCondPagtoCommand := FDBXConnection.CreateCommand;
    FsetCondPagtoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetCondPagtoCommand.Text := 'TSMCadastro.setCondPagto';
    FsetCondPagtoCommand.Prepare;
  end;
  FsetCondPagtoCommand.Parameters[0].Value.SetWideString(BD);
  FsetCondPagtoCommand.Parameters[1].Value.SetInt32(pID);
  FsetCondPagtoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetCondPagtoCommand.ExecuteUpdate;
  Result := FsetCondPagtoCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.setCaixa(BD: string; setTipo: string; IDCaixa: Integer; usuario: string; FormaPagto: string; Valor: Currency; Obs_AbertFech: string; obsEntSaida: string): Boolean;
begin
  if FsetCaixaCommand = nil then
  begin
    FsetCaixaCommand := FDBXConnection.CreateCommand;
    FsetCaixaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetCaixaCommand.Text := 'TSMCadastro.setCaixa';
    FsetCaixaCommand.Prepare;
  end;
  FsetCaixaCommand.Parameters[0].Value.SetWideString(BD);
  FsetCaixaCommand.Parameters[1].Value.SetWideString(setTipo);
  FsetCaixaCommand.Parameters[2].Value.SetInt32(IDCaixa);
  FsetCaixaCommand.Parameters[3].Value.SetWideString(usuario);
  FsetCaixaCommand.Parameters[4].Value.SetWideString(FormaPagto);
  FsetCaixaCommand.Parameters[5].Value.AsCurrency := Valor;
  FsetCaixaCommand.Parameters[6].Value.SetWideString(Obs_AbertFech);
  FsetCaixaCommand.Parameters[7].Value.SetWideString(obsEntSaida);
  FsetCaixaCommand.ExecuteUpdate;
  Result := FsetCaixaCommand.Parameters[8].Value.GetBoolean;
end;

function TSMCadastroClient.getLancamento(BD: string; pID: Integer): OleVariant;
begin
  if FgetLancamentoCommand = nil then
  begin
    FgetLancamentoCommand := FDBXConnection.CreateCommand;
    FgetLancamentoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetLancamentoCommand.Text := 'TSMCadastro.getLancamento';
    FgetLancamentoCommand.Prepare;
  end;
  FgetLancamentoCommand.Parameters[0].Value.SetWideString(BD);
  FgetLancamentoCommand.Parameters[1].Value.SetInt32(pID);
  FgetLancamentoCommand.ExecuteUpdate;
  Result := FgetLancamentoCommand.Parameters[2].Value.AsVariant;
end;

function TSMCadastroClient.setLancamento(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetLancamentoCommand = nil then
  begin
    FsetLancamentoCommand := FDBXConnection.CreateCommand;
    FsetLancamentoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetLancamentoCommand.Text := 'TSMCadastro.setLancamento';
    FsetLancamentoCommand.Prepare;
  end;
  FsetLancamentoCommand.Parameters[0].Value.SetWideString(BD);
  FsetLancamentoCommand.Parameters[1].Value.SetInt32(pID);
  FsetLancamentoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetLancamentoCommand.ExecuteUpdate;
  Result := FsetLancamentoCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.getCheque(BD: string; pIDConta: string; pNCheque: Integer): OleVariant;
begin
  if FgetChequeCommand = nil then
  begin
    FgetChequeCommand := FDBXConnection.CreateCommand;
    FgetChequeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetChequeCommand.Text := 'TSMCadastro.getCheque';
    FgetChequeCommand.Prepare;
  end;
  FgetChequeCommand.Parameters[0].Value.SetWideString(BD);
  FgetChequeCommand.Parameters[1].Value.SetWideString(pIDConta);
  FgetChequeCommand.Parameters[2].Value.SetInt32(pNCheque);
  FgetChequeCommand.ExecuteUpdate;
  Result := FgetChequeCommand.Parameters[3].Value.AsVariant;
end;

function TSMCadastroClient.setCheque(BD: string; pIDConta: string; pNCheque: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetChequeCommand = nil then
  begin
    FsetChequeCommand := FDBXConnection.CreateCommand;
    FsetChequeCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetChequeCommand.Text := 'TSMCadastro.setCheque';
    FsetChequeCommand.Prepare;
  end;
  FsetChequeCommand.Parameters[0].Value.SetWideString(BD);
  FsetChequeCommand.Parameters[1].Value.SetWideString(pIDConta);
  FsetChequeCommand.Parameters[2].Value.SetInt32(pNCheque);
  FsetChequeCommand.Parameters[3].Value.AsVariant := Dados;
  FsetChequeCommand.ExecuteUpdate;
  Result := FsetChequeCommand.Parameters[4].Value.AsVariant;
end;

constructor TSMCadastroClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TSMCadastroClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TSMCadastroClient.Destroy;
begin
  FGetGeneratorCommand.DisposeOf;
  FInsertCommand.DisposeOf;
  FUpdateorInsertCommand.DisposeOf;
  FExecutarCommand.DisposeOf;
  FGetStringCommand.DisposeOf;
  FGetIntegerCommand.DisposeOf;
  FGetFloatCommand.DisposeOf;
  FgetEmpresaCommand.DisposeOf;
  FsetEmpresaCommand.DisposeOf;
  FgetCidadesCommand.DisposeOf;
  FsetCidadesCommand.DisposeOf;
  FgetFuncionarioCommand.DisposeOf;
  FsetFuncionarioCommand.DisposeOf;
  FgetUsuarioCommand.DisposeOf;
  FsetUsuarioCommand.DisposeOf;
  FgetClienteCommand.DisposeOf;
  FsetClienteCommand.DisposeOf;
  FgetRamoCommand.DisposeOf;
  FsetRamoCommand.DisposeOf;
  FsetClientePDVCommand.DisposeOf;
  FgetRepresentanteCommand.DisposeOf;
  FsetRepresentanteCommand.DisposeOf;
  FgetFornecedorCommand.DisposeOf;
  FsetFornecedorCommand.DisposeOf;
  FgetProdutoFornecedorCommand.DisposeOf;
  FgetGrupoFornecedorCommand.DisposeOf;
  FsetGrupoFornecedorCommand.DisposeOf;
  FgetTransportadoraCommand.DisposeOf;
  FsetTransportadoraCommand.DisposeOf;
  FsetProdutoCommand.DisposeOf;
  FgetProdutoCommand.DisposeOf;
  FsetGrupoProdutosCommand.DisposeOf;
  FgetGrupoProdutosCommand.DisposeOf;
  FsetSubGrupoProdutosCommand.DisposeOf;
  FgetSubGrupoProdutosCommand.DisposeOf;
  FgetUnidadeCommand.DisposeOf;
  FsetUnidadeCommand.DisposeOf;
  FsetMateriaPrimaCommand.DisposeOf;
  FgetMateriaPrimaCommand.DisposeOf;
  FgetProdutoComposicaoCommand.DisposeOf;
  FgetProdutoInsumoCommand.DisposeOf;
  FsetOrdemProducaoCommand.DisposeOf;
  FgetOrdemProducaoCommand.DisposeOf;
  FgetGrupoServicoCommand.DisposeOf;
  FsetGrupoServicoCommand.DisposeOf;
  FgetServicoCommand.DisposeOf;
  FsetServicoCommand.DisposeOf;
  FgetNfeMsgAdicionalCommand.DisposeOf;
  FsetNfeMsgAdicionalCommand.DisposeOf;
  FgetNfeConfigFiscalCommand.DisposeOf;
  FsetNfeConfigFiscalCommand.DisposeOf;
  FgetNfeCenarioCommand.DisposeOf;
  FsetNfeCenarioCommand.DisposeOf;
  FsetNotaEntradaCommand.DisposeOf;
  FgetHistoricoCommand.DisposeOf;
  FsetHistoricoCommand.DisposeOf;
  FgetHistoricoGrupoCommand.DisposeOf;
  FsetHistoricoGrupoCommand.DisposeOf;
  FgetContaBancariaCommand.DisposeOf;
  FsetContaBancariaCommand.DisposeOf;
  FsetNatOperacaoCommand.DisposeOf;
  FgetNatOperacaoCommand.DisposeOf;
  FgetCondPagtoCommand.DisposeOf;
  FsetCondPagtoCommand.DisposeOf;
  FsetCaixaCommand.DisposeOf;
  FgetLancamentoCommand.DisposeOf;
  FsetLancamentoCommand.DisposeOf;
  FgetChequeCommand.DisposeOf;
  FsetChequeCommand.DisposeOf;
  inherited;
end;

function TSMNotaClient.setNotaEntrada(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetNotaEntradaCommand = nil then
  begin
    FsetNotaEntradaCommand := FDBXConnection.CreateCommand;
    FsetNotaEntradaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetNotaEntradaCommand.Text := 'TSMNota.setNotaEntrada';
    FsetNotaEntradaCommand.Prepare;
  end;
  FsetNotaEntradaCommand.Parameters[0].Value.SetWideString(BD);
  FsetNotaEntradaCommand.Parameters[1].Value.SetInt32(pID);
  FsetNotaEntradaCommand.Parameters[2].Value.AsVariant := Dados;
  FsetNotaEntradaCommand.ExecuteUpdate;
  Result := FsetNotaEntradaCommand.Parameters[3].Value.AsVariant;
end;

function TSMNotaClient.getNotaEntrada(BD: string; pID: Integer): OleVariant;
begin
  if FgetNotaEntradaCommand = nil then
  begin
    FgetNotaEntradaCommand := FDBXConnection.CreateCommand;
    FgetNotaEntradaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetNotaEntradaCommand.Text := 'TSMNota.getNotaEntrada';
    FgetNotaEntradaCommand.Prepare;
  end;
  FgetNotaEntradaCommand.Parameters[0].Value.SetWideString(BD);
  FgetNotaEntradaCommand.Parameters[1].Value.SetInt32(pID);
  FgetNotaEntradaCommand.ExecuteUpdate;
  Result := FgetNotaEntradaCommand.Parameters[2].Value.AsVariant;
end;

constructor TSMNotaClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TSMNotaClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TSMNotaClient.Destroy;
begin
  FsetNotaEntradaCommand.DisposeOf;
  FgetNotaEntradaCommand.DisposeOf;
  inherited;
end;

function TsmPDVClient.setOrcamento(BD: string; pID: Integer; Dados: OleVariant): Boolean;
begin
  if FsetOrcamentoCommand = nil then
  begin
    FsetOrcamentoCommand := FDBXConnection.CreateCommand;
    FsetOrcamentoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetOrcamentoCommand.Text := 'TsmPDV.setOrcamento';
    FsetOrcamentoCommand.Prepare;
  end;
  FsetOrcamentoCommand.Parameters[0].Value.SetWideString(BD);
  FsetOrcamentoCommand.Parameters[1].Value.SetInt32(pID);
  FsetOrcamentoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetOrcamentoCommand.ExecuteUpdate;
  Result := FsetOrcamentoCommand.Parameters[3].Value.GetBoolean;
end;

function TsmPDVClient.getOrcamento(BD: string; pID: Integer): OleVariant;
begin
  if FgetOrcamentoCommand = nil then
  begin
    FgetOrcamentoCommand := FDBXConnection.CreateCommand;
    FgetOrcamentoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetOrcamentoCommand.Text := 'TsmPDV.getOrcamento';
    FgetOrcamentoCommand.Prepare;
  end;
  FgetOrcamentoCommand.Parameters[0].Value.SetWideString(BD);
  FgetOrcamentoCommand.Parameters[1].Value.SetInt32(pID);
  FgetOrcamentoCommand.ExecuteUpdate;
  Result := FgetOrcamentoCommand.Parameters[2].Value.AsVariant;
end;

function TsmPDVClient.setFechaVenda(BD: string; Dados: OleVariant; pID: string; pTipo: string): Boolean;
begin
  if FsetFechaVendaCommand = nil then
  begin
    FsetFechaVendaCommand := FDBXConnection.CreateCommand;
    FsetFechaVendaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetFechaVendaCommand.Text := 'TsmPDV.setFechaVenda';
    FsetFechaVendaCommand.Prepare;
  end;
  FsetFechaVendaCommand.Parameters[0].Value.SetWideString(BD);
  FsetFechaVendaCommand.Parameters[1].Value.AsVariant := Dados;
  FsetFechaVendaCommand.Parameters[2].Value.SetWideString(pID);
  FsetFechaVendaCommand.Parameters[3].Value.SetWideString(pTipo);
  FsetFechaVendaCommand.ExecuteUpdate;
  Result := FsetFechaVendaCommand.Parameters[4].Value.GetBoolean;
end;

function TsmPDVClient.setCancelarVenda(BD: string; pID: Integer; pTipo: string; pMotivo: string; pUsuario: string): Boolean;
begin
  if FsetCancelarVendaCommand = nil then
  begin
    FsetCancelarVendaCommand := FDBXConnection.CreateCommand;
    FsetCancelarVendaCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetCancelarVendaCommand.Text := 'TsmPDV.setCancelarVenda';
    FsetCancelarVendaCommand.Prepare;
  end;
  FsetCancelarVendaCommand.Parameters[0].Value.SetWideString(BD);
  FsetCancelarVendaCommand.Parameters[1].Value.SetInt32(pID);
  FsetCancelarVendaCommand.Parameters[2].Value.SetWideString(pTipo);
  FsetCancelarVendaCommand.Parameters[3].Value.SetWideString(pMotivo);
  FsetCancelarVendaCommand.Parameters[4].Value.SetWideString(pUsuario);
  FsetCancelarVendaCommand.ExecuteUpdate;
  Result := FsetCancelarVendaCommand.Parameters[5].Value.GetBoolean;
end;

function TsmPDVClient.setDevolucao(BD: string; pUsuario: string; pVlCredito: Currency; pIDCliente: Integer; pcds: OleVariant; pIDCaixa: Integer): Boolean;
begin
  if FsetDevolucaoCommand = nil then
  begin
    FsetDevolucaoCommand := FDBXConnection.CreateCommand;
    FsetDevolucaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetDevolucaoCommand.Text := 'TsmPDV.setDevolucao';
    FsetDevolucaoCommand.Prepare;
  end;
  FsetDevolucaoCommand.Parameters[0].Value.SetWideString(BD);
  FsetDevolucaoCommand.Parameters[1].Value.SetWideString(pUsuario);
  FsetDevolucaoCommand.Parameters[2].Value.AsCurrency := pVlCredito;
  FsetDevolucaoCommand.Parameters[3].Value.SetInt32(pIDCliente);
  FsetDevolucaoCommand.Parameters[4].Value.AsVariant := pcds;
  FsetDevolucaoCommand.Parameters[5].Value.SetInt32(pIDCaixa);
  FsetDevolucaoCommand.ExecuteUpdate;
  Result := FsetDevolucaoCommand.Parameters[6].Value.GetBoolean;
end;

function TsmPDVClient.setAtualizarTabelas(BD: string; aIdOrcamento: Integer; aIdCliente: Integer; aCredUtilizado: Currency): Boolean;
begin
  if FsetAtualizarTabelasCommand = nil then
  begin
    FsetAtualizarTabelasCommand := FDBXConnection.CreateCommand;
    FsetAtualizarTabelasCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetAtualizarTabelasCommand.Text := 'TsmPDV.setAtualizarTabelas';
    FsetAtualizarTabelasCommand.Prepare;
  end;
  FsetAtualizarTabelasCommand.Parameters[0].Value.SetWideString(BD);
  FsetAtualizarTabelasCommand.Parameters[1].Value.SetInt32(aIdOrcamento);
  FsetAtualizarTabelasCommand.Parameters[2].Value.SetInt32(aIdCliente);
  FsetAtualizarTabelasCommand.Parameters[3].Value.AsCurrency := aCredUtilizado;
  FsetAtualizarTabelasCommand.ExecuteUpdate;
  Result := FsetAtualizarTabelasCommand.Parameters[4].Value.GetBoolean;
end;

constructor TsmPDVClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TsmPDVClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TsmPDVClient.Destroy;
begin
  FsetOrcamentoCommand.DisposeOf;
  FgetOrcamentoCommand.DisposeOf;
  FsetFechaVendaCommand.DisposeOf;
  FsetCancelarVendaCommand.DisposeOf;
  FsetDevolucaoCommand.DisposeOf;
  FsetAtualizarTabelasCommand.DisposeOf;
  inherited;
end;

function TSM_FinanceiroClient.setFormaPagto(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetFormaPagtoCommand = nil then
  begin
    FsetFormaPagtoCommand := FDBXConnection.CreateCommand;
    FsetFormaPagtoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetFormaPagtoCommand.Text := 'TSM_Financeiro.setFormaPagto';
    FsetFormaPagtoCommand.Prepare;
  end;
  FsetFormaPagtoCommand.Parameters[0].Value.SetWideString(BD);
  FsetFormaPagtoCommand.Parameters[1].Value.SetInt32(pID);
  FsetFormaPagtoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetFormaPagtoCommand.ExecuteUpdate;
  Result := FsetFormaPagtoCommand.Parameters[3].Value.AsVariant;
end;

function TSM_FinanceiroClient.getFormaPagto(BD: string; pID: Integer): OleVariant;
begin
  if FgetFormaPagtoCommand = nil then
  begin
    FgetFormaPagtoCommand := FDBXConnection.CreateCommand;
    FgetFormaPagtoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetFormaPagtoCommand.Text := 'TSM_Financeiro.getFormaPagto';
    FgetFormaPagtoCommand.Prepare;
  end;
  FgetFormaPagtoCommand.Parameters[0].Value.SetWideString(BD);
  FgetFormaPagtoCommand.Parameters[1].Value.SetInt32(pID);
  FgetFormaPagtoCommand.ExecuteUpdate;
  Result := FgetFormaPagtoCommand.Parameters[2].Value.AsVariant;
end;

function TSM_FinanceiroClient.setBaixaRestaura(BD: string; pBaixaParcial: Boolean; pVlDiferenca: Currency; pReceberPagar: string; pBaixaRestaura: string; pTipo: string; pID: Integer; pOrdem: string; pData: string; pJuros: Currency; pDesconto: Currency; pValor: Currency; pUsuario: string; pIdHistorico: string; pIdConta: string; pIdCaixa: string; pNumCheque: Integer): Boolean;
begin
  if FsetBaixaRestauraCommand = nil then
  begin
    FsetBaixaRestauraCommand := FDBXConnection.CreateCommand;
    FsetBaixaRestauraCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetBaixaRestauraCommand.Text := 'TSM_Financeiro.setBaixaRestaura';
    FsetBaixaRestauraCommand.Prepare;
  end;
  FsetBaixaRestauraCommand.Parameters[0].Value.SetWideString(BD);
  FsetBaixaRestauraCommand.Parameters[1].Value.SetBoolean(pBaixaParcial);
  FsetBaixaRestauraCommand.Parameters[2].Value.AsCurrency := pVlDiferenca;
  FsetBaixaRestauraCommand.Parameters[3].Value.SetWideString(pReceberPagar);
  FsetBaixaRestauraCommand.Parameters[4].Value.SetWideString(pBaixaRestaura);
  FsetBaixaRestauraCommand.Parameters[5].Value.SetWideString(pTipo);
  FsetBaixaRestauraCommand.Parameters[6].Value.SetInt32(pID);
  FsetBaixaRestauraCommand.Parameters[7].Value.SetWideString(pOrdem);
  FsetBaixaRestauraCommand.Parameters[8].Value.SetWideString(pData);
  FsetBaixaRestauraCommand.Parameters[9].Value.AsCurrency := pJuros;
  FsetBaixaRestauraCommand.Parameters[10].Value.AsCurrency := pDesconto;
  FsetBaixaRestauraCommand.Parameters[11].Value.AsCurrency := pValor;
  FsetBaixaRestauraCommand.Parameters[12].Value.SetWideString(pUsuario);
  FsetBaixaRestauraCommand.Parameters[13].Value.SetWideString(pIdHistorico);
  FsetBaixaRestauraCommand.Parameters[14].Value.SetWideString(pIdConta);
  FsetBaixaRestauraCommand.Parameters[15].Value.SetWideString(pIdCaixa);
  FsetBaixaRestauraCommand.Parameters[16].Value.SetInt32(pNumCheque);
  FsetBaixaRestauraCommand.ExecuteUpdate;
  Result := FsetBaixaRestauraCommand.Parameters[17].Value.GetBoolean;
end;

constructor TSM_FinanceiroClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TSM_FinanceiroClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TSM_FinanceiroClient.Destroy;
begin
  FsetFormaPagtoCommand.DisposeOf;
  FgetFormaPagtoCommand.DisposeOf;
  FsetBaixaRestauraCommand.DisposeOf;
  inherited;
end;

function TSM_PedidoClient.PedidoVenda_Adicionar(BD: string; aTabelas: OleVariant): Boolean;
begin
  if FPedidoVenda_AdicionarCommand = nil then
  begin
    FPedidoVenda_AdicionarCommand := FDBXConnection.CreateCommand;
    FPedidoVenda_AdicionarCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPedidoVenda_AdicionarCommand.Text := 'TSM_Pedido.PedidoVenda_Adicionar';
    FPedidoVenda_AdicionarCommand.Prepare;
  end;
  FPedidoVenda_AdicionarCommand.Parameters[0].Value.SetWideString(BD);
  FPedidoVenda_AdicionarCommand.Parameters[1].Value.AsVariant := aTabelas;
  FPedidoVenda_AdicionarCommand.ExecuteUpdate;
  Result := FPedidoVenda_AdicionarCommand.Parameters[2].Value.GetBoolean;
end;

function TSM_PedidoClient.PedidoVenda_Editar(BD: string; aTabelas: OleVariant): Boolean;
begin
  if FPedidoVenda_EditarCommand = nil then
  begin
    FPedidoVenda_EditarCommand := FDBXConnection.CreateCommand;
    FPedidoVenda_EditarCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPedidoVenda_EditarCommand.Text := 'TSM_Pedido.PedidoVenda_Editar';
    FPedidoVenda_EditarCommand.Prepare;
  end;
  FPedidoVenda_EditarCommand.Parameters[0].Value.SetWideString(BD);
  FPedidoVenda_EditarCommand.Parameters[1].Value.AsVariant := aTabelas;
  FPedidoVenda_EditarCommand.ExecuteUpdate;
  Result := FPedidoVenda_EditarCommand.Parameters[2].Value.GetBoolean;
end;

function TSM_PedidoClient.PedidoVenda_CriaProduto(BD: string; aProduto: OleVariant; aProdComposicao: OleVariant): Integer;
begin
  if FPedidoVenda_CriaProdutoCommand = nil then
  begin
    FPedidoVenda_CriaProdutoCommand := FDBXConnection.CreateCommand;
    FPedidoVenda_CriaProdutoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPedidoVenda_CriaProdutoCommand.Text := 'TSM_Pedido.PedidoVenda_CriaProduto';
    FPedidoVenda_CriaProdutoCommand.Prepare;
  end;
  FPedidoVenda_CriaProdutoCommand.Parameters[0].Value.SetWideString(BD);
  FPedidoVenda_CriaProdutoCommand.Parameters[1].Value.AsVariant := aProduto;
  FPedidoVenda_CriaProdutoCommand.Parameters[2].Value.AsVariant := aProdComposicao;
  FPedidoVenda_CriaProdutoCommand.ExecuteUpdate;
  Result := FPedidoVenda_CriaProdutoCommand.Parameters[3].Value.GetInt32;
end;

function TSM_PedidoClient.PedidoVenda_AvancaStatus(BD: string; aPedidos: OleVariant): Integer;
begin
  if FPedidoVenda_AvancaStatusCommand = nil then
  begin
    FPedidoVenda_AvancaStatusCommand := FDBXConnection.CreateCommand;
    FPedidoVenda_AvancaStatusCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPedidoVenda_AvancaStatusCommand.Text := 'TSM_Pedido.PedidoVenda_AvancaStatus';
    FPedidoVenda_AvancaStatusCommand.Prepare;
  end;
  FPedidoVenda_AvancaStatusCommand.Parameters[0].Value.SetWideString(BD);
  FPedidoVenda_AvancaStatusCommand.Parameters[1].Value.AsVariant := aPedidos;
  FPedidoVenda_AvancaStatusCommand.ExecuteUpdate;
  Result := FPedidoVenda_AvancaStatusCommand.Parameters[2].Value.GetInt32;
end;

function TSM_PedidoClient.PedidoVenda_Excluir(BD: string; aPedidos: OleVariant): Integer;
begin
  if FPedidoVenda_ExcluirCommand = nil then
  begin
    FPedidoVenda_ExcluirCommand := FDBXConnection.CreateCommand;
    FPedidoVenda_ExcluirCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPedidoVenda_ExcluirCommand.Text := 'TSM_Pedido.PedidoVenda_Excluir';
    FPedidoVenda_ExcluirCommand.Prepare;
  end;
  FPedidoVenda_ExcluirCommand.Parameters[0].Value.SetWideString(BD);
  FPedidoVenda_ExcluirCommand.Parameters[1].Value.AsVariant := aPedidos;
  FPedidoVenda_ExcluirCommand.ExecuteUpdate;
  Result := FPedidoVenda_ExcluirCommand.Parameters[2].Value.GetInt32;
end;

function TSM_PedidoClient.PedidoVenda_Carregar(BD: string; aIDPedido: Integer): OleVariant;
begin
  if FPedidoVenda_CarregarCommand = nil then
  begin
    FPedidoVenda_CarregarCommand := FDBXConnection.CreateCommand;
    FPedidoVenda_CarregarCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FPedidoVenda_CarregarCommand.Text := 'TSM_Pedido.PedidoVenda_Carregar';
    FPedidoVenda_CarregarCommand.Prepare;
  end;
  FPedidoVenda_CarregarCommand.Parameters[0].Value.SetWideString(BD);
  FPedidoVenda_CarregarCommand.Parameters[1].Value.SetInt32(aIDPedido);
  FPedidoVenda_CarregarCommand.ExecuteUpdate;
  Result := FPedidoVenda_CarregarCommand.Parameters[2].Value.AsVariant;
end;

function TSM_PedidoClient.PedidoVenda_RelA3(BD: string; aIdPedido: Integer): OleVariant;
begin
  if FPedidoVenda_RelA3Command = nil then
  begin
    FPedidoVenda_RelA3Command := FDBXConnection.CreateCommand;
    FPedidoVenda_RelA3Command.CommandType := TDBXCommandTypes.DSServerMethod;
    FPedidoVenda_RelA3Command.Text := 'TSM_Pedido.PedidoVenda_RelA3';
    FPedidoVenda_RelA3Command.Prepare;
  end;
  FPedidoVenda_RelA3Command.Parameters[0].Value.SetWideString(BD);
  FPedidoVenda_RelA3Command.Parameters[1].Value.SetInt32(aIdPedido);
  FPedidoVenda_RelA3Command.ExecuteUpdate;
  Result := FPedidoVenda_RelA3Command.Parameters[2].Value.AsVariant;
end;

constructor TSM_PedidoClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TSM_PedidoClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TSM_PedidoClient.Destroy;
begin
  FPedidoVenda_AdicionarCommand.DisposeOf;
  FPedidoVenda_EditarCommand.DisposeOf;
  FPedidoVenda_CriaProdutoCommand.DisposeOf;
  FPedidoVenda_AvancaStatusCommand.DisposeOf;
  FPedidoVenda_ExcluirCommand.DisposeOf;
  FPedidoVenda_CarregarCommand.DisposeOf;
  FPedidoVenda_RelA3Command.DisposeOf;
  inherited;
end;

function TSMProducaoClient.setProducao(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetProducaoCommand = nil then
  begin
    FsetProducaoCommand := FDBXConnection.CreateCommand;
    FsetProducaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetProducaoCommand.Text := 'TSMProducao.setProducao';
    FsetProducaoCommand.Prepare;
  end;
  FsetProducaoCommand.Parameters[0].Value.SetWideString(BD);
  FsetProducaoCommand.Parameters[1].Value.SetInt32(pID);
  FsetProducaoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetProducaoCommand.ExecuteUpdate;
  Result := FsetProducaoCommand.Parameters[3].Value.AsVariant;
end;

function TSMProducaoClient.getProducao(BD: string; pID: Integer): OleVariant;
begin
  if FgetProducaoCommand = nil then
  begin
    FgetProducaoCommand := FDBXConnection.CreateCommand;
    FgetProducaoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetProducaoCommand.Text := 'TSMProducao.getProducao';
    FgetProducaoCommand.Prepare;
  end;
  FgetProducaoCommand.Parameters[0].Value.SetWideString(BD);
  FgetProducaoCommand.Parameters[1].Value.SetInt32(pID);
  FgetProducaoCommand.ExecuteUpdate;
  Result := FgetProducaoCommand.Parameters[2].Value.AsVariant;
end;

function TSMProducaoClient.setMovimento(BD: string; aUsuario: string; aCodPro: Integer; aQtde: Double; aQtdeFechada: Double; aCodUND: Integer; aEntSai: string; aDescriProd: string): Boolean;
begin
  if FsetMovimentoCommand = nil then
  begin
    FsetMovimentoCommand := FDBXConnection.CreateCommand;
    FsetMovimentoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetMovimentoCommand.Text := 'TSMProducao.setMovimento';
    FsetMovimentoCommand.Prepare;
  end;
  FsetMovimentoCommand.Parameters[0].Value.SetWideString(BD);
  FsetMovimentoCommand.Parameters[1].Value.SetWideString(aUsuario);
  FsetMovimentoCommand.Parameters[2].Value.SetInt32(aCodPro);
  FsetMovimentoCommand.Parameters[3].Value.SetDouble(aQtde);
  FsetMovimentoCommand.Parameters[4].Value.SetDouble(aQtdeFechada);
  FsetMovimentoCommand.Parameters[5].Value.SetInt32(aCodUND);
  FsetMovimentoCommand.Parameters[6].Value.SetWideString(aEntSai);
  FsetMovimentoCommand.Parameters[7].Value.SetWideString(aDescriProd);
  FsetMovimentoCommand.ExecuteUpdate;
  Result := FsetMovimentoCommand.Parameters[8].Value.GetBoolean;
end;

constructor TSMProducaoClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TSMProducaoClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TSMProducaoClient.Destroy;
begin
  FsetProducaoCommand.DisposeOf;
  FgetProducaoCommand.DisposeOf;
  FsetMovimentoCommand.DisposeOf;
  inherited;
end;

function TSMProdutoClient.setProduto(BD: string; pID: Integer; Dados: OleVariant): OleVariant;
begin
  if FsetProdutoCommand = nil then
  begin
    FsetProdutoCommand := FDBXConnection.CreateCommand;
    FsetProdutoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetProdutoCommand.Text := 'TSMProduto.setProduto';
    FsetProdutoCommand.Prepare;
  end;
  FsetProdutoCommand.Parameters[0].Value.SetWideString(BD);
  FsetProdutoCommand.Parameters[1].Value.SetInt32(pID);
  FsetProdutoCommand.Parameters[2].Value.AsVariant := Dados;
  FsetProdutoCommand.ExecuteUpdate;
  Result := FsetProdutoCommand.Parameters[3].Value.AsVariant;
end;

function TSMProdutoClient.getProduto(BD: string; pID: Integer): OleVariant;
begin
  if FgetProdutoCommand = nil then
  begin
    FgetProdutoCommand := FDBXConnection.CreateCommand;
    FgetProdutoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetProdutoCommand.Text := 'TSMProduto.getProduto';
    FgetProdutoCommand.Prepare;
  end;
  FgetProdutoCommand.Parameters[0].Value.SetWideString(BD);
  FgetProdutoCommand.Parameters[1].Value.SetInt32(pID);
  FgetProdutoCommand.ExecuteUpdate;
  Result := FgetProdutoCommand.Parameters[2].Value.AsVariant;
end;

function TSMProdutoClient.setServico(BD: string; aDados: OleVariant; aID: Integer): OleVariant;
begin
  if FsetServicoCommand = nil then
  begin
    FsetServicoCommand := FDBXConnection.CreateCommand;
    FsetServicoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FsetServicoCommand.Text := 'TSMProduto.setServico';
    FsetServicoCommand.Prepare;
  end;
  FsetServicoCommand.Parameters[0].Value.SetWideString(BD);
  FsetServicoCommand.Parameters[1].Value.AsVariant := aDados;
  FsetServicoCommand.Parameters[2].Value.SetInt32(aID);
  FsetServicoCommand.ExecuteUpdate;
  Result := FsetServicoCommand.Parameters[3].Value.AsVariant;
end;

function TSMProdutoClient.getServico(BD: string; aID: Integer): OleVariant;
begin
  if FgetServicoCommand = nil then
  begin
    FgetServicoCommand := FDBXConnection.CreateCommand;
    FgetServicoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FgetServicoCommand.Text := 'TSMProduto.getServico';
    FgetServicoCommand.Prepare;
  end;
  FgetServicoCommand.Parameters[0].Value.SetWideString(BD);
  FgetServicoCommand.Parameters[1].Value.SetInt32(aID);
  FgetServicoCommand.ExecuteUpdate;
  Result := FgetServicoCommand.Parameters[2].Value.AsVariant;
end;

constructor TSMProdutoClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TSMProdutoClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TSMProdutoClient.Destroy;
begin
  FsetProdutoCommand.DisposeOf;
  FgetProdutoCommand.DisposeOf;
  FsetServicoCommand.DisposeOf;
  FgetServicoCommand.DisposeOf;
  inherited;
end;

function TSM_SaveInCloudClient.ClienteLiberado(aCpfCnpj: string): Boolean;
begin
  if FClienteLiberadoCommand = nil then
  begin
    FClienteLiberadoCommand := FDBXConnection.CreateCommand;
    FClienteLiberadoCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FClienteLiberadoCommand.Text := 'TSM_SaveInCloud.ClienteLiberado';
    FClienteLiberadoCommand.Prepare;
  end;
  FClienteLiberadoCommand.Parameters[0].Value.SetWideString(aCpfCnpj);
  FClienteLiberadoCommand.ExecuteUpdate;
  Result := FClienteLiberadoCommand.Parameters[1].Value.GetBoolean;
end;

constructor TSM_SaveInCloudClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;

constructor TSM_SaveInCloudClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;

destructor TSM_SaveInCloudClient.Destroy;
begin
  FClienteLiberadoCommand.DisposeOf;
  inherited;
end;

end.


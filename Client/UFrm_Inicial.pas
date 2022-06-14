unit UFrm_Inicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, System.UITypes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.ComCtrls,
  Vcl.Menus, Vcl.Imaging.jpeg, Vcl.StdCtrls,System.StrUtils;

type
  TFrm_Inicial = class(TForm)
    mm1: TMainMenu;
    MenuCadastros: TMenuItem;
    MenuCad_Sair: TMenuItem;
    MenuVenda_Cliente: TMenuItem;
    MenuCad_Funcionario: TMenuItem;
    MenuVenda_Cidade: TMenuItem;
    MenuProd_Produto: TMenuItem;
    MenuProd_Unidade: TMenuItem;
    MenuCompra_Grupo: TMenuItem;
    MenuCad_Empresa: TMenuItem;
    MenuCompra_Fornecedor: TMenuItem;
    MenuProd_Grupo: TMenuItem;
    MenuProd_Subgrupo: TMenuItem;
    MenuFinanceiro: TMenuItem;
    MenuVenda_PDV_AbreCaixa: TMenuItem;
    MenuVenda_PDV_FechaCaixa: TMenuItem;
    MenuFinanceiro_Recebimento_AReceber: TMenuItem;
    MenuFinanceiro_Pagto_APagar: TMenuItem;
    MenuProducao: TMenuItem;
    MenuConfiguracoes: TMenuItem;
    Backup1: TMenuItem;
    Restaurar1: TMenuItem;
    UsuariosPermisses1: TMenuItem;
    MenuVenda_Pedido: TMenuItem;
    Contabilidade1: TMenuItem;
    NaturezaOperao1: TMenuItem;
    MenuProducao_GeraOrdem: TMenuItem;
    MenuProd_Insumo: TMenuItem;
    MenuVenda_PDV: TMenuItem;
    pnlFundo: TPanel;
    MenuProduto: TMenuItem;
    MenuVenda: TMenuItem;
    MenuCompra: TMenuItem;
    MenuExpedicao: TMenuItem;
    pnlRodape: TPanel;
    lblSaudacao: TLabel;
    lblConexao: TLabel;
    MenuVenda_Representante: TMenuItem;
    MenuVenda_PDV_GeraOrcamento: TMenuItem;
    MenuRel_PDV_VendaPerVendCli: TMenuItem;
    MenuRel_PDV_CaixaFechado: TMenuItem;
    pnlLogoEmpresa: TPanel;
    imgLogoEmpresa: TImage;
    pnlLogoSistema: TPanel;
    imgLogoSistema: TImage;
    MenuVenda_FormaPagto: TMenuItem;
    MenuFinanceiro_Historico: TMenuItem;
    MenuFinanceiro_Conta: TMenuItem;
    MenuSobre: TMenuItem;
    MenuFinanceiro_Lancamento: TMenuItem;
    MenuFinanceiro_Pagto: TMenuItem;
    Cheque1: TMenuItem;
    MenuFinanceiro_Recebimento: TMenuItem;
    MenuFinanceiro_GrupoHistorico: TMenuItem;
    MenuRel_PDV_ImprimirOrcamento: TMenuItem;
    MenuCad_Usuario: TMenuItem;
    MenuVenda_TipoPagto: TMenuItem;
    MenuRelatorio: TMenuItem;
    MenuRel_Financeiro: TMenuItem;
    MenuRel_Vendas: TMenuItem;
    MenuRel_Produto: TMenuItem;
    MenuRel_Produto_Estoque: TMenuItem;
    MenuRel_Cliente: TMenuItem;
    MenuRel_PDV: TMenuItem;
    MenuRel_Vendas_PorPagto: TMenuItem;
    MenuRel_Vendas_PorPeriodo: TMenuItem;
    MenuRel_Vendas_PorVendedor: TMenuItem;
    MenuRel_Vendas_TotItem: TMenuItem;
    CONTASARECEBER21: TMenuItem;
    MenuCompra_NFEntrada: TMenuItem;
    MenuRel_PDV_Sangria: TMenuItem;
    MenuProducao_AcertaEstoque: TMenuItem;
    MenuVenda_PDV_AutorizaOrcamento: TMenuItem;
    MenuVenda_PDV_Vendas: TMenuItem;
    MenuRel_Vendas_Grupo: TMenuItem;
    MenuRel_Compra: TMenuItem;
    MenuRel_Compra_NFPorClassif: TMenuItem;
    MenuRel_Cliente_SemCompra: TMenuItem;
    MenuPedido_GERENCIAR: TMenuItem;
    MenuCadServico: TMenuItem;
    MenuRel_Rastreabilidade: TMenuItem;
    MenuRel_Rastreabilidade_OP: TMenuItem;
    procedure MenuVenda_ClienteClick(Sender: TObject);
    procedure MenuCad_SairClick(Sender: TObject);
    procedure MenuCad_FuncionarioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuRel_ClienteClick(Sender: TObject);
    procedure MenuVenda_CidadeClick(Sender: TObject);
    procedure MenuProd_ProdutoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuProd_UnidadeClick(Sender: TObject);
    procedure MenuCompra_GrupoClick(Sender: TObject);
    procedure RamodeAtividade1Click(Sender: TObject);
    procedure MenuCad_EmpresaClick(Sender: TObject);
    procedure MenuCompra_FornecedorClick(Sender: TObject);
    procedure MenuProd_GrupoClick(Sender: TObject);
    procedure MenuProd_SubgrupoClick(Sender: TObject);
    procedure MenuProducao_GeraOrdemClick(Sender: TObject);
    procedure MenuProd_InsumoClick(Sender: TObject);
    procedure MenuVenda_RepresentanteClick(Sender: TObject);
    procedure MenuVenda_PDV_GeraOrcamentoClick(Sender: TObject);
    procedure MenuRel_PDV_VendaPerVendCliClick(Sender: TObject);
    procedure MenuFinanceiro_Recebimento_AReceberClick(Sender: TObject);
    procedure MenuVenda_PDV_AbreCaixaClick(Sender: TObject);
    procedure MenuVenda_PDV_FechaCaixaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuFinanceiro_Pagto_APagarClick(Sender: TObject);
    procedure MenuRel_PDV_CaixaFechadoClick(Sender: TObject);
    procedure MenuFinanceiro_ContaClick(Sender: TObject);
    procedure MenuFinanceiro_HistoricoClick(Sender: TObject);
    procedure MenuVenda_FormaPagtoClick(Sender: TObject);
    procedure MenuSobreClick(Sender: TObject);
    procedure MenuFinanceiro_LancamentoClick(Sender: TObject);
    procedure Cheque1Click(Sender: TObject);
    procedure MenuFinanceiro_GrupoHistoricoClick(Sender: TObject);
    procedure MenuRel_PDV_ImprimirOrcamentoClick(Sender: TObject);
    procedure MenuCad_UsuarioClick(Sender: TObject);
    procedure MenuVenda_TipoPagtoClick(Sender: TObject);
    procedure MenuRel_Vendas_PorPagtoClick(Sender: TObject);
    procedure MenuRel_Vendas_PorPeriodoClick(Sender: TObject);
    procedure MenuRel_Vendas_PorVendedorClick(Sender: TObject);
    procedure MenuRel_Vendas_TotItemClick(Sender: TObject);
    procedure CONTASARECEBER21Click(Sender: TObject);
    procedure MenuCompra_NFEntradaClick(Sender: TObject);
    procedure MenuRel_PDV_SangriaClick(Sender: TObject);
    procedure MenuProducao_AcertaEstoqueClick(Sender: TObject);
    procedure MenuVenda_PDV_AutorizaOrcamentoClick(Sender: TObject);
    procedure MenuVenda_PDV_VendasClick(Sender: TObject);
    procedure MenuRel_Produto_EstoqueClick(Sender: TObject);
    procedure MenuRel_Vendas_GrupoClick(Sender: TObject);
    procedure MenuRel_Compra_NFPorClassifClick(Sender: TObject);
    procedure MenuRel_Cliente_SemCompraClick(Sender: TObject);
    procedure MenuPedido_GERENCIARClick(Sender: TObject);
    procedure MenuCadServicoClick(Sender: TObject);
    procedure MenuRel_Rastreabilidade_OPClick(Sender: TObject);
  private
    Ativar: Boolean;
    procedure CarregaLogoEmpresa();

    procedure SistemaBloqueado();
    function ValidaCliente(): Boolean;

    procedure InibirMenus();

    procedure LiberaPerfil(aPerfil: string);
    procedure LiberaPDV(aPDV:Boolean);
    procedure LiberaOP(aOP:Boolean);
    procedure LiberaFINANCEIRO(aFinanceiro:Boolean);
  public
    { Public declarations }
  end;

var
  Frm_Inicial: TFrm_Inicial;

implementation

{$R *.dfm}
uses
  UDM, UFrm_Cliente, UFrm_Cidades, UFrm_Func, UFrm_Ramo, UFrm_GrupoFornecedor,
  UFrm_Empresa, UFrm_Fornecedor, UFrm_Produto, UFrm_GrupoProdutos,
  UFrm_SubGrupoProdutos, UFrm_OrdemProducao, UFrm_MateriaPrima, UfrmVendaMain,
  UFrm_CondicaoPagto, UFrm_Representante, URel_ListaEstoque, URel_PDV_Venda,
  UFrm_ContasAReceber, UFrm_CaixaAbertura, UFrm_CaixaFechamento, URel_Venda0,
  UFrmContasPagar, URel_FechamentoCaixa, UFrm_Historico, UFrm_ContaBancaria,
  u_Mensagem, UFrm_Sobre, UPdr_RelRetrato, UFrm_Lancamento, UFrm_Cheque,
  UFrm_GrupoHistorico, UFrm_Usuario, uFrm_CadUnidade, UFrm_CondicoesPagto,
  UFrm_Pedido, uRel_VendaFormaPagto, uRel_VendaPeriodo, uRel_VendaPorVendedor,
  uRel_VendaPorItem, uFrm_PesquisaContasAReceber, uFrm_NF_Entrada, uRel_Sangria,
  UFrm_AcertoEstoque, UCriptografia, UFrm_GerenciaOrcamento, UFrm_PDVDevConsulta,
  uRel_VendaPorGrupo, URel_NFEntradaPorClassificacao, URel_ClienteNaoComprou,
  UFuncoes, UFrm_PedidoVendaGerencia, UFrmCad_Servico,
  LDESistemas.Producao.View.Producao.Pesquisa, LDESistemas.Client.Producao.Relatorio.Rastr.Insumo;

function Saudacao: string;
begin
  Result := 'Boa Noite, ';
  if (time >= 0.25) and (time < 0.5) then
    Result := 'Bom Dia, ';
  if (time >= 0.5) and (time < 0.75) then
    Result := 'Boa Tarde, ';
  Result := Result + DM.Usuario.login + ', ';
end;

procedure TFrm_Inicial.MenuVenda_PDV_AbreCaixaClick(Sender: TObject);
begin
  TFrm_CaixaAbertura.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuPedido_GERENCIARClick(Sender: TObject);
begin
  TFrm_PedidoVendaGerencia.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuProducao_AcertaEstoqueClick(Sender: TObject);
begin
  TFrm_AcertoEstoque.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuVenda_PDV_AutorizaOrcamentoClick(Sender: TObject);
begin
  TFrm_GerenciaOrcamento.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuCompra_FornecedorClick(Sender: TObject);
begin
  TFrm_Fornecedor.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuVenda_RepresentanteClick(Sender: TObject);
begin
  TFrm_Representante.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuProd_UnidadeClick(Sender: TObject);
begin
  TFrm_CadUnidade.CreateChild(Self);
end;

procedure TFrm_Inicial.CarregaLogoEmpresa;
var
  lStream: TMemoryStream;
begin
  pnlLogoEmpresa.Color := $00CB8361;
  imgLogoEmpresa.Picture := nil;

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet('select a.logomarca from EMPRESA a');

  lStream := TMemoryStream.Create;
  try
    TBlobField(DM.dsConsulta.FieldByName('logomarca')).SaveToStream(lStream);
    lStream.Position := 0;

    if lStream.Size > 0 then
    begin
//      pnlLogoEmpresa.Color := clWhite;
      imgLogoEmpresa.Picture.LoadFromStream(lStream);
    end;
  finally
    if Assigned(lStream) then
      FreeAndNil(lStream);
  end;
end;

procedure TFrm_Inicial.Cheque1Click(Sender: TObject);
begin
  TFrm_Cheque.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuVenda_CidadeClick(Sender: TObject);
begin
  TFrm_Cidades.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuVenda_ClienteClick(Sender: TObject);
begin
  TFrm_Cliente.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuRel_ClienteClick(Sender: TObject);
begin
//  TFrm_Cliente.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuRel_Cliente_SemCompraClick(Sender: TObject);
begin
  TRel_ClienteNaoComprou.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuRel_Compra_NFPorClassifClick(Sender: TObject);
begin
  TRel_NFEntradaPorClassificacao.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuFinanceiro_ContaClick(Sender: TObject);
begin
  TFrm_ContaBancaria.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuFinanceiro_Pagto_APagarClick(Sender: TObject);
begin
  TFrm_ContasPagar.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuFinanceiro_Recebimento_AReceberClick(Sender: TObject);
begin
  TFrm_ContasAReceber.CreateChild(Self);
end;

procedure TFrm_Inicial.CONTASARECEBER21Click(Sender: TObject);
begin
  TFrm_PesquisaContasAReceber.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuCadServicoClick(Sender: TObject);
begin
  TFrmCad_Servico.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuCad_EmpresaClick(Sender: TObject);
begin
  TFrm_Empresa.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuProducao_GeraOrdemClick(Sender: TObject);
begin
  //TFrm_OrdemProducao.CreateChild(self);
  TFrmProducaoPesquisa.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuVenda_PDV_FechaCaixaClick(Sender: TObject);
const
  SQL = 'SELECT r.ID_CAIXA ' + 'FROM CAIXA a ' + 'left outer join CAIXA_ABERT_FECH r on (r.ID_CAIXA = a.ID) ' +
//        'where cast(r.DT_HORA_ABERT_FECH as date) = ''today'' '+
    'where a.ID = %s ' + 'and a.ABERTO_FECHADO = ''A''';
begin
  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL, [DM.GetString('select max(id) id from CAIXA', 'id')]));

  if DM.dsConsulta.IsEmpty then
  begin
    TMensagem.Atencao('Abertura de Caixa ainda não foi executada.');
    Exit;
  end;

  TFrm_CaixaFechamento.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuRel_PDV_CaixaFechadoClick(Sender: TObject);
begin
  if not Assigned(Rel_FechamentoCaixa) then
    Rel_FechamentoCaixa := TRel_FechamentoCaixa.Create(Self);
  try
    with Rel_FechamentoCaixa do
    begin
      dtp1.Date := Date;
      dtp2.Date := Date;

      ShowModal;
      Visible := True;

      dtp1.SetFocus;
    end;
  finally
    FreeAndNil(Rel_FechamentoCaixa);
  end;
end;

procedure TFrm_Inicial.FormActivate(Sender: TObject);
begin
  if Ativar then
  begin
    Ativar := False;
  end;
  Caption := DM.Empresa.Fantasia;
end;

procedure TFrm_Inicial.MenuVenda_FormaPagtoClick(Sender: TObject);
begin
  TFRM_CondicaoPagto.CreateChild(self);
end;

procedure TFrm_Inicial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MenuCad_Sair.Click;
end;

procedure TFrm_Inicial.FormCreate(Sender: TObject);
begin
  Ativar := True;

  lblSaudacao.Caption := Saudacao + ' hoje é ' + FormatDateTime('dddddd', date) + '    ';
  lblConexao.Caption := 'BASE: (' + DM.AConexao.Servidor + ':' + DM.AConexao.Banco + ')';
end;

procedure TFrm_Inicial.FormShow(Sender: TObject);
begin
  pnlLogoEmpresa.Left := (pnlFundo.Width - pnlLogoEmpresa.Width) div 2;
  pnlLogoEmpresa.Top := (pnlFundo.Height - pnlLogoEmpresa.Height) div 2;

  CarregaLogoEmpresa();

  //Menus para perfil = Administrador
  MenuVenda_PDV_AutorizaOrcamento.Visible := (DM.Usuario.Perfil='Administrador');

  Cheque1.Visible          := (DM.Usuario.Login = 'ADMIN');
  CONTASARECEBER21.Visible := (DM.Usuario.Login = 'ADMIN');

  if not ValidaCliente then
  begin
    SistemaBloqueado;
    Exit;
  end;

  InibirMenus;
  LiberaPDV(DM.Usuario.AcessoPDV);
  LiberaFINANCEIRO(DM.Usuario.AcessoFinanceiro);
  LiberaOP(DM.Usuario.AcessoOP);
end;

procedure TFrm_Inicial.MenuCad_FuncionarioClick(Sender: TObject);
begin
  TFrm_Func.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuFinanceiro_GrupoHistoricoClick(Sender: TObject);
begin
  TFrm_GrupoHistorico.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuProd_GrupoClick(Sender: TObject);
begin
  TFrm_GrupoProdutos.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuCompra_GrupoClick(Sender: TObject);
begin
  TFrm_GrupoFornecedor.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuFinanceiro_HistoricoClick(Sender: TObject);
begin
  TFrm_TipoNotaEntrada.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuVenda_TipoPagtoClick(Sender: TObject);
begin
  TFrm_CondicoesPagto.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuFinanceiro_LancamentoClick(Sender: TObject);
begin
  TFrm_Lancamento.CreateChild(Self);
end;

procedure TFrm_Inicial.InibirMenus;
begin
  MenuCadastros.Visible := False;
  MenuCad_Funcionario.Visible := False;
  MenuCad_Usuario.Visible := False;
  MenuCad_Empresa.Visible := False;

  MenuProduto.Visible := False;
  MenuProd_Produto.Visible := False;
  MenuProd_Insumo.Visible := False;
  MenuProd_Unidade.Visible := False;
  MenuProd_Grupo.Visible := False;
  MenuProd_Subgrupo.Visible := False;
  MenuCadServico.Visible := False;

  MenuCompra.Visible := False;
  MenuCompra_Grupo.Visible := False;
  MenuCompra_Fornecedor.Visible := False;
  MenuCompra_NFEntrada.Visible := False;

  MenuVenda.Visible := False;
  MenuVenda_PDV.Visible := False;
  MenuVenda_PDV_GeraOrcamento.Visible := False;
  MenuVenda_PDV_AbreCaixa.Visible := False;
  MenuVenda_PDV_FechaCaixa.Visible := False;
  MenuVenda_PDV_AutorizaOrcamento.Visible := False;
  MenuVenda_PDV_Vendas.Visible := False;
  MenuVenda_Cliente.Visible := False;
  MenuVenda_TipoPagto.Visible := False;
  MenuVenda_Cidade.Visible := False;

  MenuProducao.Visible := False;
  MenuProducao_GeraOrdem.Visible := False;
  MenuProducao_AcertaEstoque.Visible := False;

  MenuFinanceiro.Visible := False;
  MenuFinanceiro_Recebimento.Visible := False;
  MenuFinanceiro_Recebimento_AReceber.Visible := False;
  MenuFinanceiro_Pagto.Visible := False;
  MenuFinanceiro_Pagto_APagar.Visible := False;
  MenuFinanceiro_Lancamento.Visible := False;
  MenuFinanceiro_Conta.Visible := False;
  MenuFinanceiro_GrupoHistorico.Visible := False;
  MenuFinanceiro_Historico.Visible := False;

  MenuExpedicao.Visible := False;

  MenuRelatorio.Visible := False;
  MenuRel_Financeiro.Visible := False;
  MenuRel_Vendas.Visible := False;
  MenuRel_Vendas_PorPeriodo.Visible := False;
  MenuRel_Vendas_PorVendedor.Visible := False;
  MenuRel_Vendas_TotItem.Visible := False;
  MenuRel_Vendas_PorPagto.Visible := False;
  MenuRel_Vendas_Grupo.Visible := False;
  MenuRel_Produto.Visible := False;
  MenuRel_Produto_Estoque.Visible := False;

  MenuRel_Cliente.Visible := False;
  MenuRel_Cliente_SemCompra.Visible := False;

  MenuRel_PDV.Visible := False;
  MenuRel_PDV_ImprimirOrcamento.Visible := False;
  MenuRel_PDV_VendaPerVendCli.Visible := False;
  MenuRel_PDV_CaixaFechado.Visible := False;
  MenuRel_PDV_Sangria.Visible := False;

  MenuRel_Compra.Visible := False;
  MenuRel_Compra_NFPorClassif.Visible := False;

  MenuRel_Rastreabilidade.Visible := False;
  MenuRel_Rastreabilidade_OP.Visible := False;

  MenuPedido_GERENCIAR.Visible := False;
end;

procedure TFrm_Inicial.LiberaFINANCEIRO(aFinanceiro:Boolean);
begin
  if aFinanceiro then
  begin
    MenuFinanceiro.Visible := True;
    MenuFinanceiro_Recebimento.Visible := True;
    MenuFinanceiro_Recebimento_AReceber.Visible := True;
    MenuFinanceiro_Pagto.Visible := True;
    MenuFinanceiro_Pagto_APagar.Visible := True;
    MenuFinanceiro_Lancamento.Visible := True;
    MenuFinanceiro_Conta.Visible := True;
    MenuFinanceiro_GrupoHistorico.Visible := True;
    MenuFinanceiro_Historico.Visible := True;

    MenuCompra.Visible := True;
    MenuCompra_Grupo.Visible := True;
    MenuCompra_Fornecedor.Visible := True;
    MenuCompra_NFEntrada.Visible := True;

    MenuRel_Compra.Visible := True;
    MenuRel_Compra_NFPorClassif.Visible := True;
  end;
end;

procedure TFrm_Inicial.LiberaOP(aOP:Boolean);
begin
  if aOP then
  begin
    MenuProducao.Visible := True;
    MenuProducao_GeraOrdem.Visible := True;
    MenuProducao_AcertaEstoque.Visible := True;

    MenuProd_Insumo.Visible := True;
    MenuPedido_GERENCIAR.Visible := True;

    MenuRel_Rastreabilidade.Visible := True;
    MenuRel_Rastreabilidade_OP.Visible := True;
  end;
end;

procedure TFrm_Inicial.LiberaPDV(aPDV:Boolean);
begin
  if aPDV then
  begin
    MenuCadastros.Visible := True;
    LiberaPerfil(DM.Usuario.Perfil);

    MenuProduto.Visible := True;
    MenuProd_Produto.Visible := True;
    MenuProd_Unidade.Visible := True;
    MenuProd_Grupo.Visible := True;
    MenuProd_Subgrupo.Visible := True;
    MenuCadServico.Visible := True;

    MenuVenda.Visible := True;
    MenuVenda_PDV.Visible := True;
    MenuVenda_PDV_GeraOrcamento.Visible := True;
    MenuVenda_PDV_AbreCaixa.Visible := True;
    MenuVenda_PDV_FechaCaixa.Visible := True;
    MenuVenda_PDV_AutorizaOrcamento.Visible := True;
    MenuVenda_PDV_Vendas.Visible := True;

    MenuVenda_Cliente.Visible := True;
    MenuRel_Cliente_SemCompra.Visible := True;

    MenuVenda_TipoPagto.Visible := True;
    MenuVenda_Cidade.Visible := True;

    MenuRelatorio.Visible := True;
    MenuRel_Vendas.Visible := True;
    MenuRel_Vendas_PorPeriodo.Visible := True;
    MenuRel_Vendas_PorVendedor.Visible := True;
    MenuRel_Vendas_TotItem.Visible := True;
    MenuRel_Vendas_PorPagto.Visible := True;
    MenuRel_Vendas_Grupo.Visible := True;
    MenuRel_Produto.Visible := True;
    MenuRel_Produto_Estoque.Visible := True;
    MenuRel_Cliente.Visible := True;
    MenuRel_PDV.Visible := True;
    MenuRel_PDV_ImprimirOrcamento.Visible := True;
    MenuRel_PDV_VendaPerVendCli.Visible := True;
    MenuRel_PDV_CaixaFechado.Visible := True;
    MenuRel_PDV_Sangria.Visible := True;
  end;
end;

procedure TFrm_Inicial.LiberaPerfil(aPerfil: string);
begin
  if (UpperCase(aPerfil) = 'ADMINISTRADOR') then
  begin
    MenuCad_Funcionario.Visible := True;
    MenuCad_Usuario.Visible := True;
    MenuCad_Empresa.Visible := True;
  end;
end;

procedure TFrm_Inicial.SistemaBloqueado;
begin
  MenuProduto.Visible := False;
  MenuCompra.Visible := False;
  MenuVenda.Visible := False;
  MenuProducao.Visible := False;
  MenuFinanceiro.Visible := False;
  MenuExpedicao.Visible := False;
  MenuConfiguracoes.Visible := False;
  MenuRelatorio.Visible := False;

  //SubMenu
  MenuCad_Funcionario.Visible := False;
  MenuCad_Usuario.Visible := False;
end;

procedure TFrm_Inicial.MenuRel_Produto_EstoqueClick(Sender: TObject);
begin
  TRelListaEtoque.CreateChild(self);
end;

procedure TFrm_Inicial.MenuRel_Rastreabilidade_OPClick(Sender: TObject);
begin
  TRel_Rastr_Insumo.Create(Self);
end;

procedure TFrm_Inicial.MenuProd_ProdutoClick(Sender: TObject);
begin
  TFrm_Produto.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuProd_InsumoClick(Sender: TObject);
begin
  TFrm_MateriaPrima.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuCompra_NFEntradaClick(Sender: TObject);
begin
  TFrm_NF_Entrada.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuRel_PDV_ImprimirOrcamentoClick(Sender: TObject);
var
  sOrcamento: string;
begin
  sOrcamento := InputBox('Orçamento', 'Informe o nº do orçamento.', EmptyStr);

  if sOrcamento <> EmptyStr then
  begin
    if not Assigned(Rel_Venda0) then
      Rel_Venda0 := TRel_Venda0.Create(Self);
    try
      Rel_Venda0.ExecOrcamento(sOrcamento.ToInteger);
    finally
      FreeAndNil(Rel_Venda0);
    end;
  end;
end;

procedure TFrm_Inicial.RamodeAtividade1Click(Sender: TObject);
begin
  TFrm_Ramo.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuCad_SairClick(Sender: TObject);
begin
//  if MessageDlg('Deseja sair do sistema?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
//    Application.Run
//  else
  Application.Terminate;
end;

procedure TFrm_Inicial.MenuRel_PDV_SangriaClick(Sender: TObject);
begin
  TRel_Sangria.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuSobreClick(Sender: TObject);
begin
  TFrm_Sobre.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuProd_SubgrupoClick(Sender: TObject);
begin
  TFrm_SubGrupoProdutos.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuCad_UsuarioClick(Sender: TObject);
begin
  if (DM.Usuario.Perfil <> 'Administrador') then
    TMensagem.Informacao('Usuário sem permissão de acesso a este menu.')
  else
    TFrm_Usuario.CreateChild(Self);
end;

function TFrm_Inicial.ValidaCliente: Boolean;
const
  SQL = 'select cliente_lde from EMPRESA where codigo=1';
var
  lCliente: string;
begin
//Valida via SaveInCloud
//  Result := False;
//  if DM.SMSaveInCloud.ClienteLiberado(OnlyDigit(DM.Empresa.CNPJ)) then
//    Result := True;

  Result := True;
  lCliente := DM.GetString(SQL,'cliente_lde');

  if (lCliente <> '') then
  begin
    lCliente := Criptografia.DecodificarString(lCliente,Criptografia.CodificarString(DM.Empresa.CNPJ,''));
    lCliente := SplitString(lCliente,'|')[1];
    if (StrToDate(lCliente)< Date) then
      Result := False;
  end
  else
  begin
    Result := False;
  end;
end;

procedure TFrm_Inicial.MenuRel_Vendas_GrupoClick(Sender: TObject);
begin
  TRel_VendaPorGrupo.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuVenda_PDV_GeraOrcamentoClick(Sender: TObject);
begin
  TfrmVendaMain.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuVenda_PDV_VendasClick(Sender: TObject);
begin
  TFrm_PDVDevConsulta.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuRel_PDV_VendaPerVendCliClick(Sender: TObject);
begin
  TRel_PDV_Venda.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuRel_Vendas_PorPagtoClick(Sender: TObject);
begin
  TRel_VendaFormaPagto.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuRel_Vendas_PorPeriodoClick(Sender: TObject);
begin
  TRel_VendaPeriodo.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuRel_Vendas_PorVendedorClick(Sender: TObject);
begin
  TRel_VendaPorVendedor.CreateChild(Self);
end;

procedure TFrm_Inicial.MenuRel_Vendas_TotItemClick(Sender: TObject);
begin
  TRel_VendaPorItem.CreateChild(Self);
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.


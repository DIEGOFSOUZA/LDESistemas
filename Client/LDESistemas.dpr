program LDESistemas;

uses
  Vcl.Forms,
  System.SysUtils,
  UPdr_Primeiro in 'Heranca\UPdr_Primeiro.pas' {Pdr_Primeiro},
  UPdr_Segundo in 'Heranca\UPdr_Segundo.pas' {Pdr_Segundo},
  UPdr_Child in 'Heranca\UPdr_Child.pas' {Pdr_Child},
  UPdr_Cad in 'Heranca\Cadastro\UPdr_Cad.pas' {Pdr_Cad},
  UPdr_Consulta in 'Heranca\UPdr_Consulta.pas' {Pdr_Consulta},
  UPdr_Relatorio in 'Heranca\Relatorio\UPdr_Relatorio.pas' {Pdr_Relatorio},
  UPdr_Relatorio.Cabecalho in 'Heranca\Relatorio\UPdr_Relatorio.Cabecalho.pas' {Pdr_RelatorioRetratoCabecalho},
  UFrm_Login in 'UFrm_Login.pas' {Frm_Login},
  UFrm_Inicial in 'UFrm_Inicial.pas' {Frm_Inicial},
  u_Mensagem in 'Utils\u_Mensagem.pas',
  UFrm_AtualizacaoSistema in 'Conexao\UFrm_AtualizacaoSistema.pas' {Frm_AtualizacaoSistema},
  UPdr_Configuracao in 'Conexao\UPdr_Configuracao.pas' {Pdr_Configuracao},
  UCriptografia in 'Conexao\UCriptografia.pas',
  UFrm_VoltaSenha in 'Utils\UFrm_VoltaSenha.pas' {Frm_VoltaSenha},
  RLConsts,
  UConsulta in 'UConsulta.pas',
  Vcl.Themes,
  Vcl.Styles,
  UMakeReadWrite in 'Utils\UMakeReadWrite.pas',
  UConsultaCNPJ in 'UConsultaCNPJ.pas' {Frm_ConsultaCNPJ},
  UFuncoes in 'Utils\UFuncoes.pas',
  UConectar in 'UConectar.pas',
  URel_ListaMatPrimaLote in 'Producao\Relatorios\URel_ListaMatPrimaLote.pas' {Rel_ListaMatPrimaLote},
  UFrm_OrdemProducao in 'Producao\UFrm_OrdemProducao.pas' {Frm_OrdemProducao},
  UDM in 'DM\UDM.pas' {DM: TDataModule},
  UFrm_GrupoProdutos in 'Produto\UFrm_GrupoProdutos.pas' {Frm_GrupoProdutos},
  UFrm_MateriaPrima in 'Produto\UFrm_MateriaPrima.pas' {Frm_MateriaPrima},
  UFrm_Produto in 'Produto\UFrm_Produto.pas' {Frm_Produto},
  UFrm_Cidades in 'Cadastros\UFrm_Cidades.pas' {Frm_Cidades},
  UFrm_Empresa in 'Cadastros\UFrm_Empresa.pas' {Frm_Empresa},
  UFrm_Fornecedor in 'Cadastros\UFrm_Fornecedor.pas' {Frm_Fornecedor},
  UFrm_GrupoFornecedor in 'Cadastros\UFrm_GrupoFornecedor.pas' {Frm_GrupoFornecedor},
  UFrm_CondicaoPagto in 'Financeiro\ContasReceber\UFrm_CondicaoPagto.pas' {FRM_CondicaoPagto},
  UFrmContasPagar in 'Financeiro\ContasPagar\UFrmContasPagar.pas' {Frm_ContasPagar},
  UFrm_SubGrupoProdutos in 'Produto\UFrm_SubGrupoProdutos.pas' {Frm_SubGrupoProdutos},
  URel_ProdutoTrilha in 'Produto\Relatorios\URel_ProdutoTrilha.pas' {Rel_ProdutoTrilha},
  UFrm_Representante in 'Cadastros\UFrm_Representante.pas' {Frm_Representante},
  URel_ListaEstoque in 'Produto\Relatorios\URel_ListaEstoque.pas' {RelListaEtoque},
  UFrm_ContasAReceber in 'Financeiro\ContasReceber\UFrm_ContasAReceber.pas' {Frm_ContasAReceber},
  UFrm_EscolhaUM in 'Produto\Utils\UFrm_EscolhaUM.pas' {Frm_EscolhaUM},
  UDMACBr in 'DM\UDMACBr.pas' {DMACBr: TDataModule},
  UFrm_RetornoEdit in 'Utils\UFrm_RetornoEdit.pas' {Frm_RetornoEdit},
  URel_ContasAReceber in 'Financeiro\ContasReceber\Relatorios\URel_ContasAReceber.pas' {Rel_ContasAReceber},
  UFrm_CaixaAbertura in 'Financeiro\Caixa\UFrm_CaixaAbertura.pas' {Frm_CaixaAbertura},
  UFrm_CaixaFechamento in 'Financeiro\Caixa\UFrm_CaixaFechamento.pas' {Frm_CaixaFechamento},
  UFrm_Sangria in 'Financeiro\Caixa\UFrm_Sangria.pas' {Frm_Sangria},
  UFrm_ReabreCaixa in 'Financeiro\Caixa\UFrm_ReabreCaixa.pas' {Frm_ReabreCaixa},
  UFrm_Caixa_InformaValores in 'Financeiro\Caixa\UFrm_Caixa_InformaValores.pas' {Frm_Caixa_InformaValores},
  URel_FechamentoCaixa in 'Financeiro\Caixa\Relatorio\URel_FechamentoCaixa.pas' {Rel_FechamentoCaixa},
  UFrm_NotaEntrada in 'Financeiro\ContasPagar\UFrm_NotaEntrada.pas' {Frm_NotaEntrada},
  UFrm_Historico in 'Financeiro\ContasPagar\UFrm_Historico.pas' {Frm_Historico},
  UFrm_ContaBancaria in 'Financeiro\ContasPagar\UFrm_ContaBancaria.pas' {Frm_ContaBancaria},
  UFrm_EntradaSimples in 'Financeiro\ContasPagar\UFrm_EntradaSimples.pas' {Frm_EntradaSimples},
  UFrmBaixaContaPagar in 'Financeiro\ContasPagar\UFrmBaixaContaPagar.pas' {FrmBaixaContaPagar},
  UFrm_Cliente in 'Cadastros\Cliente\UFrm_Cliente.pas' {Frm_Cliente},
  UFrm_Func in 'Cadastros\UFrm_Func.pas' {Frm_Func},
  UFrm_Transportadora in 'Cadastros\UFrm_Transportadora.pas' {Frm_Transportadora},
  UPdr_Cad2 in 'Heranca\Cadastro\UPdr_Cad2.pas' {Pdr_Cad2},
  UFrm_Ramo in 'Cadastros\UFrm_Ramo.pas' {Frm_Ramo},
  UFrm_Sobre in 'Utils\UFrm_Sobre.pas' {Frm_Sobre},
  URel_ContasAPagar in 'Financeiro\ContasPagar\Relatorios\URel_ContasAPagar.pas' {Rel_ContasAPagar},
  UPdr_RelRetrato in 'Heranca\Relatorio\UPdr_RelRetrato.pas' {Pdr_RelRetrato},
  UPdr_CadLista in 'Heranca\Cadastro\UPdr_CadLista.pas' {Pdr_CadLista},
  UFrm_Lancamento in 'Financeiro\UFrm_Lancamento.pas' {Frm_Lancamento},
  UFrm_Cheque in 'Financeiro\ContasPagar\UFrm_Cheque.pas' {Frm_Cheque},
  U_DataCorrida in 'Utils\U_DataCorrida.pas',
  UFrm_ContasaReceber_Baixa in 'Financeiro\ContasReceber\UFrm_ContasaReceber_Baixa.pas' {Frm_ContasaReceber_Baixa},
  UFrm_GrupoHistorico in 'Financeiro\ContasPagar\UFrm_GrupoHistorico.pas' {Frm_GrupoHistorico},
  UFrm_Usuario in 'Cadastros\UFrm_Usuario.pas' {Frm_Usuario},
  UConstantes in 'Utils\UConstantes.pas',
  uFrm_CadUnidade in 'Produto\uFrm_CadUnidade.pas' {Frm_CadUnidade},
  UFrm_CondicoesPagto in 'Financeiro\UFrm_CondicoesPagto.pas' {Frm_CondicoesPagto},
  UFrm_Pedido in 'Pedido\UFrm_Pedido.pas' {Frm_Pedido},
  uPdr_ListaRelatorio in 'Heranca\Relatorio\uPdr_ListaRelatorio.pas' {Pdr_ListaRelatorio},
  uRel_VendaFormaPagto in 'Relatorios\Venda\uRel_VendaFormaPagto.pas' {Rel_VendaFormaPagto},
  uRel_VendaPeriodo in 'Relatorios\Venda\uRel_VendaPeriodo.pas' {Rel_VendaPeriodo},
  uRel_VendaPorVendedor in 'Relatorios\Venda\uRel_VendaPorVendedor.pas' {Rel_VendaPorVendedor},
  uRel_VendaPorItem in 'Relatorios\Venda\uRel_VendaPorItem.pas' {Rel_VendaPorItem},
  uFrm_PedidoVenda in 'Pedido\Venda\uFrm_PedidoVenda.pas' {Frm_PedidoVenda},
  uFrm_PedidoDescontoItem in 'Pedido\uFrm_PedidoDescontoItem.pas' {Frm_PedidoDescontoItem},
  uPdr_FinanceiroPesquisar in 'Heranca\Financeiro\uPdr_FinanceiroPesquisar.pas' {Pdr_FinanceiroPesquisar},
  uFrm_PesquisaContasAReceber in 'Financeiro\ContasReceber\uFrm_PesquisaContasAReceber.pas' {Frm_PesquisaContasAReceber},
  uPdr_FinanceiroDuplicata in 'Heranca\Financeiro\uPdr_FinanceiroDuplicata.pas' {Pdr_FinanceiroDuplicata},
  uFrm_ContasReceberDup in 'Financeiro\ContasReceber\uFrm_ContasReceberDup.pas' {Frm_ContasReceberDup},
  ACBrUtil in 'C:\ACBr\Fontes\ACBrComum\ACBrUtil.pas',
  uPdr_NotaFiscal in 'Heranca\Faturamento\uPdr_NotaFiscal.pas' {Pdr_NotaFiscal},
  uFrm_NF_Entrada in 'Nota\uFrm_NF_Entrada.pas' {Frm_NF_Entrada},
  uFrm_NFEnt_AltDupl in 'Nota\uFrm_NFEnt_AltDupl.pas' {Frm_NFEnt_AltDupl},
  uFrm_Item in 'Nota\uFrm_Item.pas' {Frm_Item},
  uRel_Sangria in 'Financeiro\Caixa\Relatorio\uRel_Sangria.pas' {Rel_Sangria},
  UFrm_AcertoEstoque in 'Producao\UFrm_AcertoEstoque.pas' {Frm_AcertoEstoque},
  UPdr_Child2 in 'Heranca\UPdr_Child2.pas' {Pdr_Child2},
  UFrm_ClientePDV in 'PDV\UFrm_ClientePDV.pas' {Frm_ClientePDV},
  UFrm_Desconto in 'PDV\UFrm_Desconto.pas' {Frm_Desconto},
  UFrm_GeraOrcamento in 'PDV\UFrm_GeraOrcamento.pas' {Frm_GeraOrcamento},
  UFrm_GerenciaOrcamento in 'PDV\UFrm_GerenciaOrcamento.pas' {Frm_GerenciaOrcamento},
  UFrm_GerOrcItens in 'PDV\UFrm_GerOrcItens.pas' {Frm_GerOrcItens},
  UFrm_PagtoOrcamento in 'PDV\UFrm_PagtoOrcamento.pas' {Frm_PagtoOrcamento},
  UFrm_PDV_Vendedor in 'PDV\UFrm_PDV_Vendedor.pas' {Frm_PDV_Vendedor},
  UFrm_PDVCrediario in 'PDV\UFrm_PDVCrediario.pas' {Frm_PDVCrediario},
  UFrm_PDVPagamento in 'PDV\UFrm_PDVPagamento.pas' {Frm_PDVPagamento},
  UFrm_PDVReceberRapido in 'PDV\UFrm_PDVReceberRapido.pas' {Frm_PDVReceberRapido},
  UFrmOrcamentoConsulta in 'PDV\UFrmOrcamentoConsulta.pas' {frmOrcamentoConsulta},
  UfrmVendaMain in 'PDV\UfrmVendaMain.pas' {frmVendaMain},
  URel_PDV_Venda in 'PDV\Relatorios\URel_PDV_Venda.pas' {Rel_PDV_Venda},
  URel_Venda0 in 'PDV\Relatorios\URel_Venda0.pas' {Rel_Venda0},
  UFrm_PDVDevConsulta in 'PDV\UFrm_PDVDevConsulta.pas' {Frm_PDVDevConsulta},
  UFrm_PDVDevItem in 'PDV\UFrm_PDVDevItem.pas' {Frm_PDVDevItem},
  UPdr_Relatorio2 in 'Heranca\Relatorio\UPdr_Relatorio2.pas' {Pdr_Relatorio2},
  uRel_VendaPorGrupo in 'Relatorios\Venda\uRel_VendaPorGrupo.pas' {Rel_VendaPorGrupo},
  URel_NFEntradaPorClassificacao in 'Relatorios\NFEntrada\URel_NFEntradaPorClassificacao.pas' {Rel_NFEntradaPorClassificacao},
  URel_ClienteNaoComprou in 'Cadastros\Cliente\Relatorio\URel_ClienteNaoComprou.pas' {Rel_ClienteNaoComprou},
  UClassDataSnap in 'UClassDataSnap.pas',
  UFrm_Conta_Pix_PDV in 'PDV\UFrm_Conta_Pix_PDV.pas' {Frm_Conta_Pix_PDV};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'LDE Sistemas';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDMACBr, DMACBr);
  try
    if Iniciar() then
    begin
      Application.CreateForm(TFrm_Inicial, Frm_Inicial);
      Application.Run;
    end;
  finally
    Application.Terminate;
    DM.FechaConexao;
  end;
end.


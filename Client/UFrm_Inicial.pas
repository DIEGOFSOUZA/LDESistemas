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
    Cadastros1: TMenuItem;
    Sair1: TMenuItem;
    Clientes1: TMenuItem;
    Funcionario1: TMenuItem;
    Cidades1: TMenuItem;
    Produtos1: TMenuItem;
    CadastrodeUnidade1: TMenuItem;
    Grupos1: TMenuItem;
    Empresa1: TMenuItem;
    Cadastro2: TMenuItem;
    GrupodeProdutos1: TMenuItem;
    SubgrupoProdutos1: TMenuItem;
    Financeiro1: TMenuItem;
    AberturadeCaixa1: TMenuItem;
    FechamentodeCaixa1: TMenuItem;
    ContasaReceber1: TMenuItem;
    ContasaPagar1: TMenuItem;
    Movimentaes1: TMenuItem;
    Segurana1: TMenuItem;
    Backup1: TMenuItem;
    Restaurar1: TMenuItem;
    UsuariosPermisses1: TMenuItem;
    Pedidos1: TMenuItem;
    Contabilidade1: TMenuItem;
    NaturezaOperao1: TMenuItem;
    Fabricao1: TMenuItem;
    MatriaPrima1: TMenuItem;
    FrenteLoja1: TMenuItem;
    pnlFundo: TPanel;
    Produtos3: TMenuItem;
    Venda1: TMenuItem;
    Compras1: TMenuItem;
    Expedio1: TMenuItem;
    pnlRodape: TPanel;
    lblSaudacao: TLabel;
    lblConexao: TLabel;
    Cadastro3: TMenuItem;
    Venda2: TMenuItem;
    CancelarVenda1: TMenuItem;
    EstoqueProdutos1: TMenuItem;
    VendasPerodoRepresentanteCliente1: TMenuItem;
    ReimpressoComprovantedeVenda1: TMenuItem;
    FechamentodeCaixas1: TMenuItem;
    pnlLogoEmpresa: TPanel;
    imgLogoEmpresa: TImage;
    pnlLogoSistema: TPanel;
    imgLogoSistema: TImage;
    FormasPagamento2: TMenuItem;
    Histrico1: TMenuItem;
    Contabancria2: TMenuItem;
    Sobre1: TMenuItem;
    Lanamentos1: TMenuItem;
    Contasapagar2: TMenuItem;
    Cheque1: TMenuItem;
    Contasareceber2: TMenuItem;
    Grupodehistorico1: TMenuItem;
    Oramento1: TMenuItem;
    Usurio1: TMenuItem;
    IPOSDEPAGAMENTO1: TMenuItem;
    RELATRIOS2: TMenuItem;
    FINANCEIRO3: TMenuItem;
    VENDAS1: TMenuItem;
    PRODUTOS2: TMenuItem;
    ESTOQUE1: TMenuItem;
    CLIENTES2: TMenuItem;
    PDV1: TMenuItem;
    VENDASPORPAGAMENTO1: TMenuItem;
    VENDASPORPERODO1: TMenuItem;
    VENDASPORVENDEDOR1: TMenuItem;
    VENDASTOTAISPORITEM1: TMenuItem;
    CONTASARECEBER21: TMenuItem;
    NOTAFISCALENTRADA1: TMenuItem;
    SANGRIAMOVIMENTAS1: TMenuItem;
    ACERTODEESTOQUE1: TMenuItem;
    AUTORIZARORAMENTO1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Funcionario1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Clientes2Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CadastrodeUnidade1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure RamodeAtividade1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure GrupodeProdutos1Click(Sender: TObject);
    procedure SubgrupoProdutos1Click(Sender: TObject);
    procedure Fabricao1Click(Sender: TObject);
    procedure MatriaPrima1Click(Sender: TObject);
    procedure Cadastro3Click(Sender: TObject);
    procedure Venda2Click(Sender: TObject);
    procedure CancelarVenda1Click(Sender: TObject);
    procedure EstoqueProdutos1Click(Sender: TObject);
    procedure VendasPerodoRepresentanteCliente1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure AberturadeCaixa1Click(Sender: TObject);
    procedure FechamentodeCaixa1Click(Sender: TObject);
    procedure ReimpressoComprovantedeVenda1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure FechamentodeCaixas1Click(Sender: TObject);
    procedure Contabancria2Click(Sender: TObject);
    procedure Histrico1Click(Sender: TObject);
    procedure FormasPagamento2Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Lanamentos1Click(Sender: TObject);
    procedure Cheque1Click(Sender: TObject);
    procedure Grupodehistorico1Click(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure IPOSDEPAGAMENTO1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure VENDASPORPAGAMENTO1Click(Sender: TObject);
    procedure VENDASPORPERODO1Click(Sender: TObject);
    procedure VENDASPORVENDEDOR1Click(Sender: TObject);
    procedure VENDASTOTAISPORITEM1Click(Sender: TObject);
    procedure CONTASARECEBER21Click(Sender: TObject);
    procedure NOTAFISCALENTRADA1Click(Sender: TObject);
    procedure SANGRIAMOVIMENTAS1Click(Sender: TObject);
    procedure ACERTODEESTOQUE1Click(Sender: TObject);
    procedure AUTORIZARORAMENTO1Click(Sender: TObject);
  private
    { Private declarations }
    Ativar: Boolean;
    procedure CarregaLogoEmpresa();
    procedure EsconderMenus();
    function ValidaCliente(): Boolean;
  public
    { Public declarations }
  end;

var
  Frm_Inicial: TFrm_Inicial;

implementation

{$R *.dfm}

uses
  UDM, UFrm_Cliente, UFrm_Cidades, UFrm_Func,  UFrm_Ramo,
  UFrm_GrupoFornecedor, UFrm_Empresa, UFrm_Fornecedor, UFrm_Produto,
  UFrm_GrupoProdutos, UFrm_SubGrupoProdutos, UFrm_OrdemProducao,
  UFrm_MateriaPrima, UfrmVendaMain, UFrm_CondicaoPagto, UFrm_Representante,
  UFrm_PDVCancelarVenda, URel_ListaEstoque, URel_PDV_Venda, UFrm_ContasAReceber,
  UFrm_CaixaAbertura, UFrm_CaixaFechamento, URel_Venda0, UFrmContasPagar,
  URel_FechamentoCaixa, UFrm_Historico, UFrm_ContaBancaria, u_Mensagem, UFrm_Sobre,
  UPdr_RelRetrato, UFrm_Lancamento, UFrm_Cheque, UFrm_GrupoHistorico, UFrm_Usuario,
  uFrm_CadUnidade, UFrm_CondicoesPagto, UFrm_Pedido, uRel_VendaFormaPagto,
  uRel_VendaPeriodo, uRel_VendaPorVendedor, uRel_VendaPorItem,
  uFrm_PesquisaContasAReceber, uFrm_NF_Entrada, uRel_Sangria, UFrm_AcertoEstoque, UCriptografia, UFrm_GerenciaOrcamento;

function Saudacao: string;
begin
  Result := 'Boa Noite, ';
  if (time >= 0.25) and (time < 0.5) then
    Result := 'Bom Dia, ';
  if (time >= 0.5) and (time < 0.75) then
    Result := 'Boa Tarde, ';
  Result := Result + DM.User + ', ';
end;

procedure TFrm_Inicial.AberturadeCaixa1Click(Sender: TObject);
begin
  TFrm_CaixaAbertura.CreateChild(Self);
end;

procedure TFrm_Inicial.ACERTODEESTOQUE1Click(Sender: TObject);
begin
  TFrm_AcertoEstoque.CreateChild(Self);
end;

procedure TFrm_Inicial.AUTORIZARORAMENTO1Click(Sender: TObject);
begin
  TFrm_GerenciaOrcamento.CreateChild(Self);
end;

procedure TFrm_Inicial.Cadastro2Click(Sender: TObject);
begin
  TFrm_Fornecedor.CreateChild(Self);
end;

procedure TFrm_Inicial.Cadastro3Click(Sender: TObject);
begin
  TFrm_Representante.CreateChild(Self);
end;

procedure TFrm_Inicial.CadastrodeUnidade1Click(Sender: TObject);
begin
  TFrm_CadUnidade.CreateChild(Self);
end;

procedure TFrm_Inicial.CancelarVenda1Click(Sender: TObject);
begin
  TFrm_PDVCancelarVenda.CreateChild(Self);
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
      pnlLogoEmpresa.Color := clWhite;
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

procedure TFrm_Inicial.Cidades1Click(Sender: TObject);
begin
  TFrm_Cidades.CreateChild(Self);
end;

procedure TFrm_Inicial.Clientes1Click(Sender: TObject);
begin
  TFrm_Cliente.CreateChild(Self);
end;

procedure TFrm_Inicial.Clientes2Click(Sender: TObject);
begin
  TFrm_Cliente.CreateChild(Self);
end;

procedure TFrm_Inicial.Contabancria2Click(Sender: TObject);
begin
  TFrm_ContaBancaria.CreateChild(Self);
end;

procedure TFrm_Inicial.ContasaPagar1Click(Sender: TObject);
begin
  TFrm_ContasPagar.CreateChild(Self);
end;

procedure TFrm_Inicial.ContasaReceber1Click(Sender: TObject);
begin
  TFrm_ContasAReceber.CreateChild(Self);
end;

procedure TFrm_Inicial.CONTASARECEBER21Click(Sender: TObject);
begin
  TFrm_PesquisaContasAReceber.CreateChild(Self);
end;

procedure TFrm_Inicial.Empresa1Click(Sender: TObject);
begin
  TFrm_Empresa.CreateChild(Self);
end;

procedure TFrm_Inicial.EsconderMenus;
begin
  Produtos3.Visible := False;
  Compras1.Visible := False;
  Venda1.Visible := False;
  Movimentaes1.Visible := False;
  Financeiro1.Visible := False;
  Expedio1.Visible := False;
  Segurana1.Visible := False;
  RELATRIOS2.Visible := False;

  //SubMenu
  Funcionario1.Visible := False;
  Usurio1.Visible := False;

end;

procedure TFrm_Inicial.EstoqueProdutos1Click(Sender: TObject);
begin
  TRelListaEtoque.CreateChild(self);
end;

procedure TFrm_Inicial.Fabricao1Click(Sender: TObject);
begin
  TFrm_OrdemProducao.CreateChild(self);
end;

procedure TFrm_Inicial.FechamentodeCaixa1Click(Sender: TObject);
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

procedure TFrm_Inicial.FechamentodeCaixas1Click(Sender: TObject);
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

procedure TFrm_Inicial.FormasPagamento2Click(Sender: TObject);
begin
  TFRM_CondicaoPagto.CreateChild(self);
end;

procedure TFrm_Inicial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Sair1.Click;
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
  AUTORIZARORAMENTO1.Visible := (DM.UserPerfil='Administrador');

  Cheque1.Visible := DM.User = 'ADMIN';
  IPOSDEPAGAMENTO1.Visible := DM.User = 'ADMIN';
  Pedidos1.Visible := DM.User = 'ADMIN';
  CONTASARECEBER21.Visible := DM.User = 'ADMIN';

  if not ValidaCliente then
    EsconderMenus;
end;

procedure TFrm_Inicial.Funcionario1Click(Sender: TObject);
begin
  TFrm_Func.CreateChild(Self);
end;

procedure TFrm_Inicial.Grupodehistorico1Click(Sender: TObject);
begin
  TFrm_GrupoHistorico.CreateChild(Self);
end;

procedure TFrm_Inicial.GrupodeProdutos1Click(Sender: TObject);
begin
  TFrm_GrupoProdutos.CreateChild(Self);
end;

procedure TFrm_Inicial.Grupos1Click(Sender: TObject);
begin
  TFrm_GrupoFornecedor.CreateChild(Self);
end;

procedure TFrm_Inicial.Histrico1Click(Sender: TObject);
begin
  TFrm_TipoNotaEntrada.CreateChild(Self);
end;

procedure TFrm_Inicial.IPOSDEPAGAMENTO1Click(Sender: TObject);
begin
  TFrm_CondicoesPagto.CreateChild(Self);
end;

procedure TFrm_Inicial.Lanamentos1Click(Sender: TObject);
begin
  TFrm_Lancamento.CreateChild(Self);
end;

procedure TFrm_Inicial.MatriaPrima1Click(Sender: TObject);
begin
  TFrm_MateriaPrima.CreateChild(Self);
end;

procedure TFrm_Inicial.NOTAFISCALENTRADA1Click(Sender: TObject);
begin
  TFrm_NF_Entrada.CreateChild(Self);
end;

procedure TFrm_Inicial.Oramento1Click(Sender: TObject);
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

procedure TFrm_Inicial.Pedidos1Click(Sender: TObject);
begin
  TFrm_Pedido.CreateChild(Self);
end;

procedure TFrm_Inicial.Produtos1Click(Sender: TObject);
begin
  TFrm_Produto.CreateChild(Self);
end;

procedure TFrm_Inicial.RamodeAtividade1Click(Sender: TObject);
begin
  TFrm_Ramo.CreateChild(Self);
end;

procedure TFrm_Inicial.ReimpressoComprovantedeVenda1Click(Sender: TObject);
var
  sVenda: string;
begin
  sVenda := InputBox('Comprovante de Venda', 'Informe o nº da Venda', EmptyStr);

  if sVenda <> EmptyStr then
  begin
    if not Assigned(Rel_Venda0) then
      Rel_Venda0 := TRel_Venda0.Create(Self);
    try
      Rel_Venda0.Executar(sVenda.ToInteger, '0');
    finally
      FreeAndNil(Rel_Venda0);
    end;
  end;
end;

procedure TFrm_Inicial.Sair1Click(Sender: TObject);
begin
//  if MessageDlg('Deseja sair do sistema?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
//    Application.Run
//  else
  Application.Terminate;
end;

procedure TFrm_Inicial.SANGRIAMOVIMENTAS1Click(Sender: TObject);
begin
  TRel_Sangria.CreateChild(Self);
end;

procedure TFrm_Inicial.Sobre1Click(Sender: TObject);
begin
  TFrm_Sobre.CreateChild(Self);
end;

procedure TFrm_Inicial.SubgrupoProdutos1Click(Sender: TObject);
begin
  TFrm_SubGrupoProdutos.CreateChild(Self);
end;

procedure TFrm_Inicial.Usurio1Click(Sender: TObject);
begin
  if DM.UserPerfil <> 'Administrador' then
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

procedure TFrm_Inicial.Venda2Click(Sender: TObject);
begin
  TfrmVendaMain.CreateChild(Self);
end;

procedure TFrm_Inicial.VendasPerodoRepresentanteCliente1Click(Sender: TObject);
begin
  TRel_PDV_Venda.CreateChild(Self);
end;

procedure TFrm_Inicial.VENDASPORPAGAMENTO1Click(Sender: TObject);
begin
  TRel_VendaFormaPagto.CreateChild(Self);
end;

procedure TFrm_Inicial.VENDASPORPERODO1Click(Sender: TObject);
begin
  TRel_VendaPeriodo.CreateChild(Self);
end;

procedure TFrm_Inicial.VENDASPORVENDEDOR1Click(Sender: TObject);
begin
  TRel_VendaPorVendedor.CreateChild(Self);
end;

procedure TFrm_Inicial.VENDASTOTAISPORITEM1Click(Sender: TObject);
begin
  TRel_VendaPorItem.CreateChild(Self);
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.


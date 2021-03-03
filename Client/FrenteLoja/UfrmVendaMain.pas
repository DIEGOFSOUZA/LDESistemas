unit UfrmVendaMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ActnList,
  Vcl.Imaging.pngimage,
  Vcl.Grids,
  Vcl.Buttons,

  Data.DB,
  Datasnap.DBClient,

  ACBrUtil,
  DateUtils, Vcl.Imaging.jpeg ;

const
  senhaMaster1 = 'takanoadm';
  senhaMaster2 = 'takanomaster';


type
  TRetornoPK = record
    ID : integer ;
    Tipo : string ;
  end;

type
  TRetConvUM = record
    UM: string;
    Qtde: Extended;
    PrecoConv : Currency ;
  end;

type
  TRetDescMax = record
    Percentual : Extended;
    Valor  : Currency ;
  end;

type
  TfrmVendaMain = class(TForm)
    pnlFundo0: TPanel;
    pnlTopo0: TPanel;
    pnlRodape: TPanel;
    pnlDireita: TPanel;
    pnlGrid: TPanel;
    pnlTotal: TPanel;
    dbgrdItens: TDBGrid;
    lblDataHora: TLabel;
    lblOperador: TLabel;
    pnlProduto: TPanel;
    lblProduto: TLabel;
    lblQtde: TLabel;
    edtProduto: TEdit;
    edtQtde: TEdit;
    pnlCliente: TPanel;
    lblClienteNome: TLabel;
    lblCPFCNPJ: TLabel;
    lblCredito: TLabel;
    lblDebito: TLabel;
    pnlOperacoes: TPanel;
    pnlCancelar: TPanel;
    lblCancelarItem: TLabel;
    pnlDesconto: TPanel;
    lblDesconto: TLabel;
    pnlClienteButton: TPanel;
    lblCliente: TLabel;
    pnlPagamento: TPanel;
    lblPagamento: TLabel;
    pnlDevolucao: TPanel;
    pnlCancelaVenda: TPanel;
    lblCancelaVenda: TLabel;
    lbl1: TLabel;
    lblTotVenda: TLabel;
    lbl2: TLabel;
    lblTotItens: TLabel;
    Label1: TLabel;
    lblTotQtde: TLabel;
    pnlReceber: TPanel;
    Label2: TLabel;
    actlst1: TActionList;
    cdsItens: TClientDataSet;
    dsItens: TDataSource;
    cdsItensCODIGO: TIntegerField;
    cdsItensDESCRICAO: TStringField;
    cdsItensPRECO_VENDA: TCurrencyField;
    cdsItensUNIDADE: TStringField;
    cdsItensQTDE_ESTOQUE: TBCDField;
    cdsItensQTDE: TCurrencyField;
    cdsItensORDEM: TIntegerField;
    cdsItensQTDE_UNIT: TStringField;
    cdsItenssubtotal: TCurrencyField;
    cdsItenstotal: TAggregateField;
    cdsItenstotal_qtde: TAggregateField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    actCancelItem: TAction;
    actCliente: TAction;
    actDesconto: TAction;
    actCancelVenda: TAction;
    actPagamento: TAction;
    actPagDinheiro: TAction;
    actPagCartao: TAction;
    cdsTemp: TClientDataSet;
    tmr1: TTimer;
    actConsultaProduto: TAction;
    cdsMaster: TClientDataSet;
    cdsDetail: TClientDataSet;
    cdsReceber: TClientDataSet;
    cdsMasterID: TIntegerField;
    cdsMasterTIPO: TStringField;
    cdsMasterEMISSAO: TDateField;
    cdsMasterID_CLIENTE: TIntegerField;
    cdsMasterVL_PRODUTO: TBCDField;
    cdsMasterVL_TOTAL: TBCDField;
    cdsMasterVL_DESCONTO: TBCDField;
    cdsMasterVL_ICMS: TBCDField;
    cdsMasterVL_PIS: TBCDField;
    cdsMasterVL_COFINS: TBCDField;
    cdsMasterVL_IPI: TBCDField;
    cdsMasterVL_IMPOSTO: TBCDField;
    cdsMasterC_NF: TIntegerField;
    cdsDetailID: TIntegerField;
    cdsDetailTIPO: TStringField;
    cdsDetailORDEM: TIntegerField;
    cdsDetailID_PRODUTO: TIntegerField;
    cdsDetailVL_UNITARIO: TBCDField;
    cdsDetailQTDE: TCurrencyField;
    cdsDetailVL_DESCONTO: TBCDField;
    cdsDetailVL_TOTAL: TBCDField;
    cdsDetailCFOP: TStringField;
    cdsDetailNCM: TStringField;
    cdsDetailVL_ICMS: TBCDField;
    cdsDetailVL_PIS: TBCDField;
    cdsDetailVL_COFINS: TBCDField;
    cdsDetailVL_IPI: TBCDField;
    cdsDetailVL_IMPOSTO: TBCDField;
    cdsReceberID: TIntegerField;
    cdsReceberTIPO: TStringField;
    cdsReceberORDEM: TStringField;
    cdsReceberVALOR: TBCDField;
    cdsReceberDT_VENC: TDateField;
    cdsReceberDT_BAIXA: TDateField;
    cdsReceberVL_PAGO: TBCDField;
    cdsReceberFORMA_PAGTO: TStringField;
    cdsReceberUSUARIO_BAIXA: TStringField;
    cdsReceberUSUARIO_EMISSAO: TStringField;
    actPagCrediario: TAction;
    cdsMasterID_VENDEDOR: TIntegerField;
    cdsMasterID_CREDIARIO: TIntegerField;
    Button1: TButton;
    cdsItensQTDE_BAIXA: TCurrencyField;
    cdsDetailQTDE_BAIXA: TCurrencyField;
    cdsDetailUM: TStringField;
    actDescontoItem: TAction;
    cdsItensVL_DESCONTO: TFMTBCDField;
    cdsMasterID_CAIXA: TIntegerField;
    lblLimite: TLabel;
    lblVlLimite: TLabel;
    pnlPagtoDin: TPanel;
    pnlPagtoCredito: TPanel;
    pnlPagtoCrediario: TPanel;
    imgDinheiro: TImage;
    lblPagDinheiro: TLabel;
    imgCartao: TImage;
    lblPagCartao: TLabel;
    imgCrediario: TImage;
    lblCrediario: TLabel;
    imgFechar: TImage;
    cdsMasterUSER_AUTORIZACAO: TStringField;
    cdsReceberID_CONTA: TStringField;
    cdsReceberID_HISTORICO: TIntegerField;
    SpeedButton1: TSpeedButton;
    actGeraOrcamento: TAction;
    cdsReceberBAIXA_ID_CAIXA: TIntegerField;
    pnlCaixaAberto: TPanel;
    pnlLeft: TPanel;
    pnlRight: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cbbVendedor: TComboBox;
    pnlIniciar: TPanel;
    btnIniciarCupom: TSpeedButton;
    imgLogoLDE: TImage;
    pnlFundo1: TPanel;
    actIniciarCupom: TAction;
    pnlVendedor: TPanel;
    imgVendedor: TImage;
    btnVendedor: TSpeedButton;
    actVendedor: TAction;
    pnlAlteraCli: TPanel;
    imgAlteraCli: TImage;
    btnAlteraCli: TSpeedButton;
    actAlteraCliente: TAction;
    cdsReceberJUROS: TFMTBCDField;
    cdsReceberDESCONTO: TFMTBCDField;
    cdsMasterID_HISTORICO: TIntegerField;
    cdsMasterSTATUS: TStringField;
    cdsItensDESC_MAXIMO: TFMTBCDField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure cdsItensCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actCancelItemExecute(Sender: TObject);
    procedure actClienteExecute(Sender: TObject);
    procedure edtQtdeExit(Sender: TObject);
    procedure actCancelVendaExecute(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure actConsultaProdutoExecute(Sender: TObject);
    procedure actPagDinheiroExecute(Sender: TObject);
    procedure actPagamentoExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actPagCartaoExecute(Sender: TObject);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure actPagCrediarioExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure actDescontoItemExecute(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure actGeraOrcamentoExecute(Sender: TObject);
    procedure actIniciarCupomExecute(Sender: TObject);
    procedure actVendedorExecute(Sender: TObject);
    procedure actAlteraClienteExecute(Sender: TObject);
  private
    fUsuarioAutorizou: string;
    fIdVendedor: integer;
    FOrcamentoId: integer;
    { Private declarations }
    procedure TelaCheia() ;

    procedure CarregaProduto(sProduto : string) ;
    procedure CarregaCliente(iCodigo : integer);
    function ValidaDebitoCliente(pIDCliente : Integer): Integer;
    procedure LoadPagtoRapido(aFormaPagto : string) ;
    procedure ExecutaPagtoRapido(aFormaPagto : string) ;
    procedure ZerarCDS() ;
    procedure LimpaEdtsLbls() ;
    procedure AtualizaTotais() ;
    procedure OrdenarItens() ;
//    function CaixaFechado() : Boolean ;

    function VoltaPK(aTipo : string) : TRetornoPK ;
    procedure FecharVenda(aID : Integer; aTipo : string; aCondPagto : integer; aImprimir : Boolean) ;
    procedure Imprimir() ;
    procedure ImprimirOrcamento(pId:integer) ;

    function VoltaQtdeConversao(pCodPro : string; pQtde : Extended) : TRetConvUM ;
    function VoltaTotDesconto():Extended;
    function ValidaVenda(tpPagto : string): Boolean;
    function ValidaEstoqueItem():integer;
    function VendedorInformado():Boolean ;
    function ValidaCliente(): Boolean;
    function VoltaHistorico(pFPagto: string): Integer;
    procedure setIdVendedor(const Value: integer);
    procedure ListaVendedores();
    function DescMaximo(aId: string): TRetDescMax;
    function ValidaDescMaximo():Boolean;
    {orçamento}
    procedure CarregaOrcamento();
    procedure SetOrcamentoId(const Value: integer);
    procedure AtualizaOrcamento();
  public
    { Public declarations }
    IdCliente : Integer ;
    IdCaixa : Integer ;
    property UsuarioAutorizou : string read fUsuarioAutorizou ;
    property IdVendedor : integer read fIdVendedor write setIdVendedor;
    property OrcamentoID: integer read FOrcamentoId write SetOrcamentoId;
    constructor CreateChild(AOwner : TComponent) ;
  end;

var
  frmVendaMain: TfrmVendaMain;

implementation

uses
  UDM, UFrm_ClientePDV, UFrm_Inicial, UFrm_PDVReceberRapido,
  UFrm_PDVPagamento, UFuncoes, UFrm_PDVCrediario, URel_Venda0,
  UFrm_EscolhaUM, UFrm_Desconto, u_Mensagem, UFrm_VoltaSenha,
  UFrm_PagtoOrcamento, UFrmOrcamentoConsulta, UConsulta,
  UFrm_PDV_Vendedor, UFrm_GeraOrcamento;

{$R *.dfm}

procedure TfrmVendaMain.actAlteraClienteExecute(Sender: TObject);
var
  lCliente: Integer;
begin
  try
    lCliente := Consulta.Cliente;
    if (lCliente > 0) then
      CarregaCliente(lCliente);
  finally
    edtProduto.Clear;
    edtProduto.SetFocus;
  end;
end;

procedure TfrmVendaMain.actCancelItemExecute(Sender: TObject);
begin
  try
    if cdsItens.IsEmpty then
      TMensagem.Atencao('Não há Item para exclusão.')
    else
    begin
      if TMensagem.Pergunta('Confima o cancelamento do item: ' + cdsItensORDEM.AsString + ' ?') then
        cdsItens.Delete;
      if cdsItens.IsEmpty then
      begin
        LimpaEdtsLbls;
      end
      else
        OrdenarItens;
      AtualizaTotais;
    end;
  finally
    edtProduto.Clear;
    edtProduto.SetFocus;
  end;
end;

procedure TfrmVendaMain.actCancelVendaExecute(Sender: TObject);
begin
  if cdsItens.IsEmpty then
    Exit;

  if TMensagem.Pergunta('Confirma o cancelamento da Venda atual ?') then
  begin
    ZerarCDS;
    LimpaEdtsLbls;
    AtualizaTotais;
    fIdVendedor := -1;
    FOrcamentoId := -1;
    edtProduto.setFocus;
  end;
end;

procedure TfrmVendaMain.actClienteExecute(Sender: TObject);
begin
  if not Assigned(Frm_ClientePDV) then // verifica se o formulário não existe na memória
    Frm_ClientePDV := TFrm_ClientePDV.Create(Self); // cria o formúlário em run-time
  try
    Frm_ClientePDV.Height := 96;
    Frm_ClientePDV.pnlRodape.Visible := False;
    Frm_ClientePDV.aRetCodCliente := -1;
    Frm_ClientePDV.aRetCodProduto := -1;

    Frm_ClientePDV.Left := pnlFundo0.Left + 20;
    Frm_ClientePDV.Top := pnlFundo0.Top + 100;
    Frm_ClientePDV.edpProduto.Visible := False;

    Frm_ClientePDV.ShowModal;

    CarregaCliente(Frm_ClientePDV.aRetCodCliente);
  finally
    FreeAndNil(Frm_ClientePDV); // função para liberar o formulário da memória
  end;
end;

procedure TfrmVendaMain.actConsultaProdutoExecute(Sender: TObject);
begin
  if not Assigned(Frm_ClientePDV) then // verifica se o formulário não existe na memória
    Frm_ClientePDV := TFrm_ClientePDV.Create(Self); // cria o formúlário em run-time
  try
    Frm_ClientePDV.Height := 96;
    Frm_ClientePDV.pnlRodape.Visible := False;
    Frm_ClientePDV.aRetCodCliente := -1;
    Frm_ClientePDV.aRetCodProduto := -1;

    Frm_ClientePDV.Left := pnlFundo0.Left + 20;
    Frm_ClientePDV.Top := pnlFundo0.Top + 100;

    Frm_ClientePDV.edpCliente.Visible := False;
    Frm_ClientePDV.imgAdd.Visible := False;
    Frm_ClientePDV.edpProduto.Top := 18;

    Frm_ClientePDV.ShowModal;

    CarregaProduto(IntToStr(Frm_ClientePDV.aRetCodProduto));
  finally
    FreeAndNil(Frm_ClientePDV); // função para liberar o formulário da memória
  end;
end;

procedure TfrmVendaMain.actDescontoItemExecute(Sender: TObject);
begin
  try
    if cdsItens.IsEmpty then
      TMensagem.Atencao('Não há Item para conceder Desconto.')
    else
    begin
      if (not Assigned(Frm_Desconto)) then // verifica se o formulário não existe na memória
        Frm_Desconto := TFrm_Desconto.Create(Self); // cria o formúlário em run-time
      try
        Frm_Desconto.ValSemDesc := cdsItenssubtotal.AsFloat;
        Frm_Desconto.lblSemDesc.Caption := FormatFloat('#,##0.00', cdsItenssubtotal.AsFloat);
        with DescMaximo(cdsItens.FieldByName('codigo').AsString) do
        begin
          if Valor = 0 then
          begin
            Frm_Desconto.pnlDireita1.Visible := False;
            Frm_Desconto.Width := 303;
          end
          else
          begin
            Frm_Desconto.pnlDireita1.Visible := True;;
            Frm_Desconto.lblPercMax.Caption := FormatFloatBr(Percentual)+' %';
            Frm_Desconto.lblVlMax.Caption := 'R$ '+FormatFloatBr(Valor);
            Frm_Desconto.Width := 380;
          end;
        end;
        Frm_Desconto.ShowModal;

        if (Frm_Desconto.Retorno = 'sucesso') then
        begin
          cdsItens.Edit;
          cdsItensVL_DESCONTO.AsFloat := Frm_Desconto.ValDesc;
          cdsItensQTDE_UNIT.AsString := cdsItensQTDE_UNIT.AsString + ' - R$ ' + FormatFloat('#,##0.00', cdsItensVL_DESCONTO.AsFloat);
          with DescMaximo(cdsItens.FieldByName('codigo').AsString) do
          begin
            cdsItens.FieldByName('DESC_MAXIMO').AsCurrency := Valor;
          end;
          cdsItens.Post;
          AtualizaTotais();
        end;
      finally
        FreeAndNil(Frm_Desconto); // função para liberar o formulário da memória
      end;
    end;
  finally
    edtProduto.Clear;
    edtProduto.SetFocus;
  end;
end;

procedure TfrmVendaMain.actGeraOrcamentoExecute(Sender: TObject);
var
  lRet: string;
begin
//  ImprimirOrcamento(54);
  try
    if cdsItens.IsEmpty then
    begin
      CarregaOrcamento();
    end
    else
    begin
      if IdCliente = -1 then
      begin
        TMensagem.Atencao('Cliente não informado.');
        Abort;
      end;

      if not Assigned(Frm_GeraOrcamento) then
        Frm_GeraOrcamento := TFrm_GeraOrcamento.Create(Self);
      try
        Frm_GeraOrcamento.Executa(cdsItens, IdCliente);
        lRet := Frm_GeraOrcamento.Retorno;
        if (lRet = 'sucesso') then
        begin
//          ImprimirOrcamento(DM.GetInteger('select max(ID) id from ORCAMENTO', 'id'));
          ZerarCDS;
          LimpaEdtsLbls;
          AtualizaTotais;
          ListaVendedores();
        end
        else if (lRet = 'erro') then
        begin
          TMensagem.Erro('Não foi possível gerar o orçamento. Tente novamente.');
        end;
      finally
        FreeAndNil(Frm_GeraOrcamento);
      end;
    end;
  finally
    edtProduto.Clear;
    edtProduto.SetFocus;
  end;
end;

procedure TfrmVendaMain.actIniciarCupomExecute(Sender: TObject);
var
  lCliente: Integer;
begin
  try
//  if ((cbbVendedor.Items.Count = 1) or (cbbVendedor.ItemIndex = 0)) then
//  begin
//    cbbVendedor.SetFocus;
//    TMensagem.Atencao('Informe o Vendedor.');
//    Abort;
//  end;

    if cbbVendedor.ItemIndex > 0 then
    begin
      if DM.dsConsulta.Locate('usu_nome', cbbVendedor.Items[cbbVendedor.ItemIndex], []) then
      begin
        lblOperador.Caption := '         ' + cbbVendedor.Items[cbbVendedor.ItemIndex];
        IdVendedor := DM.dsConsulta.FieldByName('ID_VENDEDOR').AsInteger;
      end;
    end;

    pnlCaixaAberto.Visible := False;

    actVendedor.Enabled := True;
    lCliente := Consulta.Cliente;
    if lCliente > 0 then
      CarregaCliente(lCliente)
    else
      lblClienteNome.Caption := 'Ao Consumidor';
  finally
    edtProduto.Clear;
    edtProduto.SetFocus;
  end;
end;

procedure TfrmVendaMain.actPagamentoExecute(Sender: TObject);
var
  lSenha: string;
begin
  try
    if not ValidaVenda('') then
      Exit;

    if not Assigned(Frm_PDVPagamento) then
      Frm_PDVPagamento := TFrm_PDVPagamento.Create(Self);
    try
      with Frm_PDVPagamento do
      begin
        ValorTotal := cdsItenstotal.Value;
        aTotVenda := cdsItenstotal.Value;
        ValorRestante := cdsItenstotal.Value;
        ValorPago := 0;
        ValorDesconto := VoltaTotDesconto;
        aTotVenda := cdsItenstotal.Value - ValorDesconto;
        ValorTroco := 0;
        ValorAcrescimo := 0;
        FormaPagto := EmptyStr;
        aIDCondPagto := 0;
        gIdCliente := IdCliente.ToString;
        aCliemDebito := False;

        if (ValidaDebitoCliente(IdCliente) > 5) then //há debito vencidos a mais de 5 dias
         aCliemDebito := True;

        cdsPagamentos.Close;
        cdsPagamentos.CreateDataSet;

        IniciaComDesconto(ValorDesconto);

        ShowModal;

        if (aRetorno = 'sucesso') then
        begin
//          if cdsPagamentos.Locate('FORMAPAGTO', 'CREDIARIO', []) then
//          begin
//            if (ValidaDebitoCliente(IdCliente) > 5) then //há debito vencidos a mais de 5 dias
//            begin
//              lSenha := VoltaSenha('Liberar a venda');
//              if ((lSenha <> senhaMaster1) and (lSenha <> senhaMaster2)) then
//              begin
//                TMensagem.Informacao('Senha inválida. Solicitar a liberação do administrador.');
//                Exit
//              end
//              else
//                fUsuarioAutorizou := lSenha;
//            end;
//          end;

          cdsPagamentos.First;
          while not cdsPagamentos.Eof do
          begin
            cdsReceber.Append;
            with VoltaPK('0') do
            begin
              cdsReceberID.AsInteger := ID;
              cdsReceberTIPO.AsString := Tipo;
            end;
            cdsReceberORDEM.AsString := FormatFloat('00', cdsPagamentos.RecNo) + '/' + FormatFloat('00', cdsPagamentos.RecordCount);
            cdsReceberVALOR.AsCurrency := cdsPagamentosVALOR.AsCurrency;
            cdsReceberDT_VENC.AsDateTime := cdsPagamentosVENCTO.AsDateTime;
            cdsReceberFORMA_PAGTO.AsString := cdsPagamentosFORMAPAGTO.AsString;
            cdsReceber.FieldByName('JUROS').AsFloat := 0;
            cdsReceber.FieldByName('DESCONTO').AsFloat := 0;

            if (cdsPagamentos.FieldByName('FORMAPAGTO').AsString <> 'CREDIARIO') then
            begin
              cdsReceber.FieldByName('id_conta').AsString := '1'; //Conta PDV
              cdsReceber.FieldByName('id_historico').AsInteger := VoltaHistorico(cdsPagamentosFORMAPAGTO.AsString);
              cdsReceber.FieldByName('baixa_id_caixa').AsInteger := IdCaixa;
            end;

            cdsReceberUSUARIO_EMISSAO.AsString := DM.UsuarioDataHora;

            if cdsReceberDT_VENC.AsDateTime = Date then
            begin
              cdsReceberDT_BAIXA.AsDateTime := cdsPagamentosVENCTO.AsDateTime;
              cdsReceberVL_PAGO.AsCurrency := cdsPagamentosVALOR.AsCurrency;
              cdsReceberUSUARIO_BAIXA.AsString := DM.UsuarioDataHora;
            end
            else
            begin
              cdsReceberDT_BAIXA.Clear;
              cdsReceberVL_PAGO.Clear;
              cdsReceberUSUARIO_BAIXA.Clear;
            end;
            cdsReceber.Post;
            cdsPagamentos.Next;
          end;
          FecharVenda(cdsReceberID.AsInteger, cdsReceberTIPO.AsString, aIDCondPagto, bImprimir);
        end;
      end;
    finally
      FreeAndNil(Frm_PDVPagamento);
    end;
  finally
    edtProduto.Clear;
    edtProduto.SetFocus;
  end;
end;

procedure TfrmVendaMain.actPagCartaoExecute(Sender: TObject);
begin
  ExecutaPagtoRapido('CARTAO DE CREDITO');
end;

procedure TfrmVendaMain.actPagCrediarioExecute(Sender: TObject);
begin
  try
    if not ValidaVenda('CREDIARIO') then
      Exit;

    if not ValidaLimiteCredito(IdCliente.ToString, cdsItenstotal.Value) then
      Abort;

    if not Assigned(Frm_PDVCrediario) then
      Frm_PDVCrediario := TFrm_PDVCrediario.Create(Self);
    try
      with Frm_PDVCrediario do
      begin
        aVlAcrescimo := 0;
        aVlParcelas := 0;
        ValorTotal := cdsItenstotal.Value;
        aRetorno := EmptyStr;
        aIdCrediario := 0;

        pnlRodape.Visible := False;
        Height := 100;

        ShowModal;

        if aRetorno = 'sucesso' then
        begin
          cdsParcelas.First;
          while not cdsParcelas.Eof do
          begin
            cdsReceber.Append;
            with VoltaPK('0') do
            begin
              cdsReceberID.AsInteger := ID;
              cdsReceberTIPO.AsString := TIpo;
            end;
            cdsReceberORDEM.AsString := FormatFloat('00', cdsParcelas.RecNo) + '/' + FormatFloat('00', cdsParcelas.RecordCount);
            cdsReceberVALOR.AsCurrency := cdsParcelasVALOR.AsCurrency;
            cdsReceberDT_VENC.AsDateTime := cdsParcelasVENCTO.AsDateTime;
            cdsReceberFORMA_PAGTO.AsString := 'CREDIARIO';
            cdsReceberUSUARIO_EMISSAO.AsString := DM.UsuarioDataHora;
            cdsReceberDT_BAIXA.Clear;
            cdsReceberVL_PAGO.Clear;
            cdsReceberUSUARIO_BAIXA.Clear;
            cdsReceberBAIXA_ID_CAIXA.Clear;
            cdsReceber.Post;
            cdsParcelas.Next;
          end;
          FecharVenda(cdsReceberID.AsInteger, cdsReceberTIPO.AsString, aIdCrediario, True);
        end;
      end;
    finally
      FreeAndNil(Frm_PDVCrediario);
    end;
  finally
    edtProduto.Clear;
    edtProduto.SetFocus;
  end;
end;

procedure TfrmVendaMain.actPagDinheiroExecute(Sender: TObject);
begin
  ExecutaPagtoRapido('DINHEIRO');
end;

procedure TfrmVendaMain.actVendedorExecute(Sender: TObject);
begin
  if not Assigned(Frm_PDV_Vendedor) then
    Frm_PDV_Vendedor := TFrm_PDV_Vendedor.Create(Self);
  try
    with Frm_PDV_Vendedor do
    begin
      Retorno := -1;
      Listar();
      ShowModal;
      if Retorno <> -1 then
      begin
        IdVendedor := Retorno;
        lblOperador.Caption := '         '+NomeVend;
      end;
    end;
  finally
    FreeAndNil(Frm_PDV_Vendedor);
  end;
end;

procedure TfrmVendaMain.AtualizaOrcamento;
const
  SQL = 'update ORCAMENTO a set a.STATUS = ''VENDIDO'' where a.ID = %s';
begin
  DM.ExecutarSQL(DM.BancoDados,Format(SQL,[IntToStr(OrcamentoID)]));
end;

procedure TfrmVendaMain.AtualizaTotais;
begin
  if cdsItens.IsEmpty then
  begin
    lblTotVenda.Caption := FormatCurr('R$ #,##0.00 ', 0);
    lblTotItens.Caption := FormatFloat('#,##0.000', 0);
    lblTotQtde.Caption := FormatFloat('#,##0.000', 0);
  end
  else
  begin
    lblTotVenda.Caption := FormatCurr('R$ #,##0.00 ', cdsItenstotal.Value);
    lblTotItens.Caption := FormatFloat('#,##0.000', cdsItens.RecordCount);
    lblTotQtde.Caption := FormatFloat('#,##0.000', cdsItenstotal_qtde.Value);
  end;
end;

procedure TfrmVendaMain.Button1Click(Sender: TObject);
begin
//  Imprimir() ;
end;

//function TfrmVendaMain.CaixaFechado: Boolean;
//const
//  SQL = 'select a.ID IDCAIXA, a.ABERTO_FECHADO status ' +
//        'from CAIXA a ' +
//        'left outer join CAIXA_ABERT_FECH b on (b.ID_CAIXA = a.ID) ' +
//        'where a.ABERTO_FECHADO = ''A'' '+
//        'and cast(b.DT_HORA_ABERT_FECH as date) = %s';
//begin
//  Result := False ;
//  cdsTemp.Close ;
//  cdsTemp.Data := DM.LerDataSet(Format(SQL,[QuotedStr(FormatDateTime('dd.mm.yyyy',Now))])) ;
//
//  if cdsTemp.IsEmpty then
//  begin
//    MessageDlg('O Caixa do dia encontra-se FECHADO no momento.'+#13#10+
//               'Necessário efetuar a abertura.',mtInformation,[mbAbort],0) ;
//    Result := True ;
//    Exit ;
//  end
//  else if cdsTemp.FieldByName('status').AsString = 'F' then
//  begin
//    MessageDlg('Caixa encontra-se Fechado.'+#13#10+
//                'Venda não pode ser efetuada.' ,mtInformation,[mbAbort],0) ;
//    Result := True ;
//    Exit ;
//  end;
//  IdCaixa := cdsTemp.FieldByName('IDCAIXA').AsInteger ;
//end;

procedure TfrmVendaMain.CarregaCliente(iCodigo: integer);
const
  SQL = 'select a.CODIGO,a.CPF_CNPJ,a.NOME_RAZAO,'+
        'coalesce(a.LIMITE_CREDITO,0) LIMITE,a.VL_DEBITO,a.VL_CREDITO ' +
        'from CLIENTE a where a.CODIGO = %s';
begin
  try
    lblVlLimite.Visible := False;
    lblLimite.Visible := False;
    IdCliente := iCodigo;
    if iCodigo <> -1 then
    begin
      cdsTemp.Close;
      cdsTemp.Data := DM.LerDataSet(Format(SQL, [IntToStr(iCodigo)]));
      if cdsTemp.IsEmpty then
        Exit;

      lblClienteNome.Caption := cdsTemp.FieldByName('NOME_RAZAO').AsString;
      lblCPFCNPJ.Caption := cdsTemp.FieldByName('CPF_CNPJ').AsString;
      lblDebito.Caption := FormatFloatBr(cdsTemp.FieldByName('vl_debito').AsFloat);
      lblCredito.Caption := FormatFloatBr(cdsTemp.FieldByName('vl_credito').AsFloat);

      if ValidaDebitoCliente(IdCliente) > 5 then
      begin
        TMensagem.Atencao('Cliente com duplicata(s) vencida(s) a mais de 5 dias.' + #13 + #10 + 'Será necessário a liberação do administrador para o fechamento da venda.');
      end;

    {limite para vendas no crediario}
      if cdsTemp.FieldByName('limite').AsFloat > 0 then
      begin
        lblVlLimite.Caption := FormatFloatBr(cdsTemp.FieldByName('limite').AsFloat);
        lblVlLimite.Visible := True;
        lblLimite.Visible := True;
      end;

    end;
  finally
    edtProduto.Clear;
    edtProduto.SetFocus;
  end;
end;

procedure TfrmVendaMain.CarregaOrcamento();
const SQL = 'select a.ORDEM,a.VUNIT,a.UNID,a.QTDE,a.QTDE_BAIXA,a.ID_PROD,a.VDESC,'+
            'b.QTDE_ESTOQUE,b.NOME produto '+
            'from ORCAMENTO_ITEM a '+
            'left outer join PRODUTO b on (b.CODIGO = a.ID_PROD) '+
            'where a.ID_ORCAMENTO = %s';
begin
  if not Assigned(frmOrcamentoConsulta) then
    frmOrcamentoConsulta := TfrmOrcamentoConsulta.Create(Self);
  try
    frmOrcamentoConsulta.ShowModal;
    if frmOrcamentoConsulta.IdOrcamento > 0 then
    begin
      OrcamentoID := frmOrcamentoConsulta.IdOrcamento;
      CarregaCliente(frmOrcamentoConsulta.IdCliente);

      DM.dsConsulta.Close;
      DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[IntToStr(frmOrcamentoConsulta.IdOrcamento)]));

      DM.dsConsulta.First;
      while not DM.dsConsulta.Eof do
      begin
        cdsItens.Append;
        cdsItensCODIGO.AsInteger := DM.dsConsulta.FieldByName('ID_PROD').AsInteger;
        cdsItensDESCRICAO.AsString := DM.dsConsulta.FieldByName('produto').AsString;
        cdsItensPRECO_VENDA.AsCurrency := DM.dsConsulta.FieldByName('VUNIT').AsCurrency;
        cdsItensUNIDADE.AsString := DM.dsConsulta.FieldByName('UNID').AsString;
        cdsItensQTDE_ESTOQUE.AsFloat := DM.dsConsulta.FieldByName('QTDE_ESTOQUE').AsFloat;
        cdsItensQTDE.AsFloat := DM.dsConsulta.FieldByName('QTDE').AsFloat;
        cdsItensQTDE_BAIXA.AsFloat := DM.dsConsulta.FieldByName('QTDE_BAIXA').AsFloat;
        cdsItensORDEM.AsInteger := DM.dsConsulta.FieldByName('ORDEM').AsInteger;
        cdsItensQTDE_UNIT.AsString := FormatFloat('#,##0.000 ', DM.dsConsulta.FieldByName('QTDE').AsFloat) + DM.dsConsulta.FieldByName('UNID').AsString + ' x R$ ' + FormatCurr('#,##0.00', DM.dsConsulta.FieldByName('VUNIT').AsCurrency);
        cdsItensVL_DESCONTO.AsFloat := DM.dsConsulta.FieldByName('VDESC').AsCurrency;
        cdsItens.Post;
        DM.dsConsulta.Next;
      end;

      edtQtde.Text := '1,00';
      AtualizaTotais;
    end;

  finally
    FreeAndNil(frmOrcamentoConsulta);
    edtProduto.Clear;
    edtProduto.SetFocus;
  end;
end;

function TfrmVendaMain.ValidaCliente: Boolean;
begin
  Result := True;
  if (IdCliente <= 0) then
  begin
    Result := False;
    TMensagem.Atencao('Cliente não informado.');
    actCliente.Execute;

    if (IdCliente > 0) then
    begin
      Result := True;
    end;
  end;
end;

function TfrmVendaMain.ValidaDebitoCliente(pIDCliente: Integer): Integer;
const
  SQLDias = 'select first 1 datediff(day,a.DT_VENC,current_date)dias from PDV_RECEBER a '+
            'left outer join PDV_MASTER b on (b.ID = a.ID and b.TIPO = a.TIPO) '+
            'where a.DT_BAIXA is null '+
            'and b.ID_CLIENTE = %s '+
            'order by a.DT_VENC';
var
  lDiasVencida: Integer;
begin
  Result := 0;

  {caso cliente tenha debito e esteja vencido a mais de 5 dias}
  if (cdsTemp.FieldByName('vl_debito').AsFloat > 0) then
  begin
    lDiasVencida := DM.GetInteger(Format(SQLDias, [IntToStr(pIDCliente)]), 'dias');
    if (lDiasVencida > 5) then
    begin
//      TMensagem.Atencao('Cliente com duplicata(s) vencida(s) a mais de 5 dias corridos.');
      Result := lDiasVencida;
    end;
  end;
end;

function TfrmVendaMain.ValidaDescMaximo: Boolean;
begin
  Result := True;
  if cdsItens.IsEmpty then
    Exit;
  cdsItens.DisableControls;
  try
    cdsItens.First;
    while (not cdsItens.Eof) do
    begin
      if (cdsItens.FieldByName('DESC_MAXIMO').AsCurrency > 0) then
        if (cdsItens.FieldByName('VL_DESCONTO').AsCurrency > cdsItens.FieldByName('DESC_MAXIMO').AsCurrency) then
        begin
          Result := False;
          Break;
        end;
      cdsItens.Next;
    end;
  finally
    cdsItens.EnableControls;
  end;
end;

function TfrmVendaMain.ValidaEstoqueItem(): integer;
begin
  Result := 0;
  try
    cdsItens.DisableControls;
    cdsItens.First;
    while not cdsItens.Eof do
    begin
      if (cdsItens.FieldByName('qtde_estoque').AsFloat < cdsItens.FieldByName('qtde_baixa').AsFloat) then
      begin
        Result := cdsItens.FieldByName('ordem').AsInteger;
        Break;
      end;
      cdsItens.Next;
    end;
  finally
    cdsItens.EnableControls;
  end;
end;

procedure TfrmVendaMain.CarregaProduto(sProduto: string);
const
  SQL = 'select a.CODIGO,a.NOME DESCRICAO,a.PRECO_VENDA,b.SIGLA unidade,a.QTDE_ESTOQUE,' +
        'coalesce(a.conv_qtde,1) qtde_conversao ' +
        'from PRODUTO a ' +
        'left outer join UNIDADE b on (b.CODIGO = a.COD_UNIDADE) ' +
        'where a.TIPO_PRODUTO in (''PA'',''A'') '+
        'and a.codigo = %s';
var
  tmp: TClientDataSet;
  iOrdem: Integer;
  aQtde: Extended;
  aUnidade: string;
  aVlUn: Currency;
begin
  try
    tmp := TClientDataSet.Create(nil);
    tmp.Data := DM.LerDataSet(Format(SQL,[sProduto])) ;

    if tmp.IsEmpty then
    begin
      TMensagem.Informacao('Produto não encontrado.') ;
      Exit ;
    end;

    if tmp.FieldByName('PRECO_VENDA').AsFloat <= 0 then
    begin
      TMensagem.Informacao('Produto com Preço R$ 0,00.' + #13#10 + 'Item não pode ser inserido na Venda!');
      Exit;
    end;

//    if (tmp.FieldByName('qtde_estoque').AsFloat <= 0) then
//    begin
//      TMensagem.Informacao('Produto com estoque zerado.' + #13#10 + 'Item não pode ser inserido na Venda!');
//      Exit;
//    end;

    if (tmp.FieldByName('qtde_conversao').AsFloat > 1) then
    {Necessario atualizar os valores abaixo, por isso comentei a linha}
//         (not cdsItens.Locate('codigo', tmp.FieldByName('codigo').AsInteger, [])) ) then
    begin
      with VoltaQtdeConversao(sProduto, StrToFloat(edtQtde.Text)) do
      begin
        if (tmp.FieldbyName('unidade').AsString <> UM) then
        begin
          aUnidade := UM;
          aQtde := Qtde;
          aVlUn := PrecoConv;
        end
        else
        begin
          aUnidade := tmp.FieldbyName('unidade').AsString;
          aQtde := StrToFloat(edtQtde.Text);
          aVlUn := tmp.FieldbyName('preco_venda').AsFloat;
        end;
      end;
    end
    else
    begin
      aUnidade := tmp.FieldbyName('unidade').AsString;
      aQtde := StrToFloat(edtQtde.Text);
      aVlUn := tmp.FieldbyName('preco_venda').AsFloat;
    end;

//    if ( tmp.FieldByName('qtde_estoque').AsFloat < (aQtde) ) then //StrToFloat(edtQtde.Text)
//    begin
//      TMensagem.Informacao('Estoque contém apenas '+tmp.FieldByName('qtde_estoque').AsString+' '+tmp.FieldByName('unidade').AsString);   //tmp.FieldByName('unidade').AsString
//      Exit;
//    end;

    iOrdem := cdsItens.RecordCount + 1 ;

    if not cdsItens.Locate('codigo', tmp.FieldByName('codigo').AsInteger, []) then
    begin
      cdsItens.Append;
      cdsItensCODIGO.AsInteger := tmp.FieldByName('codigo').AsInteger;
      cdsItensDESCRICAO.AsString := tmp.FieldByName('descricao').AsString;
      cdsItensPRECO_VENDA.AsCurrency := aVlUn ; //tmp.FieldByName('preco_venda').AsCurrency;
      cdsItensUNIDADE.AsString := aUnidade ;//tmp.FieldByName('unidade').AsString;
      cdsItensQTDE_ESTOQUE.AsFloat := tmp.FieldByName('qtde_estoque').AsFloat;
      cdsItensQTDE.AsFloat := StrToFloatDef(edtQtde.Text,1) ;
      cdsItensQTDE_BAIXA.AsFloat := aQtde ; //(cdsItensQTDE.AsFloat * tmp.FieldByName('qtde_conversao').AsFloat);
      cdsItensORDEM.AsInteger := iOrdem;                                            //tmp.FieldByName('unidade').AsString
      cdsItensQTDE_UNIT.AsString := FormatFloat('#,##0.000 ',cdsItensQTDE.AsFloat)+ aUnidade + ' x R$ ' + FormatCurr('#,##0.00', aVlUn); //tmp.FieldByName('preco_venda').AsCurrency
      cdsItensVL_DESCONTO.AsFloat := 0 ;
      cdsItens.FieldByName('DESC_MAXIMO').AsFloat := 0;
    end
    else
    begin                                                                   //StrToFloat(edtQtde.Text)
      {valida se item ja existe na venda com outra unidade de medida }
      if (aUnidade <> cdsItensUNIDADE.AsString) then
      begin
        TMensagem.Informacao('Item não pode ser adicionado.'+#13#10+
                   ' Já existe o produto com UM = ' +cdsItensUNIDADE.AsString);
        Exit;
      end;

      if (tmp.FieldByName('qtde_estoque').AsFloat < (cdsItensQTDE.AsFloat + aQtde)) then
      begin
        TMensagem.Informacao('Estoque contém apenas ' + tmp.FieldByName('qtde_estoque').AsString + ' ' + tmp.FieldByName('unidade').AsString);
        Exit;
      end;

      cdsItens.Edit;
      cdsItensQTDE.AsFloat       := cdsItensQTDE.AsFloat + StrToFloatDef(edtQtde.Text, 1) ;
      cdsItensQTDE_BAIXA.AsFloat := cdsItensQTDE_BAIXA.AsFloat + aQtde ;
      if cdsItensVL_DESCONTO.AsFloat > 0 then
        cdsItensQTDE_UNIT.AsString := FormatFloat('#,##0.000 ', cdsItensQTDE.AsFloat) +
                                       aUnidade +
                                       ' x R$ ' + FormatCurr('#,##0.00',  cdsItensPRECO_VENDA.AsCurrency)+
                                       ' - R$ '+FormatFloat('#,##0.00',cdsItensVL_DESCONTO.AsFloat)
      else
      cdsItensQTDE_UNIT.AsString := FormatFloat('#,##0.000 ', cdsItensQTDE.AsFloat) +
                                       aUnidade + ' x R$ ' + FormatCurr('#,##0.00', aVlUn); //tmp.FieldByName('preco_venda').AsCurrency
    end;

    cdsItens.Post;
    edtQtde.Text := '1,00' ;
    AtualizaTotais;
  finally
    FreeAndNil(tmp);
    edtProduto.Clear;
    edtProduto.SetFocus;
  end;
end;

procedure TfrmVendaMain.cdsItensCalcFields(DataSet: TDataSet);
begin
  cdsItenssubtotal.AsCurrency := (cdsItensQTDE.AsFloat *
                                  cdsItensPRECO_VENDA.AsCurrency) - cdsItensVL_DESCONTO.AsFloat ;
end;

constructor TfrmVendaMain.CreateChild(AOwner: TComponent);
begin
  inherited Create(AOwner) ;
  self.FormStyle := fsMDIForm ;
end;

function TfrmVendaMain.DescMaximo(aId: string): TRetDescMax;
const
  SQL = 'select coalesce(a.desc_maximo,0) perc,cast(iif(coalesce(a.desc_maximo,0)>0,(%s*(a.desc_maximo/100)),0)as numeric(10,2))vl '+
        'from produto a '+
        'where a.codigo = %s';
begin
  Result.Percentual := 0;
  Result.Valor := 0;

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[StringReplace(cdsItens.FieldByName('subtotal').AsString,',','.',[rfReplaceAll]),
                                                  cdsItens.FieldByName('codigo').AsString]));
  if ((not DM.dsConsulta.IsEmpty) and (DM.dsConsulta.FieldByName('perc').AsFloat > 0))then
  begin
  Result.Percentual := DM.dsConsulta.FieldByName('perc').AsFloat;
  Result.Valor := DM.dsConsulta.FieldByName('vl').AsCurrency;
//    Result.Percentual := FormatFloatBr(DM.dsConsulta.FieldByName('perc').AsFloat)+' %';
//    Result.Valor := 'R$ '+FormatFloatBr(DM.dsConsulta.FieldByName('vl').AsFloat);
  end;
end;

procedure TfrmVendaMain.edtProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if edtProduto.Text = EmptyStr then
      Abort;

    CarregaProduto(edtProduto.Text);
  end;
end;

procedure TfrmVendaMain.edtQtdeExit(Sender: TObject);
begin
  edtQtde.Text := FormatFloat('#,##0.00',StrToFloat(edtQtde.Text)) ;
end;

procedure TfrmVendaMain.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Perform(WM_NEXTDLGCTL,0,0) ;
  end;

  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TfrmVendaMain.ExecutaPagtoRapido(aFormaPagto: string);
begin
  try
    if not ValidaVenda(aFormaPagto) then
      Exit;

    if not Assigned(Frm_PDVReceberRapido) then
      Frm_PDVReceberRapido := TFrm_PDVReceberRapido.Create(Self);
    try
      with Frm_PDVReceberRapido do
      begin
        Left := pnlFundo0.Left + 400;
        Top := pnlFundo0.Top + 200;

        cVlRecebido := 0;
        vlCompra := RoundABNT(cdsItenstotal.Value, -2);
        aRetorno := EmptyStr;

        if aFormaPagto = 'DINHEIRO' then
        begin
          lblTitulo.Caption := 'DINHEIRO';
          imgCartao.Visible := False;
          imgDinheiro.Visible := True;
        end
        else if aFormaPagto = 'CARTAO DE CREDITO' then
        begin
          lblTitulo.Caption := 'CARTÃO DE CRÉDITO';
          imgDinheiro.Visible := False;
          imgCartao.Visible := True;
        end;

        ShowModal;

        if Frm_PDVReceberRapido.aRetorno = 'sucesso' then
        begin
      {Fechar a Venda}
          LoadPagtoRapido(aFormaPagto);
          FecharVenda(cdsReceberID.AsInteger, cdsReceberTIPO.AsString, 0, bImprimir);
        end;
      end;
    finally
      FreeAndNil(Frm_PDVReceberRapido);
    end;
  finally
    edtProduto.Clear;
    edtProduto.SetFocus;
  end;
end;

procedure TfrmVendaMain.FecharVenda(aID : Integer; aTipo : string; aCondPagto : integer; aImprimir : Boolean) ;
var
  Vl_TotProduto, Vl_TotGeral, Vl_TotDesconto: Currency;
  aMaster, aDetail, aReceber: OleVariant;
begin
  if aID < 1 then
    Exit;

  Vl_TotProduto := 0;
  Vl_TotGeral := 0;
  Vl_TotDesconto := 0;

  {Carrega tabela Detail}
  try
    cdsItens.DisableControls;
    cdsItens.First;
    while not cdsItens.Eof do
    begin
      cdsDetail.Append;

      cdsDetailID.AsInteger := aID;
      cdsDetailTIPO.AsString := aTipo;  {NFC-e = N, SAT = S, Nao Fiscal = 0}
      cdsDetailORDEM.AsInteger := cdsItensORDEM.AsInteger;
      cdsDetailID_PRODUTO.AsInteger := cdsItensCODIGO.AsInteger;
      cdsDetailUM.AsString := cdsItensUNIDADE.AsString ;
      cdsDetailQTDE.AsFloat := cdsItensQTDE.AsFloat;
      cdsDetailQTDE_BAIXA.AsFloat := cdsItensQTDE_BAIXA.AsFloat ;
      cdsDetailVL_UNITARIO.AsCurrency := cdsItensPRECO_VENDA.AsCurrency;
      cdsDetailVL_DESCONTO.AsCurrency := cdsItensVL_DESCONTO.AsCurrency;
      cdsDetailVL_TOTAL.AsCurrency := cdsItenssubtotal.AsCurrency;
      cdsDetailCFOP.Clear;
      cdsDetailNCM.Clear;
      cdsDetailVL_ICMS.AsFloat := 0;
      cdsDetailVL_PIS.AsFloat := 0;
      cdsDetailVL_COFINS.AsFloat := 0;
      cdsDetailVL_IPI.AsFloat := 0;
      cdsDetailVL_IMPOSTO.AsFloat := 0;

      Vl_TotProduto := Vl_TotProduto + (cdsDetailQTDE.AsFloat * cdsDetailVL_UNITARIO.AsCurrency);
      Vl_TotGeral := Vl_TotGeral + ( (cdsDetailQTDE.AsFloat * cdsDetailVL_UNITARIO.AsCurrency) -
                                     cdsDetailVL_DESCONTO.AsCurrency);
      Vl_TotDesconto := Vl_TotDesconto + cdsDetailVL_DESCONTO.AsCurrency;
      cdsDetail.Post;
      cdsItens.Next;
    end;
  finally
    cdsItens.EnableControls;
  end;

  {Carrega tabela Master}
  cdsMaster.Append;
  cdsMasterID.AsInteger := aID;
  cdsMasterTIPO.AsString := aTipo; {NFC-e = N, SAT = S, Nao Fiscal = 0}
  cdsMasterEMISSAO.AsDateTime := Date;
  if IdCliente <> -1 then
    cdsMasterID_CLIENTE.AsInteger := IdCliente;
  cdsMasterID_CAIXA.AsInteger := IdCaixa;
  cdsMasterVL_PRODUTO.AsCurrency := Vl_TotProduto;
  cdsMasterVL_TOTAL.AsCurrency := Vl_TotGeral;
  cdsMasterVL_DESCONTO.AsCurrency := Vl_TotDesconto;
  cdsMasterVL_ICMS.AsFloat := 0;
  cdsMasterVL_PIS.AsFloat := 0;
  cdsMasterVL_COFINS.AsFloat := 0;
  cdsMasterVL_IPI.AsFloat := 0;
  cdsMasterVL_IMPOSTO.AsFloat := 0;
  cdsMasterC_NF.Clear;
  if aCondPagto = 0 then
    cdsMasterID_CREDIARIO.Clear
  else
    cdsMasterID_CREDIARIO.AsInteger := aCondPagto;
  if IdVendedor <> -1 then
    cdsMasterID_VENDEDOR.AsInteger := IdVendedor;
  if UsuarioAutorizou <> '' then
    cdsMaster.FieldByName('user_autorizacao').AsString := UsuarioAutorizou ;
  cdsMaster.FieldByName('ID_HISTORICO').AsInteger := 58;
  cdsMaster.FieldByName('STATUS').AsString := 'EFETUADA';
  cdsMaster.Post;

  {chamar Set Gravacao}
  aMaster := null;
  aDetail := null;
  aReceber := null;

//  cdsReceber.SaveToFile(ExtractFilePath(Application.ExeName)+'\'+'aReceber.cds',dfBinary);
  if cdsMaster.ChangeCount > 0 then
    aMaster := cdsMaster.Delta;
  if cdsDetail.ChangeCount > 0 then
    aDetail := cdsDetail.Delta;
  if cdsReceber.ChangeCount > 0 then
    aReceber := cdsReceber.Delta;

  if DM.SMCadastroClient.setFechaVenda(DM.BancoDados,
                                        VarArrayOf([aMaster, aDetail, aReceber]),
                                        cdsMasterID.AsString, cdsMasterTIPO.AsString) then
  begin
    if OrcamentoID > 0 then
      AtualizaOrcamento;
    if aImprimir then
      Imprimir() ;
    ZerarCDS;
    LimpaEdtsLbls;
    AtualizaTotais;
    fIdVendedor := -1;
    FOrcamentoId := -1;
    ListaVendedores;
  end
  else
  begin
    TMensagem.Erro('Erro: Venda não efetuada. Tente novamente.');
  end;
end;

procedure TfrmVendaMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;

//  if Self.FormStyle = fsMDIChild then
//  begin
//    Action := caFree;
//    if Assigned(cdsItens) then
//      FreeAndNil(cdsItens);
//    FreeAndNil(Self);
//  end;
end;

procedure TfrmVendaMain.FormCreate(Sender: TObject);
begin
  ListaVendedores;
  ZerarCDS ;
end;

procedure TfrmVendaMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Escape then
    Close();
end;

procedure TfrmVendaMain.FormResize(Sender: TObject);
begin
  DimensionarGrid(dbgrdItens);
end;

procedure TfrmVendaMain.FormShow(Sender: TObject);
begin
  TelaCheia ;
  LimpaEdtsLbls ;
  edtProduto.SetFocus ;

//  dbgrdItens.FixedColor := $00E9E9E9 ; //Cor de fundo titulo das colunas
//  dbgrdItens.Color      := clWhite; //Fundo dos dados do grid
//  dbgrdItens.TitleFont.Color  := clBlack; //Cor do texto dos titulos coluna do grid
//  dbgrdItens.Font.Color       := clBlack; //Cor do texto dos dados do grid
end;

procedure TfrmVendaMain.imgFecharClick(Sender: TObject);
begin
  Close();
end;

procedure TfrmVendaMain.Imprimir() ;
begin
  if not Assigned(Rel_Venda0) then
    Rel_Venda0 := TRel_Venda0.Create(Self);
  try
      Rel_Venda0.Executar(cdsMasterID.AsInteger, cdsMasterTIPO.AsString)
//    Rel_Venda0.Executar(3, '0');
  finally
    FreeAndNil(Rel_Venda0);
  end;
end;

procedure TfrmVendaMain.ImprimirOrcamento(pId: integer);
begin
  if not Assigned(Rel_Venda0) then
    Rel_Venda0 := TRel_Venda0.Create(Self);
  try
    Rel_Venda0.ExecOrcamento(pId);
  finally
    FreeAndNil(Rel_Venda0);
  end;
end;

procedure TfrmVendaMain.LimpaEdtsLbls;
begin
  edtProduto.Clear ;
  edtQtde.Text := '1,00' ;
  lblClienteNome.Caption := EmptyStr ;
  lblCPFCNPJ.Caption := EmptyStr ;
  lblCredito.Caption := EmptyStr ;
  lblDebito.Caption := EmptyStr ;
  lblVlLimite.Caption := EmptyStr ;

  {Total Rodape}
  lblTotVenda.Caption := 'R$ 0,00' ;
  lblTotItens.Caption := '0' ;
  lblTotQtde.Caption  := '0,000' ;

  lblOperador.Caption := '         INFORMAR O VENDEDOR' ;
end;

procedure TfrmVendaMain.ListaVendedores;
const
  SQL = 'SELECT r.USU_NOME,r.ID_VENDEDOR FROM USUARIO r '+
        'where ((r.ID_VENDEDOR is not null) and (r.ID_VENDEDOR > 0))';
var
  lCaixa: TCaixa;
begin
  pnlCaixaAberto.Align := alClient;
  pnlCaixaAberto.Visible := True;
  lblOperador.Caption := '         INFORMAR O VENDEDOR' ;
  actVendedor.Enabled := False;

  lCaixa := CaixaFechado;
  if lCaixa.Fechado then
    Label7.Caption := 'CAIXA FECHADO'
  else
    Label7.Caption := 'CAIXA ABERTO';

  cbbVendedor.Items.Clear;
  cbbVendedor.Items.Add('Não informado');

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(SQL);

  if (not DM.dsConsulta.IsEmpty) then
  begin
    DM.dsConsulta.First;
    while not DM.dsConsulta.Eof do
    begin
      cbbVendedor.Items.Add(DM.dsConsulta.FieldByName('USU_NOME').AsString);
      DM.dsConsulta.Next;
    end;
    cbbVendedor.ItemIndex := 0;
  end;

end;

procedure TfrmVendaMain.LoadPagtoRapido(aFormaPagto: string);
var
  I: Integer;
  lTotDesconto : Extended ;
begin
  lTotDesconto := VoltaTotDesconto();
  {Carrega tabela Receber}
  if lTotDesconto > 0 then
  begin
    for I := 1 to 2 do
    begin
      cdsReceber.Append;
      with VoltaPK('0') do
      begin
        cdsReceberID.AsInteger := ID;
        cdsReceberTIPO.AsString := TIpo;
      end;
      cdsReceberORDEM.AsString := '0'+I.ToString + '/02';

      cdsReceberDT_VENC.AsDateTime := Date;
      cdsReceber.FieldByName('JUROS').AsFloat := 0;
      cdsReceber.FieldByName('DESCONTO').AsFloat := 0;

      if I = 1 then {desconto}
      begin
        cdsReceberVALOR.AsCurrency := lTotDesconto;
        cdsReceberVL_PAGO.AsCurrency := lTotDesconto;
        cdsReceberFORMA_PAGTO.AsString := 'DESCONTO';
      end
      else
      begin {Valor Pago Compra}
        cdsReceberVALOR.AsCurrency := cdsItenstotal.Value;
        cdsReceberVL_PAGO.AsCurrency := cdsItenstotal.Value;
        cdsReceberFORMA_PAGTO.AsString := aFormaPagto;
      end;

      cdsReceberUSUARIO_EMISSAO.AsString := DM.UsuarioDataHora;
      cdsReceberDT_BAIXA.AsDateTime := Date;
      cdsReceberUSUARIO_BAIXA.AsString := DM.UsuarioDataHora;

      cdsReceber.FieldByName('id_conta').AsString := '1'; //Conta PDV
      cdsReceber.FieldByName('id_historico').AsInteger := VoltaHistorico(aFormaPagto);
      cdsReceber.FieldByName('baixa_id_caixa').AsInteger := IdCaixa;

      cdsReceber.Post;
    end;
  end
  else     {sem desconto nos itens}
  begin
    cdsReceber.Append;
    with VoltaPK('0') do
    begin
      cdsReceberID.AsInteger := ID;
      cdsReceberTIPO.AsString := TIpo;
    end;
    cdsReceberORDEM.AsString := '01/01';
    cdsReceberVALOR.AsCurrency := cdsItenstotal.Value;
    cdsReceberDT_VENC.AsDateTime := Date;

    cdsReceberVL_PAGO.AsCurrency := cdsItenstotal.Value;
    cdsReceberFORMA_PAGTO.AsString := aFormaPagto;
    cdsReceberUSUARIO_EMISSAO.AsString := DM.UsuarioDataHora;

    cdsReceberDT_BAIXA.AsDateTime := Date;
    cdsReceberUSUARIO_BAIXA.AsString := DM.UsuarioDataHora;

    cdsReceber.FieldByName('id_conta').AsString := '1'; //Conta PDV
    cdsReceber.FieldByName('id_historico').AsInteger := VoltaHistorico(aFormaPagto);
    cdsReceber.FieldByName('baixa_id_caixa').AsInteger := IdCaixa;

    cdsReceber.Post;
  end;
end;

procedure TfrmVendaMain.OrdenarItens;
var
  Count: Integer;
begin
  if cdsItens.IsEmpty then
    Exit;

  try
    cdsItens.DisableControls;

    cdsItens.First;
    Count := 1;
    while not cdsItens.Eof do
    begin
      cdsItens.Edit;
      cdsItensORDEM.AsInteger := Count;
      cdsItens.Post;
      Inc(Count);
      cdsItens.Next;
    end;

  finally
    cdsItens.EnableControls;
  end;
end;

procedure TfrmVendaMain.setIdVendedor(const Value: integer);
begin
  fIdVendedor := Value;
end;

procedure TfrmVendaMain.SetOrcamentoId(const Value: integer);
begin
  FOrcamentoId := Value;
end;

procedure TfrmVendaMain.TelaCheia;
begin
  Align        := alNone;
  AutoSize     := False;
  WindowState  := wsNormal;
  BorderStyle  := bsnone ;

  {Preenche Espaço Image}
  Top    := Frm_Inicial.pnlRodape.Height ;
  Left   := Frm_Inicial.pnlFundo.Left ;
  Width  := Frm_Inicial.pnlFundo.Width;
  Height := Frm_Inicial.pnlFundo.Height;
  {Preenche toda tela}
//  Top    := 0 ;
//  Left   := 0 ;
//  Width  := Screen.Width;
//  Height := Screen.Height;
end;

procedure TfrmVendaMain.tmr1Timer(Sender: TObject);
begin
  lblDataHora.Visible := True ;
  lblDataHora.Caption := 'Data: '+DateToStr(Date) + '   Horas: '+ FormatDateTime('hh:mm:ss',Time)+ '                  ' ;
end;

function TfrmVendaMain.ValidaVenda(tpPagto : string): Boolean;
var
  lSenha: string;
  lCaixa : TCaixa;
  lItem: Integer;
begin
  Result := True;

  if cdsItens.IsEmpty then
  begin
    Result := False;
    TMensagem.Informacao('Nada a vender.');
    Exit;
  end;

  lItem := ValidaEstoqueItem;
  if (lItem > 0) then
  begin
    if TMensagem.Pergunta('Item de ordem: "'+lItem.ToString+'" está com estoque baixo.'+#13+
                          'Deseja cancelar o item?') then
    begin
      cdsItens.Delete;
      if cdsItens.IsEmpty then
      begin
        LimpaEdtsLbls;
      end
      else
        OrdenarItens;
      AtualizaTotais;
    end;
    Result := False;
    Exit;
  end;

  if IdCliente = -1 then
  begin
    actCliente.Execute ;

    if IdCliente = -1 then
    begin
      Result := False;
      TMensagem.Atencao('Cliente não informado.');
      Exit;
    end;
  end;

//  if not VendedorInformado then
//  begin
//    Result := False ;
//    TMensagem.Atencao('Vendedor(a) não informado.');
//    Exit;
//  end;

  lCaixa := CaixaFechado;
  if lCaixa.Fechado then
  begin
    TMensagem.Atencao('Caixa do dia inexistente ou fechado.'+#13#10+
                      'Deve-se fazer a abertura do caixa antes de iniciar as vendas.');
    Result := False ;
    Exit
  end
  else
    IdCaixa := lCaixa.ID;

  if (tpPagto = 'CREDIARIO') then
  begin
    if (ValidaDebitoCliente(IdCliente) > 5) then
    begin
      TMensagem.Atencao('Foi localizado débito deste cliente. Necessário gerar orçamento para liberação.');
      begin
        actGeraOrcamento.Execute;
        Result := False;
        Exit;
      end;

//      lSenha := VoltaSenha('Liberar a venda');
//      if ((lSenha <> senhaMaster1) and (lSenha <> senhaMaster2)) then
//      begin
//        TMensagem.Informacao('Senha inválida. Solicitar a liberação do administrador.');
//        Result := False;
//        Exit
//      end
//      else
//        fUsuarioAutorizou := lSenha;
    end;
  end;

  if not ValidaDescMaximo then
  begin
    Result := False;
    TMensagem.Atencao('Venda contém item com Desconto acima do permitido. Necessário gerar orçamento de liberação.');
    Exit;
  end;


    //validar se tem estoque caso seja orcamento
    if (OrcamentoID > 0) then
    begin
      cdsItens.First;
      while not cdsItens.Eof do
      begin
        if ((cdsItens.FieldByName('qtde_estoque').AsFloat - cdsItens.FieldByName('qtde_baixa').AsFloat) < 0) then
        begin
          TMensagem.Atencao('Item de ordem: '+cdsItens.FieldByName('ordem').AsString+' não tem estoque suficiente para a venda.');
          Result := False;
          Exit;
        end;
        cdsItens.Next;
      end;
    end;
end;

function TfrmVendaMain.VendedorInformado: Boolean;
const
  SQL = 'SELECT r.USU_NOME nome FROM USUARIO r where r.ID_VENDEDOR = %s';
var
  lID,lVendedor: string;
begin
  if (IdVendedor > 0) then//and (not cdsItens.IsEmpty)) then
  begin
    Result := True;
    Exit ;
  end;

  Result := False;
  lVendedor := '';
  lID := VoltaSenha('Código Vendedor(a)');
  if lID <> '' then
  begin
    lVendedor := DM.GetString(Format(SQL, [lID]), 'nome');
    if (lVendedor <> '') then
    begin
      fIdVendedor := lID.ToInteger;
      lblOperador.Caption := '         '+lVendedor;
      Result := True;
    end
    else
    begin
      TMensagem.Atencao('Vendedor(a) não encontrado. Cadastrar codigo de venda no cadastro de funcionário.');
    end;
  end;
end;

function TfrmVendaMain.VoltaHistorico(pFPagto: string): Integer;
begin
  if pFPagto = 'DESCONTO' then
    Result := 47;
  if pFPagto = 'DINHEIRO' then
    Result := 1;
  if pFPagto = 'CHEQUE' then
    Result := 4;
  if pFPagto = 'CARTAO DE CREDITO' then
    Result := 3;
  if pFPagto = 'CARTAO DE DEBITO' then
    Result := 2;
end;

function TfrmVendaMain.VoltaPK(aTipo: string): TRetornoPK;
const
     SQL = 'SELECT max(a.ID) ID  FROM PDV_MASTER a where a.TIPO = %s' ;
begin
  Result.ID := -1 ;
  Result.TIpo := EmptyStr ;

  try
    Result.ID := DM.GetInteger(Format(SQL, [QuotedStr(aTipo)]), 'ID') + 1;
    Result.TIpo := aTipo;
  except
    on e: Exception do
    begin
      Result.ID := -1 ;
      Result.TIpo := EmptyStr ;
      TMensagem.Erro('Erro: Não foi possivel Gerar a Venda.'+#13#10+
                 'Tente novamente.   Erro interno: '+e.Message) ;
    end;
  end;
end;

function TfrmVendaMain.VoltaQtdeConversao(pCodPro : string; pQtde : Extended) : TRetConvUM ;
begin
  if not Assigned(Frm_EscolhaUM) then
    Frm_EscolhaUM := TFrm_EscolhaUM.Create(Self);
  try
    with Frm_EscolhaUM do
    begin
      aCodPro := pCodPro ;
      aQTDE := pQtde ;
      RadioGroup1.Items.Clear ;
      MontaSql() ;

      ShowModal;

      Result.UM   := aRetUnidade ;
      Result.Qtde := aRetQtde ;
      Result.PrecoConv := aRetPreco ;
    end;
  finally
    FreeAndNil(Frm_EscolhaUM);
  end;
end;

function TfrmVendaMain.VoltaTotDesconto: Extended;
begin
  Result := 0 ;
  if cdsItens.IsEmpty then
    Exit ;

  try
    cdsItens.DisableControls ;
    cdsItens.First ;
    while not cdsItens.Eof do
    begin
      if cdsItensVL_DESCONTO.AsFloat > 0 then
        Result := Result + cdsItensVL_DESCONTO.AsFloat ;
      cdsItens.Next ;
    end;
  finally
    cdsItens.EnableControls ;
  end;
end;

procedure TfrmVendaMain.ZerarCDS;
begin
  fUsuarioAutorizou := '';
  cdsItens.Close;
  cdsItens.FieldDefs.Clear;
  cdsItens.CreateDataSet;

  cdsMaster.Close;
  cdsMaster.FieldDefs.Clear;
  cdsMaster.CreateDataSet;

  cdsDetail.Close;
  cdsDetail.FieldDefs.Clear;
  cdsDetail.CreateDataSet;

  cdsReceber.Close;
  cdsReceber.FieldDefs.Clear;
  cdsReceber.CreateDataSet;

  IdCliente := -1 ;
  IdCaixa   := -1;
end;

end.

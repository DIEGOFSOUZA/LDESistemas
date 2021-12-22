unit uFrm_NF_Entrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, UDBPesquisa, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Samples.Spin, UEDPesquisa,System.DateUtils, U_DataCorrida,
  System.StrUtils;

type
  TFrm_NF_Entrada = class(TPdr_Cad)
    pnlDados: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    lbl2: TLabel;
    Label32: TLabel;
    dtpEmissao: TDateTimePicker;
    dbmmoLog: TDBMemo;
    pnlNumNF: TPanel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label18: TLabel;
    pnlFornecedor: TPanel;
    DBPesquisa2: TDBPesquisa;
    pnlAddFornecedor: TPanel;
    imglAddFornecedor: TImage;
    btnlAddFornecedor: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    pnlPages: TPanel;
    pgc1: TPageControl;
    tsProdutoServico: TTabSheet;
    tsTotal: TTabSheet;
    tsTransportador: TTabSheet;
    tsCobranca: TTabSheet;
    pnlTotais: TPanel;
    pnlTransportador: TPanel;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Label24: TLabel;
    DBEdit19: TDBEdit;
    Label25: TLabel;
    DBEdit20: TDBEdit;
    Label26: TLabel;
    DBEdit21: TDBEdit;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Label20: TLabel;
    DBEdit16: TDBEdit;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    Label28: TLabel;
    DBEdit23: TDBEdit;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    Label30: TLabel;
    DBEdit25: TDBEdit;
    Label35: TLabel;
    DBComboBox1: TDBComboBox;
    Label36: TLabel;
    DBEdit26: TDBEdit;
    Label37: TLabel;
    DBEdit27: TDBEdit;
    Label38: TLabel;
    DBComboBox2: TDBComboBox;
    Label39: TLabel;
    Label40: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label43: TLabel;
    DBEdit32: TDBEdit;
    Label44: TLabel;
    DBEdit33: TDBEdit;
    Label45: TLabel;
    DBEdit34: TDBEdit;
    Label46: TLabel;
    DBEdit35: TDBEdit;
    Label47: TLabel;
    DBEdit36: TDBEdit;
    Label48: TLabel;
    DBEdit37: TDBEdit;
    pnlPagamento: TPanel;
    pnlPag0: TPanel;
    pnlPagLeft: TPanel;
    pnlPagTotal: TPanel;
    Label34: TLabel;
    lblPagTotal: TLabel;
    pnlPagParcelamento: TPanel;
    pnlPagGerar: TPanel;
    btnPagGerar: TSpeedButton;
    pnlGridPagamento: TPanel;
    actGerarDuplicatas: TAction;
    actExcluirDuplicatas: TAction;
    pnlGridDuplicatas: TPanel;
    pnlExcDup: TPanel;
    pnlbtnExcDup: TPanel;
    btnExcDup: TSpeedButton;
    dbgrdPagto: TDBGrid;
    Label52: TLabel;
    Label31: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    cbbFormaPagto: TComboBox;
    cbbParcelamento: TComboBox;
    edtPagValor: TEdit;
    sGridDup: TDataSource;
    pnlItens: TPanel;
    pnlProdAdd: TPanel;
    pnlAdd: TPanel;
    btnAddItem: TSpeedButton;
    pnlTotalItem: TPanel;
    Label53: TLabel;
    lblTotItem: TLabel;
    pnlVlUnitario: TPanel;
    lbl8: TLabel;
    lblUnitario: TLabel;
    pnlQtde: TPanel;
    btnMais: TSpeedButton;
    btnMenos: TSpeedButton;
    lblUM: TLabel;
    edtQtde: TEdit;
    pnlUM: TPanel;
    imgUM: TImage;
    btnUM: TSpeedButton;
    pnlItem: TPanel;
    edpsqsProduto: TEdPesquisa;
    cbbUM: TComboBox;
    actAddItem: TAction;
    actMais: TAction;
    actMenos: TAction;
    sGridItens: TDataSource;
    edtFantasia: TEdit;
    edtCPFCNPJ: TEdit;
    edtRGINSC: TEdit;
    edtCEP: TEdit;
    edtUF: TEdit;
    edtCidade: TEdit;
    edtEndereco: TEdit;
    edtNumero: TEdit;
    edtBairro: TEdit;
    edtComplemento: TEdit;
    DBEdit1: TDBEdit;
    Label55: TLabel;
    dsItem: TClientDataSet;
    dsPagar: TClientDataSet;
    cdsID: TIntegerField;
    cdsCODFOR: TIntegerField;
    cdsID_CONDPAGTO: TIntegerField;
    cdsID_USUARIO: TIntegerField;
    cdsDESCRICAO: TStringField;
    cdsEMISSAO: TDateField;
    cdsENTRADA: TDateField;
    cdsBASEICMS: TCurrencyField;
    cdsVALORICMS: TCurrencyField;
    cdsTOTPRODUTO: TCurrencyField;
    cdsFRETE: TCurrencyField;
    cdsSEGURO: TCurrencyField;
    cdsOUTRAS: TCurrencyField;
    cdsVALORIPI: TCurrencyField;
    cdsTOTNOTA: TCurrencyField;
    cdsOBS: TMemoField;
    cdsDATA_HORA: TSQLTimeStampField;
    cdsN_NF: TIntegerField;
    cdsCNF: TIntegerField;
    cdsINDPAG: TIntegerField;
    cdsMODELO: TStringField;
    cdsSERIE: TIntegerField;
    cdsDSAIENT: TDateField;
    cdsHSAIENT: TTimeField;
    cdsTPNF: TStringField;
    cdsFINNFE: TIntegerField;
    cdsVBCST: TFMTBCDField;
    cdsVDESC: TFMTBCDField;
    cdsVII: TFMTBCDField;
    cdsVPIS: TFMTBCDField;
    cdsVCOFINS: TFMTBCDField;
    cdsINFCPL: TStringField;
    cdsQVOL: TIntegerField;
    cdsESP: TStringField;
    cdsMARCA: TStringField;
    cdsNVOL: TStringField;
    cdsPESOL: TFMTBCDField;
    cdsPESOB: TFMTBCDField;
    cdsUFEMBARQ: TStringField;
    cdsXLOCEMBARQ: TStringField;
    cdsADICINFCPL: TMemoField;
    cdsADICINFADFISCO: TMemoField;
    cdsVST: TFMTBCDField;
    cdsCOMPRA_XNCOMPRA: TStringField;
    cdsCOMPRA_XPED: TStringField;
    cdsCOMPRA_XCONT: TStringField;
    cdsISSQN_VSERV: TFMTBCDField;
    cdsISSQN_VBC: TFMTBCDField;
    cdsISSQN_VISS: TFMTBCDField;
    cdsISSQN_VPIS: TFMTBCDField;
    cdsISSQN_VCOFINS: TFMTBCDField;
    cdsIMPORTADA: TStringField;
    cdsCHAVE: TStringField;
    cdsID_HISTORICO: TIntegerField;
    cdsTIPO_NOTA: TStringField;
    cdsTIPO: TStringField;
    cdsDT_ENTREGA: TDateField;
    cdsNAT_OPERACAO: TStringField;
    cdsTOT_IPI: TFMTBCDField;
    cdsTR_PLACA: TStringField;
    cdsTR_PLACAUF: TStringField;
    cdsTR_RAZAO: TStringField;
    cdsTR_CPFCNPJ: TStringField;
    cdsTR_INSC: TStringField;
    cdsTR_CEP: TStringField;
    cdsTR_ENDERECO: TStringField;
    cdsfdqryEntrada_Pagar: TDataSetField;
    cdsfdqryEntrada_Item: TDataSetField;
    dsItemID_NOTAENTRADA: TIntegerField;
    dsItemORDEM: TSmallintField;
    dsItemID_PRODUTO: TIntegerField;
    dsItemNCM: TStringField;
    dsItemST: TStringField;
    dsItemQTRIB: TBCDField;
    dsItemUNIDADE: TStringField;
    dsItemUNIDADE_TRIB: TStringField;
    dsItemDESCONTO: TFMTBCDField;
    dsItemVALORDESCONTO: TBCDField;
    dsItemVALORFRETE: TBCDField;
    dsItemVALOROUTRAS: TBCDField;
    dsItemXPED: TStringField;
    dsItemCPROD: TStringField;
    dsItemCEAN: TStringField;
    dsItemCFOP: TStringField;
    dsItemVALORSEGURO: TBCDField;
    dsItemVALORACESSORIAS: TBCDField;
    dsItemIPI_BC: TBCDField;
    dsItemIPI_VALOR: TBCDField;
    dsItemIPI_ST: TBCDField;
    dsItemIPI_STVAL: TBCDField;
    dsItemIPI_ALIQ: TCurrencyField;
    dsItemIPI_CST: TStringField;
    dsItemPIS_BC: TBCDField;
    dsItemPIS_VALOR: TBCDField;
    dsItemPIS_ST: TBCDField;
    dsItemPIS_ALIQST: TCurrencyField;
    dsItemPIS_STVAL: TBCDField;
    dsItemPIS_ALIQ: TCurrencyField;
    dsItemPIS_CST: TStringField;
    dsItemCOFINS_BC: TBCDField;
    dsItemCOFINS_VALOR: TBCDField;
    dsItemCOFINS_ST: TBCDField;
    dsItemCOFINS_ALIQST: TCurrencyField;
    dsItemCOFINS_STVAL: TBCDField;
    dsItemCOFINS_ALIQ: TCurrencyField;
    dsItemCOFINS_CST: TStringField;
    dsItemII_VBC: TBCDField;
    dsItemII_VDESPADU: TBCDField;
    dsItemII_VII: TBCDField;
    dsItemII_VIOF: TBCDField;
    dsItemDI_NDI: TStringField;
    dsItemDI_DATA: TDateField;
    dsItemDI_LOCDESEMBARC: TStringField;
    dsItemDI_UFDESEMBARC: TStringField;
    dsItemDI_DATADESEMBARC: TDateField;
    dsItemDI_CODEXPORTADOR: TIntegerField;
    dsItemVUNTRIB: TFMTBCDField;
    dsItemN_DRAW: TIntegerField;
    dsItemN_RE: TIntegerField;
    dsItemQEXPORT: TBCDField;
    dsItemCHNFE: TStringField;
    dsItemICMS_BC: TBCDField;
    dsItemICMS_PREDBC: TCurrencyField;
    dsItemICMS_ALIQ: TCurrencyField;
    dsItemICMS_VALOR: TBCDField;
    dsItemICMS_PREDBCST: TCurrencyField;
    dsItemICMS_VALORBCST: TBCDField;
    dsItemICMS_ALIQST: TCurrencyField;
    dsItemICMS_VALORST: TBCDField;
    dsItemICMS_CSOSN: TStringField;
    dsItemICMS_VBCUFDEST: TBCDField;
    dsItemICMS_PFCPUFDEST: TCurrencyField;
    dsItemICMS_PICMSUFDEST: TCurrencyField;
    dsItemICMS_PICMSINTER: TCurrencyField;
    dsItemICMS_PICMSINTERPART: TCurrencyField;
    dsItemICMS_VFCPUFDEST: TBCDField;
    dsItemICMS_VICMSUFDEST: TBCDField;
    dsItemICMS_VICMSUFREMET: TBCDField;
    dsItemICMS_MODBC: TStringField;
    dsItemICMS_MODBCST: TStringField;
    dsItemICMS_UFST: TStringField;
    dsItemICMS_PBCOP: TBCDField;
    dsItemICMS_VBCSTRET: TBCDField;
    dsItemICMS_VICMSSTRET: TBCDField;
    dsItemICMS_MOTDESICMS: TStringField;
    dsItemICMS_PCREDSN: TCurrencyField;
    dsItemICMS_VCREDICMSSN: TBCDField;
    dsItemICMS_VBCSTDEST: TBCDField;
    dsItemICMS_VICMSSTDEST: TBCDField;
    dsItemICMS_VICMSDESON: TBCDField;
    dsItemICMS_VICMSOP: TBCDField;
    dsItemICMS_PDIF: TCurrencyField;
    dsItemICMS_VICMSDIF: TBCDField;
    dsItemICMS_VBCFCP: TBCDField;
    dsItemICMS_PFCP: TCurrencyField;
    dsItemICMS_VFCP: TBCDField;
    dsItemICMS_VBCFCPST: TBCDField;
    dsItemICMS_PFCPST: TCurrencyField;
    dsItemICMS_VFCPST: TBCDField;
    dsItemICMS_VBCFCPSTRET: TBCDField;
    dsItemICMS_PFCPSTRET: TCurrencyField;
    dsItemICMS_VFCPSTRET: TBCDField;
    dsItemICMS_PREDBCEFET: TCurrencyField;
    dsItemICMS_VBCEFET: TBCDField;
    dsItemICMS_PST: TCurrencyField;
    dsItemICMS_PICMSEFET: TCurrencyField;
    dsItemICMS_VICMSEFET: TBCDField;
    dsItemDESCPROMOCIONAL: TCurrencyField;
    dsItemDESCNORMAL: TCurrencyField;
    dsItemPROD_ESPECIF: TStringField;
    dsItemCOMB_PRODANP: TStringField;
    dsItemCOMB_CODIF: TStringField;
    dsItemCOMB_QTEMP: TBCDField;
    dsItemCOMB_UFCONS: TStringField;
    dsItemCOMB_CIDE_QBCPROD: TBCDField;
    dsItemCOMB_CIDE_ALIQPROD: TBCDField;
    dsItemCOMB_CIDE_VCIDE: TBCDField;
    dsItemID_HISTORICO: TIntegerField;
    dsPagarID_NOTAENTRADA: TIntegerField;
    dsPagarNFAT: TIntegerField;
    dsPagarVDESC: TBCDField;
    dsPagarVJUROS: TBCDField;
    dsPagarVDUP: TBCDField;
    dsPagarNDUP: TIntegerField;
    dsPagarDVENC: TDateField;
    dsPagarINDPAG: TStringField;
    dsPagarTPAG: TStringField;
    dsPagarBAIXA_DATA: TDateField;
    dsPagarBAIXA_VALOR: TBCDField;
    dsPagarBAIXA_USUARIO: TStringField;
    dsPagarID_HISTORICO: TIntegerField;
    dsPagarID_CONTA: TStringField;
    dsPagarID_CAIXA: TIntegerField;
    DBComboBox3: TDBComboBox;
    DBComboBox5: TDBComboBox;
    Label33: TLabel;
    cdsLOG: TMemoField;
    cdsMODFRETE: TStringField;
    cdsTR_ANTT: TStringField;
    pnlFundoGrid: TPanel;
    pnlRightGrid: TPanel;
    pnlFundoGrid1: TPanel;
    pnlSubTotal: TPanel;
    pnlGrid: TPanel;
    pnlAlocaGrid: TPanel;
    dbgrdItens: TDBGrid;
    Label4: TLabel;
    lblSubTotal: TLabel;
    pnlExcItem: TPanel;
    imgExcItem: TImage;
    btnEscItem: TSpeedButton;
    actExcItem: TAction;
    pnlEditarItem: TPanel;
    imgEditarItem: TImage;
    btnEditarItem: TSpeedButton;
    actEditarItem: TAction;
    cdsFORNECEDOR: TStringField;
    dsItemPRODUTO_SERVICO: TStringField;
    dsItemQUANTIDADE: TStringField;
    dsPagarCHEQUE_NUMERO: TIntegerField;
    dsPagarID_PAGTO: TIntegerField;
    dsPagarFORMA: TStringField;
    dsItemSUBTOTAL: TBCDField;
    dsItemTOTAL: TBCDField;
    Label51: TLabel;
    DBEdit4: TDBEdit;
    edtVUn: TEdit;
    tsAnotacao: TTabSheet;
    pnlAnotacao: TPanel;
    DBMemo1: TDBMemo;
    dsItemICMS_CST: TStringField;
    dsItemICMS_ORIGEM: TStringField;
    actAddFornecedor: TAction;
    dsItemQTDE_INFORMADA: TBCDField;
    dsItemUNITARIO: TFMTBCDField;
    dsItemPRECO_CUSTO: TFMTBCDField;
    dsItemQTDE: TBCDField;
    Label2: TLabel;
    lblNumNF: TLabel;
    cdsHISTORICO: TStringField;
    dbpsqsClass: TDBPesquisa;
    procedure actAddItemExecute(Sender: TObject);
    procedure actExcluirDuplicatasExecute(Sender: TObject);
    procedure actGerarDuplicatasExecute(Sender: TObject);
    procedure DBPesquisa2edtCampoChange(Sender: TObject);
    procedure DBPesquisa2Pesquisa(Sender: TObject; var Retorno: string);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure DBEdit2Change(Sender: TObject);
    procedure edpsqsProdutoPesquisa(Sender: TObject; var Retorno: string);
    procedure edpsqsProdutoedtCampoChange(Sender: TObject);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure actMaisExecute(Sender: TObject);
    procedure actMenosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtQtdeClick(Sender: TObject);
    procedure edtQtdeExit(Sender: TObject);
    procedure actExcItemExecute(Sender: TObject);
    procedure cbbFormaPagtoDropDown(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbbFormaPagtoChange(Sender: TObject);
    procedure edtPagValorKeyPress(Sender: TObject; var Key: Char);
    procedure edtPagValorExit(Sender: TObject);
    procedure actEditarItemExecute(Sender: TObject);
    procedure dtpEmissaoChange(Sender: TObject);
    procedure dsItemBeforeDelete(DataSet: TDataSet);
    procedure cdsVDESCChange(Sender: TField);
    procedure edtVUnClick(Sender: TObject);
    procedure edtVUnExit(Sender: TObject);
    procedure edtVUnChange(Sender: TObject);
    procedure edtVUnKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrdPagtoDblClick(Sender: TObject);
    procedure dbgrdItensDblClick(Sender: TObject);
    procedure actAddFornecedorExecute(Sender: TObject);
    procedure cdsAfterCancel(DataSet: TDataSet);
    procedure btnUMClick(Sender: TObject);
    procedure cbbUMClick(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure dbpsqsClassPesquisa(Sender: TObject; var Retorno: string);
    procedure cdsBeforePost(DataSet: TDataSet);
  private
    FvUnitario: Double;
    FQtde: Double;
    FSaldoAPagar: Currency;
    FSubTotal: Currency;
    fExibirMens: Boolean;
    procedure AtualizaFornecedor(aID: string);
    procedure SetItem(aID:string);
    procedure SetQtde(const Value: Double);
    procedure setvUnitario(const Value: Double);
    procedure AjustaColGridItens();
    procedure AjustaColGridPagar();
    procedure CarregaFormas();
    procedure CarregaParcelamentos(aID:string);
    procedure SetSaldoAPagar(const Value: Currency);
    procedure SetSubTotal(const Value: Currency);
    procedure AtualizaSaldoaPagar();
    procedure AtualizaSubTotalProd();
    procedure EstadoForm();
    procedure LimpaForm();
    procedure LoadUnidades(aCodigo:string);

    function VNF(): Currency;
    function Validar(): Boolean;
    function PrCustoAtual(aIDProd: integer): Currency;
    procedure OrdenaItens();
  public
    var
      Pagamento, Parcelamento, Temp: TClientDataSet;
      property
      vUnitario: Double read FvUnitario write setvUnitario;
      property
      Qtde: Double read FQtde write SetQtde;
      property
      SubTotal: Currency read FSubTotal write SetSubTotal;
      property
      SaldoAPagar: Currency read FSaldoAPagar write SetSaldoAPagar;
      property
      ExibirMens:Boolean read fExibirMens;

    procedure Novo(); override;
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
    procedure Cancelar(); override;
    procedure Editar(); override;
    procedure MontaSQL(aID: integer);
  end;

var
  Frm_NF_Entrada: TFrm_NF_Entrada;

implementation

{$R *.dfm}

uses UDM, UConsulta, u_Mensagem, UFuncoes, ACBrUtil,
       uFrm_NFEnt_AltDupl, uFrm_Item, UFrm_Fornecedor;

procedure TFrm_NF_Entrada.actAddFornecedorExecute(Sender: TObject);
var
  lID: Integer;
  lRetorno : RetForn;
begin
  inherited;
  if (cds.State in [dsInsert, dsEdit]) then
  begin
    lRetorno := TFrm_Fornecedor.Execute;
    if (lRetorno.ID > 0) then
    begin
      DBPesquisa2.Campo.Text := lRetorno.ID.ToString;
      DBPesquisa2.Mostrar.Text := lRetorno.Razao;
    end;
  end;
end;

procedure TFrm_NF_Entrada.actAddItemExecute(Sender: TObject);
var
  lQtde: Extended;
  lConv_UM : string;
  lPrCustoCalc : Currency;
begin
  inherited;
  lPrCustoCalc := 0;
  edtQtde.OnExit(Self);
  edtVUn.OnExit(Self);

  if (edpsqsProduto.Mostrar.Text = 'Valor digitado não encontrado...') or
     (vUnitario = 0) then
  begin
    TMensagem.Informacao('Item com preço 0,00 / não encontrado.');
    edtVUn.SelectAll;
    Abort;
  end;

  //Verifica se escolheu unidade fragmentada
  if (cbbUM.ItemIndex > 0) then
  begin                          //escolheu und fragmentada
    lQtde := Qtde;
    lPrCustoCalc := RoundABNT((FvUnitario*DM.GetFloat('select coalesce(CONV_QTDE,0)CONV_QTDE from PRODUTO p where p.codigo= '+edpsqsProduto.Campo.Text,'conv_qtde')),-2);
  end
  else
  begin
    lQtde := QtdeConvertida(StrToIntDef(edpsqsProduto.Campo.Text,0),lblUM.Caption,Qtde);
    lPrCustoCalc := RoundABNT((FvUnitario),-2);
  end;

  //Verificando se há conversao de UM
//  lQtde := QtdeConvertida(StrToIntDef(edpsqsProduto.Campo.Text,0),lblUM.Caption,Qtde);
//  lConv_UM := IfThen((lQtde<>Qtde),'S','N');

  if dsItem.Locate('ID_PRODUTO',edpsqsProduto.Campo.Text,[]) then
  begin
    dsItem.Edit;
    //usada na trigger update estoque
    dsItem.FieldByName('QTDE').AsFloat := dsItem.FieldByName('quantidade').AsFloat +
                                                        lQtde;
    //o que o usuario visualiza no grid
    dsItem.FieldByName('QTDE_INFORMADA').AsFloat := dsItem.FieldByName('QTDE_INFORMADA').AsFloat +
                                                        Qtde;
    //o que o usuario visualiza no grid + Unidade medida
    dsItem.FieldByName('QUANTIDADE').AsString := FormatFloat('#,##0.000',dsItem.FieldByName('QTDE_INFORMADA').AsFloat)+ ' '+lblUM.Caption;
  end
  else
  begin
    dsItem.Append;
    dsItem.FieldByName('ID_NOTAENTRADA').AsInteger := cds.FieldByName('ID').AsInteger;
    dsItem.FieldByName('ORDEM').AsInteger := dsItem.RecordCount+1;
    dsItem.FieldByName('ID_PRODUTO').AsInteger := StrToInt(edpsqsProduto.Campo.Text);
    dsItem.FieldByName('PRODUTO_SERVICO').AsString := edpsqsProduto.Mostrar.Text;
    dsItem.FieldByName('QTDE').AsFloat := lQtde;
    dsItem.FieldByName('QTDE_INFORMADA').AsFloat := Qtde;
    dsItem.FieldByName('QUANTIDADE').AsString := FormatFloat('#,##0.0000',Qtde)+ ' '+lblUM.Caption;
    dsItem.FieldByName('UNITARIO').AsFloat := FvUnitario;
    dsItem.FieldByName('VALORDESCONTO').AsCurrency := 0;
    dsItem.FieldByName('UNIDADE').AsString := lblUM.Caption;
//    if (PrCustoAtual = ) then

//    dsItem.FieldByName('PRECO_CUSTO').AsCurrency := ifthen;
  end;
  dsItem.FieldByName('SUBTOTAL').AsCurrency :=
     (dsItem.FieldByName('QTDE_INFORMADA').AsFloat * vUnitario);
  dsItem.FieldByName('TOTAL').AsCurrency :=
     (dsItem.FieldByName('QTDE_INFORMADA').AsFloat * vUnitario) - dsItem.FieldByName('VALORDESCONTO').AsCurrency;

//  if (lConv_UM = 'S') then
//    lPrCustoCalc := RoundABNT(dsItem.FieldByName('SUBTOTAL').AsCurrency / lQtde,-2)
//  else
//    lPrCustoCalc := RoundABNT(FvUnitario,-2);

  //Verificacao para atualizar ou nao preco de custo atual e insercao de historico preco custo(trigger)
  if (lPrCustoCalc <> PrCustoAtual(dsItem.FieldByName('ID_PRODUTO').AsInteger))then
    dsItem.FieldByName('PRECO_CUSTO').AsCurrency := lPrCustoCalc
  else
    dsItem.FieldByName('PRECO_CUSTO').AsCurrency := 0;

//  dsItem.SaveToFile('c:\temp\item.cds',dfBinary);
  dsItem.Post;
  AjustaColGridItens;
  SubTotal := FSubTotal+dsItem.FieldByName('TOTAL').AsCurrency;
  cds.fieldByName('TOTPRODUTO').ascurrency := SubTotal;
  cds.FieldByName('TOTNOTA').AsCurrency := VNF;
  Qtde := 1;
  vUnitario := 0;
  lblUM.Visible := False;
  btnUM.Enabled := False;
  edpsqsProduto.Campo.Text := '';
  edpsqsProduto.Mostrar.Text := '';
  edpsqsProduto.Campo.SetFocus;
end;

procedure TFrm_NF_Entrada.actEditarItemExecute(Sender: TObject);
var
  lItem: TFrm_Item;
begin
  inherited;
  if dsItem.IsEmpty then
    Exit;

  Editar;
  lItem := TFrm_Item.Create(Self);
  try
    lItem.VlFinal := dsItem.FieldByName('total').AsCurrency;
    lItem.ShowModal;
  finally
    FreeAndNil(lItem);
  end;
end;

procedure TFrm_NF_Entrada.actExcItemExecute(Sender: TObject);
begin
  inherited;
  if dsItem.IsEmpty then
    Exit;

  if not dbgrdItens.Columns.Grid.Focused then
  begin
    TMensagem.Informacao('Selecione o item a ser excluso.');
    Exit;
  end;

  dsItem.Delete;
  if dsItem.IsEmpty then
    SubTotal := 0
  else
    AtualizaSubTotalProd;
  cds.FieldByName('TOTPRODUTO').AsCurrency := SubTotal;
  cds.FieldByName('TOTNOTA').AsCurrency := VNF;

  fExibirMens := False;
  OrdenaItens;
  Gravar;
end;

procedure TFrm_NF_Entrada.actExcluirDuplicatasExecute(Sender: TObject);
begin
  inherited;
  if not dsPagar.IsEmpty then
    dsPagar.Delete;
  AtualizaSaldoaPagar;
end;

procedure TFrm_NF_Entrada.actGerarDuplicatasExecute(Sender: TObject);
var
  I, lNParc: Integer;
  lVlCentavos, lVlParcela, lVlPago: Currency;
  lVencto: TDate;
begin
  inherited;
  if (cbbFormaPagto.ItemIndex < 1) then
  begin
    TMensagem.Informacao('Informe a condição de pagamento desejada.');
    Exit;
  end;

  lVlPago := RoundABNT(GetValor(edtPagValor.Text),-2);
  edtPagValor.OnExit(Self);

  if ((lVlPago > 0) and (Parcelamento.Locate('descri', cbbParcelamento.Text, []))) then
  begin
    lNParc := Parcelamento.FieldByName('NUM_PARCELAS').AsInteger;
    lVlParcela := Arredondar((lVlPago / lNParc), 2);
    lVlCentavos := (lVlPago - (lVlParcela * lNParc));

    for I := 1 to lNParc do
    begin
      dsPagar.Append;
      dsPagar.FieldByName('ID_NOTAENTRADA').AsInteger := cds.FieldByName('ID').AsInteger;
      dsPagar.FieldByName('NDUP').AsInteger := dsPagar.RecordCount+1;
      dsPagar.FieldByName('FORMA').AsString := Parcelamento.FieldByName('descricao').AsString;
      if (I = 1) then
        dsPagar.FieldByName('DVENC').AsDateTime := IncDay(Date, Parcelamento.FieldByName('PRIMEIRA_PARC').AsInteger)
      else
        dsPagar.FieldByName('DVENC').AsDateTime := IncDay(lVencto, Parcelamento.FieldByName('INTV_PARCELAS').AsInteger);
      lVencto := dsPagar.FieldByName('DVENC').AsDateTime;
      dsPagar.FieldByName('VDUP').AsCurrency := lVlParcela + lVlCentavos;
      lVlCentavos := 0;
      dsPagar.Post;
    end;
  end;
  AtualizaSaldoaPagar;
  AjustaColGridPagar;
end;

procedure TFrm_NF_Entrada.actGravarExecute(Sender: TObject);
begin
  fExibirMens := True;
  inherited;

end;

procedure TFrm_NF_Entrada.actMaisExecute(Sender: TObject);
begin
  inherited;
  Qtde := FQtde+1;
end;

procedure TFrm_NF_Entrada.actMenosExecute(Sender: TObject);
begin
  inherited;
  if Qtde = 1 then
    Qtde := 1
  else
    Qtde := FQtde - 1;
end;

procedure TFrm_NF_Entrada.AjustaColGridItens;
begin
  dbgrdItens.Columns[0].Width := 207;
  dbgrdItens.Columns[1].Width := 90;
  dbgrdItens.Columns[2].Width := 90;
  dbgrdItens.Columns[3].Width := 90;
  dbgrdItens.Columns[4].Width := 90;
end;

procedure TFrm_NF_Entrada.AjustaColGridPagar;
begin
  dbgrdPagto.Columns[0].Width := 190;
  dbgrdPagto.Columns[1].Width := 100;
  dbgrdPagto.Columns[2].Width := 90;
end;

procedure TFrm_NF_Entrada.AtualizaFornecedor(aID: string);
const
  SQL = 'select a.FANTASIA,a.CPF_CNPJ,a.RG_INSC,a.END_CEP,'+
        'a.END_ENDERECO,a.END_NUMERO,a.END_BAIRRO,a.END_CIDADE,'+
        'a.END_COMPLEMENTO,a.END_UF '+
        'from FABRICANTE a where a.CODIGO = %s';
begin
  edtFantasia.Text := EmptyStr;
  edtCPFCNPJ.Text := EmptyStr;
  edtRGINSC.Text := EmptyStr;
  edtCEP.Text := EmptyStr;
  edtUF.Text := EmptyStr;
  edtCidade.Text := EmptyStr;
  edtEndereco.Text := EmptyStr;
  edtNumero.Text := EmptyStr;
  edtBairro.Text := EmptyStr;
  edtComplemento.Text := EmptyStr;

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[aID]));
  if (not DM.dsConsulta.IsEmpty) then
  begin
    edtFantasia.Text := DM.dsConsulta.FieldByName('FANTASIA').AsString;
    edtCPFCNPJ.Text := DM.dsConsulta.FieldByName('CPF_CNPJ').AsString;
    edtRGINSC.Text := DM.dsConsulta.FieldByName('RG_INSC').AsString;
    edtCEP.Text := DM.dsConsulta.FieldByName('END_CEP').AsString;
    edtUF.Text := DM.dsConsulta.FieldByName('END_UF').AsString;
    edtCidade.Text := DM.dsConsulta.FieldByName('END_CIDADE').AsString;
    edtEndereco.Text := DM.dsConsulta.FieldByName('END_ENDERECO').AsString;
    edtNumero.Text := DM.dsConsulta.FieldByName('END_NUMERO').AsString;
    edtBairro.Text := DM.dsConsulta.FieldByName('END_BAIRRO').AsString;
    edtComplemento.Text := DM.dsConsulta.FieldByName('END_COMPLEMENTO').AsString;
  end;

end;

procedure TFrm_NF_Entrada.AtualizaSaldoaPagar;
var
  lTotPago, lValor: Currency;
begin
  lTotPago := 0;
  lValor := 0;
  if ( (dsPagar.IsEmpty) or (dsItem.IsEmpty) ) then
    SaldoAPagar := VNF
  else
  begin
    dsPagar.First;
    while not dsPagar.Eof do
    begin
      lTotPago := lTotPago+dsPagar.FieldByName('VDUP').AsCurrency;
      dsPagar.Next;
    end;
    lValor := (VNF - lTotPago);
    if (lValor < 0) then
      SaldoAPagar := 0
    else
      SaldoAPagar := lValor;
  end;
end;

procedure TFrm_NF_Entrada.AtualizaSubTotalProd;
var
  lTotal: Currency;
begin
  lTotal := 0;
  if dsItem.IsEmpty then
    SubTotal := 0
  else
  begin
    dsItem.DisableControls;
    try
      dsItem.First;
      while not dsItem.Eof do
      begin
        lTotal := lTotal + dsItem.FieldByName('TOTAL').AsCurrency;
        dsItem.Next;
      end;
      dsItem.First;
    finally
      dsItem.EnableControls;
    end;
    SubTotal := lTotal;
  end;
end;

procedure TFrm_NF_Entrada.btnUMClick(Sender: TObject);
begin
  inherited;
  LoadUnidades(edpsqsProduto.Campo.Text);
  cbbUM.DroppedDown := True;
  cbbUM.Visible := True;
end;

procedure TFrm_NF_Entrada.cbbUMClick(Sender: TObject);
begin
  inherited;
  lblUM.Caption := cbbUM.Text;
  edtVUn.Text := FormatCurr('#,##0.00',DM.dsConsulta2.FieldByName('preco'+cbbUM.ItemIndex.ToString).AsCurrency);
  vUnitario := DM.dsConsulta2.FieldByName('preco'+cbbUM.ItemIndex.ToString).AsCurrency;
  cbbUM.Visible := False;
end;

procedure TFrm_NF_Entrada.Cancelar;
begin
  inherited;

end;

procedure TFrm_NF_Entrada.CarregaFormas;
const
  SQL = 'SELECT r.ID_PAGTOFORMA,r.DESCRI ' +
        'FROM PAGTO_FORMA r where r.ATIVO = ''S'' ';
begin
  Pagamento := TClientDataSet.Create(nil);
  Pagamento.Data := DM.LerDataSet(SQL);
  if (not Pagamento.IsEmpty) then
  begin
    cbbFormaPagto.Items.Clear;
    cbbFormaPagto.Items.Add('Selecione');
    Pagamento.First;
    while not Pagamento.Eof do
    begin
      cbbFormaPagto.Items.Add(Pagamento.FieldByName('descri').AsString);
      Pagamento.Next;
    end;
    cbbFormaPagto.ItemIndex := 0;
  end;
end;

procedure TFrm_NF_Entrada.CarregaParcelamentos(aID:string);
const
  SQL = 'SELECT r.ID,r.DESCRI descri,r.NUM_PARCELAS,r.INTV_PARCELAS,r.PRIMEIRA_PARC,'+
        'r.ACRESCIMO,b.DESCRI||'' (''||r.DESCRI||'')'' DESCRICAO FROM PAGTO_PARCELAMENTO r '+
        'left outer join PAGTO_FORMA b on (b.ID_PAGTOFORMA=r.ID_PAGTOFORMA) '+
        'where r.ID_PAGTOFORMA = %s';
begin
  Parcelamento := TClientDataSet.Create(nil);
  Parcelamento.Data := DM.LerDataSet(Format(SQL,[aID]));
  if (not Parcelamento.IsEmpty) then
  begin
    cbbParcelamento.Items.Clear;
    Parcelamento.First;
    while not Parcelamento.Eof do
    begin
      cbbParcelamento.Items.Add(Parcelamento.FieldByName('descri').AsString);
      Parcelamento.Next;
    end;
    cbbParcelamento.ItemIndex := 0;
  end;
end;

procedure TFrm_NF_Entrada.cbbFormaPagtoChange(Sender: TObject);
begin
  inherited;
  if (cbbFormaPagto.ItemIndex > 0) then
  begin
    if Pagamento.Locate('descri', cbbFormaPagto.Text, []) then
      CarregaParcelamentos(Pagamento.FieldByName('ID_PAGTOFORMA').AsString);
  end;
end;

procedure TFrm_NF_Entrada.cbbFormaPagtoDropDown(Sender: TObject);
begin
  inherited;
  CarregaFormas;
end;

procedure TFrm_NF_Entrada.cdsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  dsItem.CancelUpdates;
  dsPagar.CancelUpdates;
end;

procedure TFrm_NF_Entrada.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds.FieldByName('ID').AsInteger := 0;
  cds.FieldByName('TIPO_NOTA').AsString := 'NF-E';
  cds.FieldByName('TIPO').AsString := 'SAIDA';
  cds.FieldByName('ID_USUARIO').AsInteger := DM.Usuario.ID;

  dtpEmissao.Date := Date;
  cds.FieldByName('EMISSAO').AsDateTime := Date;
  cds.FieldByName('ENTRADA').AsDateTime := Date;
  cds.FieldByName('NAT_OPERACAO').AsString := 'COMPRA DENTRO DO ESTADO';
  dbmmoLog.Lines.Add('Data: '+FormatDateTime('dd/mm/yyyy',date));
  dbmmoLog.Lines.Add('Horario: '+FormatDateTime('hh:mm:ss',Now));
  dbmmoLog.Lines.Add('Usuário: '+DM.Usuario.login);

  //Aba totais
  cds.FieldByName('TOTPRODUTO').AsCurrency := 0;
  cds.FieldByName('VDESC').AsCurrency := 0;
  cds.FieldByName('TOTNOTA').AsCurrency := 0;
  cds.FieldByName('FRETE').AsCurrency := 0;
  cds.FieldByName('SEGURO').AsCurrency := 0;
  cds.FieldByName('OUTRAS').AsCurrency := 0;
  cds.FieldByName('TOT_IPI').AsCurrency := 0;
  cds.FieldByName('VPIS').AsCurrency := 0;
  cds.FieldByName('VCOFINS').AsCurrency := 0;
  cds.FieldByName('BASEICMS').AsCurrency := 0;
  cds.FieldByName('VALORICMS').AsCurrency := 0;
  cds.FieldByName('VBCST').AsCurrency := 0;
  cds.FieldByName('VST').AsCurrency := 0;
end;

procedure TFrm_NF_Entrada.cdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  cds.FieldByName('EMISSAO').AsDateTime := dtpEmissao.Date;
end;

procedure TFrm_NF_Entrada.cdsVDESCChange(Sender: TField);
begin
  inherited;
  cds.FieldByName('TOTNOTA').AsCurrency := VNF;
  AtualizaSaldoaPagar;
end;

procedure TFrm_NF_Entrada.DBEdit2Change(Sender: TObject);
var
  lValue: integer;
begin
  inherited;
  if not TryStrToInt(DBEdit2.Text,lValue) then
    lValue := 0;
  pnlNumNF.Caption := FormatFloat('#,##0',lValue);
end;

procedure TFrm_NF_Entrada.dbgrdItensDblClick(Sender: TObject);
begin
  inherited;
  actEditarItem.Execute;
end;

procedure TFrm_NF_Entrada.dbgrdPagtoDblClick(Sender: TObject);
  procedure UpDuplicata();
  begin
    if not Assigned(Frm_NFEnt_AltDupl) then
      Frm_NFEnt_AltDupl := TFrm_NFEnt_AltDupl.Create(Self);
    try
      with Frm_NFEnt_AltDupl do
      begin
        ID := dsPagar.FieldByName('ID_NOTAENTRADA').AsInteger;
        Dup := dsPagar.FieldByName('NDUP').AsString;
        Forma := dsPagar.FieldByName('FORMA').AsString;
        Vencto := dsPagar.FieldByName('DVENC').AsDateTime;
        Valor := dsPagar.FieldByName('VDUP').AsCurrency;
        ShowModal;

        if Retorno = 'sucesso' then
        begin
          MontaSQL(cds.FieldByName('ID').AsInteger);
        end
        else if Retorno = 'cancel' then
        begin
        //
        end
        else
          TMensagem.Erro('Não foi possivel atualizar a duplicata.' + #13#10 + Retorno);

      end;
    finally
      FreeAndNil(Frm_NFEnt_AltDupl);
    end;
  end;
begin
  inherited;
  if (cds.State in [dsInsert,dsEdit]) then
  begin
    if TMensagem.Pergunta('Necessário Salvar a N.F. antes de quaisquer alteração na duplicata. Deseja Salvar a N.F. ?') then
    begin
      fExibirMens := False;
      Gravar;
      UpDuplicata;
    end;
  end
  else
  begin
    UpDuplicata;
  end;
end;

procedure TFrm_NF_Entrada.DBPesquisa2edtCampoChange(Sender: TObject);
begin
  inherited;
  if (DBPesquisa2.Campo.Text <> '') and ( (StrToInt(DBPesquisa2.Campo.Text) > 0)) then
  begin
    AtualizaFornecedor(DBPesquisa2.Campo.Text);
  end;
end;

procedure TFrm_NF_Entrada.DBPesquisa2Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Fornecedor.ToString;
end;

procedure TFrm_NF_Entrada.dbpsqsClassPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Historico().ToString;
end;

procedure TFrm_NF_Entrada.dsItemBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  EstadoForm();
end;

procedure TFrm_NF_Entrada.dtpEmissaoChange(Sender: TObject);
begin
  inherited;
  EstadoForm();
end;

procedure TFrm_NF_Entrada.Editar;
begin
  inherited;

end;

procedure TFrm_NF_Entrada.edpsqsProdutoedtCampoChange(Sender: TObject);
begin
  inherited;
  if (edpsqsProduto.Campo.Text <> '') and ( (StrToInt(edpsqsProduto.Campo.Text) > 0)) then
  begin
    SetItem(edpsqsProduto.Campo.Text);
  end
  else
  begin
    lblUM.Visible := False;
    Qtde := 1;
    edtVUn.Text := '0,00';
    lblTotItem.Caption := '0,00';
  end;
end;

procedure TFrm_NF_Entrada.edpsqsProdutoPesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoProduto;
begin
  inherited;
  aRet := Consulta.Produto(EmptyStr,'Consulta de Produtos/Matéria-Prima');
  if aRet.iCodigo > 0 then
  begin
    Retorno := IntToStr(aRet.iCodigo);
  end;
end;

procedure TFrm_NF_Entrada.edtPagValorExit(Sender: TObject);
var
  lValue: Double;
begin
  inherited;
  if (not TryStrToFloat(edtPagValor.Text,lValue)) then
    lValue := FSaldoAPagar;
  edtPagValor.Text := FormatCurr('#,##0.00',lValue);
end;

procedure TFrm_NF_Entrada.edtPagValorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
    actGerarDuplicatas.Execute;

  if not (Key in ['0'..'9', #8, ',', #13]) then
    Key := #0;
end;

procedure TFrm_NF_Entrada.edtQtdeClick(Sender: TObject);
begin
  inherited;
  edtQtde.SelectAll;
end;

procedure TFrm_NF_Entrada.edtQtdeExit(Sender: TObject);
var
  lValue: Double;
begin
  inherited;
  if (not TryStrToFloat(StringReplace(edtQtde.Text,'.','',[rfReplaceAll]),lValue)) then
    lValue := 1;
  Qtde := lValue;
end;

procedure TFrm_NF_Entrada.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', #8,',', #13]) then
    Key := #0;
end;

procedure TFrm_NF_Entrada.edtVUnChange(Sender: TObject);
var
  lValue: Double;
begin
  inherited;
  if (not TryStrToFloat(edtVUn.Text, lValue)) then
    lValue := 0;
  vUnitario := lValue;
  edtVUn.SelStart := Length(edtVUn.Text);
end;

procedure TFrm_NF_Entrada.edtVUnClick(Sender: TObject);
begin
  inherited;
  edtVUn.SelectAll;
end;

procedure TFrm_NF_Entrada.edtVUnExit(Sender: TObject);
var
  lValue: Double;
begin
  inherited;
//  if (not TryStrToCurr(edtVUn.Text, lValue)) then
//    lValue := 0;
//  vUnitario := lValue;
end;

procedure TFrm_NF_Entrada.edtVUnKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
    actAddItem.Execute;

  if not (Key in ['0'..'9', #8, ',', #13]) then
    Key := #0;
end;

procedure TFrm_NF_Entrada.EstadoForm;
begin
  if not (cds.State in [dsInsert,dsEdit]) then
    cds.Edit;
end;

procedure TFrm_NF_Entrada.Excluir;
begin
  try
    inherited;
    if cds.ChangeCount > 0 then
    begin
      DM.SMNotaClient.setNotaEntrada(DM.BancoDados, cds.FieldByName('ID').AsInteger, cds.Delta);
      cds.Close;
      cds.Data := DM.SMNotaClient.getNotaEntrada(DM.BancoDados, -1);
    end;
    LimpaForm();
    TMensagem.Informacao('Exclusão efetuada com sucesso.');
  except
    TMensagem.Erro('', 'Exclusão não efetuada.');
  end;
end;

procedure TFrm_NF_Entrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(Parcelamento);
  FreeAndNil(Pagamento);
end;

procedure TFrm_NF_Entrada.FormCreate(Sender: TObject);
begin
  inherited;
  edpsqsProduto.Left := -2;
  cds.Close;
  cds.Data := DM.SMNotaClient.getNotaEntrada(DM.BancoDados, -1);
  SubTotal := 0;
  pgc1.TabIndex := 0;
  dtpEmissao.Date := Date;
end;

procedure TFrm_NF_Entrada.Gravar();
var
  lRetorno: OleVariant;
begin
  if not Validar then
    Exit ;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    try
      lRetorno := DM.SMNotaClient.setNotaEntrada(DM.BancoDados, cds.FieldByName('ID').AsInteger, cds.Delta);
      cds.Close;
      cds.Data := lRetorno;
      if ExibirMens then
      begin
        TMensagem.Informacao('Gravação efetuada com sucesso');
        pgc1.TabIndex := 0;
      end;
    except
      TMensagem.Erro('Não foi possível gravar a N.F. Tente novamente.');
    end;
  end;
end;

procedure TFrm_NF_Entrada.LimpaForm;
begin
  AtualizaFornecedor('-1');
  dtpEmissao.Date := Date;
  cbbFormaPagto.Items.Clear;
  cbbParcelamento.Items.Clear;
  SubTotal := 0;
end;

procedure TFrm_NF_Entrada.LoadUnidades(aCodigo:string);
const
  SQL = 'SELECT coalesce(u.SIGLA,'''') SIGLA1,coalesce(u2.SIGLA,'''') SIGLA2,'+
        'coalesce(p.PRECO_CUSTO,0) preco0,coalesce(p.PRECO_CUSTO/p.CONV_QTDE,0) preco1 '+
        'FROM PRODUTO p '+
        'LEFT JOIN UNIDADE u ON (u.CODIGO=p.COD_UNIDADE) '+
        'LEFT JOIN UNIDADE u2 ON (u2.CODIGO=p.CONV_UNIDADE) '+
        'WHERE p.CODIGO = %s';
var
  i: Integer;
begin
  cbbUM.Items.Clear;
  if aCodigo = '' then
    Exit;

  DM.dsConsulta2.Close;
  DM.dsConsulta2.Data := DM.LerDataSet(Format(SQL,[aCodigo]));
  if (not DM.dsConsulta2.IsEmpty) then
  begin
    for i := 1 to 2 do
    begin
      if (DM.dsConsulta2.FieldByName('SIGLA' + i.ToString).AsString <> '') then
        cbbUM.Items.Add(DM.dsConsulta2.FieldByName('SIGLA' + i.ToString).AsString);
    end;
  end;
  if (cbbUM.Items.Count > -1) then
    cbbUM.ItemIndex := 0
  else
    cbbUM.Visible := False;

end;

procedure TFrm_NF_Entrada.localizar;
begin
  inherited;
  MontaSQL(Consulta.NF_ENTRADA);
end;

procedure TFrm_NF_Entrada.MontaSQL(aID: integer);
begin
  if (aID > 0) then
  begin
    cds.Close;
    cds.Data := DM.SMNotaClient.getNotaEntrada(DM.BancoDados, aID);

    if (not cds.IsEmpty) then
    begin
//      DBPesquisa2.Campo.OnChange(Self);
      AtualizaFornecedor(cds.FieldByName('CODFOR').AsString);
      AtualizaSubTotalProd;
      dtpEmissao.Date := cds.FieldByName('EMISSAO').AsDateTime;
    end;
  end;
end;

procedure TFrm_NF_Entrada.Novo;
begin
  inherited;
  LimpaForm();
  dtpEmissao.SetFocus;
end;

procedure TFrm_NF_Entrada.OrdenaItens;
var
  lOrdem: Integer;
begin
  if dsItem.IsEmpty then
    Exit;

  dsItem.DisableControls;
  try
    dsItem.Last;
    lOrdem := 1;
    while not dsItem.Bof do
    begin
      dsItem.Edit;
      dsItem.FieldByName('ORDEM').AsInteger := lOrdem;
      dsItem.Post;
      Inc(lOrdem);
      dsItem.Prior;
    end;
  finally
    dsItem.EnableControls;
    dsItem.First;
  end;
end;

function TFrm_NF_Entrada.PrCustoAtual(aIDProd: integer): Currency;
const
  SQL = 'select coalesce(a.PRECO_CUSTO,0) custo from PRODUTO a where a.CODIGO = %s';
begin
  Result := 0;

  Temp := TClientDataSet.Create(nil);
  try
    Temp.Close;
    Temp.Data := DM.LerDataSet(Format(SQL, [aIDProd.ToString]));

    if (not Temp.IsEmpty) then
    begin
      Result := Temp.FieldByName('custo').AsCurrency;
    end;
  finally
    FreeAndNil(Temp);
  end;
end;

procedure TFrm_NF_Entrada.SetItem(aID: string);
const
  SQL = 'select a.CODIGO,a.nome,cast(coalesce(a.PRECO_CUSTO,0) as numeric(10,2))preco,'+
        'b.SIGLA from PRODUTO a '+
        'left outer join UNIDADE b on (b.CODIGO = a.COD_UNIDADE) '+
        'where a.CODIGO = %s';
begin
//  Qtde := 1;
  vUnitario := 0;
  cbbUM.ItemIndex := -1;

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[aID]));
  lblUM.Visible := not DM.dsConsulta.IsEmpty;
  if (not DM.dsConsulta.IsEmpty) then
  begin
    btnUM.Enabled := True;
    lblUM.Caption := DM.dsConsulta.FieldByName('sigla').AsString;
    edtVUn.Text := FormatCurr('#,##0.00',DM.dsConsulta.FieldByName('preco').AsCurrency);
    vUnitario := DM.dsConsulta.FieldByName('preco').AsCurrency;
//    Qtde := StrToFloatDef(edtQtde.Text,1);
  end;
end;

procedure TFrm_NF_Entrada.SetQtde(const Value: Double);
begin
  FQtde := Value;
  edtQtde.Text := FormatFloat('#,##0.0000',Value);
  lblTotItem.Caption := FormatCurr('#,##0.00',(Value*vUnitario));
end;

procedure TFrm_NF_Entrada.SetSaldoAPagar(const Value: Currency);
begin
  FSaldoAPagar := RoundABNT(Value,-2);
  lblPagTotal.Caption := FormatCurr('#,##0.00',FSaldoAPagar);
  edtPagValor.Text := FormatCurr('#,##0.00',FSaldoAPagar);
end;

procedure TFrm_NF_Entrada.SetSubTotal(const Value: Currency);
begin
  FSubTotal := RoundABNT(Value,-2);
  lblSubTotal.Caption := FormatCurr('#,##0.00',FSubTotal);
  AtualizaSaldoaPagar;
end;

procedure TFrm_NF_Entrada.setvUnitario(const Value: Double);
begin
  fvUnitario := RoundABNT(Value,-10);
//  edtVUn.Text := FormatCurr('#,##0.00',FvUnitario);
  lblTotItem.Caption := FormatCurr('#,##0.00',(Qtde*fvUnitario));
end;

function TFrm_NF_Entrada.Validar: Boolean;
begin
  Result := True;

  if (DBPesquisa2.Campo.Text = '') then
  begin
    TMensagem.Informacao('Infome o Fornecedor.');
    Exit;
  end;
end;

function TFrm_NF_Entrada.VNF: Currency;
begin
  Result := RoundABNT( (SubTotal+
                       cds.FieldByName('FRETE').AsCurrency+
                       cds.FieldByName('SEGURO').AsCurrency+
                       cds.FieldByName('OUTRAS').AsCurrency+
                       cds.FieldByName('SEGURO').AsCurrency+
                       cds.FieldByName('TOT_IPI').AsCurrency+
                       cds.FieldByName('VST').AsCurrency)-
                       cds.FieldByName('VDESC').AsCurrency,-2);
end;

end.

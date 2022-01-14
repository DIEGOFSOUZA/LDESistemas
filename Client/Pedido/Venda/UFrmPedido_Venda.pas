unit UFrmPedido_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Child2, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, UDBPesquisa, Vcl.Imaging.pngimage, Vcl.ComCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, System.DateUtils,
  Vcl.Imaging.jpeg;

type
  TFrmPedido_Venda = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnltop: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    dbpsqsCliente: TDBPesquisa;
    Label4: TLabel;
    dbpsqsVendedor: TDBPesquisa;
    lbl1: TLabel;
    Label5: TLabel;
    pnlBotton: TPanel;
    pnlGravar: TPanel;
    imgGravar: TImage;
    lblGravar: TLabel;
    pnlCancelar: TPanel;
    imgCancelar: TImage;
    lblCancelar: TLabel;
    pnlClient: TPanel;
    pnlClientCenter: TPanel;
    pgc1: TPageControl;
    tsItem: TTabSheet;
    tsPagamento: TTabSheet;
    pnlProdutoFundo: TPanel;
    pnlPagtoFundo: TPanel;
    pnlProdutoTop: TPanel;
    pnlProdutoBotton: TPanel;
    pnlProdutoClient: TPanel;
    dbgrdItens: TDBGrid;
    pnlAdicionarItem: TPanel;
    lblAdicionarItem: TLabel;
    pnlCriarItem: TPanel;
    lblCriarItem: TLabel;
    lblTitContato: TLabel;
    actPedidoSalvar: TAction;
    actPedidoCancelar: TAction;
    actItemAdicionar: TAction;
    actItemCriar: TAction;
    actItemExcluir: TAction;
    Label6: TLabel;
    lblItensSubTotal: TLabel;
    pnlPagtoLeft: TPanel;
    pnlPagtoLeftTop: TPanel;
    pnlPagtoLeftBotton: TPanel;
    Label7: TLabel;
    lblPagtoTotPagar: TLabel;
    Label8: TLabel;
    actPagtoGerarDuplicatas: TAction;
    pnlPagtoClient: TPanel;
    pnlPagtoClientTop: TPanel;
    pnlPagtoLeftClient: TPanel;
    pnlPagtoClientCenter: TPanel;
    pnlPagtoClientRight: TPanel;
    dbgrdPagto: TDBGrid;
    pnlPagtoExcDup: TPanel;
    imgPagtoExcDup: TImage;
    lblTitPagto: TLabel;
    Label9: TLabel;
    cbbPagtoForma: TComboBox;
    cbbPagtoParcela: TComboBox;
    lbl2: TLabel;
    Label10: TLabel;
    edtPagtoValor: TEdit;
    imgPagtoGerarDup: TImage;
    DBMemo1: TDBMemo;
    cdsPEDIDO_VENDA_ITEM: TClientDataSet;
    cdsCONTAS_A_RECEBER: TClientDataSet;
    cdsPEDIDO_VENDA: TClientDataSet;
    cdsPEDIDO_VENDAID: TIntegerField;
    cdsPEDIDO_VENDAEMISSAO: TDateField;
    cdsPEDIDO_VENDAENTRADA: TSQLTimeStampField;
    cdsPEDIDO_VENDAENTREGA: TDateField;
    cdsPEDIDO_VENDAID_CLIENTE: TIntegerField;
    cdsPEDIDO_VENDAID_VENDEDOR: TIntegerField;
    cdsPEDIDO_VENDAOBSERVACAO: TStringField;
    cdsPEDIDO_VENDACLIENTE: TStringField;
    cdsPEDIDO_VENDAVENDEDOR: TStringField;
    dsPEDIDO_VENDA: TDataSource;
    cdsPEDIDO_VENDA_ITEMID_PEDIDO: TIntegerField;
    cdsPEDIDO_VENDA_ITEMORDEM: TIntegerField;
    cdsPEDIDO_VENDA_ITEMID_PRODUTO: TIntegerField;
    cdsPEDIDO_VENDA_ITEMVUNIT: TFMTBCDField;
    cdsPEDIDO_VENDA_ITEMQTDE: TBCDField;
    cdsPEDIDO_VENDA_ITEMUNIDADE: TStringField;
    cdsPEDIDO_VENDA_ITEMVDESC: TFMTBCDField;
    cdsPEDIDO_VENDA_ITEMSUBTOTAL: TFMTBCDField;
    cdsPEDIDO_VENDA_ITEMTOTAL: TFMTBCDField;
    cdsPEDIDO_VENDA_ITEMPRODUTO: TStringField;
    dsItem: TDataSource;
    cdsPEDIDO_VENDA_ITEMSUBTOTAL_GERAL: TAggregateField;
    cdsCONTAS_A_RECEBERNDUP: TIntegerField;
    cdsCONTAS_A_RECEBERVDUP: TFMTBCDField;
    cdsCONTAS_A_RECEBERDVENC: TDateField;
    dsContasAReceber: TDataSource;
    actPagtoLimpar: TAction;
    cdsPEDIDO_VENDAUSUARIO: TStringField;
    cdsCONTAS_A_RECEBERTOT_PAGO: TAggregateField;
    cdsCONTAS_A_RECEBERTIPO: TIntegerField;
    cdsCONTAS_A_RECEBERID_TABELA_MASTER: TIntegerField;
    OpenDialog1: TOpenDialog;
    cdsPEDIDO_VENDA_IMG: TClientDataSet;
    cdsPEDIDO_VENDA_IMGID_PEDIDO: TIntegerField;
    cdsPEDIDO_VENDA_ITEMQTDE_A_BAIXAR: TBCDField;
    cdsPEDIDO_VENDAGERAR_ORDEM_PRODUCAO: TIntegerField;
    tsImagem: TTabSheet;
    pnlImgFundo: TPanel;
    pnlImgTop: TPanel;
    pnlImgBotton: TPanel;
    pnlImg1: TPanel;
    img1: TImage;
    pnlImg1Top: TPanel;
    btnImg1: TButton;
    pnlImg2: TPanel;
    img2: TImage;
    pnlImg2Top: TPanel;
    btnImg2: TButton;
    pnlImg3: TPanel;
    img3: TImage;
    pnlImg3Top: TPanel;
    btnImg3: TButton;
    pnlImg4: TPanel;
    img4: TImage;
    pnlImg4Top: TPanel;
    btnImg4: TButton;
    pnlImg5: TPanel;
    img5: TImage;
    pnlImg5Top: TPanel;
    btnImg5: TButton;
    pnlImg6: TPanel;
    img6: TImage;
    pnlImg6Top: TPanel;
    btnImg6: TButton;
    cdsPEDIDO_VENDA_IMGSEQUENCIA: TIntegerField;
    cdsPEDIDO_VENDA_IMGPATH_IMAGEM: TStringField;
    cdsCONTAS_A_RECEBERDESCRI: TStringField;
    actRelatorio: TAction;
    pnlProdutoClientRight: TPanel;
    pnlDelItem: TPanel;
    imgDelItem: TImage;
    pnlBotoesTop: TPanel;
    pnlGerarRelatorio: TPanel;
    lblGerarRelatorio: TLabel;
    dbchkGeraProducao: TDBCheckBox;
    procedure actPedidoSalvarExecute(Sender: TObject);
    procedure actPedidoCancelarExecute(Sender: TObject);
    procedure actItemAdicionarExecute(Sender: TObject);
    procedure actItemCriarExecute(Sender: TObject);
    procedure actItemExcluirExecute(Sender: TObject);
    procedure actPagtoGerarDuplicatasExecute(Sender: TObject);
    procedure dbpsqsClientePesquisa(Sender: TObject; var Retorno: string);
    procedure dbpsqsVendedorPesquisa(Sender: TObject; var Retorno: string);
    procedure cdsPEDIDO_VENDAAfterInsert(DataSet: TDataSet);
    procedure dbgrdItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbbPagtoFormaEnter(Sender: TObject);
    procedure cbbPagtoFormaChange(Sender: TObject);
    procedure cbbPagtoParcelaChange(Sender: TObject);
    procedure cbbPagtoParcelaEnter(Sender: TObject);
    procedure edtPagtoValorKeyPress(Sender: TObject; var Key: Char);
    procedure actPagtoLimparExecute(Sender: TObject);
    procedure pgc1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure cdsCONTAS_A_RECEBERAfterInsert(DataSet: TDataSet);
    procedure cdsPEDIDO_VENDA_ITEMAfterInsert(DataSet: TDataSet);
    procedure btnImg1Click(Sender: TObject);
    procedure btnImg2Click(Sender: TObject);
    procedure btnImg3Click(Sender: TObject);
    procedure btnImg4Click(Sender: TObject);
    procedure btnImg5Click(Sender: TObject);
    procedure btnImg6Click(Sender: TObject);
    procedure actRelatorioExecute(Sender: TObject);
    procedure img3DblClick(Sender: TObject);
    procedure img2DblClick(Sender: TObject);
    procedure img1DblClick(Sender: TObject);
    procedure img4DblClick(Sender: TObject);
    procedure img5DblClick(Sender: TObject);
    procedure img6DblClick(Sender: TObject);
  private
    FIdParcelamento: integer;
    FIdPagamento: integer;
    FTotalPedio: Currency;
    FSaldoAPagar: Currency;
    FTipoTransacao: string;
    procedure AdicioneProduto(aIdProd: Integer; aProduto: string; aQtde: Extended; aUnit: Currency; aDesc: Currency; aUND: string);
    procedure FormasDePagto();
    procedure Parcelamento(aId: integer);
    procedure SetTotalPedido(const Value: Currency);
    procedure SetSaldoAPagar(const Value: Currency);
    procedure GerarDuplicatas(aValor:Currency);
    procedure LimparCbbs();
    procedure AbrirCDS(aIdPedido: integer);
    procedure AddImagem(aSequencia: integer);
    function SelecionarIMG(): string;
    procedure SalvarImagem(aCaminho: string;aSeq:integer);
    procedure ExibeImagem(aSequencia: Integer);
    procedure ExcluirImagem(aSequencia: Integer);
    procedure ExcluirDuplicatas();
  public
    property IdPagamento: integer read FIdPagamento write FIdPagamento;
    property IdParcelamento: integer read FIdParcelamento write FIdParcelamento;
    property TotalPedido: Currency read FTotalPedio write SetTotalPedido;
    property SaldoAPagar: Currency read FSaldoAPagar write SetSaldoAPagar;
    property TipoTransacao: string read FTipoTransacao write FTipoTransacao;
    procedure Iniciar();
    procedure NovoPedido();
    procedure EditarPedido(aIDPedido: integer);
  end;

var
  FrmPedido_Venda: TFrmPedido_Venda;

implementation

uses
  UDM, u_Mensagem, UConsulta, UFrm_PedidoVenda_AdicionarProduto,
  UFrm_PedidoVenda_NovoProduto, ACBrUtil, UMakeReadWrite, UFuncoes, URel_PedidoVendaA3;

{$R *.dfm}

procedure TFrmPedido_Venda.AddImagem(aSequencia: integer);
var
  lFileName: string;
begin
  lFileName := SelecionarIMG;
  if (lFileName <> '') then
  begin
    SalvarImagem(lFileName,aSequencia);
    ExibeImagem(aSequencia);
  end;
end;

function TFrmPedido_Venda.SelecionarIMG: string;
begin
  OpenDialog1.Filter := EmptyStr;
  OpenDialog1.Filter := 'Image Files|*.JPEG;*.JPG';
  if (OpenDialog1.Execute) then
    Result := OpenDialog1.FileName;
end;

procedure TFrmPedido_Venda.SalvarImagem(aCaminho: string; aSeq: integer);
//var
//  oFilestream: TFileStream;
//  oMemorystream: TStream;
begin
//  oFilestream := TFileStream.Create(aCaminho, fmOpenRead);
//  oMemorystream := TMemoryStream.Create;
  try
    if (cdsPEDIDO_VENDA_IMG.Locate('SEQUENCIA',aSeq,[])) then
      cdsPEDIDO_VENDA_IMG.Edit
    else
    begin
      cdsPEDIDO_VENDA_IMG.Append;
      cdsPEDIDO_VENDA_IMGID_PEDIDO.AsInteger := cdsPEDIDO_VENDAID.AsInteger;
      cdsPEDIDO_VENDA_IMGSEQUENCIA.AsInteger := aSeq;
    end;
//    cdsPEDIDO_VENDA_IMGIMAGEM.LoadFromStream(oFilestream);
    cdsPEDIDO_VENDA_IMGPATH_IMAGEM.AsString := aCaminho;
    cdsPEDIDO_VENDA_IMG.Post;
  finally
//    FreeAndNil(oFilestream);
//    FreeAndNil(oMemorystream);
  end;
end;

procedure TFrmPedido_Venda.ExcluirDuplicatas;
begin
  cdsCONTAS_A_RECEBER.First;
  try
    cdsCONTAS_A_RECEBER.DisableControls;
    while not cdsCONTAS_A_RECEBER.Eof do
    begin
      cdsCONTAS_A_RECEBER.Delete;
    end;
  finally
    cdsCONTAS_A_RECEBER.EnableControls;
  end;
end;

procedure TFrmPedido_Venda.ExcluirImagem(aSequencia: Integer);
begin
  if not cdsPEDIDO_VENDA_IMG.Locate('SEQUENCIA', aSequencia, []) then
    Exit;

  cdsPEDIDO_VENDA_IMG.Delete;
  TImage(FindComponent('img' + IntToStr(aSequencia))).Picture := nil;
end;

procedure TFrmPedido_Venda.ExibeImagem(aSequencia: Integer);
//var
//  oMemorystream: TStream;
//  oImage: TJPEGImage;
begin
  if not cdsPEDIDO_VENDA_IMG.Locate('SEQUENCIA', aSequencia, []) then
    Exit;

  try
    TImage(FindComponent('img' + IntToStr(aSequencia))).Picture.LoadFromFile(cdsPEDIDO_VENDA_IMGPATH_IMAGEM.AsString);
  except

  end;

//  oMemorystream := TMemoryStream.Create;
//  oImage := TJPEGImage.Create;
//  try
//    oMemorystream := cdsPEDIDO_VENDA_IMG.CreateBlobStream(cdsPEDIDO_VENDA_IMGIMAGEM, bmRead);
//    oImage.LoadFromStream(oMemorystream);
//    TImage(FindComponent('img' + IntToStr(aSequencia))).Picture.Assign(oImage);
//  finally
//    FreeAndNil(oMemorystream);
//    FreeAndNil(oImage);
//  end;
end;

procedure TFrmPedido_Venda.actItemAdicionarExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(Frm_PedidoVenda_AdicionarProduto) then
    Frm_PedidoVenda_AdicionarProduto := TFrm_PedidoVenda_AdicionarProduto.Create(Self);
  AlphaBlend := True;
  AlphaBlendValue := 128;
  try
    with Frm_PedidoVenda_AdicionarProduto do
    begin
      Unidade := '';
      ShowModal;
      if (IdProduto > 0) then
      begin
        AdicioneProduto(IdProduto, Produto, Qtde, Unitario, Desconto, Unidade);
        ExcluirDuplicatas;
        try
          TotalPedido := cdsPEDIDO_VENDA_ITEMSUBTOTAL_GERAL.Value;
        except
          TotalPedido := 0;
        end;
      end;
    end;
  finally
    FreeAndNil(Frm_PedidoVenda_AdicionarProduto);
    AlphaBlend := False;
  end;
end;

procedure TFrmPedido_Venda.actItemCriarExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(Frm_PedidoVenda_NovoProduto) then
    Frm_PedidoVenda_NovoProduto := TFrm_PedidoVenda_NovoProduto.Create(Self);
  AlphaBlend := True;
  AlphaBlendValue := 128;
  try
    with Frm_PedidoVenda_NovoProduto do
    begin
      Iniciar;
      ShowModal;
      if (IdProduto > 0) then
      begin
        AdicioneProduto(IdProduto, Produto, 1, ProdutoUnitario, 0, ProdutoUnidade);
        try
          TotalPedido := cdsPEDIDO_VENDA_ITEMSUBTOTAL_GERAL.Value;
        except
          TotalPedido := 0;
        end;
      end;
    end;
  finally
    FreeAndNil(Frm_PedidoVenda_NovoProduto);
    AlphaBlend := False;
  end;
end;

procedure TFrmPedido_Venda.actItemExcluirExecute(Sender: TObject);
begin
  inherited;
  if cdsPEDIDO_VENDA_ITEM.IsEmpty then
    Exit;
  cdsPEDIDO_VENDA_ITEM.Delete;
  ExcluirDuplicatas;
  try
    TotalPedido := cdsPEDIDO_VENDA_ITEMSUBTOTAL_GERAL.Value;
  except
    TotalPedido := 0;
  end;
end;

procedure TFrmPedido_Venda.actPagtoGerarDuplicatasExecute(Sender: TObject);
var
  lValor: Currency;
begin
  inherited;
  if (SaldoAPagar = 0)  then
  begin
    TMensagem.Atencao('Saldo a pagar = R$ 0,00');
    Exit;
  end;

  if TryStrToCurr(edtPagtoValor.Text, lValor) then
    if SaldoAPagar < lValor then
      TMensagem.Atencao('Saldo a pagar é menor que valor informado.')
    else
    begin
      GerarDuplicatas(lValor);
      LimparCbbs;
    end;
end;

procedure TFrmPedido_Venda.actPagtoLimparExecute(Sender: TObject);
begin
  inherited;
  if cdsCONTAS_A_RECEBER.IsEmpty then
    Exit;

  cdsCONTAS_A_RECEBER.Last;
  cdsCONTAS_A_RECEBER.Delete;
  try
    TotalPedido := cdsPEDIDO_VENDA_ITEMSUBTOTAL_GERAL.Value;
  except
    TotalPedido := 0;
  end;
end;

procedure TFrmPedido_Venda.actPedidoCancelarExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrmPedido_Venda.actPedidoSalvarExecute(Sender: TObject);
var
  lPedidos, lItem, lReceber, lImagem: OleVariant;
begin
  inherited;
  if (cdsPEDIDO_VENDA.State in [dsEdit, dsInsert]) then
    cdsPEDIDO_VENDA.Post;

  lPedidos := null;
  lItem := null;
  lReceber := null;
  lImagem := null;

  if cdsPEDIDO_VENDA.ChangeCount > 0 then
    lPedidos := cdsPEDIDO_VENDA.Delta;
  if cdsPEDIDO_VENDA_ITEM.ChangeCount > 0 then
    lItem := cdsPEDIDO_VENDA_ITEM.Delta;
  if cdsCONTAS_A_RECEBER.ChangeCount > 0 then
    lReceber := cdsCONTAS_A_RECEBER.Delta;
  if cdsCONTAS_A_RECEBER.ChangeCount > 0 then
    lReceber := cdsCONTAS_A_RECEBER.Delta;
  if cdsPEDIDO_VENDA_IMG.ChangeCount > 0 then
    lImagem := cdsPEDIDO_VENDA_IMG.Delta;

  if (TipoTransacao = 'INSERT') then
  begin
    if DM.SMPedido.PedidoVenda_Adicionar(DM.BancoDados, VarArrayOf([lPedidos, lItem, lReceber, lImagem])) then
    begin
      TMensagem.Informacao('Pedido gerado com sucesso.');
      actSair.Execute;
    end
    else
      TMensagem.Erro('Pedido não foi gerado, tente novamente.');
  end;
  if (TipoTransacao = 'UPDATE') then
  begin
    if DM.SMPedido.PedidoVenda_Editar(DM.BancoDados, VarArrayOf([lPedidos, lItem, lReceber, lImagem])) then
    begin
      TMensagem.Informacao('Pedido alterado com sucesso.');
      actSair.Execute;
    end
    else
      TMensagem.Erro('Pedido não foi gerado, tente novamente.');
  end;
end;

procedure TFrmPedido_Venda.actRelatorioExecute(Sender: TObject);
begin
 if not Assigned(Rel_PedidoVendaA3) then
    Rel_PedidoVendaA3 := TRel_PedidoVendaA3.Create(Self);
  try
    Rel_PedidoVendaA3.ID_PEDIDO := cdsPEDIDO_VENDAID.AsInteger;
    Rel_PedidoVendaA3.AbrirRelatorio;
  finally
    FreeAndNil(Rel_PedidoVendaA3);
  end;
end;

procedure TFrmPedido_Venda.AdicioneProduto(aIdProd: Integer; aProduto: string; aQtde: Extended; aUnit: Currency; aDesc: Currency; aUND: string);
var
  lQtdeBaixa: Extended;
begin
  lQtdeBaixa := QtdeConvertida(aIdProd,aQtde);
  if cdsPEDIDO_VENDA_ITEM.Locate('ID_PRODUTO', aIdProd, []) then
  begin
    cdsPEDIDO_VENDA_ITEM.Edit;
    cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE').AsFloat := aQtde + cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE').AsFloat;
    cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE_A_BAIXAR').AsFloat := lQtdeBaixa + cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE_A_BAIXAR').AsFloat;
  end
  else
  begin
    cdsPEDIDO_VENDA_ITEM.Append;
    cdsPEDIDO_VENDA_ITEM.FieldByName('ID_PEDIDO').AsInteger := cdsPEDIDO_VENDA.FieldByName('ID').AsInteger;
    cdsPEDIDO_VENDA_ITEM.FieldByName('ORDEM').AsInteger := cdsPEDIDO_VENDA_ITEM.RecordCount + 1;
    cdsPEDIDO_VENDA_ITEM.FieldByName('ID_PRODUTO').AsInteger := aIdProd;
    cdsPEDIDO_VENDA_ITEM.FieldByName('PRODUTO').AsString := aProduto;
    cdsPEDIDO_VENDA_ITEM.FieldByName('VUNIT').AsCurrency := aUnit;
    cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE').AsFloat := aQtde;
    cdsPEDIDO_VENDA_ITEM.FieldByName('UNIDADE').AsString := aUND;
    cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE_A_BAIXAR').AsFloat := lQtdeBaixa;
  end;
  cdsPEDIDO_VENDA_ITEM.FieldByName('VDESC').AsCurrency := aDesc;
  cdsPEDIDO_VENDA_ITEM.FieldByName('SUBTOTAL').AsCurrency := RoundABNT((cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE').AsFloat * aUnit), 2);
  cdsPEDIDO_VENDA_ITEM.FieldByName('TOTAL').AsCurrency := RoundABNT((cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE').AsFloat * aUnit) - aDesc, 2);
  cdsPEDIDO_VENDA_ITEM.Post;
end;

procedure TFrmPedido_Venda.btnImg1Click(Sender: TObject);
begin
  inherited;
  AddImagem(1);
end;

procedure TFrmPedido_Venda.btnImg2Click(Sender: TObject);
begin
  inherited;
  AddImagem(2);
end;

procedure TFrmPedido_Venda.btnImg3Click(Sender: TObject);
begin
  inherited;
  AddImagem(3);
end;

procedure TFrmPedido_Venda.btnImg4Click(Sender: TObject);
begin
  inherited;
  AddImagem(4);
end;

procedure TFrmPedido_Venda.btnImg5Click(Sender: TObject);
begin
  inherited;
  AddImagem(5);
end;

procedure TFrmPedido_Venda.btnImg6Click(Sender: TObject);
begin
  inherited;
  AddImagem(6);
end;

procedure TFrmPedido_Venda.cbbPagtoFormaEnter(Sender: TObject);
begin
  inherited;
  FormasDePagto();
end;

procedure TFrmPedido_Venda.cdsCONTAS_A_RECEBERAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCONTAS_A_RECEBER.FieldByName('TIPO').AsInteger := 1;
  cdsCONTAS_A_RECEBER.FieldByName('ID_TABELA_MASTER').AsInteger := cdsPEDIDO_VENDAID.AsInteger;
//  cdsCONTAS_A_RECEBER.FieldByName('ID').AsInteger := 0;
end;

procedure TFrmPedido_Venda.cdsPEDIDO_VENDAAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPEDIDO_VENDA.FieldByName('ID').AsInteger := 0;
  cdsPEDIDO_VENDA.FieldByName('EMISSAO').AsDateTime := Date;
  cdsPEDIDO_VENDA.FieldByName('ENTRADA').AsDateTime := Date;
  cdsPEDIDO_VENDA.FieldByName('ENTREGA').AsDateTime := Date + 7;
  cdsPEDIDO_VENDA.FieldByName('USUARIO').AsString := DM.Usuario.Login;
  cdsPEDIDO_VENDA.FieldByName('GERAR_ORDEM_PRODUCAO').AsInteger := 1;
end;

procedure TFrmPedido_Venda.cdsPEDIDO_VENDA_ITEMAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if not cdsCONTAS_A_RECEBER.IsEmpty then
  begin
    actPagtoLimpar.Execute;
    SaldoAPagar := FTotalPedio;
  end;
end;

procedure TFrmPedido_Venda.dbgrdItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if not (gdSelected in State) then
  begin
    if Odd((Sender as TDBGrid).DataSource.DataSet.RecNo) then
      (Sender as TDBGrid).Canvas.Brush.Color := clWhite
    else
      (Sender as TDBGrid).Canvas.Brush.Color := $00F1F2F3; // leve cinza
    // Aplicando preto para a cor da fonte
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;

    (Sender as TDBGrid).Canvas.FillRect(Rect);
    (Sender as TDBGrid).Canvas.TextOut(Rect.Left + 2, Rect.Top, Column.Field.DisplayText);
  end;
end;

procedure TFrmPedido_Venda.dbpsqsClientePesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Cliente.ToString;
end;

procedure TFrmPedido_Venda.dbpsqsVendedorPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Representante.ToString;
end;

procedure TFrmPedido_Venda.edtPagtoValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not CharInSet(Key, [#8, #13, ',', '0'..'9']) then
    Key := #0;
end;

procedure TFrmPedido_Venda.FormasDePagto;
const
  SQL = 'SELECT r.ID_PAGTOFORMA,r.DESCRI ' +
        'FROM PAGTO_FORMA r where r.ATIVO = ''S'' ';
begin
  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(SQL);
  if (not DM.dsConsulta.IsEmpty) then
  begin
    cbbPagtoForma.Items.Clear;
    DM.dsConsulta.First;
    while not DM.dsConsulta.Eof do
    begin
      cbbPagtoForma.Items.Add(DM.dsConsulta.FieldByName('descri').AsString);
      DM.dsConsulta.Next;
    end;
    cbbPagtoForma.ItemIndex := -1;
  end;
end;

procedure TFrmPedido_Venda.cbbPagtoFormaChange(Sender: TObject);
begin
  inherited;
  try
    DM.dsConsulta.Locate('descri',cbbPagtoForma.Text,[]);
    IdPagamento := DM.dsConsulta.FieldByName('ID_PAGTOFORMA').AsInteger;
  except
    IdPagamento := -1;
  end;
end;

procedure TFrmPedido_Venda.GerarDuplicatas(aValor:Currency);
const
  SQL = 'SELECT r.num_parcelas,'+
        '       r.intv_parcelas,'+
        '       r.primeira_parc,'+
        '       r.acrescimo '+
        'FROM PAGTO_PARCELAMENTO r '+
        'where r.id = %s';
var
  lValor: Currency;
  lAcrescimo: Extended;
  i: Integer;
  lVencto: TDate;
  lDescri: string;
begin
  if (FIdParcelamento = -1) then
    Exit;

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[FIdParcelamento.ToString]));

  lAcrescimo := ((DM.dsConsulta.FieldByName('ACRESCIMO').AsFloat*aValor)/100);
  lValor := RoundABNT((aValor+lAcrescimo) / DM.dsConsulta.FieldByName('NUM_PARCELAS').AsInteger,2);
  for I := 1 to DM.dsConsulta.FieldByName('NUM_PARCELAS').AsInteger do
  begin
    lDescri := cbbPagtoForma.Text+' ('+cbbPagtoParcela.Text+') '+
              ' ['+IntToStr(i)+' / '+IntToStr(DM.dsConsulta.FieldByName('NUM_PARCELAS').AsInteger)+']';
    cdsCONTAS_A_RECEBER.Append;
    cdsCONTAS_A_RECEBER.FieldByName('NDUP').AsInteger := cdsCONTAS_A_RECEBER.RecordCount+1;
    cdsCONTAS_A_RECEBER.FieldByName('VDUP').AsCurrency := lValor;
    if (i = 1) then
      cdsCONTAS_A_RECEBER.FieldByName('DVENC').AsDateTime := IncDay(Date, DM.dsConsulta.FieldByName('PRIMEIRA_PARC').AsInteger)
    else
      cdsCONTAS_A_RECEBER.FieldByName('DVENC').AsDateTime := IncDay(lVencto, DM.dsConsulta.FieldByName('INTV_PARCELAS').AsInteger);
    lVencto := cdsCONTAS_A_RECEBER.FieldByName('DVENC').AsDateTime;
    cdsCONTAS_A_RECEBER.FieldByName('DESCRI').AsString := lDescri;
    cdsCONTAS_A_RECEBER.Post;
  end;
  SaldoAPagar := FSaldoAPagar - aValor;
end;

procedure TFrmPedido_Venda.img1DblClick(Sender: TObject);
begin
  inherited;
  ExcluirImagem(1);
end;

procedure TFrmPedido_Venda.img2DblClick(Sender: TObject);
begin
  inherited;
  ExcluirImagem(2);
end;

procedure TFrmPedido_Venda.img3DblClick(Sender: TObject);
begin
  inherited;
  ExcluirImagem(3);
end;

procedure TFrmPedido_Venda.img4DblClick(Sender: TObject);
begin
  inherited;
  ExcluirImagem(4);
end;

procedure TFrmPedido_Venda.img5DblClick(Sender: TObject);
begin
  inherited;
  ExcluirImagem(5);
end;

procedure TFrmPedido_Venda.img6DblClick(Sender: TObject);
begin
  inherited;
  ExcluirImagem(6);
end;

procedure TFrmPedido_Venda.LimparCbbs;
begin
  cbbPagtoForma.Clear;
  cbbPagtoForma.ItemIndex := -1;
  cbbPagtoParcela.Clear;
  cbbPagtoParcela.ItemIndex := -1;
end;

procedure TFrmPedido_Venda.Iniciar;
begin
  FIdPagamento := -1;
  FIdParcelamento := -1;
  pgc1.TabIndex := 0;
end;

procedure TFrmPedido_Venda.AbrirCDS(aIdPedido: integer);
var
  lPedido: OleVariant;
begin
  lPedido := DM.SMPedido.PedidoVenda_Carregar(DM.BancoDados, aIdPedido);
  cdsPEDIDO_VENDA.Close;
  cdsPEDIDO_VENDA_ITEM.Close;
  cdsCONTAS_A_RECEBER.Close;
  cdsPEDIDO_VENDA_IMG.Close;
  cdsPEDIDO_VENDA.Data := lPedido[0];
  cdsPEDIDO_VENDA_ITEM.Data := lPedido[1];
  cdsCONTAS_A_RECEBER.Data := lPedido[2];
  cdsPEDIDO_VENDA_IMG.Data := lPedido[3];

  MakeReadWrite(cdsPEDIDO_VENDACLIENTE);
  MakeReadWrite(cdsPEDIDO_VENDAVENDEDOR);
end;

procedure TFrmPedido_Venda.NovoPedido;

begin
  Iniciar;
  FTipoTransacao := 'INSERT';
  AbrirCDS(-1);
  TotalPedido := 0;
  SaldoAPagar := 0;
  cdsPEDIDO_VENDA.Append;
end;

procedure TFrmPedido_Venda.EditarPedido(aIDPedido: integer);
var
  i: Integer;
begin
  Iniciar;
  FTipoTransacao := 'UPDATE';
  AbrirCDS(aIDPedido);
  try
    TotalPedido := cdsPEDIDO_VENDA_ITEMSUBTOTAL_GERAL.Value;
  except
    TotalPedido := 0;
  end;
  if not cdsPEDIDO_VENDA_IMG.IsEmpty then
  for I := 1 to 6 do
    ExibeImagem(i);

  cdsPEDIDO_VENDA.Edit;
end;

procedure TFrmPedido_Venda.Parcelamento(aId: integer);
const
  SQL = 'SELECT r.ID,r.DESCRI FROM PAGTO_PARCELAMENTO r '+
        'where r.ID_PAGTOFORMA = %s';
begin
  if aId < 1 then
    Exit;

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[aId.ToString]));
  if (not DM.dsConsulta.IsEmpty) then
  begin
    cbbPagtoParcela.Items.Clear;
    DM.dsConsulta.First;
    while not DM.dsConsulta.Eof do
    begin
      cbbPagtoParcela.Items.Add(DM.dsConsulta.FieldByName('descri').AsString);
      DM.dsConsulta.Next;
    end;
    cbbPagtoParcela.ItemIndex := -1;
  end;
end;

procedure TFrmPedido_Venda.pgc1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if (pgc1.TabIndex = 1) then
    LimparCbbs;
end;

procedure TFrmPedido_Venda.cbbPagtoParcelaChange(Sender: TObject);
begin
  inherited;
  try
    DM.dsConsulta.Locate('descri',cbbPagtoParcela.Text,[]);
    IdParcelamento := DM.dsConsulta.FieldByName('ID').AsInteger;
  except
    IdParcelamento := -1;
  end;
end;

procedure TFrmPedido_Venda.SetSaldoAPagar(const Value: Currency);
begin
  FSaldoAPagar := Value;
  lblPagtoTotPagar.Caption := FormatCurr('##0.00', Value);
  edtPagtoValor.Text := FormatCurr('##0.00', Value);
end;

procedure TFrmPedido_Venda.SetTotalPedido(const Value: Currency);
begin
  FTotalPedio := Value;
  lblItensSubTotal.Caption := FormatCurr('##0.00', Value);
  if not cdsCONTAS_A_RECEBER.IsEmpty then
    SaldoAPagar := Value - cdsCONTAS_A_RECEBERTOT_PAGO.Value
  else
    SaldoAPagar := Value;
end;

procedure TFrmPedido_Venda.cbbPagtoParcelaEnter(Sender: TObject);
begin
  inherited;
  Parcelamento(IdPagamento);
end;

end.

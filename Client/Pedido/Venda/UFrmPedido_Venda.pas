unit UFrmPedido_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, UDBPesquisa,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient;

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
    pnlClientRight: TPanel;
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
    cdsPEDIDO_VENDA_ITEMQTDE_BAIXA: TBCDField;
    cdsPEDIDO_VENDA_ITEMVDESC: TFMTBCDField;
    cdsPEDIDO_VENDA_ITEMSUBTOTAL: TFMTBCDField;
    cdsPEDIDO_VENDA_ITEMTOTAL: TFMTBCDField;
    cdsPEDIDO_VENDA_ITEMPRODUTO: TStringField;
    dsItem: TDataSource;
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
  private
    procedure AdicioneProduto(aIdProd: Integer; aQtde: Extended; aUnit: Currency; aDesc: Currency; aUND: string);
  public
    procedure NovoPedido();
  end;

var
  FrmPedido_Venda: TFrmPedido_Venda;

implementation

uses
  UDM, u_Mensagem, UConsulta, UFrm_PedidoVenda_AdicionarProduto, UFrm_PedidoVenda_NovoProduto, ACBrUtil;

{$R *.dfm}

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
        AdicioneProduto(IdProduto, Qtde, Unitario, Desconto, Unidade);
    end;

  finally
    FreeAndNil(Frm_PedidoVenda_AdicionarProduto);
    AlphaBlend := False;
  end;
end;

procedure TFrmPedido_Venda.actItemCriarExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrmPedido_Venda.actItemExcluirExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrmPedido_Venda.actPagtoGerarDuplicatasExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrmPedido_Venda.actPedidoCancelarExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrmPedido_Venda.actPedidoSalvarExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrmPedido_Venda.AdicioneProduto(aIdProd: Integer; aQtde: Extended; aUnit: Currency; aDesc: Currency; aUND: string);
begin
  if cdsPEDIDO_VENDA_ITEM.Locate('ID_PRODUTO', aIdProd, []) then
  begin
    cdsPEDIDO_VENDA_ITEM.Edit;
    cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE').AsFloat := cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE').AsFloat + aQtde;
    cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE_BAIXA').AsFloat := cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE').AsFloat;
  end
  else
  begin
    cdsPEDIDO_VENDA_ITEM.Append;
    cdsPEDIDO_VENDA_ITEM.FieldByName('ID_PEDIDO').AsInteger := cdsPEDIDO_VENDA.FieldByName('ID').AsInteger;
    cdsPEDIDO_VENDA_ITEM.FieldByName('ORDEM').AsInteger := cdsPEDIDO_VENDA_ITEM.FieldByName('ORDEM').AsInteger + 1;
    cdsPEDIDO_VENDA_ITEM.FieldByName('ID_PRODUTO').AsInteger := aIdProd;
    cdsPEDIDO_VENDA_ITEM.FieldByName('VUNIT').AsCurrency := aUnit;
    cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE').AsFloat := aQtde;
    cdsPEDIDO_VENDA_ITEM.FieldByName('UNIDADE').AsString := aUND;
    cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE_BAIXA').AsFloat := aQtde;
  end;
  cdsPEDIDO_VENDA_ITEM.FieldByName('VDESC').AsCurrency := aDesc;
  cdsPEDIDO_VENDA_ITEM.FieldByName('SUBTOTAL').AsCurrency := RoundABNT((cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE').AsFloat * aUnit), 2);
  cdsPEDIDO_VENDA_ITEM.FieldByName('TOTAL').AsCurrency := RoundABNT((cdsPEDIDO_VENDA_ITEM.FieldByName('QTDE').AsFloat * aUnit) - aDesc, 2);
  cdsPEDIDO_VENDA_ITEM.Post;
end;

procedure TFrmPedido_Venda.cdsPEDIDO_VENDAAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPEDIDO_VENDA.FieldByName('EMISSAO').AsDateTime := Date;
  cdsPEDIDO_VENDA.FieldByName('ENTREGA').AsDateTime := Date+7;
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

procedure TFrmPedido_Venda.NovoPedido;
begin
  cdsPEDIDO_VENDA.Close;
  cdsPEDIDO_VENDA.CreateDataSet;
  cdsPEDIDO_VENDA_ITEM.Close;
  cdsPEDIDO_VENDA_ITEM.CreateDataSet;
//  cdsCONTAS_A_RECEBER.Close;
//  cdsCONTAS_A_RECEBER.CreateDataSet;

  cdsPEDIDO_VENDA.Append;
//  DBEdit2.SetFocus;
end;

end.

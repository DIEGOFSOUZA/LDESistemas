unit UFrmPedido_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, UDBPesquisa,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient, System.DateUtils;

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
    cdsPEDIDO_VENDA_ITEMSUBTOTAL_GERAL: TAggregateField;
    cdsCONTAS_A_RECEBERNDUP: TIntegerField;
    cdsCONTAS_A_RECEBERVDUP: TFMTBCDField;
    cdsCONTAS_A_RECEBERDVENC: TDateField;
    dsContasAReceber: TDataSource;
    actPagtoLimpar: TAction;
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
  private
    FIdParcelamento: integer;
    FIdPagamento: integer;
    FTotalPedio: Currency;
    FSaldoAPagar: Currency;
    procedure AdicioneProduto(aIdProd: Integer; aProduto: string; aQtde: Extended; aUnit: Currency; aDesc: Currency; aUND: string);
    procedure FormasDePagto();
    procedure Parcelamento(aId: integer);
    procedure SetTotalPedido(const Value: Currency);
    procedure SetSaldoAPagar(const Value: Currency);
    procedure GerarDuplicatas(aValor:Currency);
  public
    property IdPagamento: integer read FIdPagamento write FIdPagamento;
    property IdParcelamento: integer read FIdParcelamento write FIdParcelamento;
    property TotalPedido: Currency read FTotalPedio write SetTotalPedido;
    property SaldoAPagar: Currency read FSaldoAPagar write SetSaldoAPagar;
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
      begin
        AdicioneProduto(IdProduto, Produto, Qtde, Unitario, Desconto, Unidade);
        TotalPedido := cdsPEDIDO_VENDA_ITEMSUBTOTAL_GERAL.Value;
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
//
end;

procedure TFrmPedido_Venda.actItemExcluirExecute(Sender: TObject);
begin
  inherited;
//
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
      TMensagem.Atencao('Saldo a pagar � menor que valor informado.')
    else
      GerarDuplicatas(lValor);
end;

procedure TFrmPedido_Venda.actPagtoLimparExecute(Sender: TObject);
begin
  inherited;
  cdsCONTAS_A_RECEBER.DisableControls;
  try
    cdsCONTAS_A_RECEBER.EmptyDataSet;

  finally
    cdsCONTAS_A_RECEBER.EnableControls;
  end;
end;

procedure TFrmPedido_Venda.actPedidoCancelarExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrmPedido_Venda.actPedidoSalvarExecute(Sender: TObject);
begin
  inherited;
  try
    DM.SMPedido.setPedidoVendaI(DM.BancoDados,cdsPEDIDO_VENDA.FieldByName('ID').AsInteger,
                  cdsPEDIDO_VENDA.Delta,cdsPEDIDO_VENDA_ITEM.Delta,cdsCONTAS_A_RECEBER.Delta);
    TMensagem.Informacao('Pedido gerado com sucesso.');
    actSair.Execute;
  except
    TMensagem.Erro('Pedido n�o gerado, tente novamente.');
  end;

end;

procedure TFrmPedido_Venda.AdicioneProduto(aIdProd: Integer; aProduto: string; aQtde: Extended; aUnit: Currency; aDesc: Currency; aUND: string);
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
    cdsPEDIDO_VENDA_ITEM.FieldByName('ORDEM').AsInteger := cdsPEDIDO_VENDA_ITEM.RecordCount + 1;
    cdsPEDIDO_VENDA_ITEM.FieldByName('ID_PRODUTO').AsInteger := aIdProd;
    cdsPEDIDO_VENDA_ITEM.FieldByName('PRODUTO').AsString := aProduto;
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

procedure TFrmPedido_Venda.cbbPagtoFormaEnter(Sender: TObject);
begin
  inherited;
  FormasDePagto();
end;

procedure TFrmPedido_Venda.cdsPEDIDO_VENDAAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsPEDIDO_VENDA.FieldByName('ID').AsInteger := 0;
  cdsPEDIDO_VENDA.FieldByName('EMISSAO').AsDateTime := Date;
  cdsPEDIDO_VENDA.FieldByName('ENTRADA').AsDateTime := Date;
  cdsPEDIDO_VENDA.FieldByName('ENTREGA').AsDateTime := Date + 7;
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
begin
  if FIdParcelamento = -1 then
    Exit;

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[FIdParcelamento.ToString]));

  lAcrescimo := ((DM.dsConsulta.FieldByName('ACRESCIMO').AsFloat*aValor)/100);
  lValor := RoundABNT((aValor+lAcrescimo) / DM.dsConsulta.FieldByName('NUM_PARCELAS').AsInteger,2);
  for I := 1 to DM.dsConsulta.FieldByName('NUM_PARCELAS').AsInteger do
  begin
    cdsCONTAS_A_RECEBER.Append;
    cdsCONTAS_A_RECEBER.FieldByName('NDUP').AsInteger := cdsCONTAS_A_RECEBER.RecordCount+1;
    cdsCONTAS_A_RECEBER.FieldByName('VDUP').AsCurrency := lValor;
    if (I = 1) then
        cdsCONTAS_A_RECEBER.FieldByName('DVENC').AsDateTime := IncDay(Date, DM.dsConsulta.FieldByName('PRIMEIRA_PARC').AsInteger)
      else
        cdsCONTAS_A_RECEBER.FieldByName('DVENC').AsDateTime := IncDay(lVencto, DM.dsConsulta.FieldByName('PRIMEIRA_PARC').AsInteger);
      lVencto := cdsCONTAS_A_RECEBER.FieldByName('DVENC').AsDateTime;
    cdsCONTAS_A_RECEBER.Post;
  end;
  SaldoAPagar := FSaldoAPagar - aValor;
end;

procedure TFrmPedido_Venda.NovoPedido;
begin
  FIdPagamento := -1;
  FIdParcelamento := -1;
  TotalPedido := 0;
  SaldoAPagar := 0;
  cdsPEDIDO_VENDA.Close;
  cdsPEDIDO_VENDA.CreateDataSet;
  cdsPEDIDO_VENDA_ITEM.Close;
  cdsPEDIDO_VENDA_ITEM.CreateDataSet;
  cdsCONTAS_A_RECEBER.Close;
  cdsCONTAS_A_RECEBER.CreateDataSet;
  cdsPEDIDO_VENDA.Append;

  pgc1.TabIndex := 0;
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
  lblPagtoTotPagar.Caption := FormatCurr('#,##0.00', Value);
  edtPagtoValor.Text := FormatCurr('#,##0.00', Value);
end;

procedure TFrmPedido_Venda.SetTotalPedido(const Value: Currency);
begin
  FTotalPedio := Value;
  lblItensSubTotal.Caption := FormatCurr('#,##0.00', Value);
  if not cdsCONTAS_A_RECEBER.IsEmpty then
    actPagtoLimpar.Execute;
  SaldoAPagar := Value;
end;

procedure TFrmPedido_Venda.cbbPagtoParcelaEnter(Sender: TObject);
begin
  inherited;
  Parcelamento(IdPagamento);
end;

end.
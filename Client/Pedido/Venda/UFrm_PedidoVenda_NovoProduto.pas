unit UFrm_PedidoVenda_NovoProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Child2, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, UEDPesquisa, Datasnap.DBClient, Vcl.Imaging.pngimage,
  UDBPesquisa, Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_PedidoVenda_NovoProduto = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlTop: TPanel;
    pnlBotton: TPanel;
    pnlClient: TPanel;
    pnlClientBotton: TPanel;
    Label6: TLabel;
    lblItensSubTotal: TLabel;
    dbgrdItens: TDBGrid;
    pnlGravar: TPanel;
    lblGravar: TLabel;
    pnlCancelar: TPanel;
    lblCancelar: TLabel;
    edpesMatPrima: TEdPesquisa;
    Label4: TLabel;
    edtQtde: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtUnitario: TEdit;
    edtTotal: TEdit;
    Label3: TLabel;
    pnlAdicionarMat: TPanel;
    lblAdicionarMat: TLabel;
    cdsProdutoComposicao: TClientDataSet;
    dsProdutoComposicao: TDataSource;
    pnlClientRight: TPanel;
    lblUnidade: TLabel;
    pnlPagtoExcDup: TPanel;
    imgPagtoExcDup: TImage;
    actIncluirPedido: TAction;
    actAdicionar: TAction;
    cdsProdutoComposicaoID_MATPRIMA: TIntegerField;
    cdsProdutoComposicaoQTDE: TFMTBCDField;
    cdsProdutoComposicaoCUSTO_UNIT: TFMTBCDField;
    cdsProdutoComposicaoCUSTO_TOTAL: TFMTBCDField;
    cdsProdutoComposicaoMATERIAL: TStringField;
    cdsProdutoComposicaoSUBTOTAL: TAggregateField;
    cdsProdutoComposicaoUND: TStringField;
    pnlTopProduto: TPanel;
    lblTitContato: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cdsProduto: TClientDataSet;
    cdsProdutoNOME: TStringField;
    cdsProdutoPRECO_VENDA: TCurrencyField;
    cdsProdutoCOD_UNIDADE: TIntegerField;
    cdsProdutoPRECO_CUSTO: TCurrencyField;
    cdsProdutoULTIMA_ALTERACAO: TStringField;
    cdsProdutoUNIDADE: TStringField;
    DBEdit2: TDBEdit;
    dsProduto: TDataSource;
    dbpsqsUnidade: TDBPesquisa;
    DBEdit1: TDBEdit;
    procedure cdsProdutoComposicaoCalcFields(DataSet: TDataSet);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure edtUnitarioExit(Sender: TObject);
    procedure edtQtdeExit(Sender: TObject);
    procedure edpesMatPrimaPesquisa(Sender: TObject; var Retorno: string);
    procedure edpesMatPrimaedtCampoExit(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actIncluirPedidoExecute(Sender: TObject);
    procedure actAdicionarExecute(Sender: TObject);
    procedure dbpsqsUnidadePesquisa(Sender: TObject; var Retorno: string);
    procedure cdsProdutoAfterInsert(DataSet: TDataSet);
    procedure cdsProdutoBeforePost(DataSet: TDataSet);
  private
    FProduto: string;
    FUnitario: Currency;
    FTotal: Currency;
    FIdProduto: integer;
    FQtde: Extended;
    FUnidade: string;
    FTotalInsumos: Currency;
    procedure SetIdProduto(const Value: integer);
    procedure SetProduto(const Value: string);
    procedure SetQtde(const Value: Extended);
    procedure SetTotal(const Value: Currency);
    procedure SetUnidade(const Value: string);
    procedure SetUnitario(const Value: Currency);

    procedure AdicionaInsumo();
    procedure NovoInsumo();
    function ValidarInsumo(): Boolean;
    procedure SetTotalInsumos(const Value: Currency);
  public
    property IdProduto: integer read FIdProduto write SetIdProduto;
    property Produto: string read FProduto write SetProduto;
    property Unidade: string read FUnidade write SetUnidade;
    property Qtde: Extended read FQtde write SetQtde;
    property Unitario: Currency read FUnitario write SetUnitario;
    property Total: Currency read FTotal write SetTotal;
    property TotalInsumos: Currency read FTotalInsumos write SetTotalInsumos;

    procedure Iniciar();
  end;

var
  Frm_PedidoVenda_NovoProduto: TFrm_PedidoVenda_NovoProduto;

implementation

uses
  UConsulta, u_Mensagem, UFuncoes, UDM;

{$R *.dfm}

procedure TFrm_PedidoVenda_NovoProduto.actAdicionarExecute(Sender: TObject);
begin
  inherited;
  if ValidarInsumo then
  begin
    AdicionaInsumo;
    TotalInsumos := cdsProdutoComposicaoSUBTOTAL.Value;
    NovoInsumo;
  end;
end;

procedure TFrm_PedidoVenda_NovoProduto.actIncluirPedidoExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_PedidoVenda_NovoProduto.actSairExecute(Sender: TObject);
begin
  FIdProduto := -1;
  inherited;
end;

function TFrm_PedidoVenda_NovoProduto.ValidarInsumo: Boolean;
begin
  Result := True;
  if (edpesMatPrima.Campo.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe o Material.');
    edpesMatPrima.Campo.SetFocus;
    Exit;
  end;

  if ((Qtde = 0) or (Unitario = 0)) then
  begin
    Result := False;
    TMensagem.Atencao('Quantidade e Preço unitário nao podem ser 0,00');
    edtQtde.SetFocus;
    Exit;
  end;
end;

procedure TFrm_PedidoVenda_NovoProduto.AdicionaInsumo;
begin
  cdsProdutoComposicao.Append;
  cdsProdutoComposicao.FieldByName('ID_MATPRIMA').AsInteger := StrToInt(edpesMatPrima.Campo.Text);
  cdsProdutoComposicao.FieldByName('QTDE').AsFloat := FQtde;
  cdsProdutoComposicao.FieldByName('CUSTO_UNIT').AsCurrency := FUnitario;
  cdsProdutoComposicao.FieldByName('CUSTO_TOTAL').AsCurrency := (FQtde * FUnitario);
  cdsProdutoComposicao.FieldByName('MATERIAL').AsString := edpesMatPrima.Mostrar.Text;
  cdsProdutoComposicao.FieldByName('UND').AsString := FUnidade;
  cdsProdutoComposicao.Post;
end;

procedure TFrm_PedidoVenda_NovoProduto.cdsProdutoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsProdutoPRECO_VENDA.AsCurrency := 0;
end;

procedure TFrm_PedidoVenda_NovoProduto.cdsProdutoBeforePost(DataSet: TDataSet);
begin
  inherited;
  cdsProdutoULTIMA_ALTERACAO.AsString := DM.UsuarioDataHora;
end;

procedure TFrm_PedidoVenda_NovoProduto.cdsProdutoComposicaoCalcFields(DataSet: TDataSet);
begin
  inherited;
//  cdsMatPrimaTOTAL.AsCurrency := RoundABNT((cdsMatPrimaQTDE.AsFloat*cdsMatPrimaUNITARIO.AsCurrency),2);
end;

procedure TFrm_PedidoVenda_NovoProduto.dbpsqsUnidadePesquisa(Sender: TObject; var Retorno: string);
var
  aRet: TRetornoUnidade;
begin
  inherited;
  aRet := Consulta.Unidade;
  if aRet.Codigo > 0 then
    Retorno := IntToStr(aRet.Codigo);
end;

procedure TFrm_PedidoVenda_NovoProduto.edpesMatPrimaedtCampoExit(Sender: TObject);
begin
  inherited;
  with DadosProduto(StrToInt(edpesMatPrima.Campo.Text)) do
  begin
    IdProduto := StrToInt(edpesMatPrima.Campo.Text);
    Produto := DESCRI;
    Unidade := UND;
    Unitario := PRECO_FRAGMENTADO;
  end;
  Qtde := 1;
  Total := (FQtde * FUnitario);
end;

procedure TFrm_PedidoVenda_NovoProduto.edpesMatPrimaPesquisa(Sender: TObject; var Retorno: string);
var
  aRet: TRetornoProduto;
begin
  inherited;
  try
    aRet := Consulta.Produto(QuotedStr('MP'), 'Consulta de Matéria-Prima');
    if (aRet.iCodigo > 0) then
    begin
      Retorno := aRet.iCodigo.ToString;
      IdProduto := aRet.iCodigo;
      Unidade := aRet.sUM_Conv;
      Qtde := 1;
      Unitario := aRet.PrecoFragmentado;
      Total := aRet.PrecoFragmentado;
      Produto := aRet.Descricao;
    end;
  finally
//    FreeAndNil(aRet);
  end;
end;

procedure TFrm_PedidoVenda_NovoProduto.edtQtdeExit(Sender: TObject);
var
  lValor: Extended;
begin
  inherited;
  if TryStrToFloat(edtQtde.Text, lValor) then
    Qtde := lValor
  else
    Qtde := 1;
end;

procedure TFrm_PedidoVenda_NovoProduto.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not CharInSet(Key, [#8, #13, ',', '0'..'9']) then
    Key := #0;
end;

procedure TFrm_PedidoVenda_NovoProduto.edtUnitarioExit(Sender: TObject);
var
  lValor: Currency;
begin
  inherited;
  if TryStrToCurr(edtUnitario.Text, lValor) then
    Unitario := lValor
  else
    Unitario := 0;
end;

procedure TFrm_PedidoVenda_NovoProduto.Iniciar;
begin
  FIdProduto := -1;
  Unidade := '';
  cdsProduto.Close;
  cdsProduto.CreateDataSet;
  cdsProdutoComposicao.Close;
  cdsProdutoComposicao.CreateDataSet;
  cdsProduto.Append;
end;

procedure TFrm_PedidoVenda_NovoProduto.NovoInsumo;
begin
  IdProduto := -1;
  Produto := '';
  Qtde := 1;
  Unitario := 0;
  Unidade := '';
  edpesMatPrima.Campo.SetFocus;
end;

procedure TFrm_PedidoVenda_NovoProduto.SetIdProduto(const Value: integer);
begin
  FIdProduto := Value;
  if Value = -1 then
    edpesMatPrima.Campo.Text := ''
  else
    edpesMatPrima.Campo.Text := Value.ToString;
end;

procedure TFrm_PedidoVenda_NovoProduto.SetProduto(const Value: string);
begin
  FProduto := Value;
  edpesMatPrima.Mostrar.Text := Value;
end;

procedure TFrm_PedidoVenda_NovoProduto.SetQtde(const Value: Extended);
begin
  FQtde := Value;
  edtQtde.Text := FormatFloat('#,##0.000', FQtde);
  Total := (FQtde * FUnitario);
end;

procedure TFrm_PedidoVenda_NovoProduto.SetTotal(const Value: Currency);
begin
  FTotal := Value;
  edtTotal.Text := FormatCurr('#,##0.00', FTotal);
end;

procedure TFrm_PedidoVenda_NovoProduto.SetTotalInsumos(const Value: Currency);
begin
  FTotalInsumos := Value;
  lblItensSubTotal.Caption := FormatCurr('#,##0.00',Value);
end;

procedure TFrm_PedidoVenda_NovoProduto.SetUnidade(const Value: string);
begin
  FUnidade := Value;
  lblUnidade.Caption := FUnidade;
end;

procedure TFrm_PedidoVenda_NovoProduto.SetUnitario(const Value: Currency);
begin
  FUnitario := Value;
  edtUnitario.Text := FormatCurr('#,##0.00', FUnitario);
  Total := (FQtde * FUnitario);
end;

end.


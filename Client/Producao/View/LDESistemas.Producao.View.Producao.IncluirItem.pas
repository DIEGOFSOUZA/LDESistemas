unit LDESistemas.Producao.View.Producao.IncluirItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, UEDPesquisa,
  UDBPesquisa, Vcl.Samples.Spin, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Datasnap.DBClient;

type
  TFrmProducaoIncluirItem = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlLeft: TPanel;
    pnlRight: TPanel;
    pnlBotoes: TPanel;
    pnlCancelar: TPanel;
    pnlIncluir: TPanel;
    btnCancelar: TSpeedButton;
    btnIncluir: TSpeedButton;
    edpesProduto: TEdPesquisa;
    lblProduto: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edtValidade: TEdit;
    Label3: TLabel;
    edtLote: TEdit;
    pnlEstoque: TPanel;
    pnlCusto: TPanel;
    pnlTitInsumo: TPanel;
    lblTitInsumo: TLabel;
    lbl1: TLabel;
    Label4: TLabel;
    lblEstoque: TLabel;
    lblCusto: TLabel;
    pnlGrid: TPanel;
    dbgrdPedidos: TDBGrid;
    dsInsumo: TDataSource;
    edtQtde: TEdit;
    cdsInsumo: TClientDataSet;
    cdsInsumoINSUMO: TStringField;
    cdsInsumoID_INSUMO: TIntegerField;
    cdsInsumoQTDE: TFloatField;
    cdsInsumoQTDE_ESTOQUE: TFloatField;
    cdsInsumoUNIDADE: TStringField;
    Label5: TLabel;
    cbbUnidade: TComboBox;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure edtValidadeKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edtQtdeChange(Sender: TObject);
    procedure edtQtdeEnter(Sender: TObject);
    procedure edpesProdutoPesquisa(Sender: TObject; var Retorno: string);
  private
    FCustoProducao: Currency;
    FEstoqueAtual: Extended;
    FIDLote: Integer;
    FQtde: Extended;
    FPRODUTO: String;
    FID_PRODUTO: Integer;
    FID_UND: integer;
    FLOTE: String;
    FUNIDADE: String;
    FVALIDADE: TDate;
    FRetorno: string;
    FQtdeConversao: Double;
    procedure SetCustoProducao(const Value: Currency);
    procedure SetEstoques(aValue: string);
    procedure Iniciar();
    procedure Insumos();
    procedure SetQtde(const Value: Extended);
    procedure Unidades(aValue,aValue2: string);
  public
    property EstoqueAtual : Extended read FEstoqueAtual write FEstoqueAtual;
    property Qtde : Extended read FQtde write SetQtde;
    property QtdeConversao : Double read FQtdeConversao write FQtdeConversao;
    property CustoProducao : Currency read FCustoProducao write SetCustoProducao;
    property ID_PRODUTO: Integer read FID_PRODUTO write FID_PRODUTO;
    property PRODUTO: string read FPRODUTO write FPRODUTO;
    property LOTE: string read FLOTE write FLOTE;
    property VALIDADE: TDate read FVALIDADE write FVALIDADE;
    property ID_UND: integer read FID_UND write FID_UND;
    property UNIDADE: string read FUNIDADE write FUNIDADE;
    property Retorno: string read FRetorno write FRetorno;
  end;

var
  FrmProducaoIncluirItem: TFrmProducaoIncluirItem;

implementation

uses
  u_Mensagem, uFormat, UDM, UConsulta;

{$R *.dfm}

{ TFrmProducaoIncluirItem }

procedure TFrmProducaoIncluirItem.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Retorno := 'cancel';
  Close;
end;

procedure TFrmProducaoIncluirItem.btnIncluirClick(Sender: TObject);
var
  lData: TDateTime;
begin
  inherited;
  try
    LOTE := edtLote.Text;
    if TryStrToDate(edtValidade.Text,lData) then
      VALIDADE := lData
    else
      VALIDADE := 0;

    Retorno := 'sucess';
    Close;
  except
    TMensagem.Erro('Não foi possível incluir o produto.'+sLineBreak+'Tente novamente.');
  end;
end;

procedure TFrmProducaoIncluirItem.edpesProdutoPesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoProduto;
begin
  inherited;
  aRet := Consulta.Produto(QuotedStr('PA'), 'Consulta de Produto');
  if (aRet.iCodigo > 0) then
  begin
    Retorno := aRet.iCodigo.ToString;
    Unidades(aRet.sUM,aRet.sUM_Conv);
    ID_PRODUTO := aRet.iCodigo;
    PRODUTO := aRet.Descricao;
    ID_UND := aRet.IdUnid;
    UNIDADE := aRet.sUM;
  end;

end;

procedure TFrmProducaoIncluirItem.edtQtdeChange(Sender: TObject);
var
  lValue: Extended;
begin
  inherited;
  if TryStrToFloat(edtQtde.Text,lValue) then
  begin
    Qtde := lValue;
    Insumos;
  end;
end;

procedure TFrmProducaoIncluirItem.edtQtdeEnter(Sender: TObject);
begin
  inherited;
  Insumos;
end;

procedure TFrmProducaoIncluirItem.edtQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0;

//  Formatar(edtQtde, TFormato.Peso);
end;

procedure TFrmProducaoIncluirItem.edtValidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Formatar(edtValidade, TFormato.Dt);
end;

procedure TFrmProducaoIncluirItem.FormShow(Sender: TObject);
begin
  inherited;
  Iniciar;
end;

procedure TFrmProducaoIncluirItem.Iniciar;
begin
  edtQtde.Text := FormatFloat('##0.000',1);
  EstoqueAtual := 0;
  SetEstoques('0');
  CustoProducao := 0;
  edpesProduto.Campo.SetFocus;
end;

procedure TFrmProducaoIncluirItem.Insumos;
const
  SQL = 'select ID_MATPRIMA id, p.nome descri, QTDE, coalesce(CUSTO_TOTAL,0) custo,'+
        'u.sigla unidade '+
        'from PRODUTO_COMPOSICAO c '+
        'left join produto p on (p.codigo = c.id_matprima) '+
        'left join unidade u on (u.codigo=coalesce(p.conv_unidade,p.cod_unidade)) '+
        'where c.id_produto = %s '+
        'order by p.nome';
var
  lCusto: Currency;
begin
  if ((edpesProduto.Mostrar.Text = '') or (edtQtde.Text = '')) then
    Exit;

  lCusto := 0;
  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[edpesProduto.Campo.Text]));

  if (not DM.dsConsulta.IsEmpty) then
  begin
    cdsInsumo.Close;
    cdsInsumo.CreateDataSet;

    DM.dsConsulta.First;
    while not DM.dsConsulta.Eof do
    begin
      cdsInsumo.Append;
      cdsInsumo.FieldByName('ID_INSUMO').AsInteger := DM.dsConsulta.FieldByName('ID').AsInteger;
      cdsInsumo.FieldByName('INSUMO').AsString := DM.dsConsulta.FieldByName('DESCRI').AsString;
      cdsInsumo.FieldByName('QTDE').AsFloat := DM.dsConsulta.FieldByName('QTDE').AsFloat * FQtde;
      cdsInsumo.FieldByName('QTDE_ESTOQUE').AsFloat := DM.dsConsulta.FieldByName('ID').AsInteger;
      cdsInsumo.FieldByName('UNIDADE').AsString := DM.dsConsulta.FieldByName('UNIDADE').AsString;
      lCusto := lCusto + (DM.dsConsulta.FieldByName('CUSTO').AsCurrency * FQtde);
      cdsInsumo.Post;
      DM.dsConsulta.Next;
    end;

    EstoqueAtual := cdsInsumo.FieldByName('QTDE_ESTOQUE').AsFloat;
    SetEstoques(edtQtde.Text);
    CustoProducao := lCusto;
  end;
end;

procedure TFrmProducaoIncluirItem.SetCustoProducao(const Value: Currency);
begin
  FCustoProducao := Value;
  lblCusto.Caption := FormatCurr('R$ #,##0.00',Value);
end;


procedure TFrmProducaoIncluirItem.SetEstoques(aValue: string);
var
  lValor: Extended;
begin
  if not TryStrToFloat(aValue,lValor) then
    lValor := 1;

//  Qtde := lValor;
  lblEstoque.Caption := FormatFloat('#,##0.000 ',EstoqueAtual)+
                        FormatFloat('(#,##0.000)',EstoqueAtual+lValor)
end;

procedure TFrmProducaoIncluirItem.SetQtde(const Value: Extended);
const
  SQL = 'select cast((coalesce(p.conv_qtde,1) * %s) as numeric(15,3)) qtde ' +
        'from produto p ' +
        'where p.codigo = %s';
begin
  FQtde := Value;
  if FQtde = 0 then
    FQtdeConversao := 0
  else
    FQtdeConversao := DM.GetFloat(Format(SQL, [Value.ToString,FID_PRODUTO.ToString]), 'qtde');
end;

procedure TFrmProducaoIncluirItem.Unidades(aValue,aValue2: string);
begin
  cbbUnidade.Items.Clear;
  cbbUnidade.Items.Add(aValue);
  if (aValue2 <> '') then
    cbbUnidade.Items.Add(aValue2);
  cbbUnidade.ItemIndex := 0;
end;

end.

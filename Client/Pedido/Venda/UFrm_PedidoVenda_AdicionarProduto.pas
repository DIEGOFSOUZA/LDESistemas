unit UFrm_PedidoVenda_AdicionarProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, UEDPesquisa;

type
  TFrm_PedidoVenda_AdicionarProduto = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlTop: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edpesMatPrima: TEdPesquisa;
    edtQtde: TEdit;
    edtUnitario: TEdit;
    edtTotal: TEdit;
    pnlBotton: TPanel;
    pnlGravar: TPanel;
    lblGravar: TLabel;
    pnlCancelar: TPanel;
    lblCancelar: TLabel;
    edtDesconto: TEdit;
    lbl1: TLabel;
    actIncluirPedido: TAction;
    lblUnidade: TLabel;
    procedure edpesMatPrimaPesquisa(Sender: TObject; var Retorno: string);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure actSairExecute(Sender: TObject);
    procedure actIncluirPedidoExecute(Sender: TObject);
    procedure edtQtdeExit(Sender: TObject);
  private
    FTotal: Currency;
    FIdProduto: integer;
    FQtde: Extended;
    FUnitario: Currency;
    FDesconto: Currency;
    FUnidade: string;
    procedure SetTotal(const Value: Currency);
    procedure SetUnitario(const Value: Currency);
    procedure SetDesconto(const Value: Currency);
    function ValidarCampos(): Boolean;
    procedure SetQtde(const Value: Extended);
    procedure SetUnidade(const Value: string);
    procedure SetIdProduto(const Value: integer);
  public
//    property :  read F write Set;
    property IdProduto: integer read FIdProduto write SetIdProduto;
    property Unidade: string read FUnidade write SetUnidade;
    property Qtde: Extended read FQtde write SetQtde;
    property Unitario: Currency read FUnitario write SetUnitario;
    property Desconto: Currency read FDesconto write SetDesconto;
    property Total: Currency read FTotal write SetTotal;

    procedure Iniciar();
  end;

var
  Frm_PedidoVenda_AdicionarProduto: TFrm_PedidoVenda_AdicionarProduto;

implementation

uses
  UConsulta, UDM, u_Mensagem, ACBrValidador;

{$R *.dfm}

procedure TFrm_PedidoVenda_AdicionarProduto.actIncluirPedidoExecute(
  Sender: TObject);
begin
  inherited;
  if not ValidarCampos then
    Exit;

  FIdProduto := StrToInt(edpesMatPrima.Campo.Text);
  Close;
end;

procedure TFrm_PedidoVenda_AdicionarProduto.actSairExecute(Sender: TObject);
begin
  FIdProduto := -1;
  inherited;
end;

procedure TFrm_PedidoVenda_AdicionarProduto.edpesMatPrimaPesquisa(
  Sender: TObject; var Retorno: string);
var
  aRet: TRetornoProduto;
begin
  inherited;
  try
    aRet := Consulta.Produto(QuotedStr('PA'), 'Consulta de Produtos');
    if (aRet.iCodigo > 0) then
    begin
      Retorno := aRet.iCodigo.ToString;
      IdProduto := aRet.iCodigo;
      Unidade := aRet.sUM;
      Qtde := 1;
      Unitario := aRet.cPreco;
      Desconto := 0;
      Total := aRet.cPreco;
    end;
  finally
//    FreeAndNil(aRet);
  end;
end;

procedure TFrm_PedidoVenda_AdicionarProduto.edtQtdeExit(Sender: TObject);
begin
  inherited;
  Qtde := StrToFloat(edtQtde.Text)
end;

procedure TFrm_PedidoVenda_AdicionarProduto.edtQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not CharInSet(Key, [#8, #13, ',', '0'..'9']) then
    Key := #0;
end;

procedure TFrm_PedidoVenda_AdicionarProduto.Iniciar;
begin
  edpesMatPrima.Campo.SetFocus;
end;

procedure TFrm_PedidoVenda_AdicionarProduto.SetDesconto(const Value: Currency);
begin
  FDesconto := Value;
  edtDesconto.Text := FormatCurr('#,##0.00',FDesconto);
end;

procedure TFrm_PedidoVenda_AdicionarProduto.SetIdProduto(const Value: integer);
begin
  FIdProduto := Value;
end;

procedure TFrm_PedidoVenda_AdicionarProduto.SetQtde(const Value: Extended);
begin
  FQtde := Value;
  edtQtde.Text := FormatFloat('#,##0.000',FQtde);
end;

procedure TFrm_PedidoVenda_AdicionarProduto.SetTotal(const Value: Currency);
begin
  FTotal := Value;
  edtTotal.Text := FormatCurr('#,##0.00',FTotal);
end;

procedure TFrm_PedidoVenda_AdicionarProduto.SetUnidade(const Value: string);
begin
  FUnidade := Value;
  lblUnidade.Caption := FUnidade;
end;

procedure TFrm_PedidoVenda_AdicionarProduto.SetUnitario(const Value: Currency);
begin
  FUnitario := Value;
  edtUnitario.Text := FormatCurr('#,##0.00',FUnitario);
end;

function TFrm_PedidoVenda_AdicionarProduto.ValidarCampos: Boolean;
var
  lValor: Extended;
begin
  Result := True;
  if (edpesMatPrima.Campo.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe o Produto.');
    edpesMatPrima.Campo.SetFocus;
    Exit;
  end;

  if not TryStrToFloat(edtQtde.Text,FQtde) then
  begin
    Result := False;
    TMensagem.Atencao('Informe a Quantidade.');
    edtQtde.SetFocus;
    Exit;
  end;

  if not TryStrToCurr(edtUnitario.Text,FUnitario) then
  begin
    Result := False;
    TMensagem.Atencao('Informe o Preço Unitário.');
    edtUnitario.SetFocus;
    Exit;
  end;

  if not TryStrToCurr(edtDesconto.Text,FDesconto) then
  begin
    Result := False;
    Desconto := 0;
    Exit;
  end;

end;

end.

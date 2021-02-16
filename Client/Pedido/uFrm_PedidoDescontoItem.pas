unit uFrm_PedidoDescontoItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child,
  Vcl.StdCtrls, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Datasnap.DBClient;

type
  TFrm_PedidoDescontoItem = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlInfProduto: TPanel;
    pnlDados: TPanel;
    pnlBotoes: TPanel;
    pnlVlFinal: TPanel;
    lblProduto: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtQtde: TEdit;
    cbbUn: TComboBox;
    edtVlUnit: TEdit;
    edtDesc: TEdit;
    cbbDesc: TComboBox;
    Label6: TLabel;
    lblVlFinal: TLabel;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    actlst1: TActionList;
    actSalvar: TAction;
    actCancelar: TAction;
    procedure actCancelarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure edtVlUnitKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdeChange(Sender: TObject);
    procedure edtVlUnitChange(Sender: TObject);
    procedure edtDescChange(Sender: TObject);
    procedure cbbDescChange(Sender: TObject);
  private
    FNomeProduto: string;
    FVlDesconto: Currency;
    FIdUnidade: Integer;
    FPreco: Currency;
    FVlTotal: Currency;
    FUnidade: string;
    FQtde: Extended;
    FDesconto: Currency;
    FIdProduto: string;
    procedure SetIdUnidade(const Value: Integer);
    procedure SetPreco(const Value: Currency);
    procedure SetVlDesconto(const Value: Currency);
    procedure SetVlTotal(const Value: Currency);
    procedure SetQtde(const Value: Extended);
    procedure SetDesconto(const Value: Currency);

  public
    cds: TClientDataSet;
    property IdProduto: string read FIdProduto;
    property NomeProduto: string read FNomeProduto;
    property Qtde: Extended read FQtde write SetQtde;
    property Unidade: string read FUnidade;
    property IdUnidade: Integer read FIdUnidade write SetIdUnidade;
    property Preco: Currency read FPreco write SetPreco;
    property Desconto: Currency read FDesconto write SetDesconto;
    property VlDesconto: Currency read FVlDesconto write SetVlDesconto;
    property VlTotal: Currency read FVlTotal write SetVlTotal;

    procedure LoadUnidades();
  end;

var
  Frm_PedidoDescontoItem: TFrm_PedidoDescontoItem;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFrm_PedidoDescontoItem.actCancelarExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_PedidoDescontoItem.actSalvarExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_PedidoDescontoItem.cbbDescChange(Sender: TObject);
begin
  inherited;
  if cbbDesc.ItemIndex = 0 then//reais
  begin
    edtDesc.Text := FormatCurr('#,##0.00', 0);
    Label5.Caption := 'Desconto R$';
  end
  else
  begin
    edtDesc.Text := FormatCurr('#,##0.000', 0);
    Label5.Caption := 'Desconto (%)';
  end;
end;

procedure TFrm_PedidoDescontoItem.edtQtdeChange(Sender: TObject);
var
  lQtde: Extended;
begin
  inherited;
  if TryStrToFloat(edtQtde.Text, lQtde) then
    Qtde := lQtde;
end;

procedure TFrm_PedidoDescontoItem.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0;
end;

procedure TFrm_PedidoDescontoItem.edtDescChange(Sender: TObject);
var
  lDesconto: Currency;
begin
  inherited;
  if TryStrToCurr(edtDesc.Text, lDesconto) then
  begin
    Desconto := lDesconto;
  end;
end;

procedure TFrm_PedidoDescontoItem.edtDescKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0;
end;

procedure TFrm_PedidoDescontoItem.edtVlUnitChange(Sender: TObject);
var
  lPreco: Currency;
begin
  inherited;
  if TryStrToCurr(edtVlUnit.Text, lPreco) then
    Preco := lPreco;
end;

procedure TFrm_PedidoDescontoItem.edtVlUnitKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0;
end;

procedure TFrm_PedidoDescontoItem.LoadUnidades;
const
  SQL = 'select a.COD_UNIDADE id_unidade,b.SIGLA,a.PRECO_VENDA preco ' +
        'from PRODUTO a ' +
        'left outer join UNIDADE b on (b.CODIGO = a.COD_UNIDADE) ' +
        'where a.CODIGO = %s ' +
        'union all ' +
        'select c.CONV_UNIDADE,d.SIGLA,c.CONV_PRECO ' +
        'from PRODUTO c ' +
        'left outer join UNIDADE d on (d.CODIGO = c.CONV_UNIDADE) ' +
        'where c.CODIGO = %s';
begin
  cds.Close;
  cds.Data := DM.LerDataSet(Format(SQL,[IdProduto,IdProduto]));

  if (not cds.IsEmpty) then
  begin
    cbbUn.Items.Clear;
    cds.First;
    while not cds.Eof do
    begin
      cbbUn.Items.Add(cds.FieldByName('sigla').AsString);
      cds.Next;
    end;
  end;
end;

procedure TFrm_PedidoDescontoItem.SetDesconto(const Value: Currency);
begin
  FDesconto := Value;
  if cbbDesc.ItemIndex = 0 then //reais
  begin
    VlTotal := VlTotal - FDesconto;
  end
  else   //percentual
  begin
    VlTotal := VlTotal - ((VlTotal / 100) * FDesconto);
  end;
end;

procedure TFrm_PedidoDescontoItem.SetIdUnidade(const Value: Integer);
begin
  FIdUnidade := Value;
end;

procedure TFrm_PedidoDescontoItem.SetPreco(const Value: Currency);
begin
  FPreco := Value;
  VlTotal := ((FQtde * FPreco) - FVlDesconto);
end;

procedure TFrm_PedidoDescontoItem.SetQtde(const Value: Extended);
begin
  FQtde := Value;
  VlTotal := ((FQtde * FPreco) - FVlDesconto);
end;

procedure TFrm_PedidoDescontoItem.SetVlDesconto(const Value: Currency);
begin
  FVlDesconto := Value;
  if Value > 0 then
  begin
    VlTotal := VlTotal - Value;
  end;
end;

procedure TFrm_PedidoDescontoItem.SetVlTotal(const Value: Currency);
begin
  FVlTotal := Value;
  lblVlFinal.Caption := FormatCurr('#,##0.00', Value);
end;

end.


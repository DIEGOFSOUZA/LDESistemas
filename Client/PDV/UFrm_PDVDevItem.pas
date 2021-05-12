unit UFrm_PDVDevItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_PDVDevItem = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlRodape: TPanel;
    pnlTotais: TPanel;
    pnlConfirmar: TPanel;
    pnlDevolv: TPanel;
    pnlConfirma: TPanel;
    btnConfirma: TSpeedButton;
    actConfirma: TAction;
    pnlDevCenter: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    pnlOpcao: TPanel;
    lblDevolvendo: TLabel;
    cbbOpcao: TComboBox;
    pnlCenter: TPanel;
    pnlCliente: TPanel;
    lblTitPreco: TLabel;
    pnlItem: TPanel;
    lbl1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    pnlGrid: TPanel;
    pnlQtdeADevolver: TPanel;
    pnlTitVendas: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    pnlGrid1: TPanel;
    dbgrdItens: TDBGrid;
    dsItens: TDataSource;
    cdsItens: TClientDataSet;
    cdsItensID: TIntegerField;
    cdsItensTIPO: TStringField;
    cdsItensORDEM: TIntegerField;
    cdsItensID_PRODUTO: TIntegerField;
    cdsItensQTDE: TCurrencyField;
    cdsItensQTDE_BAIXA: TCurrencyField;
    cdsItensSALDO: TStringField;
    cdsItensDESCRI_PROD: TStringField;
    cdsItensCLIENTE: TStringField;
    cdsItensCEP: TStringField;
    cdsItensCPF_CNPJ: TStringField;
    cdsItensTELEFONE1: TStringField;
    cdsItensEMAIL: TStringField;
    cdsItensENDERECO: TStringField;
    cdsItensBAIRRO: TStringField;
    cdsItensNUMERO: TStringField;
    cdsItensCOMPLEMENTO: TStringField;
    cdsItensTOT_GERAL: TFMTBCDField;
    cdsItensTOTAL_DEV: TFMTBCDField;
    cdsItensTOT_ATUAL: TFMTBCDField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    dbtxtTOT_ATUAL: TDBText;
    dbtxtTOTAL_DEV: TDBText;
    dbtxtTOT_GERAL: TDBText;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    pnlQtde: TPanel;
    Label16: TLabel;
    edtQtde: TEdit;
    pnlOk: TPanel;
    btnOk: TSpeedButton;
    actOk: TAction;
    cdsItensVL_TOTAL: TFMTBCDField;
    cdsItensIDCLIENTE: TIntegerField;
    cdsItensQTDE_DISPONIVEL: TCurrencyField;
    cdsItemSet: TClientDataSet;
    cdsItemSetTIPO: TStringField;
    cdsItemSetID: TIntegerField;
    cdsItemSetORDEM: TIntegerField;
    cdsItemSetID_PROD: TIntegerField;
    cdsItemSetQTDE: TFloatField;
    cdsItemSetQTDE_BAIXA: TFloatField;
    cdsItemSetNOVA_QTDE_DISP: TFloatField;
    pnlDevolvidos: TPanel;
    procedure actConfirmaExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure dbgrdItensDblClick(Sender: TObject);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure edtQtdeChange(Sender: TObject);
  private
    FVDevolucao: Currency;
    FQtdeDevolvendo: Extended;
    FVlUnitario: Currency;
    FQtdeDisponivel: Extended;
    FIDProduto: Integer;
    procedure SetVDevolucao(const Value: Currency);
    { Private declarations }
  public
    property VDevolucao:Currency read FVDevolucao write SetVDevolucao;
    property QtdeDevolvendo: Extended read FQtdeDevolvendo;
    property QtdeDisponivel: Extended read FQtdeDisponivel;
    property VlUnitario: Currency read FVlUnitario;
    property IDProduto: Integer read FIDProduto;

    procedure Executar(aTipo: string; aID: integer);
  end;

var
  Frm_PDVDevItem: TFrm_PDVDevItem;

implementation

uses
  UDM, u_Mensagem, ACBrUtil, UMakeReadWrite, UFuncoes;

{$R *.dfm}

procedure TFrm_PDVDevItem.actConfirmaExecute(Sender: TObject);
var
  lCaixa: TCaixa;
begin
  inherited;
  if (cbbOpcao.ItemIndex < 1) then
  begin
    TMensagem.Atencao('Selecione o que deseja: Vale ao Cliente ou Devolucao do dinheiro');
    cbbOpcao.SetFocus;
  end;

  if (cbbOpcao.ItemIndex = 2) then //Devolucao do dinheiro
  begin
    lCaixa := CaixaFechado;
    if lCaixa.Fechado then
    begin
      TMensagem.Informacao('Devolução de valor não é possível. Caixa Fechado.');
      Abort;
    end
    else
    begin
      if DM.SMOrcamento.setDevolucao(DM.BancoDados, DM.UsuarioDataHora, VDevolucao, cdsItens.FieldByName('IDCLIENTE').AsInteger, cdsItemSet.Data, lCaixa.ID) then
      begin
        TMensagem.Informacao('Devolução realizada com sucesso.');
        actSair.Execute;
      end;
    end
  end
  else if (cbbOpcao.ItemIndex = 1) then //Vale
  begin
    if DM.SMOrcamento.setDevolucao(DM.BancoDados, DM.UsuarioDataHora, VDevolucao, cdsItens.FieldByName('IDCLIENTE').AsInteger, cdsItemSet.Data,0) then
    begin
      actSair.Execute;
      TMensagem.Informacao('Devolução realizada com sucesso.');
    end;
  end;
end;

procedure TFrm_PDVDevItem.actOkExecute(Sender: TObject);
var
  lQtdeBaixa,lNovaQtde,lQtdeJaDevolvida: Extended;
begin
  inherited;
  if (QtdeDevolvendo > QtdeDisponivel) then
  begin
    TMensagem.Atencao('Quantidade não pode ser superior à quantidade total do item.');
    edtQtde.SetFocus;
    edtQtde.SelectAll;
    Exit;
  end;

  cdsItens.Locate('id_produto',IDProduto,[]);
  lQtdeJaDevolvida := StrToFloat(Copy(cdsItens.FieldByName('SALDO').AsString,1,Pos('/',cdsItens.FieldByName('SALDO').AsString)-1));
  cdsItens.Edit;
  cdsItens.FieldByName('SALDO').AsString := FormatFloat('##0',lQtdeJaDevolvida+QtdeDevolvendo) +
                            '/'+cdsItens.FieldByName('QTDE').AsInteger.ToString;
  cdsItens.Post;

  lQtdeBaixa := ((cdsItens.FieldByName('QTDE_BAIXA').AsFloat/cdsItens.FieldByName('QTDE').AsFloat)*QtdeDevolvendo);
  lNovaQtde := (cdsItens.FieldByName('QTDE_DISPONIVEL').AsFloat-QtdeDevolvendo);
  if cdsItemSet.Locate('id_prod', IDProduto, []) then
  begin
    cdsItemSet.Edit;
    cdsItemSet.FieldByName('QTDE').AsFloat := QtdeDevolvendo;
    cdsItemSet.FieldByName('QTDE_BAIXA').AsFloat := lQtdeBaixa;
    cdsItemSet.FieldByName('NOVA_QTDE_DISP').AsFloat := lNovaQtde;
  end
  else
  begin
    cdsItemSet.Append;
    cdsItemSet.FieldByName('TIPO').AsString := cdsItens.FieldByName('TIPO').AsString;
    cdsItemSet.FieldByName('ID').AsInteger := cdsItens.FieldByName('ID').AsInteger;
    cdsItemSet.FieldByName('ORDEM').AsInteger := cdsItens.FieldByName('ORDEM').AsInteger;
    cdsItemSet.FieldByName('ID_PROD').AsInteger := cdsItens.FieldByName('ID_PRODUTO').AsInteger;
    cdsItemSet.FieldByName('QTDE').AsFloat := QtdeDevolvendo;
    cdsItemSet.FieldByName('QTDE_BAIXA').AsFloat := lQtdeBaixa;
    cdsItemSet.FieldByName('NOVA_QTDE_DISP').AsFloat := lNovaQtde;
  end;
  cdsItemSet.Post;

  VDevolucao := VDevolucao + RoundABNT(QtdeDevolvendo * VlUnitario, -2);
  pnlQtde.Visible := False;
end;

procedure TFrm_PDVDevItem.dbgrdItensDblClick(Sender: TObject);
begin
  inherited;
  if cdsItens.IsEmpty then
    Exit;

  FVlUnitario := (cdsItens.FieldByName('VL_TOTAL').AsCurrency / cdsItens.FieldByName('QTDE').AsFloat);
  FQtdeDisponivel := cdsItens.FieldByName('QTDE_DISPONIVEL').AsFloat;
  FIDProduto := cdsItens.FieldByName('ID_PRODUTO').AsInteger;
  edtQtde.Text := '0';
  pnlQtde.Visible := True;
  edtQtde.SetFocus;
end;

procedure TFrm_PDVDevItem.edtQtdeChange(Sender: TObject);
var
  lValue: Extended;
begin
  inherited;
  if (not TryStrToFloat(edtQtde.Text, lValue)) then
    lValue := 0;
  FQtdeDevolvendo := lValue;
end;

procedure TFrm_PDVDevItem.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula

  if Key = #13 then
    actOk.Execute;
end;

procedure TFrm_PDVDevItem.Executar(aTipo: string; aID: integer);
const
  SQL = 'select ID, TIPO, ORDEM, ID_PRODUTO, QTDE, QTDE_BAIXA, QTDE_DISPONIVEL, VL_TOTAL, SALDO, DESCRI_PROD, IDCLIENTE, CLIENTE, CEP, CPF_CNPJ, TELEFONE1, EMAIL,'+
        '       ENDERECO, BAIRRO, NUMERO, COMPLEMENTO, sum(VL_TOTAL) over() TOT_GERAL, sum(TOT_DEV) over() TOTAL_DEV,'+
        '       sum(VL_TOTAL - TOT_DEV) over() TOT_ATUAL '+
        'from (select A.ID, A.TIPO, A.ORDEM, A.ID_PRODUTO, A.QTDE, A.QTDE_BAIXA, A.QTDE_DISPONIVEL, A.VL_TOTAL,'+
        '             cast(cast((A.QTDE - A.QTDE_DISPONIVEL) as integer) || ''/'' || cast(A.QTDE as integer) as varchar(10)) SALDO, cast('+
        '             case '+
        '               when A.QTDE_DISPONIVEL = 0 then A.VL_TOTAL '+
        '               when (A.QTDE > A.QTDE_DISPONIVEL) then ((A.QTDE - A.QTDE_DISPONIVEL) * (A.VL_TOTAL / A.QTDE)) '+
        '               else 0 '+
        '             end as numeric(10,2)) TOT_DEV, P.NOME DESCRI_PROD, C.CODIGO IDCLIENTE, C.NOME_RAZAO CLIENTE, C.CEP, C.CPF_CNPJ, C.TELEFONE1,'+
        '             C.EMAIL, C.ENDERECO, C.BAIRRO, C.NUMERO, C.COMPLEMENTO '+
        '      from PDV_ITENS A '+
        '      left join PRODUTO P on (P.CODIGO = A.ID_PRODUTO) '+
        '      left join PDV_MASTER PM on (PM.ID = A.ID and '+
        '            PM.TIPO = A.TIPO) '+
        '      left join CLIENTE C on (C.CODIGO = PM.ID_CLIENTE) '+
        '      where A.TIPO = %s and '+
        '            A.ID = %s and '+
        '            A.QTDE_DISPONIVEL > 0)';
begin
  VDevolucao := 0;
  cdsItemSet.Close;
  cdsItemSet.CreateDataSet;

  cdsItens.IndexFieldNames := 'ordem';
  cdsItens.Close;
  cdsItens.Data := DM.LerDataSet(Format(SQL,[QuotedStr(aTipo),aID.ToString]));
  if cdsItens.IsEmpty then
    pnlDevolvidos.BringToFront
  else
  begin
    pnlDevolvidos.SendToBack;
    UMakeReadWrite.MakeReadWrite(cdsItensSALDO);
  end;
end;

procedure TFrm_PDVDevItem.SetVDevolucao(const Value: Currency);
begin
  FVDevolucao := Value;
  lblDevolvendo.Caption := 'DEVOLVENDO: R$ '+FormatCurr('#,##0.00',Value)+' EM:';
end;

end.

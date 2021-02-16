unit UFrmBaixaContaPagar; {H366/W446}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, UEDPesquisa, Vcl.Imaging.pngimage, Vcl.Buttons;

const
  senha = '2020';

type
  TFrmBaixaContaPagar = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlTitulo: TPanel;
    pnlBotao: TPanel;
    lbl1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    imgCancelar: TImage;
    pnlBtnBaixar: TPanel;
    btnBaixar: TSpeedButton;
    imgBaixar: TImage;
    pnlBaixa: TPanel;
    Label1: TLabel;
    pnlDadosBaixa: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtValBaixa: TEdit;
    edtusuario: TEdit;
    edtVlDesconto: TEdit;
    edtVlJuros: TEdit;
    pnlCheque: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    edtNumCheque: TEdit;
    edtCompensa: TMaskEdit;
    edpsqsHistorico: TEdPesquisa;
    edpsqsConta: TEdPesquisa;
    edtDtBaixa: TMaskEdit;
    s1: TDataSource;
    procedure btnBaixarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edpsqsContaPesquisa(Sender: TObject; var Retorno: string);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtVlDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure edtVlDescontoExit(Sender: TObject);
    procedure edtVlJurosExit(Sender: TObject);
    procedure edtValBaixaExit(Sender: TObject);
    procedure edpsqsHistoricoPesquisa(Sender: TObject; var Retorno: string);
    procedure edtDtBaixaExit(Sender: TObject);
  private
    fVlPago: Currency;
    { Private declarations }
    procedure Executar(pTipo : string);
    procedure setVlPago(const Value: Currency);

    function GerarCheque(): Boolean;
  public
    { Public declarations }
    Retorno : string;
    IDNota : string;
    Duplicata : string;
    Baixada : Boolean;
    IdConta,IdCaixa,idHistorico : string;
    VlDuplicata : Currency;

    property VlPago : Currency read fVlPago write setVlPago;
  end;

var
  FrmBaixaContaPagar: TFrmBaixaContaPagar;

implementation

uses
  UFrmContasPagar, UDM, u_Mensagem, UConsulta, UFrm_VoltaSenha, UFuncoes;

{$R *.dfm}

procedure TFrmBaixaContaPagar.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Retorno := 'cancelar';
  Close;
end;

procedure TFrmBaixaContaPagar.btnBaixarClick(Sender: TObject);
begin
  inherited;
  if btnBaixar.Caption = '     Baixar' then
    Executar('baixa')
  else if btnBaixar.Caption = '     Restaurar' then
  begin
    if VoltaSenha() <> senha then
    begin
      TMensagem.Informacao('Senha incorreta.');
      Exit;
    end
    else
    begin
      Executar('restaurar');
    end;
  end;
end;

procedure TFrmBaixaContaPagar.edpsqsContaPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.ContaBancaria;
end;

procedure TFrmBaixaContaPagar.edpsqsHistoricoPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Historico(3,'DUPLICATA PAGA').ToString;
end;

procedure TFrmBaixaContaPagar.edtDtBaixaExit(Sender: TObject);
begin
  inherited;
  if (not ValidaData(edtDtBaixa.Text,True)) then
    edtDtBaixa.SelectAll;
end;

procedure TFrmBaixaContaPagar.edtValBaixaExit(Sender: TObject);
var
  lFormata: TFormataValor;
begin
  inherited;

  lFormata := ValidaFormataCurrency(edtValBaixa.Text);
  edtValBaixa.Text := lFormata.VlString;
end;

procedure TFrmBaixaContaPagar.edtVlDescontoExit(Sender: TObject);
var
  lFormata: TFormataValor;
begin
  inherited;

  lFormata := ValidaFormataCurrency(edtVlDesconto.Text);
  edtVlDesconto.Text := lFormata.VlString;

  VlPago := (VlDuplicata + StrToCurr(edtVlJuros.Text)) - lFormata.vlFloat;
end;

procedure TFrmBaixaContaPagar.edtVlDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', '.', #8, #13]) then
    Key := #0;
end;

procedure TFrmBaixaContaPagar.edtVlJurosExit(Sender: TObject);
var
  lFormata: TFormataValor;
begin
  inherited;

  lFormata := ValidaFormataCurrency(edtVlJuros.Text);
  edtVlJuros.Text := lFormata.VlString;

  VlPago := (VlDuplicata + lFormata.vlFloat) - StrToCurr(edtVlDesconto.Text);
end;

procedure TFrmBaixaContaPagar.Executar(pTipo: string);
const
  SQLVinculo = 'SELECT r.ID_NOTAENTRADA||'' Duplicata: ''||lpad(r.NDUP,3,''0'') doc '+
               'FROM NOTA_ENTRADA_PAGAR r '+
               'where r.id_conta = %s and r.cheque_numero = %s';
var
  lSQL: string;
  lValor: string;
  lConta, lUsuario, lHistorico,
  lData, lCaixa, lFormaPagto,
  lDesc, lJuros: string;
  lNumCheque : string;
  lFormataValor : TFormataValor;
  lExisteCaixa: TCaixa;
begin
  inherited;

  if pTipo = 'baixa' then
  begin
    if (edpsqsHistorico.Campo.Text = '') then
    begin
      TMensagem.Atencao('Informe o histórico.');
      edpsqsHistorico.Campo.SetFocus;
      Abort;
    end;

    if (edpsqsConta.Campo.Text = '') then
    begin
      TMensagem.Atencao('Informe a conta.');
      edpsqsConta.Campo.SetFocus;
      Abort;
    end;

    if edpsqsConta.Campo.Text = '1' then {Conta Caixa PDV}
    begin
      lExisteCaixa := CaixaFechado;
      if (lExisteCaixa.ID > 0) then
      begin
        lCaixa := IntToStr(lExisteCaixa.ID);
      end
      else
      begin
        TMensagem.Atencao('Baixa não pode ser efetuada. Caixa PDV fechado/inexistente.');
        Abort;
      end;

      if StrToDate(edtDtBaixa.Text) <> date then
      begin
        TMensagem.Atencao('Baixa não pode ser efetuada. Utilizando conta caixa PDV e data de baixa diferente de hoje.');
        Abort;
      end;
    end
    else
      lCaixa := 'null';

    if ((edpsqsConta.Campo.Text = '1') and (Trim(edtNumCheque.Text) <> '')) then  {Caixa PDV - Pagto com cheque bloquear}
    begin
      TMensagem.Atencao('Para pagamento com cheque informe uma conta bancária válida.');
      edpsqsConta.Campo.SetFocus;
      Abort;
    end;

//    if (VlPago > VlDuplicata) then //no caso de juros o vl pago é maior que vl duplicata
//    begin
//      TMensagem.Atencao('Valor pago é maior que o valor da duplicata.');
//      edtValBaixa.SetFocus;
//      Abort;
//    end;
  end;

  lNumCheque := 'null';
  {Com cheque}
  if (edtNumCheque.Text <> '') then
  begin
    if ((Trim(edpsqsConta.Campo.Text) = '') or
    (Trim(StringReplace(edtCompensa.Text,'/','',[rfReplaceAll])) = '')) then
    begin
      TMensagem.Atencao('Campo obrigatório não informado.');
      Exit;
    end
    else
    begin
      {Valida se cheque ja esta vinculado a alguma duplicata}
      DM.dsConsulta.Close;
      DM.dsConsulta.Data := DM.LerDataSet(Format(SQLVinculo,[
                                                  QuotedStr(edpsqsConta.Campo.Text),
                                                  edtNumCheque.Text]));
      if not DM.dsConsulta.IsEmpty then
      begin
        TMensagem.Informacao('Cheque com vínculo ao Documento: '+DM.dsConsulta.FieldByName('doc').AsString);
        Exit ;
      end;

      {Valida se cheque ja foi cadastrado}
      DM.dsConsulta.Close;
      DM.dsConsulta.Data := DM.LerDataSet(Format('select a.NUM_CHEQUE from CHEQUE a '+
                                                 'where a.ID_BANCO = %s '+
                                                 'and a.NUM_CHEQUE = %s',[
                                                  QuotedStr(edpsqsConta.Campo.Text),
                                                  edtNumCheque.Text]));
      if DM.dsConsulta.IsEmpty then
        if not GerarCheque then
        begin
          TMensagem.Erro('Não foi possivel gerar o cheque.');
          Exit;
        end;
    end;

    lNumCheque := edtNumCheque.Text;
  end;

  if pTipo = 'restaurar' then
  begin
    lHistorico := 'null';
    lConta := 'null';
    lValor := 'null';
    lUsuario := 'null';
    lData := 'null';
    lCaixa := 'null';
    lFormaPagto := 'null';
    lDesc := 'null';
    lJuros := 'null';
    lNumCheque := 'null';
  end
  else  {baixando duplicata}
  begin
    lHistorico := edpsqsHistorico.Campo.Text;

    lValor := ValorFormatadoFirebird(edtValBaixa.Text);
    lDesc := ValorFormatadoFirebird(edtVlDesconto.Text);
    lJuros := ValorFormatadoFirebird(edtVlJuros.Text);
    lUsuario := QuotedStr(DM.UsuarioDataHora);
    lData := QuotedStr(FormatDateTime('dd.mm.yyyy', StrToDateDef(edtDtBaixa.Text,Date) ));

    if ((edpsqsConta.Campo.Text <> '') and (edpsqsConta.Campo.Text <> '0')) then
      lConta := QuotedStr(edpsqsConta.Campo.Text)
    else
      lConta := 'null';
  end;

  lSQL := 'update NOTA_ENTRADA_PAGAR a '+
          'set a.BAIXA_DATA = '+lData +
          ',' + 'a.BAIXA_VALOR = '+lValor+ //StringReplace(lValor,FormatSettings.DecimalSeparator,'.',[rfReplaceAll])+
          ',' + 'a.BAIXA_USUARIO = '+lUsuario+
          ',' + 'a.ID_HISTORICO = '+lHistorico+
          ',' + 'a.ID_CONTA = '+lConta+
          ',' + 'a.ID_CAIXA = '+lCaixa+
          ',' + 'a.VDESC = '+lDesc+ //StringReplace(lDesc,FormatSettings.DecimalSeparator,'.',[rfReplaceAll])+
          ',' + 'a.VJUROS = '+lJuros+// StringReplace(lJuros,FormatSettings.DecimalSeparator,'.',[rfReplaceAll])+
          ',' + 'a.CHEQUE_NUMERO = '+lNumCheque+
          ' where a.ID_NOTAENTRADA = '+IDNota+
          ' and a.ndup = '+Duplicata;

  try
    DM.ExecutarSQL(DM.BancoDados, lSQL);
    if pTipo = 'restaurar' then
      TMensagem.Informacao('Duplicata restaurada com sucesso.')
    else
      TMensagem.Informacao('Duplicata baixada com sucesso.');
    Retorno := 'sucesso';
    Close;
  except
    on e: Exception do
    begin
      TMensagem.Erro('Erro: ' + e.Message);
      Retorno := 'cancelar';
      Close;
    end;
  end;
end;

procedure TFrmBaixaContaPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = Vk_Escape then
  begin
    Retorno := 'cancelar';
    Close;
  end;
end;

procedure TFrmBaixaContaPagar.FormShow(Sender: TObject);
begin
  inherited;
  if Baixada then
  begin
    btnBaixar.Caption := '     Restaurar';
    if IdConta <> '' then
    begin
      edpsqsConta.Campo.Text := IdConta;
      edpsqsConta.Campo.OnExit(Self);
    end;

    if idHistorico <> '' then
    begin
      edpsqsHistorico.Campo.Text := idHistorico;
      edpsqsHistorico.Campo.OnExit(Self);
    end;

    pnlBaixa.Enabled := False;
    edtVlDesconto.ReadOnly := True;
    edtVlJuros.ReadOnly := True;
  end
  else
  begin
    btnBaixar.Caption := '     Baixar';
  end;
end;

function TFrmBaixaContaPagar.GerarCheque(): Boolean;
var
  lSQL: string;
begin
  lSQL := 'INSERT INTO CHEQUE (ID_BANCO, NUM_CHEQUE, DT_EMISSAO, DT_COMPENSA, VALOR,'+
          'NOMINAL, OBS) '+
          'VALUES ( '+
              QuotedStr(edpsqsConta.Campo.Text)+
          ','+edtNumCheque.Text+
          ','+QuotedStr(FormatDateTime('dd.mm.yyyy',date))+
          ','+QuotedStr(FormatDateTime('dd.mm.yyyy',StrToDate(edtCompensa.Text)))+
          ','+StringReplace(FormatFloat('##0.00', StrToCurr(edtValBaixa.Text)), ',', '.', [rfReplaceAll])+
          ','+QuotedStr(DBEdit1.Text)+
          ','+QuotedStr(('Doc. nº '+DBEdit3.Text+'-'+'Duplicata nº '+DBEdit5.Text)) +
          ')';
  try
    DM.ExecutarSQL(DM.BancoDados,lSQL);
    Result := True;
  except
    Result := False;
  end;
end;

procedure TFrmBaixaContaPagar.setVlPago(const Value: Currency);
begin
  fVlPago := Value;
  edtValBaixa.Text := FormatCurr('#,##0.00',Value);
end;

end.

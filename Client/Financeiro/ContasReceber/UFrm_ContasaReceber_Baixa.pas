unit UFrm_ContasaReceber_Baixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child,
  Vcl.ExtCtrls, Vcl.StdCtrls, UEDPesquisa, Vcl.Imaging.pngimage, Vcl.Buttons,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, U_DataCorrida;

type
  TFrm_ContasaReceber_Baixa = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlDados: TPanel;
    pnlAcoes: TPanel;
    pnlTitulo: TPanel;
    pnlBaixa: TPanel;
    lbl1: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    edtVenda: TEdit;
    Label2: TLabel;
    edtEmissao: TEdit;
    Label3: TLabel;
    edtDuplicata: TEdit;
    Label4: TLabel;
    edtVencto: TEdit;
    Label5: TLabel;
    edtValorTit: TEdit;
    Label6: TLabel;
    edtCliente: TEdit;
    edpsqsHistorico: TEdPesquisa;
    edpsqsConta: TEdPesquisa;
    Label7: TLabel;
    Label9: TLabel;
    edtValorBaixa: TEdit;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlBtnBaixar: TPanel;
    btnBaixar: TSpeedButton;
    actlst1: TActionList;
    actEfetuarBaixa: TAction;
    actVoltar: TAction;
    dtpBaixa: TDateTimePicker;
    Label10: TLabel;
    edtJuros: TEdit;
    Label11: TLabel;
    edtDescontos: TEdit;
    procedure edtValorBaixaKeyPress(Sender: TObject; var Key: Char);
    procedure edpsqsContaPesquisa(Sender: TObject; var Retorno: string);
    procedure edpsqsHistoricoPesquisa(Sender: TObject; var Retorno: string);
    procedure btnCancelarClick(Sender: TObject);
    procedure actEfetuarBaixaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actVoltarExecute(Sender: TObject);
    procedure edtJurosChange(Sender: TObject);
    procedure edtDescontosChange(Sender: TObject);
  private
    fGetTitDuplicata: string;
    fGetTitCliente: string;
    fGetDataBaixa: Tdate;
    fGetTitEmissao: Tdate;
    fGetValorBaixa: Currency;
    fGetUsuario: string;
    fGetTitVenda: integer;
    fGetTitValor: Currency;
    fRetorno: string;
    fIdCaixa: string;
    FVlJuros: Currency;
    FValor: Currency;
    FVlDescontos: Currency;

    function GerarParcial(pVlPago: Currency): Boolean;
    procedure PagtoParcial(pVlPago, pVlDiferenca: Currency);
    procedure Baixa();
    function Validar(): Boolean;
    procedure SetVlJuros(const Value: Currency);
    procedure SetValor(const Value: Currency);
    procedure SetVlDescontos(const Value: Currency);
  public
    var
      Historico, Conta: string;
    procedure Executar(aTipo: string; aId: integer; aOrdem: string);
            {Titulo}
    property TitVenda: integer read fGetTitVenda;
    property TitDuplicata: string read fGetTitDuplicata;
    property TitValor: Currency read fGetTitValor;
    {Baixa}
    property IdCaixa: string read fIdCaixa;
    property Retorno:string read fRetorno;
    property VlJuros: Currency read FVlJuros write SetVlJuros;
    property VlDescontos: Currency read FVlDescontos write SetVlDescontos;
    property Valor: Currency read FValor write SetValor;
  end;

var
  Frm_ContasaReceber_Baixa: TFrm_ContasaReceber_Baixa;

implementation

uses
  UFuncoes, UDM, UConsulta, u_Mensagem;

{$R *.dfm}

procedure TFrm_ContasaReceber_Baixa.Executar(aTipo: string; aId: integer; aOrdem: string);
const
  SQL = 'select A.ID, A.ORDEM, A.DT_VENC, A.VALOR, PM.EMISSAO, B.NOME_RAZAO CLIENTE '+
        'from PDV_RECEBER A '+
        'join PDV_MASTER PM on (PM.TIPO = A.TIPO and '+
        '      PM.ID = A.ID) '+
        'join CLIENTE B on (B.CODIGO = PM.ID_CLIENTE) '+
        'where A.TIPO = %s and '+
        '      A.ID   = %s and '+
        '   A.ORDEM   = %s';
begin
  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[QuotedStr(aTipo),aId.ToString,QuotedStr(aOrdem)]));

  edtVenda.Text := FormatFloat('000',DM.dsConsulta.FieldByName('ID').AsInteger);
  edtEmissao.Text := FormatDateTime('dd/mm/yyyy',DM.dsConsulta.FieldByName('emissao').AsDateTime);
  edtDuplicata.Text := DM.dsConsulta.FieldByName('emissao').AsString;
  edtVencto.Text := FormatDateTime('dd/mm/yyyy',DM.dsConsulta.FieldByName('dt_venc').AsDateTime);
  edtValorTit.Text := FormatCurr('R$ #,##0.00',DM.dsConsulta.FieldByName('valor').AsCurrency);
  edtCliente.Text := DM.dsConsulta.FieldByName('cliente').AsString;

  fGetTitValor := DM.dsConsulta.FieldByName('valor').AsCurrency;
  fGetTitVenda := DM.dsConsulta.FieldByName('id').AsInteger;
  fGetTitDuplicata := DM.dsConsulta.FieldByName('ordem').AsString;

  VlJuros := 0;
  VlDescontos := 0;
  Valor := DM.dsConsulta.FieldByName('valor').AsCurrency;

  dtpBaixa.Date := Date;

end;

procedure TFrm_ContasaReceber_Baixa.actEfetuarBaixaExecute(Sender: TObject);
begin
  inherited;
  if not Validar() then
    Abort;

  if TMensagem.Pergunta('Confirma a baixa da duplicata?') then
  begin
    try
//      Historico := edpsqsHistorico.Campo.Text;
//
//      if edpsqsConta.Campo.Text <> '' then
//        Conta := QuotedStr(edpsqsConta.Campo.Text)
//      else
//        Conta := 'null';

      if not GerarParcial(StrToFloat(edtValorBaixa.Text)) then
        Baixa();
    finally
      Close;
    end;
  end;
end;

procedure TFrm_ContasaReceber_Baixa.actVoltarExecute(Sender: TObject);
begin
  inherited;
  fRetorno := 'cancelar';
  Close();
end;

procedure TFrm_ContasaReceber_Baixa.Baixa;
var
  lSQL: string;
  lJuros, lDesconto, lValor: Currency;
begin
  lValor := StrToCurr(edtValorBaixa.Text);
  {lSQL := 'update PDV_RECEBER a ' +
          'set a.DT_BAIXA = '+ QuotedStr(FormatDateTime('dd.mm.yyyy',dtpBaixa.Date))+
          ',a.JUROS = '+ValorFormatadoFirebird( CurrToStr(FVlJuros) )+
          ',a.DESCONTO = '+ValorFormatadoFirebird( CurrToStr(FVlDescontos) )+
          ',a.VL_PAGO = '+ValorFormatadoFirebird(edtValorBaixa.Text)+
          ',a.USUARIO_BAIXA = '+QuotedStr(DM.UsuarioDataHora)+
          ',a.ID_HISTORICO = '+edpsqsHistorico.Campo.Text+
          ',a.ID_CONTA = '+QuotedStr(edpsqsConta.Campo.Text)+
          ',a.BAIXA_ID_CAIXA = '+IdCaixa+
          ' where a.TIPO = ''0'' and a.ID = '+IntToStr(TitVenda)+
          ' and a.ORDEM = '+QuotedStr(TitDuplicata); }

  try
    if DM.SMFormaPagto.setBaixaRestaura(DM.BancoDados,False,0,'CAR','B','0',TitVenda,TitDuplicata,
                                        FormatDateTime('dd/mm/yyyy',dtpBaixa.Date),FVlJuros,FVlDescontos,
                                        lValor,DM.Usuario.login,edpsqsHistorico.Campo.Text,edpsqsConta.Campo.Text,
                                        IdCaixa,0) then
//    DM.ExecutarSQL(DM.BancoDados, lSQL);
    fRetorno := 'sucesso';
  except
    on e: Exception do
    begin
      fRetorno := 'Erro: ' + e.Message;
    end;
  end;
end;

procedure TFrm_ContasaReceber_Baixa.PagtoParcial(pVlPago, pVlDiferenca: Currency);
var
  lSQL: string;
begin
  {lSQL := 'INSERT INTO PDV_RECEBER_PARCIAL (CODIGO, ID, TIPO, FORMA_PAGTO,' +
          'ORDEM, DT_VENC, VALOR, USUARIO_EMISSAO, DT_BAIXA, VL_PAGO, JUROS, DESCONTO,' +
          'USUARIO_BAIXA, ID_HISTORICO,ID_CONTA,ID_CAIXA) ' + //BAIXA_FORMA_PAGTO,
          'VALUES ( ' +
          '0'+
          ','+TitVenda.ToString+
          ','+QuotedStr('0') +
          ','+QuotedStr('PARCIAL') +
          ','+QuotedStr(TitDuplicata) +
          ','+QuotedStr(FormatDateTime('dd.mm.yyyy',Date)) +
          ','+ValorFormatadoFirebird(CurrToStr(pVlPago))+
          ','+QuotedStr(DM.UsuarioDataHora)+
          ','+QuotedStr(FormatDateTime('dd.mm.yyyy',dtpBaixa.Date)) +
          ','+ValorFormatadoFirebird(CurrToStr(pVlPago))+
          ','+ValorFormatadoFirebird(CurrToStr(FVlJuros))+
          ','+ValorFormatadoFirebird(CurrToStr(FVlDescontos))+
          ','+QuotedStr(DM.UsuarioDataHora) +
          ','+edpsqsHistorico.Campo.Text +
          ','+QuotedStr(edpsqsConta.Campo.Text) +
          ','+IdCaixa+
          ')'; }

  try
    if DM.SMFormaPagto.setBaixaRestaura(DM.BancoDados,True,pVlDiferenca,'CAR','B',
                                        '0',TitVenda,TitDuplicata,
                                        FormatDateTime('dd/mm/yyyy',dtpBaixa.Date),FVlJuros,FVlDescontos,
                                        pVlPago,DM.Usuario.login,edpsqsHistorico.Campo.Text,edpsqsConta.Campo.Text,
                                        IdCaixa,0) then
//    DM.ExecutarSQL(DM.BancoDados, lSQL);
//    DM.ExecutarSQL(DM.BancoDados, 'update PDV_RECEBER a '+
//                                  'set a.VALOR = '+ValorFormatadoFirebird(CurrToStr(pVlDiferenca))+
//                                  'where a.TIPO = ''0'' '+
//                                  'and a.ID = ' + IntToStr(TitVenda)+
//                                  'and a.ORDEM = ' + QuotedStr(TitDuplicata));
    fRetorno := 'sucesso';
  except
    on e: Exception do
    begin
      fRetorno := 'Erro: ' + e.Message;
    end;
  end;
end;

procedure TFrm_ContasaReceber_Baixa.SetValor(const Value: Currency);
begin
  FValor := Value;
  edtValorBaixa.Text := FormatCurr('##0.00',FValor);
end;

procedure TFrm_ContasaReceber_Baixa.SetVlDescontos(const Value: Currency);
begin
  FVlDescontos := Value;
  SetValor((TitValor+FVlJuros)-FVlDescontos);
end;

procedure TFrm_ContasaReceber_Baixa.SetVlJuros(const Value: Currency);
begin
  FVlJuros := Value;
  SetValor((TitValor+FVlJuros)-FVlDescontos);
end;

procedure TFrm_ContasaReceber_Baixa.btnCancelarClick(Sender: TObject);
begin
  inherited;
  fRetorno := 'cancelar';
  Close();
end;

procedure TFrm_ContasaReceber_Baixa.edpsqsContaPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.ContaBancaria;
end;

procedure TFrm_ContasaReceber_Baixa.edpsqsHistoricoPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Historico(1,'DUPLICATA RECEBIDA').ToString;
end;

procedure TFrm_ContasaReceber_Baixa.edtDescontosChange(Sender: TObject);
var
  lValue: Currency;
begin
  inherited;
  if (not TryStrToCurr(edtDescontos.Text, lValue)) then
    VlDescontos := 0
  else
    VlDescontos := lValue;
end;

procedure TFrm_ContasaReceber_Baixa.edtJurosChange(Sender: TObject);
var
  lValue: Currency;
begin
  inherited;
  if (not TryStrToCurr(edtJuros.Text, lValue)) then
    VlJuros := 0
  else
    VlJuros := lValue;
end;

procedure TFrm_ContasaReceber_Baixa.edtValorBaixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0;
end;

procedure TFrm_ContasaReceber_Baixa.FormShow(Sender: TObject);
begin
  inherited;
  dtpBaixa.Date := Date;
  edpsqsHistorico.Campo.SetFocus;
end;

function TFrm_ContasaReceber_Baixa.GerarParcial(pVlPago: Currency): Boolean;
var
  lDiferenca: Currency;
begin
  Result := False;
  if (FValor > pVlPago) then
  begin
    lDiferenca := FValor - pVlPago;
    if TMensagem.Pergunta('Será gerado uma nova duplicata pendente no valor de R$ ' + FormatCurr('#,##0.00', lDiferenca) + #13#10 + 'Confirma o pagamento parcial da duplicata?') then
    begin
      Result := True;
      PagtoParcial(pVlPago, lDiferenca);
    end;
  end;
end;

function TFrm_ContasaReceber_Baixa.Validar: Boolean;
var
  lValor: TFormataValor;
  lExisteCaixa: TCaixa;
begin
  Result := True;

  if (edpsqsHistorico.Campo.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe o histórico.');
    edpsqsHistorico.Campo.SetFocus;
    Exit;
  end;

  if (edpsqsConta.Campo.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe a conta.');
    edpsqsConta.Campo.SetFocus;
    Exit;
  end;

  if (edpsqsConta.Campo.Text = '1') then {Conta Caixa PDV}
  begin
    lExisteCaixa := CaixaFechado;
    if (lExisteCaixa.ID > 0) then
    begin
      fIdCaixa := IntToStr(lExisteCaixa.ID);
    end
    else
    begin
      Result := False;
      TMensagem.Atencao('Baixa não pode ser efetuada. Caixa PDV fechado/inexistente.');
      Exit;
    end;
    if (dtpBaixa.Date <> date) then
      begin
        Result := False;
        TMensagem.Atencao('Baixa não pode ser efetuada. Utilizando conta caixa PDV e data de baixa diferente de hoje.');
        Exit;
      end;
  end
  else
    fIdCaixa := 'null';

  if not ValidaData(DateToStr(dtpBaixa.Date), False) then
  begin
    Result := False;
    TMensagem.Atencao('Data inválida');
    dtpBaixa.SetFocus;
    Exit;
  end;

  if (StrToCurrDef(edtValorBaixa.Text, 0) <= 0) then
  begin
    Result := False;
    TMensagem.Atencao('Valor R$ inválido');
    edtValorBaixa.SetFocus;
    Exit;
  end;

//  if (StrToCurr(edtValorBaixa.Text) > TitValor) then
//  begin
//    Result := False;
//    TMensagem.Atencao('Valor da baixa é maior que o saldo devido.');
//    edtValorBaixa.SetFocus;
//    Exit;
//  end;

end;

end.

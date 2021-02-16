unit UFrm_ContasaReceber_Baixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.ExtCtrls, Vcl.StdCtrls,
  UEDPesquisa, Vcl.Imaging.pngimage, Vcl.Buttons;

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
    edtDataBaixa: TEdit;
    Label9: TLabel;
    edtValorBaixa: TEdit;
    Label10: TLabel;
    edtusuarioBaixa: TEdit;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    imgCancelar: TImage;
    pnlBtnBaixar: TPanel;
    btnBaixar: TSpeedButton;
    imgBaixar: TImage;
    procedure edtValorBaixaKeyPress(Sender: TObject; var Key: Char);
    procedure edtDataBaixaChange(Sender: TObject);
    procedure edtDataBaixaKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorBaixaExit(Sender: TObject);
    procedure edpsqsContaPesquisa(Sender: TObject; var Retorno: string);
    procedure edpsqsHistoricoPesquisa(Sender: TObject; var Retorno: string);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure edtDataBaixaExit(Sender: TObject);
  private
    fGetTitDuplicata: string;
    fGetTitCliente: string;
    fGetDataBaixa: Tdate;
    fGetTitEmissao: Tdate;
    fGetTitVencto: Tdate;
    fGetValorBaixa: Currency;
    fGetUsuario: string;
    fGetTitVenda: integer;
    fGetIdCaixa: string;
    fGetTitValor: Currency;
    fRetorno: string;
    procedure setTitVenda(const Value: integer);
    procedure setTitCliente(const Value: string);
    procedure setTitDuplicata(const Value: string);
    procedure setTitEmissao(const Value: TDate);
    procedure setTitVencto(const Value: Tdate);
    procedure setDataBaixa(const Value: Tdate);
    procedure setUsuario(const Value: string);
    procedure setValorBaixa(const Value: Currency);

    function GerarParcial(pVlTitulo, pVlPago: Currency): Boolean;
    procedure PagtoParcial(pDiferenca: Currency);
    procedure Baixa();
    procedure setIdCaixa(const Value: string);
    procedure setTitValor(const Value: Currency);
    procedure SetRetorno(const Value: string);

    function Validar(): Boolean;
  public
    Historico,Conta : string;
   {Titulo}
    property TitVenda: integer read fGetTitVenda write setTitVenda;
    property TitEmissao: TDate read fGetTitEmissao write setTitEmissao;
    property TitDuplicata: string read fGetTitDuplicata write setTitDuplicata;
    property TitVencto: Tdate read fGetTitVencto write setTitVencto;
    property TitValor: Currency read fGetTitValor write setTitValor;
    property TitCliente: string read fGetTitCliente write setTitCliente;
    {Baixa}
    property Usuario: string read fGetUsuario write setUsuario;
    property DataBaixa: Tdate read fGetDataBaixa write setDataBaixa;
    property ValorBaixa: Currency read fGetValorBaixa write setValorBaixa;
    property IdCaixa: string read fGetIdCaixa write setIdCaixa;
    property Retorno:string read fRetorno write SetRetorno;
  end;

var
  Frm_ContasaReceber_Baixa: TFrm_ContasaReceber_Baixa;

implementation

uses
  UFuncoes, UDM, UConsulta, u_Mensagem;

{$R *.dfm}

procedure TFrm_ContasaReceber_Baixa.Baixa;
var
  lSQL: string;
begin
  lSQL := 'update PDV_RECEBER a ' +
          'set a.DT_BAIXA = '+ QuotedStr(FormatDateTime('dd.mm.yyyy',DataBaixa))+
          ',a.VL_PAGO = '+ValorFormatadoFirebird(CurrToStr(ValorBaixa))+
          ',a.USUARIO_BAIXA = '+QuotedStr(DM.UsuarioDataHora)+
          ',a.ID_HISTORICO = '+Historico+
          ',a.ID_CONTA = '+Conta+
          ',a.BAIXA_ID_CAIXA = '+IdCaixa+
          ' where a.TIPO = ''0'' and a.ID = '+IntToStr(TitVenda)+
          ' and a.ORDEM = '+QuotedStr(TitDuplicata);

  try
    DM.ExecutarSQL(DM.BancoDados, lSQL);
    Retorno := 'sucesso';
  except
    on e: Exception do
    begin
      Retorno := 'Erro: ' + e.Message;
    end;
  end;
end;

procedure TFrm_ContasaReceber_Baixa.PagtoParcial(pDiferenca: Currency);
var
  lSQL: string;
begin
  lSQL := 'INSERT INTO PDV_RECEBER_PARCIAL (CODIGO, ID, TIPO, FORMA_PAGTO, ' +
          'ORDEM, DT_VENC, VALOR, USUARIO_EMISSAO, DT_BAIXA, VL_PAGO, ' +
          'USUARIO_BAIXA, ID_HISTORICO,ID_CONTA,ID_CAIXA) ' + //BAIXA_FORMA_PAGTO,
          'VALUES ( ' +
          '0'+
          ','+IntToStr(TitVenda)+
          ','+QuotedStr('0') +
          ','+QuotedStr('PARCIAL') +
          ','+QuotedStr(TitDuplicata) +
          ','+QuotedStr(FormatDateTime('dd.mm.yyyy',DataBaixa)) +
          ','+ValorFormatadoFirebird(CurrToStr(ValorBaixa))+
          ','+QuotedStr(DM.UsuarioDataHora)+
          ','+QuotedStr(FormatDateTime('dd.mm.yyyy',DataBaixa)) +
          ','+ValorFormatadoFirebird(CurrToStr(ValorBaixa))+
          ','+QuotedStr(DM.UsuarioDataHora) +
          ','+Historico +
          ','+Conta +
          ','+IdCaixa+
          ')';

  try
    DM.ExecutarSQL(DM.BancoDados, lSQL);
    DM.ExecutarSQL(DM.BancoDados, 'update PDV_RECEBER a '+
                                  'set a.VALOR = '+ValorFormatadoFirebird(CurrToStr(pDiferenca))+
                                  'where a.TIPO = ''0'' '+
                                  'and a.ID = ' + IntToStr(TitVenda)+
                                  'and a.ORDEM = ' + QuotedStr(TitDuplicata));
    Retorno := 'sucesso';
  except
    on e: Exception do
    begin
      Retorno := 'Erro: ' + e.Message;
    end;
  end;
end;

procedure TFrm_ContasaReceber_Baixa.btnBaixarClick(Sender: TObject);
begin
  inherited;
  if not Validar() then
    Abort;

  if TMensagem.Pergunta('Confirma a baixa da duplicata?') then
  begin
    try
      Historico := edpsqsHistorico.Campo.Text;

      if edpsqsConta.Campo.Text <> '' then
        Conta := QuotedStr(edpsqsConta.Campo.Text)
      else
        Conta := 'null';

      if not GerarParcial(TitValor, ValorBaixa) then
        Baixa();
    finally
      Close;
    end;
  end;
end;

procedure TFrm_ContasaReceber_Baixa.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Retorno := 'cancelar';
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

procedure TFrm_ContasaReceber_Baixa.edtDataBaixaChange(Sender: TObject);
begin
  inherited;
  edtDataBaixa.Text := MaskData(edtDataBaixa.Text,'99/99/9999');
  edtDataBaixa.SelStart := Length(edtDataBaixa.Text);
end;

procedure TFrm_ContasaReceber_Baixa.edtDataBaixaExit(Sender: TObject);
begin
  inherited;
  if (not ValidaData(edtDataBaixa.Text, True)) then
    edtDataBaixa.SelectAll;
end;

procedure TFrm_ContasaReceber_Baixa.edtDataBaixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', #8, #13]) then
    Key := #0;
end;

procedure TFrm_ContasaReceber_Baixa.edtValorBaixaExit(Sender: TObject);
var
  lFormata: TFormataValor;
begin
  inherited;
  lFormata := ValidaFormataCurrency(edtValorBaixa.Text);

  if lFormata.Retorno = 'sucesso' then
  begin
    if ((lFormata.vlFloat > TitValor) or (lFormata.vlFloat <= 0)) then
    begin
      TMensagem.Atencao('Valor de baixa inválido.');
      ValorBaixa := 0;
      edtValorBaixa.SetFocus;
    end
    else
      ValorBaixa := lFormata.vlFloat;
  end;
end;

procedure TFrm_ContasaReceber_Baixa.edtValorBaixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0;
end;

function TFrm_ContasaReceber_Baixa.GerarParcial(pVlTitulo, pVlPago: Currency): Boolean;
var
  lDiferenca: Currency;
begin
  Result := False;
  if ( pVlTitulo > pVlPago) then
  begin
    lDiferenca := pVlTitulo - pVlPago;
    if TMensagem.Pergunta('Será gerado uma nova duplicata pendente no valor de R$ '+FormatCurr('#,##0.00',lDiferenca) +#13#10+
                          'Confirma o pagamento parcial da duplicata?') then
    begin
      Result := True ;
      PagtoParcial(lDiferenca);
    end;
  end;
end;

procedure TFrm_ContasaReceber_Baixa.setDataBaixa(const Value: Tdate);
begin
  fGetDataBaixa := Value;
  edtDataBaixa.Text := FormatDateTime('dd/mm/yyyy',Value);
end;

procedure TFrm_ContasaReceber_Baixa.setIdCaixa(const Value: string);
begin
  fGetIdCaixa := Value;
end;

procedure TFrm_ContasaReceber_Baixa.SetRetorno(const Value: string);
begin
  fRetorno := Value;
end;

procedure TFrm_ContasaReceber_Baixa.setTitCliente(const Value: string);
begin
  fGetTitCliente := Value;
  edtCliente.Text := Value;
end;

procedure TFrm_ContasaReceber_Baixa.setTitDuplicata(const Value: string);
begin
  fGetTitDuplicata := Value;
  edtDuplicata.Text := Value ;
end;

procedure TFrm_ContasaReceber_Baixa.setTitEmissao(const Value: TDate);
begin
  fGetTitEmissao := Value;
  edtEmissao.Text := FormatDateTime('dd/mm/yyyy',Value);
end;

procedure TFrm_ContasaReceber_Baixa.setTitValor(const Value: Currency);
begin
  fGetTitValor := Value;
  edtValorTit.Text := FormatCurr('#,##0.00',Value);
end;

procedure TFrm_ContasaReceber_Baixa.setTitVencto(const Value: Tdate);
begin
  fGetTitVencto := Value;
  edtVencto.Text := FormatDateTime('dd/mm/yyyy',Value);
end;

procedure TFrm_ContasaReceber_Baixa.setTitVenda(const Value: integer);
begin
  fGetTitVenda := Value;
  edtVenda.Text := FormatFloat('000',Value);
end;

procedure TFrm_ContasaReceber_Baixa.setUsuario(const Value: string);
begin
  fGetUsuario := Value;
  edtusuarioBaixa.Text := Value ;
end;

procedure TFrm_ContasaReceber_Baixa.setValorBaixa(const Value: Currency);
begin
  fGetValorBaixa := Value;
  edtValorBaixa.Text := FormatCurr('#,##0.00',Value);
end;

function TFrm_ContasaReceber_Baixa.Validar: Boolean;
var
  lValor: TFormataValor;
  lExisteCaixa: TCaixa;
begin
  Result := True;

  if edpsqsHistorico.Campo.Text = '' then
  begin
    Result := False;
    TMensagem.Atencao('Informe o histórico.');
    edpsqsHistorico.Campo.SetFocus;
    Exit;
  end;

  if edpsqsConta.Campo.Text = '' then
  begin
    Result := False;
    TMensagem.Atencao('Informe a conta.');
    edpsqsConta.Campo.SetFocus;
    Exit;
  end;

  if edpsqsConta.Campo.Text = '1' then {Conta Caixa PDV}
  begin
    lExisteCaixa := CaixaFechado;
    if (lExisteCaixa.ID > 0) then
    begin
      IdCaixa := IntToStr(lExisteCaixa.ID);
    end
    else
    begin
      Result := False;
      TMensagem.Atencao('Baixa não pode ser efetuada. Caixa PDV fechado/inexistente.');
      Exit;
    end;
    if StrToDate(edtDataBaixa.Text) <> date then
      begin
        Result := False;
        TMensagem.Atencao('Baixa não pode ser efetuada. Utilizando conta caixa PDV e data de baixa diferente de hoje.');
        Exit;
      end;
  end
  else
    IdCaixa := 'null';
end;

end.

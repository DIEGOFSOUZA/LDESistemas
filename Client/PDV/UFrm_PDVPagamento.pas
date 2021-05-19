unit UFrm_PDVPagamento;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,

  Vcl.DBGrids,
  Vcl.ActnList,

  UPdr_Child,
  Data.DB,
  Datasnap.DBClient, ACBrUtil, Vcl.Grids, Vcl.Buttons;

type
  TFrm_PDVPagamento = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlRodape: TPanel;
    chkImprimir: TCheckBox;
    imgVoltar: TImage;
    lblVoltar: TLabel;
    actlst1: TActionList;
    actVoltar: TAction;
    cdsPagamentos: TClientDataSet;
    dsPagamentos: TDataSource;
    cdsPagamentosFORMAPAGTO: TStringField;
    cdsPagamentosVALOR: TCurrencyField;
    cdsPagamentosVENCTO: TDateField;
    actPagarDinheiro: TAction;
    actPagarCartaoCredito: TAction;
    actPagarCartaoDebito: TAction;
    actPagarCheque: TAction;
    actPagarCrediario: TAction;
    actDesconto: TAction;
    actFinalizaVenda: TAction;
    actLimpar: TAction;
    cdsPagamentosVALOR_PAGO: TCurrencyField;
    act2Reais: TAction;
    act5Reais: TAction;
    act10Reais: TAction;
    act20Reais: TAction;
    act50Reais: TAction;
    act100Reais: TAction;
    act200Reais: TAction;
    pnlCentro: TPanel;
    pnlDireita: TPanel;
    pnlTop1: TPanel;
    Label4: TLabel;
    edtValor: TEdit;
    pnlValores: TPanel;
    pnl2Reais: TPanel;
    btn2Reais: TSpeedButton;
    Panel1: TPanel;
    btn5Reais: TSpeedButton;
    Panel2: TPanel;
    btn10Reais: TSpeedButton;
    Panel3: TPanel;
    btn20Reais: TSpeedButton;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    Panel5: TPanel;
    btn100Reais: TSpeedButton;
    Panel6: TPanel;
    SpeedButton2: TSpeedButton;
    dbgrdItens: TDBGrid;
    pnlOpcPagamento: TPanel;
    pnlDinheiro: TPanel;
    lblOpcDinheiro: TLabel;
    imgDinheiro: TImage;
    pnlCartaoCredito: TPanel;
    lblOpcCartaoCredito: TLabel;
    imgCartao: TImage;
    pnlCartaoDebito: TPanel;
    lblOpcCartaoDebito: TLabel;
    imgCartaoDebito: TImage;
    pnlCheque: TPanel;
    lblOpcCheque: TLabel;
    imgCheque: TImage;
    pnlCrediario: TPanel;
    lblOpcCrediario: TLabel;
    imgCrediario: TImage;
    pnlFinalizarVenda: TPanel;
    lblOpcFinalizarVenda: TLabel;
    imgFinalizarVenda: TImage;
    pnlDesconto: TPanel;
    lblOpcDesconto: TLabel;
    imgDesconto: TImage;
    pnlLimpar: TPanel;
    lblLimpar: TLabel;
    imgLimpar: TImage;
    Panel7: TPanel;
    Label1: TLabel;
    pnlBotaoSair: TPanel;
    pnlTopo: TPanel;
    pnlTopoRestante: TPanel;
    lblTitRestante: TLabel;
    lblVlRestante: TLabel;
    pnlTopoTroco: TPanel;
    lblTitTroco: TLabel;
    lblTroco: TLabel;
    pnlTopoAcrescimo: TPanel;
    lblTitAcrescimo: TLabel;
    lblVlAcrescimo: TLabel;
    pnlTopoDesconto: TPanel;
    lblTitDesconto: TLabel;
    lblDesconto: TLabel;
    pnlTopoTotPagar: TPanel;
    lblTitTotPagar: TLabel;
    lblTotPagar: TLabel;
    pnlCredito: TPanel;
    lbl1: TLabel;
    lblCredito: TLabel;
    pnlUtilizarCredito: TPanel;
    lblUtilizarCredito: TLabel;
    imgUtilizarCredito: TImage;
    actUtilizarCredito: TAction;
    procedure actVoltarExecute(Sender: TObject);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure actPagarDinheiroExecute(Sender: TObject);
    procedure actPagarCartaoCreditoExecute(Sender: TObject);
    procedure actPagarCartaoDebitoExecute(Sender: TObject);
    procedure actPagarChequeExecute(Sender: TObject);
    procedure actPagarCrediarioExecute(Sender: TObject);
    procedure actDescontoExecute(Sender: TObject);
    procedure edtValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actLimparExecute(Sender: TObject);
    procedure actFinalizaVendaExecute(Sender: TObject);
    procedure act2ReaisExecute(Sender: TObject);
    procedure act5ReaisExecute(Sender: TObject);
    procedure act10ReaisExecute(Sender: TObject);
    procedure act20ReaisExecute(Sender: TObject);
    procedure act50ReaisExecute(Sender: TObject);
    procedure act200ReaisExecute(Sender: TObject);
    procedure act100ReaisExecute(Sender: TObject);
    procedure pnlBotaoSairClick(Sender: TObject);
    procedure actUtilizarCreditoExecute(Sender: TObject);
  private
    fValorRestante: Currency;
    fValorTotal: Currency;
    fValorDesconto: Currency;
    fValorTroco: Currency;
    fValorPago: Currency;
    fFormaPagto: string;
    fValorAcrescimo: Currency;
    fValorCredito: Currency;
    procedure setValorRestante(const Value: Currency);
    procedure setValorTotal(const Value: Currency);
    procedure setValorDesconto(const Value: Currency);
    procedure setValorTroco(const Value: Currency);
    procedure setValorPago(const Value: Currency);
    procedure setFormaPagto(const Value: string);

    procedure setPanel(aPanel : TPanel;aFormaPagto : string) ;
    procedure setCDSPagamentos(aForma : string; aValor : Currency; aVencto : TDate) ;
    procedure LimparPnlMarcado;
    procedure setValorAcrescimo(const Value: Currency);
    function Validar(): Boolean;
    procedure AddValor(pValor: Currency);
    procedure setValorCredito(const Value: Currency);
  public
    { Public declarations }
    aRetorno : string ;
    aIDCondPagto : Integer ;
    bImprimir : Boolean ;
    aTotVenda : Currency ;
    gIdCliente : string ;
    aCliemDebito : Boolean;

    procedure IniciaComDesconto(Valor : Extended) ;

  published
    property ValorRestante: Currency read fValorRestante write setValorRestante;
    property ValorTotal: Currency read fValorTotal write setValorTotal;
    property ValorPago: Currency read fValorPago write setValorPago;
    property ValorDesconto: Currency read fValorDesconto write setValorDesconto;
    property ValorTroco: Currency read fValorTroco write setValorTroco;
    property ValorAcrescimo: Currency read fValorAcrescimo write setValorAcrescimo;
    property ValorCredito: Currency read fValorCredito write setValorCredito;

    property FormaPagto : string read fFormaPagto write setFormaPagto ;
  end;

var
  Frm_PDVPagamento: TFrm_PDVPagamento;

implementation

uses
  UFrm_PDVCrediario, UFuncoes, u_Mensagem;

{$R *.dfm}

procedure TFrm_PDVPagamento.act100ReaisExecute(Sender: TObject);
begin
  inherited;
  AddValor(100);
end;

procedure TFrm_PDVPagamento.act10ReaisExecute(Sender: TObject);
begin
  inherited;
  AddValor(10);
end;

procedure TFrm_PDVPagamento.act200ReaisExecute(Sender: TObject);
begin
  inherited;
  AddValor(200);
end;

procedure TFrm_PDVPagamento.act20ReaisExecute(Sender: TObject);
begin
  inherited;
  AddValor(20);
end;

procedure TFrm_PDVPagamento.act2ReaisExecute(Sender: TObject);
begin
  inherited;
  AddValor(2);
end;

procedure TFrm_PDVPagamento.act50ReaisExecute(Sender: TObject);
begin
  inherited;
  AddValor(50);
end;

procedure TFrm_PDVPagamento.act5ReaisExecute(Sender: TObject);
begin
  inherited;
  AddValor(5);
end;

procedure TFrm_PDVPagamento.actDescontoExecute(Sender: TObject);
begin
  inherited;
  TMensagem.Informacao('Desconto permitido apenas por item.');
//  setPanel(pnlDesconto,'DESCONTO');
end;

procedure TFrm_PDVPagamento.actFinalizaVendaExecute(Sender: TObject);
begin
  inherited;
  if ValorRestante > 0 then
  begin
    TMensagem.Atencao('Valor Pago é menor que Total da Venda.') ;
    Exit ;
  end;

  aRetorno := 'sucesso' ;
  bImprimir := chkImprimir.Checked ;
  Close ;
end;

procedure TFrm_PDVPagamento.actLimparExecute(Sender: TObject);
begin
  inherited;
  {Para que nao de divergencia em valores quando se da desconto nos itens da venda}
  if cdsPagamentos.Locate('formapagto', 'DESCONTO', []) then
  begin
    TMensagem.Atencao('Não permitido limpar as formas de pagamento, quando se há desconto.'+#13#10+
              'Retorne a tela de Venda.') ;
    Exit ;
  end;

  ValorTotal := aTotVenda ;
  ValorRestante := aTotVenda ;
  ValorDesconto := 0 ;
  ValorAcrescimo := 0 ;
  ValorPago := 0 ;
  ValorTroco := 0 ;
  LimparPnlMarcado ;

  cdsPagamentos.Close ;
  cdsPagamentos.CreateDataSet ;
end;

procedure TFrm_PDVPagamento.actPagarCartaoCreditoExecute(Sender: TObject);
begin
  inherited;
  setPanel(pnlCartaoCredito,'CARTAO DE CREDITO');
end;

procedure TFrm_PDVPagamento.actPagarCartaoDebitoExecute(Sender: TObject);
begin
  inherited;
  setPanel(pnlCartaoDebito,'CARTAO DE DEBITO');
end;

procedure TFrm_PDVPagamento.actPagarChequeExecute(Sender: TObject);
begin
  inherited;
  setPanel(pnlCheque,'CHEQUE');
end;

procedure TFrm_PDVPagamento.actPagarCrediarioExecute(Sender: TObject);
begin
  inherited;
  if aCliemDebito then
  begin
    TMensagem.Atencao('Forma de pagamento não pode ser inserida. Cliente em débito.');
    Exit;
  end;
  setPanel(pnlCrediario,'CREDIARIO');
end;

procedure TFrm_PDVPagamento.actPagarDinheiroExecute(Sender: TObject);
begin
  inherited;
  setPanel(pnlDinheiro,'DINHEIRO');
end;

procedure TFrm_PDVPagamento.actUtilizarCreditoExecute(Sender: TObject);
begin
  inherited;
  if (ValorCredito <= 0) then
  begin
    TMensagem.Informacao('Cliente não obtem crédito a ser utilizado.');
    Exit;
  end
  else
  begin
    if (ValorRestante > ValorCredito) then
      setCDSPagamentos('CREDITO', ValorCredito, Date)
    else
      setCDSPagamentos('CREDITO', ValorRestante, Date);


//  setPanel(pnlUtilizarCredito,'VENDA - CREDITO DEV/TROCA');
  end;
end;

procedure TFrm_PDVPagamento.actVoltarExecute(Sender: TObject);
begin
  inherited;
  aRetorno := 'CANCELAR';
  Close;
end;

procedure TFrm_PDVPagamento.AddValor(pValor: Currency);
var
  fValor: Extended;
  lValor : Currency;
begin
  if (edtValor.Enabled) then
  begin
    if not TryStrToFloat(edtValor.Text, fValor) then
      lValor := 0
    else
      lValor := StrToFloat(edtValor.Text);

    edtValor.Text := FormatCurr('##0.00', lValor + pValor);
    edtValor.SelectAll;
    edtValor.SetFocus;
  end;
end;

procedure TFrm_PDVPagamento.edtValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_RETURN then //Pressionou Enter
  begin
    if not Validar then
      Abort;

    if (FormaPagto = 'CREDIARIO') then
    begin
      if not ValidaLimiteCredito(gIdCliente, StrToFloat(edtValor.Text)) then
        Abort;

      if not Assigned(Frm_PDVCrediario) then
        Frm_PDVCrediario := TFrm_PDVCrediario.Create(Self);
      try
        with Frm_PDVCrediario do
        begin
          aVlAcrescimo := 0;
          aVlParcelas := 0;
          aIdCrediario := 0;
          ValorTotal := StrToCurr(edtValor.Text);

          pnlRodape.Visible := False;
          Height := 100;

          ShowModal;

          if aRetorno = 'sucesso' then
          begin
            aIDCondPagto := aIdCrediario;
            cdsParcelas.First;
            while not cdsParcelas.Eof do
            begin
              setCDSPagamentos('CREDIARIO', cdsParcelasVALOR.AsCurrency, cdsParcelasVENCTO.AsDateTime);
              cdsParcelas.Next;
            end;

            ValorAcrescimo := aVlAcrescimo;
            if ValorAcrescimo > 0 then
            begin
              ValorTroco := ValorTroco - ValorAcrescimo;
            end;
          end;

        end;
      finally
        FreeAndNil(Frm_PDVCrediario);
      end;
    end
    else
      setCDSPagamentos(FormaPagto, StrToFloat(edtValor.Text), Date);
  end;
end;

procedure TFrm_PDVPagamento.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TFrm_PDVPagamento.IniciaComDesconto(Valor: Extended);
var
  mtot: Extended;
begin
  if Valor = 0 then
    Exit ;

  ValorTotal := ValorTotal + Valor ;
  cdsPagamentos.Append;

  cdsPagamentosFORMAPAGTO.AsString := 'DESCONTO';
  cdsPagamentosVALOR.AsCurrency := Valor;
  cdsPagamentosVENCTO.AsDateTime := Date;
  cdsPagamentos.Post;

  ValorRestante := (ValorTotal - Valor);
  if ValorRestante < 0 then
    ValorRestante := 0;

  if ValorPago > (ValorTotal - (ValorDesconto)) then
    ValorTroco := ValorPago - (ValorTotal - (ValorDesconto));

  edtValor.text := EmptyStr;
  edtValor.Enabled := False;
  FormaPagto := EmptyStr;
end;

procedure TFrm_PDVPagamento.setCDSPagamentos(aForma : string; aValor : Currency; aVencto : TDate) ;
var
  mtot: Extended;
begin
  if aForma = 'CREDIARIO' then
    cdsPagamentos.Append
  else
  begin
    if cdsPagamentos.Locate('formapagto', aForma, []) then
      cdsPagamentos.Edit
    else
      cdsPagamentos.Append;
  end;

  cdsPagamentosFORMAPAGTO.AsString := aForma;
  if ValorRestante < aValor then
    cdsPagamentosVALOR.AsCurrency := ValorRestante
  else
    cdsPagamentosVALOR.AsCurrency := aValor ;

  cdsPagamentosVALOR_PAGO.AsCurrency := aValor ;
  cdsPagamentosVENCTO.AsDateTime := aVencto;
  cdsPagamentos.Post;

  mtot := 0;
  cdsPagamentos.First;
  while not cdsPagamentos.Eof do
  begin
    if not (cdsPagamentosFORMAPAGTO.AsString = 'DESCONTO') then
      mtot := mtot + cdsPagamentosVALOR_PAGO.AsCurrency;
    cdsPagamentos.Next;
  end;
  ValorPago := mtot;

  if aForma = 'DESCONTO' then
    ValorDesconto := aValor;

  ValorRestante := (ValorTotal - (ValorPago + ValorDesconto));
  if ValorRestante < 0 then
    ValorRestante := 0;

  if ValorPago > ( ValorTotal - (ValorDesconto) ) then
    ValorTroco :=  ValorPago - (ValorTotal - (ValorDesconto)) ;

  edtValor.text := EmptyStr;
  edtValor.Enabled := False;
  FormaPagto := EmptyStr;
end;

procedure TFrm_PDVPagamento.LimparPnlMarcado;
var
  I: Integer;
begin
  for I := 0 to Pred(pnlOpcPagamento.ControlCount) do
  begin
    (pnlOpcPagamento.Controls[i] as TPanel).Color := clWhite;
  end;
end;

procedure TFrm_PDVPagamento.pnlBotaoSairClick(Sender: TObject);
begin
  inherited;
  actVoltar.Execute;
end;

procedure TFrm_PDVPagamento.setFormaPagto(const Value: string);
begin
  fFormaPagto := Value;
end;

procedure TFrm_PDVPagamento.setPanel(aPanel : TPanel;aFormaPagto : string) ;
begin
  if ValorRestante = 0 then
  begin
    TMensagem.Informacao('Venda já liquidada completamente.') ;
    FormaPagto := EmptyStr ;
    Exit ;
  end;

  FormaPagto := aFormaPagto ;
  LimparPnlMarcado;

  aPanel.Color := $0084ACFF ;

  edtValor.Enabled := True ;
  if aFormaPagto = 'DINHEIRO' then
    edtValor.Text := FormatCurr('##0.00', 0)
  else
    edtValor.Text := FormatCurr('##0.00', ValorRestante);
  edtValor.SelectAll ;
  edtValor.SetFocus ;
end;

procedure TFrm_PDVPagamento.setValorAcrescimo(const Value: Currency);
begin
  fValorAcrescimo := Value;
  lblVlAcrescimo.Caption := 'R$ '+FormatCurr('#,##0.00',Value) ;
end;

procedure TFrm_PDVPagamento.setValorCredito(const Value: Currency);
begin
  fValorCredito := Value;
  lblCredito.Caption := 'R$ ' + FormatCurr('#,##0.00', Value);
end;

procedure TFrm_PDVPagamento.setValorDesconto(const Value: Currency);
begin
  fValorDesconto := Value;
  lblDesconto.Caption := 'R$ '+FormatCurr('#,##0.00',Value) ;
end;

procedure TFrm_PDVPagamento.setValorPago(const Value: Currency);
begin
  fValorPago := Value;
end;

procedure TFrm_PDVPagamento.setValorRestante(const Value: Currency);
begin
  fValorRestante := Value;
  lblVlRestante.Caption := 'R$ '+FormatCurr('#,##0.00',Value) ;
end;

procedure TFrm_PDVPagamento.setValorTotal(const Value: Currency);
begin
  fValorTotal := Value;
  lblTotPagar.Caption := 'R$ '+FormatCurr('#,##0.00',Value) ;
end;

procedure TFrm_PDVPagamento.setValorTroco(const Value: Currency);
begin
  fValorTroco := Value;
  lblTroco.Caption := 'R$ '+FormatCurr('#,##0.00',Value) ;
end;

function TFrm_PDVPagamento.Validar: Boolean;
begin
  Result := True;
  if not (StrToCurr(edtValor.Text) > 0) then
  begin
    TMensagem.Atencao('Valor inválido');
    Result := False;
  end;
  if cdsPagamentos.Locate('formapagto', FormaPagto, []) then
  begin
    TMensagem.Atencao('Forma de pagamento ja informado.');
    Result := False;
  end

end;

end.

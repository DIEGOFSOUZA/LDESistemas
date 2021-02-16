unit uFrm_ContasReceberDup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPdr_FinanceiroDuplicata, Data.DB,
  System.Actions, Vcl.ActnList, Datasnap.DBClient, System.ImageList,
  Vcl.ImgList, UEDPesquisa, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, System.StrUtils;

type
  TFrm_ContasReceberDup = class(TPdr_FinanceiroDuplicata)
    dsRecebidos: TClientDataSet;
    dsRecebidosTABELA: TStringField;
    dsRecebidosCODIGO: TIntegerField;
    dsRecebidosID: TIntegerField;
    dsRecebidosTIPO: TStringField;
    dsRecebidosORDEM: TStringField;
    dsRecebidosDT_BAIXA: TDateField;
    dsRecebidosRECEBIDO: TFMTBCDField;
    dsRecebidosDESCONTO: TFMTBCDField;
    dsRecebidosJUROS: TFMTBCDField;
    dsRecebidosFORMA: TStringField;
    dsRecebidosCONTA: TStringField;
    dsRecebidosLIXEIRA: TIntegerField;
    sRecebidos: TDataSource;
    dsRecebidosTOT_RECEBIDO: TAggregateField;
    procedure EdPesquisa1Pesquisa(Sender: TObject; var Retorno: string);
    procedure cbbEfetuadoChange(Sender: TObject);
    procedure cbbContaChange(Sender: TObject);
    procedure dbgrdRecebidosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtJurosExit(Sender: TObject);
    procedure edtDescontosExit(Sender: TObject);
    procedure edtVlRecebidoEnter(Sender: TObject);
    procedure actIncRecebimentoExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtVlRecebidoExit(Sender: TObject);
  private
    FHistorico: integer;
    FConta: integer;
    FOrigem: string;
    FTipo: string;
    FID: integer;
    FOrdem: string;
    FSaldoAReceber: Currency;
    FVl_Recebido: Currency;
    fGetIdCaixa: string;
    FVl_Juros: Currency;
    FVl_Desconto: Currency;
    FVl_Restante: Currency;

    procedure SetHistorico(aValue:string);
    procedure SetConta(aValue:string);
    procedure LoadContas();
    procedure LoadDuplicata();
    procedure ListarRecebidos();
    procedure SetSaldoAReceber(const Value: Currency);
    procedure SetVl_Recebido(const Value: Currency);

    function ValidarRecebimento(): Boolean;

    procedure InsertRecebidos(aTipoPagto:string); //(Parcial,integral)
    procedure DeleteRecebido(aTipoPagto: string; aID, aTipo, aOrdem: string);
    procedure LimpaRecebimento();
    procedure SetVl_Desconto(const Value: Currency);
    procedure SetVl_Juros(const Value: Currency);
  public

    property Historico: integer read FHistorico;
    property Conta: integer read FConta;
    property Origem:string  read FOrigem;
    property Tipo:string  read FTipo;
    property ID:integer  read FID;
    property Ordem:string  read FOrdem;
    property SaldoAReceber:Currency  read FSaldoAReceber write SetSaldoAReceber;
    property Vl_Recebido:Currency  read FVl_Recebido write SetVl_Recebido;
    property Vl_Juros:Currency  read FVl_Juros write SetVl_Juros;
    property Vl_Desconto:Currency  read FVl_Desconto write SetVl_Desconto;
    property Vl_Restante:Currency  read FVl_Restante;
    property IdCaixa: string read fGetIdCaixa;

          //origem:PDV,PEDIDO,MANUAL|tipo:'0'|ID:1|ORDEM:02/02
    procedure Executar(aOrigem,aTipo: string; aId: Integer; aOrdem: string);
  end;

var
  Frm_ContasReceberDup: TFrm_ContasReceberDup;

implementation

uses
  UDM, UConsulta, u_Mensagem, ACBrUtil, UFuncoes;

{$R *.dfm}

procedure TFrm_ContasReceberDup.Executar(aOrigem,aTipo: string; aId: Integer; aOrdem: string);
begin
  FOrigem:= aOrigem;
  fTipo := aTipo;
  FID := aId;
  FOrdem := aOrdem;
  LimpaRecebimento();

  LoadContas();
  LoadDuplicata();
  ListarRecebidos();
  FVl_Restante := SaldoAReceber;
  Self.ShowModal;
end;


procedure TFrm_ContasReceberDup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = Vk_Escape then
  begin
    actCancelar.Execute;
  end;
end;

procedure TFrm_ContasReceberDup.InsertRecebidos(aTipoPagto:string);
var
  lSQL,lSQL2: string;
begin
  if (Origem = 'PDV') then
  begin
    FVl_Restante := ( SaldoAReceber - ( (Vl_Recebido+Vl_Desconto)-Vl_Juros) );
    if (aTipoPagto = 'PARCIAL') then
    begin
      lSQL := 'INSERT INTO PDV_RECEBER_PARCIAL (CODIGO, ID, TIPO, FORMA_PAGTO, ORDEM, DT_VENC,'+
              'VALOR, USUARIO_EMISSAO, DT_BAIXA, VL_PAGO, USUARIO_BAIXA, ID_CAIXA,'+
              'ID_HISTORICO, ID_CONTA, JUROS, DESCONTO) '+
              'VALUES ( '+
              '0'+','+
              id.ToString+','+
              QuotedStr(Tipo)+','+
              QuotedStr('PARCIAL')+','+
              QuotedStr(Ordem)+','+
              QuotedStr(FormatDateTime('dd.mm.yyyy',dtpRecebido.Date))+','+
              ValorFormatadoFirebird(edtVlRecebido.Text)+','+
              QuotedStr(DM.UsuarioDataHora)+','+
              QuotedStr(FormatDateTime('dd.mm.yyyy',dtpRecebido.Date))+','+//data_baixa
              ValorFormatadoFirebird(edtVlRecebido.Text)+','+
              QuotedStr(DM.UsuarioDataHora)+','+
              IdCaixa+','+
              Historico.ToString+','+
              Conta.ToString+','+
              ValorFormatadoFirebird(edtJuros.Text)+','+
              ValorFormatadoFirebird(edtDescontos.Text)+')';

      lSQL2 := 'update PDV_RECEBER a '+
              'set a.VALOR = '+ValorFormatadoFirebird(CurrToStr(Vl_Restante))+
              'where a.TIPO = '+QuotedStr(Tipo)+
              'and a.ID = '+ID.ToString+
              'and a.ORDEM = '+QuotedStr(Ordem);
      try
        DM.ExecutarSQL(DM.BancoDados, lSQL);
        DM.ExecutarSQL(DM.BancoDados, lSQL2);
        LimpaRecebimento();
        LoadDuplicata();
        ListarRecebidos();
        SaldoAReceber := Vl_Restante;
      except
        TMensagem.Erro('Não foi possivel incluir o recebimento. Por favor, tente novamente.');
      end;
    end
    else if (aTipoPagto ='INTEGRAL') then
    begin
      lSQL := 'update PDV_RECEBER a ' +
              'set a.DT_BAIXA = '+ QuotedStr(FormatDateTime('dd.mm.yyyy',dtpRecebido.Date))+
              ',a.VL_PAGO = '+ValorFormatadoFirebird(CurrToStr(Vl_Recebido))+
              ',a.USUARIO_BAIXA = '+QuotedStr(DM.UsuarioDataHora)+
              ',a.ID_HISTORICO = '+Historico.ToString+
              ',a.ID_CONTA = '+Conta.ToString+
              ',a.BAIXA_ID_CAIXA = '+IdCaixa+
              ',a.JUROS = '+ValorFormatadoFirebird(edtJuros.Text)+
              ',a.DESCONTO = '+ValorFormatadoFirebird(edtDescontos.Text)+
              ' where a.TIPO = '+QuotedStr(Tipo)+' and a.ID = '+ID.ToString+
              ' and a.ORDEM = '+QuotedStr(Ordem);
      try
        DM.ExecutarSQL(DM.BancoDados, lSQL);
        LimpaRecebimento();
        LoadDuplicata();
        ListarRecebidos();
        SaldoAReceber := Vl_Restante;
      except
        TMensagem.Erro('Não foi possivel incluir o recebimento. Por favor, tente novamente.');
      end;
    end;
  end;

  pnlRight.Enabled := SaldoAReceber > 0;
end;

procedure TFrm_ContasReceberDup.DeleteRecebido(aTipoPagto: string; aID, aTipo, aOrdem: string);
const
  SQLParcial = 'DELETE FROM PDV_RECEBER_PARCIAL a ' +
               'WHERE a.CODIGO = %s';
  SQLReceber = 'DELETE FROM PDV_RECEBER a '+
               'WHERE a.ID = %s '+
               'AND   a.TIPO = %s '+
               'AND   a.ORDEM = %s';

begin
  if aTipoPagto = 'P' then
  begin
    try
      DM.ExecutarSQL(DM.BancoDados, Format(SQLParcial, [aID]));
      LoadDuplicata();
      ListarRecebidos();
    except

    end;
  end;

end;

procedure TFrm_ContasReceberDup.actIncRecebimentoExecute(Sender: TObject);
var
  lTotPagoBruto,lDiferenca: Currency;
begin
  inherited;
  if not ValidarRecebimento then
    Abort ;

  SetHistorico(cbbEfetuado.Text);
  SetConta(cbbConta.Text);
  edtVlRecebidoExit(Self);
  lTotPagoBruto := ((Vl_Recebido + Vl_Desconto) - Vl_Juros);

  if (lTotPagoBruto > SaldoAReceber) then
  begin
    lDiferenca := Vl_Recebido-SaldoAReceber;
    if TMensagem.Pergunta('Recebimento maior que o saldo da conta. Deseja informar a diferença('+FormatCurr('R$ #,##0.00',lDiferenca)+') como juros?') then
    begin
      edtJuros.Text := CurrToStr(lDiferenca);
      edtJurosExit(Self);
      InsertRecebidos('INTEGRAL');
    end
    else
      Abort;

  end
  else if (lTotPagoBruto = SaldoAReceber) then
    InsertRecebidos('INTEGRAL')
  else
    InsertRecebidos('PARCIAL')

end;

procedure TFrm_ContasReceberDup.cbbContaChange(Sender: TObject);
begin
  inherited;
  if (cbbConta.ItemIndex > 0) then
    SetConta(cbbConta.Text);
end;

procedure TFrm_ContasReceberDup.cbbEfetuadoChange(Sender: TObject);
begin
  inherited;
  SetHistorico(cbbEfetuado.Text);
end;

procedure TFrm_ContasReceberDup.dbgrdRecebidosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (UpperCase(Column.Field.FieldName) = 'LIXEIRA') then
  begin
    dbgrdRecebidos.Canvas.FillRect(Rect);

    // desenha a imagem conforme a condição acima
    il1.Draw(dbgrdRecebidos.Canvas, Rect.Left + 2, Rect.Top + 1, 0);
  end;
end;

procedure TFrm_ContasReceberDup.EdPesquisa1Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Historico(1).ToString;
end;

procedure TFrm_ContasReceberDup.edtDescontosExit(Sender: TObject);
var
  lValor: Currency;
begin
  inherited;
  if (not TryStrToCurr(edtDescontos.Text, lValor)) then
    lValor := 0;

  Vl_Desconto := lValor;
end;

procedure TFrm_ContasReceberDup.edtJurosExit(Sender: TObject);
var
  lValor: Currency;
begin
  inherited;
  if (not TryStrToCurr(edtJuros.Text, lValor)) then
    lValor := 0;

  Vl_Juros := lValor;
end;

procedure TFrm_ContasReceberDup.edtVlRecebidoEnter(Sender: TObject);
begin
  inherited;
  Vl_Recebido := (SaldoAReceber+StrToCurr(edtJuros.Text))-StrToCurr(edtDescontos.Text);
end;

procedure TFrm_ContasReceberDup.edtVlRecebidoExit(Sender: TObject);
var
  lValor: Currency;
begin
  inherited;
  if (not TryStrToCurr(edtVlRecebido.Text, lValor)) then
    lValor := 0;

  edtVlRecebido.Text := FormatFloatBr(lValor,'#,##0.00');
  Vl_Recebido := lValor;
end;

procedure TFrm_ContasReceberDup.LimpaRecebimento;
begin
  dtpRecebido.Date := Date;
  cbbConta.ItemIndex := 0;
  Vl_Juros := 0;
  Vl_Desconto := 0;
  Vl_Recebido := 0;
  cbbEfetuado.ItemIndex := 0;
end;

procedure TFrm_ContasReceberDup.ListarRecebidos;
const
  SQL = 'select ''P'' tabela,a.codigo,a.ID,a.tipo,a.ordem,a.DT_BAIXA,'+
        'a.VL_PAGO recebido,a.DESCONTO,a.JUROS,'+
        'case '+
        '  when a.ID_HISTORICO = 48 then ''DINHEIRO'' '+
        '  when a.ID_HISTORICO = 49 then ''CARTÃO DE DÉBITO'' '+
        '  when a.ID_HISTORICO = 50 then ''CARTÃO DE CRÉDITO'' '+
        '  when a.ID_HISTORICO = 51 then ''CHEQUE'' '+
        '  when a.ID_HISTORICO = 52 then ''BOLETO'' '+
        '  when a.ID_HISTORICO = 65 then ''VALE'' '+
        '  when a.ID_HISTORICO = 46 then ''DEPÓSITO EM CONTA CORRENTE'' '+
        '  when a.ID_HISTORICO = 64 then ''TRANSFERÊNCIA'' '+
        '  when a.ID_HISTORICO = 66 then ''TEF'' '+
        '  when a.ID_HISTORICO = 67 then ''PAGAMENTO DIGITAL'' '+
        'end forma,c.BCO_NOME conta,cast(0 as integer)lixeira '+
        'from PDV_RECEBER_PARCIAL a '+
        'left outer join HISTORICO b on (b.ID=a.ID_HISTORICO) '+
        'left outer join CONTA_BANCARIA c on (c.ID=a.ID_CONTA) '+
        'where a.TIPO= %s and a.ID= %s and a.ORDEM= %s '+
        'union all '+
        'select ''R'' tabela,0 codigo,a.ID,a.tipo,a.ordem,a.DT_BAIXA,'+
        'a.VL_PAGO recebido,a.DESCONTO,a.JUROS,'+
        'case '+
        '  when a.ID_HISTORICO = 48 then ''DINHEIRO'' '+
        '  when a.ID_HISTORICO = 49 then ''CARTÃO DE DÉBITO'' '+
        '  when a.ID_HISTORICO = 50 then ''CARTÃO DE CRÉDITO'' '+
        '  when a.ID_HISTORICO = 51 then ''CHEQUE'' '+
        '  when a.ID_HISTORICO = 52 then ''BOLETO'' '+
        '  when a.ID_HISTORICO = 65 then ''VALE'' '+
        '  when a.ID_HISTORICO = 46 then ''DEPÓSITO EM CONTA CORRENTE'' '+
        '  when a.ID_HISTORICO = 64 then ''TRANSFERÊNCIA'' '+
        '  when a.ID_HISTORICO = 66 then ''TEF'' '+
        '  when a.ID_HISTORICO = 67 then ''PAGAMENTO DIGITAL'' '+
        'end forma,c.BCO_NOME conta,cast(0 as integer)lixeira '+
        'from PDV_RECEBER a '+
        'left outer join HISTORICO b on (b.ID=a.ID_HISTORICO) '+
        'left outer join CONTA_BANCARIA c on (c.ID=a.ID_CONTA) '+
        'where a.dt_baixa is not null '+
        'and a.TIPO= %s and a.ID= %s and a.ORDEM= %s ';
begin
  dsRecebidos.Close;
  dsRecebidos.Data := DM.LerDataSet( Format(SQL,[QuotedStr(Tipo),ID.ToString,QuotedStr(Ordem),
                                                 QuotedStr(Tipo),ID.ToString,QuotedStr(Ordem)]) );

  pnlGridRecebidos.Visible := not dsRecebidos.IsEmpty;

  if (not dsRecebidos.IsEmpty) then
  begin
    dbgrdRecebidos.Columns.Items[0].Width := 64;
    dbgrdRecebidos.Columns.Items[1].Width := 65;
    dbgrdRecebidos.Columns.Items[2].Width := 65;
    dbgrdRecebidos.Columns.Items[3].Width := 65;
    dbgrdRecebidos.Columns.Items[4].Width := 90;
    dbgrdRecebidos.Columns.Items[5].Width := 95;
    dbgrdRecebidos.Columns.Items[6].Width := 20;
  end;

end;

procedure TFrm_ContasReceberDup.LoadContas;
const
  SQL = 'select a.ID,a.BCO_NOME conta from CONTA_BANCARIA a';
begin
  DM.dsConsulta3.Close;
  DM.dsConsulta3.Data := DM.LerDataSet(SQL);

  cbbConta.Items.Clear;
  cbbConta.Items.Add('Selecione');
  if (not DM.dsConsulta3.IsEmpty) then
  begin
    DM.dsConsulta3.First;
    while not DM.dsConsulta3.Eof do
    begin
      cbbConta.Items.Add(DM.dsConsulta3.FieldByName('conta').AsString);
      DM.dsConsulta3.Next;
    end;
  end;
  cbbConta.ItemIndex := 0;
end;

procedure TFrm_ContasReceberDup.LoadDuplicata;
const
  SQL = 'select b.DESCRICAO classificacao,'+
        'cast(''CUPOM DE VENDA:[''||a.ID||''] - ''||''[''||c.FORMA_PAGTO||'']'' as varchar(50))descricao,'+
        'e.NOME_RAZAO sacado, a.EMISSAO,c.DT_VENC,'+
        'c.VALOR+(select coalesce(sum (d.VL_PAGO),0) from PDV_RECEBER_PARCIAL d where d.ID = c.ID and d.TIPO = c.TIPO and d.ORDEM = c.ORDEM)vl_total,'+
        'c.VALOR vl_restante '+
        'from PDV_MASTER a '+
        'left outer join HISTORICO b on (b.ID=a.ID_HISTORICO) '+
        'left outer join PDV_RECEBER c on (c.ID=a.ID and c.TIPO=a.TIPO) '+
        'left outer join CLIENTE e on (e.CODIGO=a.ID_CLIENTE) '+
        'where c.TIPO= %s and c.ID= %s and c.ORDEM= %s';
var
  dsTemp: TClientDataSet;
begin
  dsTemp := TClientDataSet.Create(nil);
  try
    dsTemp.Data := DM.LerDataSet(Format(SQL, [QuotedStr(Tipo), ID.ToString, QuotedStr(Ordem)]));

    if (not dsTemp.IsEmpty) then
    begin
//      if (dsTemp.FieldByName('dt_venc').AsDateTime < Date) then
//      begin
//        pnlStatus.Color := clRed;
//        pnlStatus.Caption := 'VENCIDA';
//      end
//      else
//      begin
//        pnlStatus.Color := $0034C58B;
//        pnlStatus.Caption := 'A RECEBER';
//      end;
      edtClassificacao.Text := dsTemp.FieldByName('classificacao').AsString;
      edtDescricao.Text := dsTemp.FieldByName('descricao').AsString;
      edtSacado.Text := dsTemp.FieldByName('sacado').AsString;
      dtpEmissao.Date := dsTemp.FieldByName('emissao').AsDateTime;
      dtpVencimento.Date := dsTemp.FieldByName('DT_VENC').AsDateTime;
      edtVlTotal.Text := FormatCurr('R$ #,##0.00', dsTemp.FieldByName('vl_total').AsCurrency);

      SaldoAReceber := dsTemp.FieldByName('vl_restante').AsCurrency;
//      pnlDadosDup.Enabled := False;
    end;
  finally
    FreeAndNil(dsTemp);
  end;
end;

procedure TFrm_ContasReceberDup.SetConta(aValue: string);
begin
  DM.dsConsulta3.Locate('conta',aValue,[]);
  FConta := DM.dsConsulta3.FieldByName('id').AsInteger;
end;

procedure TFrm_ContasReceberDup.SetHistorico(aValue: string);
begin
 case AnsiIndexStr(aValue, [ 'DINHEIRO','CARTÃO DE DÉBITO','CARTÃO DE CRÉDITO','CHEQUE'
                                       ,'BOLETO','VALE','DEPÓSITO EM CONTA CORRENTE','TRANSFERÊNCIA'
                                       ,'TEF','PAGAMENTO DIGITAL']) of
    0:
      FHistorico := 48;
    1:
      fHistorico := 49;
    2:
      fHistorico := 50;
    3:
      fHistorico := 51;
    4:
      fHistorico := 52;
    5:
      fHistorico := 65;
    6:
      fHistorico := 46;
    7:
      fHistorico := 64;
    8:
      fHistorico := 66;
    9:
      fHistorico := 67;
  end;
end;

procedure TFrm_ContasReceberDup.SetSaldoAReceber(const Value: Currency);
begin
  FSaldoAReceber := Value;
  lblSaldoAReceber.Caption := FormatCurr('R$ #,##0.00',FSaldoAReceber);

  if (FSaldoAReceber <= 0) then
  begin
    pnlStatus.Caption := 'RECEBIDA';
    pnlStatus.Color := $0034C58B;
  end
  else if (FSaldoAReceber > 0) and (dtpVencimento.Date < Date) then
  begin
    pnlStatus.Caption := 'VENCIDA';
    pnlStatus.Color := clRed;
  end
  else if (FSaldoAReceber > 0) and (dtpVencimento.Date = Date) then
  begin
    pnlStatus.Caption := 'HOJE';
    pnlStatus.Color := clYellow;
  end
  else if (FSaldoAReceber > 0) and (dtpVencimento.Date > Date) then
  begin
    pnlStatus.Caption := 'A VENCER';
    pnlStatus.Color := $00ee8425;
  end
end;

procedure TFrm_ContasReceberDup.SetVl_Desconto(const Value: Currency);
begin
  FVl_Desconto := Value;
  edtDescontos.Text := FormatFloatBr(FVl_Desconto,'#,##0.00');
  Vl_Recebido := (SaldoAReceber+Vl_Juros) - FVl_Desconto;
end;

procedure TFrm_ContasReceberDup.SetVl_Juros(const Value: Currency);
begin
  FVl_Juros := Value;
  edtJuros.Text := FormatFloatBr(FVl_Juros,'#,##0.00');
  Vl_Recebido   := (SaldoAReceber+FVl_Juros)-Vl_Desconto;
end;

procedure TFrm_ContasReceberDup.SetVl_Recebido(const Value: Currency);
begin
  FVl_Recebido := Value;
  edtVlRecebido.Text := FormatCurr('#,##0.00',Value);
end;

function TFrm_ContasReceberDup.ValidarRecebimento: Boolean;
var
  lExisteCaixa: TCaixa;
begin
  Result := True;
  if (cbbConta.ItemIndex < 1) then
  begin
    TMensagem.Informacao('Informe a conta.');
    cbbConta.SetFocus;
    Result := False;
    Exit;
  end;

  if Conta = 1 then {Conta Caixa PDV}
  begin
    lExisteCaixa := CaixaFechado;
    if (lExisteCaixa.ID > 0) then
    begin
      fGetIdCaixa := IntToStr(lExisteCaixa.ID);
    end
    else
    begin
      Result := False;
      TMensagem.Atencao('Baixa não pode ser efetuada. Caixa PDV fechado/inexistente.');
      Exit;
    end;
    if (dtpRecebido.Date <> Date) then
      begin
        Result := False;
        TMensagem.Atencao('Baixa não pode ser efetuada. Utilizando conta caixa PDV e data de baixa diferente de hoje.');
        Exit;
      end;
  end
  else
    fGetIdCaixa := 'null';
end;

end.

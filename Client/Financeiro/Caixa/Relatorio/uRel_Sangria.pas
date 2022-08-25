unit uRel_Sangria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPdr_ListaRelatorio, Data.DB,
  RLXLSFilter, RLFilters, RLPDFFilter, Datasnap.DBClient, System.Actions,
  Vcl.ActnList, RLReport, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls, System.DateUtils;

type
  TRel_Sangria = class(TPdr_ListaRelatorio)
    lblQtdeRegistros: TLabel;
    lblTotal: TLabel;
    dsGridDATA: TDateField;
    dsGridENTSAI: TStringField;
    dsGridVALOR: TFMTBCDField;
    dsGridUSUARIO: TStringField;
    dsGridFORMA_PAGTO: TStringField;
    RLLabel16: TRLLabel;
    rlblDT1: TRLLabel;
    RLLabel1: TRLLabel;
    rlblDT2: TRLLabel;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLMemo1: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLBand2: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLDBMemo4: TRLDBMemo;
    RLDBMemo5: TRLDBMemo;
    RLDBMemo6: TRLDBMemo;
    RLDBMemo8: TRLDBMemo;
    RLDBMemo9: TRLDBMemo;
    RLDBMemo10: TRLDBMemo;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    rlblTotal: TRLLabel;
    rlblTotDesc: TRLLabel;
    rlblTotBruto: TRLLabel;
    RLMemo6: TRLMemo;
    rlblTotais: TRLLabel;
    dsGridINF: TStringField;
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure cbbListaClick(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_Sangria: TRel_Sangria;

implementation

{$R *.dfm}

uses UDM, u_Mensagem;

procedure TRel_Sangria.actGerarExecute(Sender: TObject);
const
  SQL = 'SELECT '+
       	'CAST (ces.DATA_HORA AS date)DATA,'+
       	'iif(ces.VALOR < 0,'+
       	'''SAIDA'','+
       	'''ENTRADA'')entsai,'+
       	'CAST (iif(ces.VALOR < 0,'+
       	'ces.VALOR*-1,'+
       	'ces.VALOR) AS NUMERIC(10,'+
       	'2))valor,'+
       	'CAST(upper (ces.OBS) AS varchar(500)) inf,'+
       	'ces.USUARIO,'+
       	'ces.FORMA_PAGTO '+
        'FROM '+
        '	CAIXA_ENT_SAI ces '+
        'WHERE'+
        '	CAST (ces.DATA_HORA AS date) BETWEEN %s AND %s '+
        '	AND ces.TIPO <> ''ABERTURA CAIXA'' ';
var
  lTotEnt,lTotSai: Currency;
begin
  inherited ;
  lTotEnt := 0;
  lTotSai := 0;

  dsGrid.Close;
  dsGrid.Data := DM.LerDataSet(Format(SQL,[QuotedStr( FormatDateTime('dd.mm.yyyy',dtp1.Date )),
                                           QuotedStr( FormatDateTime('dd.mm.yyyy',dtp2.Date ))]));

  pnlNaoExisteReg.Visible := dsGrid.IsEmpty;
  actLista.Enabled := not pnlNaoExisteReg.Visible;

  if (not dsGrid.IsEmpty) then
  begin
    pnlNaoExisteReg.SendToBack;

    dsGrid.DisableControls;
    try
      dsGrid.First;
      while not dsGrid.Eof do
      begin
        if dsGrid.FieldByName('ENTSAI').AsString = 'ENTRADA' then
          lTotEnt := lTotEnt + dsGrid.FieldByName('valor').AsCurrency
        else
          lTotSai := lTotSai + dsGrid.FieldByName('valor').AsCurrency;
        dsGrid.Next;
      end;
    finally
      dsGrid.First;
      dsGrid.EnableControls;
    end;
    lblQtdeRegistros.Caption := 'EXIBINDO ' + FormatFloat('#,##0', dsGrid.RecordCount) + ' REGISTROS';
    lblTotal.Caption := 'ENTRADAS: R$ ' + FormatCurr('#,##0.00', lTotEnt)+
                        '   -   SAIDAS:  R$ ' + FormatCurr('#,##0.00', lTotSai) ;
  end
  else
  begin
    pnlNaoExisteReg.BringToFront;
  end;
end;

procedure TRel_Sangria.cbbListaClick(Sender: TObject);
begin
  inherited;
  try
    case cbbLista.ItemIndex of
      0: //lista
        begin

        end;
      1: //pdf
        begin
          try
            Rel_1.Prepare;
            RLPDFFilter1.FileName := ExtractFilePath(Application.ExeName) + '\RelatorioSangria.pdf';
            Rel_1.SaveToFile(ExtractFilePath(Application.ExeName) + '\RelatorioSangria.pdf');
            TMensagem.Informacao('Arquivo gerado com sucesso.');
          except
            TMensagem.Erro('Erro: Arquivo não pode ser gerado.');
          end;
        end;
      2: //excel
        begin
          try
            Rel_1.Prepare;
            RLXLSFilter1.FileName := ExtractFilePath(Application.ExeName) + '\RelatorioSangria.xls';
            Rel_1.SaveToFile(ExtractFilePath(Application.ExeName) + '\RelatorioSangria.xls');
            TMensagem.Informacao('Arquivo gerado com sucesso.');
          except
            TMensagem.Erro('Erro: Arquivo não pode ser gerado.');
          end;
        end;
      3: //impressao
        begin
          Rel_1.PreviewModal;
        end;
    end;
  finally
    cbbLista.Visible := False;
  end;
end;

procedure TRel_Sangria.FormCreate(Sender: TObject);
begin
  inherited;
  dtp1.Date := Incday(Date,-7);
  dtp2.Date := Date;

  Self.Height := pnlFundo0.Height;
  Self.Width := pnlFundo0.Width;
  pnlRight.Visible := False;
  actGerar.Execute;
end;

procedure TRel_Sangria.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblTotais.Caption := lblTotal.Caption;
end;

procedure TRel_Sangria.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblDT1.Caption := FormatDateTime('dd/mm/yyyy',dtp1.Date);
  rlblDT2.Caption := FormatDateTime('dd/mm/yyyy',dtp2.Date);
end;

end.

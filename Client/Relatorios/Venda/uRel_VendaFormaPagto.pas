unit uRel_VendaFormaPagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPdr_ListaRelatorio, Data.DB,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls,
  Datasnap.DBClient, RLReport, RLXLSFilter, RLFilters, RLPDFFilter;

type
  TRel_VendaFormaPagto = class(TPdr_ListaRelatorio)
    dsGridFORMA: TStringField;
    dsGridCONDICAO: TStringField;
    dsGridVALOR: TFMTBCDField;
    lblQtdeRegistros: TLabel;
    lblTotal: TLabel;
    Label5: TLabel;
    lblResVTot: TLabel;
    Label6: TLabel;
    lblResDt1: TLabel;
    lblResDt2: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    lblResTotRec: TLabel;
    Label9: TLabel;
    lblResTotReceber: TLabel;
    Label10: TLabel;
    lblResTotPeriodo: TLabel;
    RLLabel16: TRLLabel;
    rlblDT1: TRLLabel;
    rlblDT2: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    rlblTotal: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure dtp2Change(Sender: TObject);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure cbbListaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_VendaFormaPagto: TRel_VendaFormaPagto;

implementation

uses
  System.DateUtils, UDM, u_Mensagem;

{$R *.dfm}

procedure TRel_VendaFormaPagto.actGerarExecute(Sender: TObject);
var
  SQL : string;
  lTotaReceber,lTotRecebido,lTotPeriodo : Currency;
begin
  inherited;
  lTotaReceber := 0;
  lTotRecebido := 0;
  lTotPeriodo := 0;

  SQL := 'with RET_CONDICAO as '+
         '( '+
         'select cast(iif(c.FORMA_PAGTO = ''CREDIARIO'',''CREDIARIO'',b.DESCRICAO) as varchar(60)) forma,'+
         'cast(iif(c.FORMA_PAGTO = ''CREDIARIO'',d.DESCRICAO,''A VISTA'') as varchar(50)) condicao,'+
         'a.TIPO,a.ID,(sum(c.VALOR)+coalesce(sum(e.VALOR),0)) valor '+
         'from PDV_MASTER a '+
         'left outer join PDV_RECEBER c on (c.TIPO = a.TIPO and c.ID = a.ID) '+
         'left outer join PDV_RECEBER_PARCIAL e on (e.TIPO = c.TIPO and e.ID = c.ID and e.ORDEM=c.ORDEM) '+
         'left outer join HISTORICO b on (b.ID = c.ID_HISTORICO) '+
         'left outer join CONDPAGTO d on (d.CODIGO = a.ID_CREDIARIO) '+
         'where a.EMISSAO between '+QuotedStr( FormatDateTime('dd.mm.yyyy',dtp1.Date) )+
                                  ' and '+QuotedStr( FormatDateTime('dd.mm.yyyy',dtp2.Date) )+
         'and a.STATUS <> ''CANCELADA'' '+
         'and ( (c.ID_HISTORICO is null) or (c.ID_HISTORICO<>47) ) '+
         'group by 1,2,3,4 '+
         ') '+
         'select FORMA,CONDICAO,sum(VALOR) VALOR '+
         'from RET_CONDICAO '+
         'group by 1,2';

  dsGrid.Close;
  dsGrid.Data := DM.LerDataSet(SQL);

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
//        if dsGrid.FieldByName('forma').AsString = 'DESCONTO CONCEDIDO' then
//          dsGrid.Delete;

        if dsGrid.FieldByName('forma').AsString = 'CREDIARIO' then
          lTotaReceber := lTotaReceber + dsGrid.FieldByName('valor').AsCurrency
        else
          lTotRecebido := lTotRecebido + dsGrid.FieldByName('valor').AsCurrency;
        lTotPeriodo := lTotPeriodo + dsGrid.FieldByName('valor').AsCurrency;
        dsGrid.Next;
      end;
    finally
      dsGrid.First;
      dsGrid.EnableControls;
    end;
    lblQtdeRegistros.Caption := 'EXIBINDO '+FormatFloat('#,##0',dsGrid.RecordCount)+' REGISTROS';
    lblTotal.Caption := 'R$ '+FormatCurr('#,##0.00',lTotPeriodo);

    lblResVTot.Caption := 'R$ '+FormatCurr('#,##0.00',lTotPeriodo);
    lblResTotRec.Caption := 'R$ '+FormatCurr('#,##0.00',lTotRecebido);
    lblResTotReceber.Caption := 'R$ '+FormatCurr('#,##0.00',lTotaReceber);
    lblResTotPeriodo.Caption := 'R$ '+FormatCurr('#,##0.00',lTotPeriodo);
  end
  else
  begin
    pnlNaoExisteReg.BringToFront;

  end;
end;

procedure TRel_VendaFormaPagto.cbbListaClick(Sender: TObject);
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
            RLPDFFilter1.FileName := ExtractFilePath(Application.ExeName) + '\RelatorioVendasTipoPagamento.pdf';
            Rel_1.SaveToFile(ExtractFilePath(Application.ExeName) + '\RelatorioVendasTipoPagamento.pdf');
            TMensagem.Informacao('Arquivo gerado com sucesso.');
          except
            TMensagem.Erro('Erro: Arquivo não pode ser gerado.');
          end;
        end;
      2: //excel
        begin
          try
            Rel_1.Prepare;
            RLXLSFilter1.FileName := ExtractFilePath(Application.ExeName) + '\RelatorioVendasTipoPagamento.xls';
            Rel_1.SaveToFile(ExtractFilePath(Application.ExeName) + '\RelatorioVendasTipoPagamento.xls');
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

procedure TRel_VendaFormaPagto.dtp1Change(Sender: TObject);
begin
  inherited;
  lblResDt1.Caption := FormatDateTime('dd/mm/yyyy',dtp1.Date);
end;

procedure TRel_VendaFormaPagto.dtp2Change(Sender: TObject);
begin
  inherited;
  lblResDt2.Caption := FormatDateTime('dd/mm/yyyy',dtp2.Date);
end;

procedure TRel_VendaFormaPagto.FormCreate(Sender: TObject);
begin
  inherited;
  dtp1.Date := Incday(Date,-7);
  dtp2.Date := Date;

  lblResDt1.Caption := FormatDateTime('dd/mm/yyyy',dtp1.Date);
  lblResDt2.Caption := FormatDateTime('dd/mm/yyyy',dtp2.Date);

  Self.Height := pnlFundo0.Height;
  Self.Width :=  pnlFundo0.Width;
//  actGerar.Execute;
end;

procedure TRel_VendaFormaPagto.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblTotal.Caption := lblResTotPeriodo.Caption;
  RLLabel5.Caption := '';
end;

procedure TRel_VendaFormaPagto.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblDT1.Caption := lblResDt1.Caption;
  rlblDT2.Caption := lblResDt2.Caption;
end;

end.

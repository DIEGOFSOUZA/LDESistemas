unit uRel_VendaPorVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPdr_ListaRelatorio, Data.DB,
  RLXLSFilter, RLFilters, RLPDFFilter, Datasnap.DBClient, System.Actions,
  Vcl.ActnList, RLReport, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TRel_VendaPorVendedor = class(TPdr_ListaRelatorio)
    dsGridVENDEDOR: TStringField;
    dsGridPRODUTO: TStringField;
    dsGridCOMISSAO: TFMTBCDField;
    dsGridQTDE: TFMTBCDField;
    dsGridVL_TOTAL: TFMTBCDField;
    lblQtdeRegistros: TLabel;
    lblRodapeTotal: TLabel;
    lblRodapeQtde: TLabel;
    lblRodapeComissao: TLabel;
    lblResDt1: TLabel;
    Label8: TLabel;
    lblResDt2: TLabel;
    lblResTotVenda: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pnlGridResumo: TPanel;
    dbgrdResumo: TDBGrid;
    dsGridResumo: TClientDataSet;
    dsGridResumoNOME: TStringField;
    dsGridResumoVALOR: TCurrencyField;
    sGResumo: TDataSource;
    RLLabel16: TRLLabel;
    rlblDT1: TRLLabel;
    rlblDT2: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLDBMemo4: TRLDBMemo;
    RLDBMemo5: TRLDBMemo;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    rlblComissao: TRLLabel;
    rlblVlTotal: TRLLabel;
    rlblQtde: TRLLabel;
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure dtp2Change(Sender: TObject);
    procedure dbgrdResumoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure cbbListaClick(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    var
      gTotComissao : Currency;
      gTotQtde : Extended;
  end;

var
  Rel_VendaPorVendedor: TRel_VendaPorVendedor;

implementation

uses
  UDM, u_Mensagem, System.DateUtils;

{$R *.dfm}

procedure TRel_VendaPorVendedor.actGerarExecute(Sender: TObject);
var
  lSQL: string;
  lTotVenda : Currency;
begin
  inherited;
  lTotVenda := 0;
  gTotComissao := 0;
  gTotQtde := 0;

  lSQL := 'select d.NOME vendedor,c.NOME produto,'+
          'cast(((coalesce(d.COMISSAO,0)/100)*sum(b.VL_TOTAL)) as numeric(10,2)) comissao,'+
          'sum(b.QTDE) qtde,cast(sum(b.VL_TOTAL) as numeric(10,2)) vl_total '+
          'from PDV_MASTER a '+
          'left outer join PDV_ITENS b on (b.ID = a.ID and b.TIPO = a.TIPO) '+
          'left outer join PRODUTO c on (c.CODIGO = b.ID_PRODUTO) '+
          'left outer join USUARIO d on (d.ID_VENDEDOR = a.ID_VENDEDOR) '+
          'where (a.EMISSAO between '+QuotedStr( FormatDateTime('dd.mm.yyyy',dtp1.Date) )+
                              ' and '+QuotedStr( FormatDateTime('dd.mm.yyyy',dtp2.Date) )+')'+
          'and (a.STATUS <> ''CANCELADA'') '+
          'group by 1,2,d.COMISSAO';

  dsGrid.Close;
  dsGrid.Data := DM.LerDataSet(lSQL);

  pnlNaoExisteReg.Visible := dsGrid.IsEmpty;
  actLista.Enabled := not pnlNaoExisteReg.Visible;

  if (not dsGrid.IsEmpty) then
  begin
    pnlNaoExisteReg.SendToBack;
    dsGridResumo.Close;
    dsGridResumo.CreateDataSet;

    dsGrid.DisableControls;
    try
      dsGrid.First;
      while not dsGrid.Eof do
      begin
        if dsGridResumo.Locate('nome',dsGrid.FieldByName('vendedor').AsString,[]) then
        begin
          dsGridResumo.Edit;
          dsGridResumo.FieldByName('valor').AsCurrency := dsGridResumo.FieldByName('valor').AsCurrency+
                                                   dsGrid.FieldByName('comissao').AsCurrency;
        end
        else
        begin
          dsGridResumo.Append;
          dsGridResumo.FieldByName('nome').AsString := dsGrid.FieldByName('vendedor').AsString;
          dsGridResumo.FieldByName('valor').AsCurrency := dsGrid.FieldByName('comissao').AsCurrency;
        end;
        dsGridResumo.Post;

        lTotVenda := lTotVenda + dsGrid.FieldByName('vl_total').AsCurrency;
        gTotQtde := gTotQtde + dsGrid.FieldByName('qtde').AsFloat;
        gTotComissao := gTotComissao+dsGrid.FieldByName('comissao').AsCurrency;
        dsGrid.Next;
      end;
    finally
      dsGrid.First;
      dsGrid.EnableControls;
    end;
    lblQtdeRegistros.Caption := 'EXIBINDO ' + FormatFloat('#,##0', dsGrid.RecordCount) + ' REGISTROS';
    lblRodapeTotal.Caption := 'R$ ' + FormatCurr('#,##0.00', lTotVenda);
    lblRodapeQtde.Caption := FormatFloat('#,##0.000',gTotQtde);
    lblRodapeComissao.Caption := 'R$ ' + FormatCurr('#,##0.00', gTotComissao);

    lblResTotVenda.Caption := 'R$ ' + FormatCurr('#,##0.00', lTotVenda);
  end
  else
  begin
    pnlNaoExisteReg.BringToFront;
  end;
end;

procedure TRel_VendaPorVendedor.cbbListaClick(Sender: TObject);
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
            RLPDFFilter1.FileName := ExtractFilePath(Application.ExeName) + '\RelatorioVendasVendedor.pdf';
            Rel_1.SaveToFile(ExtractFilePath(Application.ExeName) + '\RelatorioVendasVendedor.pdf');
            TMensagem.Informacao('Arquivo gerado com sucesso.');
          except
            TMensagem.Erro('Erro: Arquivo não pode ser gerado.');
          end;
        end;
      2: //excel
        begin
          try
            Rel_1.Prepare;
            RLXLSFilter1.FileName := ExtractFilePath(Application.ExeName) + '\RelatorioVendasVendedor.xls';
            Rel_1.SaveToFile(ExtractFilePath(Application.ExeName) + '\RelatorioVendasVendedor.xls');
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

procedure TRel_VendaPorVendedor.dbgrdResumoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
   if (TStringGrid(dbgrdResumo).RowCount-1) < 10 then //Se tiver menos de 10 linhas
    ShowScrollBar(dbgrdResumo.Handle,SB_VERT,False); //Remove barra Vertical
end;

procedure TRel_VendaPorVendedor.dtp1Change(Sender: TObject);
begin
  inherited;
  lblResDt1.Caption := FormatDateTime('dd/mm/yyyy', dtp1.Date);
end;

procedure TRel_VendaPorVendedor.dtp2Change(Sender: TObject);
begin
  inherited;
  lblResDt2.Caption := FormatDateTime('dd/mm/yyyy',dtp2.Date);
end;

procedure TRel_VendaPorVendedor.FormCreate(Sender: TObject);
begin
  inherited;
  dtp1.Date := Incday(Date, -7);
  dtp2.Date := Date;

  lblResDt1.Caption := FormatDateTime('dd/mm/yyyy', dtp1.Date);
  lblResDt2.Caption := FormatDateTime('dd/mm/yyyy', dtp2.Date);

  Self.Height := pnlFundo0.Height;
  Self.Width := pnlFundo0.Width;
  chkExibirResumo.Checked := True;
  chkExibirResumoClick(Self);
//  actGerar.Execute;
end;

procedure TRel_VendaPorVendedor.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblVlTotal.Caption := lblResTotVenda.Caption;
  rlblQtde.Caption := FormatFloat('#,##0.000', gTotQtde);
  rlblComissao.Caption := FormatCurr('R$ #,##0.00', gTotComissao);
end;

procedure TRel_VendaPorVendedor.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblDT1.Caption := lblResDt1.Caption;
  rlblDT2.Caption := lblResDt2.Caption;
end;

end.

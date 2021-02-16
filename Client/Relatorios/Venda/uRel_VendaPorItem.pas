unit uRel_VendaPorItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPdr_ListaRelatorio, Data.DB,
  RLXLSFilter, RLFilters, RLPDFFilter, Datasnap.DBClient, System.Actions,
  Vcl.ActnList, RLReport, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TRel_VendaPorItem = class(TPdr_ListaRelatorio)
    lblResDt1: TLabel;
    Label8: TLabel;
    lblResDt2: TLabel;
    lblResTotVenda: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblResQtVendida: TLabel;
    Label10: TLabel;
    lblResCustoMedio: TLabel;
    Label9: TLabel;
    lblResVlmedioVenda: TLabel;
    Label12: TLabel;
    lblResLucMedioV: TLabel;
    dsGridPRODUTO: TStringField;
    dsGridQTDE_VENDIDA: TFMTBCDField;
    dsGridVL_VENDAS: TFMTBCDField;
    dsGridVL_MEDIO: TFMTBCDField;
    dsGridCUSTO_MEDIO: TFMTBCDField;
    dsGridCUSTO_DIRETO: TFMTBCDField;
    dsGridLUCRATIVIDADE: TFMTBCDField;
    dsGridMARG_LUCRO: TFMTBCDField;
    lblRodapeQtdeV: TLabel;
    lblRodapeVV: TLabel;
    lblRodapeVM: TLabel;
    lblQtdeRegistros: TLabel;
    lblRodapeCM: TLabel;
    lblRodapeLuc: TLabel;
    lblRodapeCD: TLabel;
    RLLabel16: TRLLabel;
    rlblDT1: TRLLabel;
    rlblDT2: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLDBMemo4: TRLDBMemo;
    RLDBMemo5: TRLDBMemo;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    rlblTotQtde: TRLLabel;
    rlblVlVendas: TRLLabel;
    rlblVlMedio: TRLLabel;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    RLMemo8: TRLMemo;
    RLDBMemo6: TRLDBMemo;
    RLDBMemo7: TRLDBMemo;
    RLDBMemo8: TRLDBMemo;
    rlblCustoMedio: TRLLabel;
    rlblLucratividade: TRLLabel;
    rlblCustoDireto: TRLLabel;
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure dtp2Change(Sender: TObject);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure cbbListaClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
     gTotQtde : Extended;
     gTotVlMedio,gTotVlVenda,gTotCusMedio,
     gTotCusDireto,gTotLucrat : Currency;
  end;

var
  Rel_VendaPorItem: TRel_VendaPorItem;

implementation

uses
  UDM, u_Mensagem, System.DateUtils;

{$R *.dfm}

procedure TRel_VendaPorItem.actGerarExecute(Sender: TObject);
var
  lSQL: string;
begin
  inherited;
  gTotQtde := 0;
  gTotVlMedio := 0;
  gTotVlVenda := 0;
  gTotCusMedio := 0;
  gTotCusDireto := 0;
  gTotLucrat := 0;

  lSQL := 'select c.NOME produto,sum(b.QTDE) qtde_vendida,'+
          'cast(sum(b.VL_TOTAL) as numeric(10,2)) vl_vendas,'+
          'cast((sum(b.VL_TOTAL)/sum(b.QTDE)) as numeric(10,2)) vl_medio,'+
          'cast( ( (sum(b.QTDE)*coalesce(c.PRECO_CUSTO,0)) / sum(b.QTDE) )as numeric(10,2)) custo_medio,'+
          'cast( (sum(b.QTDE)*coalesce(c.PRECO_CUSTO,0)) as numeric(10,2)) custo_direto,'+
          'cast( (sum(b.VL_TOTAL)-(sum(b.QTDE)*coalesce(c.PRECO_CUSTO,0))) as numeric(10,2)) lucratividade,'+
          'cast( iif(c.PRECO_CUSTO > 0,((coalesce(c.PRECO_VENDA,0)-coalesce(c.PRECO_CUSTO,0)) /coalesce(c.PRECO_CUSTO,0))*100,100) as numeric(10,2)) marg_lucro '+
          'from PDV_MASTER a '+
          'left outer join PDV_ITENS b on (b.ID = a.ID and b.TIPO = a.TIPO) '+
          'left outer join PRODUTO c on (c.CODIGO = b.ID_PRODUTO) '+
          'where a.EMISSAO between '+QuotedStr( FormatDateTime('dd.mm.yyyy',dtp1.Date) )+
                             ' and '+QuotedStr( FormatDateTime('dd.mm.yyyy',dtp2.Date) )+
          'and a.STATUS is null '+
          'group by c.NOME,c.PRECO_CUSTO,c.PRECO_VENDA';

  dsGrid.Close;
  dsGrid.Data := DM.LerDataSet(lSQL);

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
        gTotQtde := gTotQtde + dsGrid.FieldByName('qtde_vendida').AsFloat;
        gTotVlMedio := gTotVlMedio + dsGrid.FieldByName('vl_medio').AsCurrency;
        gTotVlVenda := gTotVlVenda + dsGrid.FieldByName('vl_vendas').AsCurrency;
        gTotCusMedio := gTotCusMedio + dsGrid.FieldByName('custo_medio').AsCurrency;
        gTotCusDireto := gTotCusDireto + dsGrid.FieldByName('custo_direto').AsCurrency;
        gTotLucrat := gTotLucrat + dsGrid.FieldByName('lucratividade').AsCurrency;
        dsGrid.Next;
      end;
    finally
      dsGrid.First;
      dsGrid.EnableControls;
    end;
    lblQtdeRegistros.Caption := 'EXIBINDO ' + FormatFloat('#,##0', dsGrid.RecordCount) + ' REGISTROS';
    lblRodapeQtdeV.Caption := FormatFloat('#,##0.000', gTotQtde);
    lblRodapeVM.Caption := 'R$ ' + FormatCurr('#,##0.00', gTotVlMedio);
    lblRodapeVV.Caption := 'R$ ' + FormatCurr('#,##0.00', gTotVlVenda);
    lblRodapeCM.Caption := 'R$ ' + FormatCurr('#,##0.00', gTotCusMedio);
    lblRodapeCD.Caption := 'R$ ' + FormatCurr('#,##0.00', gTotCusDireto);
    lblRodapeLuc.Caption := 'R$ ' + FormatCurr('#,##0.00', gTotLucrat);

    lblResTotVenda.Caption := 'R$ ' + FormatCurr('#,##0.00', gTotVlVenda);
    lblResQtVendida.Caption := FormatFloat('#,##0.000', gTotQtde);
    lblResCustoMedio.Caption := 'R$ ' + FormatCurr('#,##0.00', gTotCusMedio);
    lblResVlmedioVenda.Caption := 'R$ ' + FormatCurr('#,##0.00', gTotVlMedio);
    lblResLucMedioV.Caption := 'R$ ' + FormatCurr('#,##0.00', (gTotLucrat/gTotQtde));
  end
  else
  begin
    pnlNaoExisteReg.BringToFront;
  end;
end;

procedure TRel_VendaPorItem.cbbListaClick(Sender: TObject);
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
            RLPDFFilter1.FileName := ExtractFilePath(Application.ExeName) + '\RelatorioVendasItem.pdf';
            Rel_1.SaveToFile(ExtractFilePath(Application.ExeName) + '\RelatorioVendasItem.pdf');
            TMensagem.Informacao('Arquivo gerado com sucesso.');
          except
            TMensagem.Erro('Erro: Arquivo não pode ser gerado.');
          end;
        end;
      2: //excel
        begin
          try
            Rel_1.Prepare;
            RLXLSFilter1.FileName := ExtractFilePath(Application.ExeName) + '\RelatorioVendasItem.xls';
            Rel_1.SaveToFile(ExtractFilePath(Application.ExeName) + '\RelatorioVendasItem.xls');
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

procedure TRel_VendaPorItem.dtp1Change(Sender: TObject);
begin
  inherited;
  lblResDt1.Caption := FormatDateTime('dd/mm/yyyy', dtp1.Date);
end;

procedure TRel_VendaPorItem.dtp2Change(Sender: TObject);
begin
  inherited;
  lblResDt2.Caption := FormatDateTime('dd/mm/yyyy', dtp2.Date);
end;

procedure TRel_VendaPorItem.FormCreate(Sender: TObject);
begin
  inherited;
  dtp1.Date := Incday(Date, -7);
  dtp2.Date := Date;

  lblResDt1.Caption := FormatDateTime('dd/mm/yyyy', dtp1.Date);
  lblResDt2.Caption := FormatDateTime('dd/mm/yyyy', dtp2.Date);

  Self.Height := pnlFundo0.Height;
  Self.Width := pnlFundo0.Width;
  actGerar.Execute;
end;

procedure TRel_VendaPorItem.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblTotQtde.Caption := FormatFloat('#,##0.000', gTotQtde);
  rlblVlMedio.Caption := FormatCurr('R$ #,##0.00', gTotVlMedio);
  rlblVlVendas.Caption := FormatCurr('R$ #,##0.00', gTotVlVenda);
  rlblCustoMedio.Caption := FormatCurr('R$ #,##0.00', gTotCusMedio);
  rlblCustoDireto.Caption := FormatCurr('R$ #,##0.00', gTotCusDireto);
  rlblLucratividade.Caption := FormatCurr('R$ #,##0.00', gTotLucrat);
end;

procedure TRel_VendaPorItem.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblDT1.Caption := lblResDt1.Caption;
  rlblDT2.Caption := lblResDt2.Caption;
end;

end.

unit uRel_VendaPeriodo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPdr_ListaRelatorio, Data.DB,
  RLXLSFilter, RLFilters, RLPDFFilter, Datasnap.DBClient, System.Actions,
  Vcl.ActnList, RLReport, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TRel_VendaPeriodo = class(TPdr_ListaRelatorio)
    dsGridFONTE: TStringField;
    dsGridID: TIntegerField;
    dsGridEMISSAO: TDateField;
    dsGridCLIENTE: TStringField;
    dsGridVENDEDOR: TStringField;
    dsGridQTDE: TFMTBCDField;
    dsGridVL_ENTREGA: TFMTBCDField;
    dsGridVL_BRUTO: TFMTBCDField;
    dsGridVL_DESCONTO: TFMTBCDField;
    dsGridVL_TOTAL: TFMTBCDField;
    ScrollBox1: TScrollBox;
    Label6: TLabel;
    lblResDt1: TLabel;
    Label8: TLabel;
    lblResDt2: TLabel;
    lblResQtVenda: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    lblResTotBruto: TLabel;
    lblResTotDesc: TLabel;
    Label10: TLabel;
    lblResTotVenda: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    lblResTotEntrega: TLabel;
    lbl1: TLabel;
    lblResMedBruto: TLabel;
    lbl2: TLabel;
    lblResMedioVenda: TLabel;
    lbl3: TLabel;
    lblResMedioEntrega: TLabel;
    lbl4: TLabel;
    lblResMedDesconto: TLabel;
    lbl5: TLabel;
    lblResProdVenda: TLabel;
    lblResPrecoMedio: TLabel;
    lbl: TLabel;
    lblQtdeRegistros: TLabel;
    lblTotal: TLabel;
    RLLabel16: TRLLabel;
    rlblDT1: TRLLabel;
    rlblDT2: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    rlblTotal: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo5: TRLMemo;
    RLDBMemo1: TRLDBMemo;
    RLDBMemo2: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLDBMemo4: TRLDBMemo;
    RLDBMemo5: TRLDBMemo;
    RLDBMemo6: TRLDBMemo;
    RLDBMemo7: TRLDBMemo;
    RLDBMemo8: TRLDBMemo;
    RLDBMemo9: TRLDBMemo;
    RLDBMemo10: TRLDBMemo;
    rlblTotDesc: TRLLabel;
    rlblTotEntrega: TRLLabel;
    rlblTotBruto: TRLLabel;
    procedure actGerarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtp1Change(Sender: TObject);
    procedure dtp2Change(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure cbbListaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Rel_VendaPeriodo: TRel_VendaPeriodo;

implementation

uses
  UDM, u_Mensagem, System.DateUtils;

{$R *.dfm}

procedure TRel_VendaPeriodo.actGerarExecute(Sender: TObject);
var
  lSQL: string;
  lTotQtde : Extended;
  lTotBruto,lTotDesc,lTotVenda,lTotEntrega,lVLMedioB,lVlMedioV,
  lVlMedioE,lVlMedioD,lProdV,lPrecoMedio : Currency;
begin
  inherited;
  lTotQtde := 0;
  lTotBruto := 0;
  lTotDesc := 0;
  lTotVenda := 0;
  lTotEntrega := 0;
  lVLMedioB := 0;
  lVlMedioV := 0;
  lVlMedioE := 0;
  lVlMedioD := 0;
  lProdV := 0;
  lPrecoMedio := 0;

  lSQL := 'with RET_PERIODO as '+
          '( '+
          'select ''PDV'' fonte,a.ID,a.EMISSAO,iif(a.ID_CLIENTE is null,''Ao Consumidor'',b.NOME_RAZAO) cliente,'+
          'iif(a.ID_VENDEDOR is null,''Não informado'',c.NOME) vendedor,cast(sum(d.QTDE) as numeric(18,3)) qtde,'+
          'cast(0 as numeric(10,2))vl_entrega,cast(coalesce(a.VL_PRODUTO,0) as numeric(10,2))vl_bruto,'+
          'cast(coalesce((a.VL_DESCONTO),0) as numeric(10,2))vl_desconto,a.TIPO '+
          'from PDV_MASTER a '+
          'left join CLIENTE b on (b.CODIGO = a.ID_CLIENTE) '+
          ' join USUARIO c on (c.ID_VENDEDOR = a.ID_VENDEDOR) '+
          'left join PDV_ITENS d on (d.TIPO = a.TIPO and d.ID = a.ID) '+
          'where a.EMISSAO between '+QuotedStr( FormatDateTime('dd.mm.yyyy',dtp1.Date) )+
                             ' and '+QuotedStr( FormatDateTime('dd.mm.yyyy',dtp2.Date) )+
          'and a.STATUS <> ''CANCELADA'' '+
          'group by 1,2,3,4,5,7,8,9,10 '+
          ') '+
          'select r.fonte,r.ID,r.EMISSAO,r.CLIENTE,r.VENDEDOR,'+
          'r.QTDE,r.VL_ENTREGA,r.VL_BRUTO,r.VL_DESCONTO,'+
          '(select p.VL_TOTAL from PRO_TOT_DUPLICATAS(r.TIPO,r.ID) p) vl_total '+
          'from RET_PERIODO r';

//  lSQL := 'select ''PDV'' FONTE, A.ID, A.EMISSAO, iif(A.ID_CLIENTE is null, ''AO CONSUMIDOR'', B.NOME_RAZAO) CLIENTE,'+
//          '       iif(A.ID_VENDEDOR is null, ''NAO INFORMADO'', C.NOME) VENDEDOR, cast(sum(D.QTDE) as numeric(18,3)) QTDE,'+
//          '       cast(0 as numeric(10,2)) VL_ENTREGA, cast(coalesce(A.VL_PRODUTO, 0) as numeric(10,2)) VL_BRUTO,'+
//          '       cast(coalesce((A.VL_DESCONTO), 0) as numeric(10,2)) VL_DESCONTO, A.VL_TOTAL '+
//          'from PDV_MASTER A '+
//          'left join PDV_ITENS D on (D.TIPO = A.TIPO and '+
//          '      D.ID = A.ID) '+
//          'left join CLIENTE B on (B.CODIGO = A.ID_CLIENTE) '+
//          'join USUARIO C on (C.ID_VENDEDOR = A.ID_VENDEDOR) '+
//          'where a.EMISSAO between '+QuotedStr( FormatDateTime('dd.mm.yyyy',dtp1.Date) )+
//                             ' and '+QuotedStr( FormatDateTime('dd.mm.yyyy',dtp2.Date) )+
//          'and a.STATUS <> ''CANCELADA'' '+
//          'group by 1, 2, 3, 4, 5, 7, 8, 9, 10 ';

  dsGrid.Close;
  dsGrid.Data := DM.LerDataSet(lSQL);

  pnlNaoExisteReg.Visible := dsGrid.IsEmpty;
  actLista.Enabled := not pnlNaoExisteReg.Visible;

  //preco medio = vl medio venda / prod por venda

  if (not dsGrid.IsEmpty) then
  begin
    pnlNaoExisteReg.SendToBack;

    dsGrid.DisableControls;
    try
      dsGrid.First;
      while not dsGrid.Eof do
      begin
        lTotBruto := lTotBruto + dsGrid.FieldByName('vl_bruto').AsCurrency;
        lTotDesc := lTotDesc + dsGrid.FieldByName('vl_desconto').AsCurrency;
        lTotVenda := lTotVenda + dsGrid.FieldByName('vl_total').AsCurrency;
        lTotEntrega := lTotEntrega + dsGrid.FieldByName('vl_entrega').AsCurrency;
        lTotQtde := lTotQtde + dsGrid.FieldByName('qtde').AsFloat;
        dsGrid.Next;
      end;
      lVLMedioB := lTotBruto / dsGrid.RecordCount;
      lVlMedioV := lTotVenda / dsGrid.RecordCount;
      lVlMedioE := lTotEntrega / dsGrid.RecordCount;
      lVlMedioD := lTotDesc / dsGrid.RecordCount;
      lProdV := lTotQtde / dsGrid.RecordCount;
      lPrecoMedio := lVlMedioV / lProdV;
    finally
      dsGrid.First;
      dsGrid.EnableControls;
    end;
    lblQtdeRegistros.Caption := 'EXIBINDO ' + FormatFloat('#,##0', dsGrid.RecordCount) + ' REGISTROS';
    lblTotal.Caption := 'R$ ' + FormatCurr('#,##0.00', lTotVenda);

    lblResQtVenda.Caption      := FormatFloat('#,##0', dsGrid.RecordCount);
    lblResTotBruto.Caption     := 'R$ ' + FormatCurr('#,##0.00', lTotBruto);
    lblResTotDesc.Caption      := 'R$ ' + FormatCurr('#,##0.00', lTotDesc);
    lblResTotVenda.Caption     := 'R$ ' + FormatCurr('#,##0.00', lTotVenda);
    lblResTotEntrega.Caption   := 'R$ ' + FormatCurr('#,##0.00', lTotEntrega);
    lblResMedBruto.Caption     := 'R$ ' + FormatCurr('#,##0.00', lVLMedioB);
    lblResMedioVenda.Caption   := 'R$ ' + FormatCurr('#,##0.00', lVlMedioV);
    lblResMedioEntrega.Caption := 'R$ ' + FormatCurr('#,##0.00', lVlMedioE);
    lblResMedDesconto.Caption  := 'R$ ' + FormatCurr('#,##0.00', lVlMedioD);
    lblResProdVenda.Caption    := FormatFloat('##0.00', lProdV);
    lblResPrecoMedio.Caption   := 'R$ ' + FormatCurr('#,##0.00', lPrecoMedio);
  end
  else
  begin
    pnlNaoExisteReg.BringToFront;
  end;
end;

procedure TRel_VendaPeriodo.cbbListaClick(Sender: TObject);
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
            RLPDFFilter1.FileName := ExtractFilePath(Application.ExeName) + '\RelatorioVendasPeriodo.pdf';
            Rel_1.SaveToFile(ExtractFilePath(Application.ExeName) + '\RelatorioVendasPeriodo.pdf');
            TMensagem.Informacao('Arquivo gerado com sucesso.');
          except
            TMensagem.Erro('Erro: Arquivo não pode ser gerado.');
          end;
        end;
      2: //excel
        begin
          try
            Rel_1.Prepare;
            RLXLSFilter1.FileName := ExtractFilePath(Application.ExeName) + '\RelatorioVendasPeriodo.xls';
            Rel_1.SaveToFile(ExtractFilePath(Application.ExeName) + '\RelatorioVendasPeriodo.xls');
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

procedure TRel_VendaPeriodo.dtp1Change(Sender: TObject);
begin
  inherited;
  lblResDt1.Caption := FormatDateTime('dd/mm/yyyy',dtp1.Date);
end;

procedure TRel_VendaPeriodo.dtp2Change(Sender: TObject);
begin
  inherited;
  lblResDt2.Caption := FormatDateTime('dd/mm/yyyy',dtp2.Date);
end;

procedure TRel_VendaPeriodo.FormCreate(Sender: TObject);
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

procedure TRel_VendaPeriodo.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblTotEntrega.Caption := lblResTotEntrega.Caption;
  rlblTotDesc.Caption := lblResTotDesc.Caption;
  rlblTotBruto.Caption := lblResTotBruto.Caption;
  rlblTotal.Caption := lblResTotVenda.Caption;
end;

procedure TRel_VendaPeriodo.RLBand9BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblDT1.Caption := lblResDt1.Caption;
  rlblDT2.Caption := lblResDt2.Caption;
end;

end.

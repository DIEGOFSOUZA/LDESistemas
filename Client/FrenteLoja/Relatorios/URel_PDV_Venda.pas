unit URel_PDV_Venda; {Heigth = 122 / 96}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio.Cabecalho,
  RLReport, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, UEDPesquisa, Data.DB, Datasnap.DBClient,
  RLFilters, RLPDFFilter,U_DataCorrida;

type
  TRel_PDV_Venda = class(TPdr_RelatorioRetratoCabecalho)
    pnlFundo: TPanel;
    pnlFiltros: TPanel;
    pnlPeriodo: TPanel;
    lblTitPeriodo: TLabel;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    edpCliente: TEdPesquisa;
    pnlAcoes: TPanel;
    btnRelatorio: TButton;
    btnSair: TButton;
    actlstAcoes: TActionList;
    actGerarRelatorio: TAction;
    actSair: TAction;
    cbbTipoRel: TComboBox;
    Label2: TLabel;
    edpProduto: TEdPesquisa;
    RLGroup1: TRLGroup;
    RLBand6: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel36: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel42: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel52: TRLLabel;
    RLDBText22: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand7: TRLBand;
    RLLabel44: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel45: TRLLabel;
    RLBand8: TRLBand;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText21: TRLDBText;
    cdsMaster: TClientDataSet;
    cdsDetail: TClientDataSet;
    dsMaster: TDataSource;
    dsDetail: TDataSource;
    cdsMasterTIPO: TStringField;
    cdsMasterID: TIntegerField;
    cdsMasterEMISSAO: TDateField;
    cdsMasterCLIENTE: TStringField;
    cdsMasterVENDEDORA: TStringField;
    cdsMasterFORMAS_PAGTO: TStringField;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    cdsDetailTIPO: TStringField;
    cdsDetailID: TIntegerField;
    cdsDetailORDEM: TIntegerField;
    cdsDetailQTDE: TIntegerField;
    cdsDetailUNIDADE: TStringField;
    cdsDetailCODPRO: TIntegerField;
    cdsDetailNOME: TStringField;
    RLBand9: TRLBand;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    cdsDetailtot_qtde: TAggregateField;
    rlblTotQtde: TRLLabel;
    cdsMasterSTATUS: TStringField;
    rlblTotValor: TRLLabel;
    cdsMasterVL_BRUTO: TFMTBCDField;
    cdsMasterVL_LIQUIDO: TFMTBCDField;
    cdsDetailVL_UNITARIO: TFMTBCDField;
    cdsDetailVL_DESCONTO: TFMTBCDField;
    Rel_Resumido: TRLReport;
    RLBand3: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel2: TRLLabel;
    RLPanel2: TRLPanel;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLMemo1: TRLMemo;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLBand10: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBMemo2: TRLDBMemo;
    RLLabel11: TRLLabel;
    rlblTotLiquido: TRLLabel;
    rlblTotBruto: TRLLabel;
    cdsDetailVL_LIQUIDO: TFMTBCDField;
    edpsqsVendedor: TEdPesquisa;
    procedure FormCreate(Sender: TObject);
    procedure cbbTipoRelChange(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure edpClientePesquisa(Sender: TObject; var Retorno: string);
    procedure actGerarRelatorioExecute(Sender: TObject);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure edpProdutoPesquisa(Sender: TObject; var Retorno: string);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBText7BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBText4BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure edpsqsVendedorPesquisa(Sender: TObject; var Retorno: string);
  private
    { Private declarations }
    procedure MontaParametros() ;
    procedure MontaSQL() ;
    procedure MontaDetalhe(stipo,sID: string) ;
  public
    { Public declarations }
    aTotQtde : Double ;
    aTotValor : Currency ;
    gTotLiq,gTotBruto : Currency ;
  end;

var
  Rel_PDV_Venda: TRel_PDV_Venda;

implementation

uses
  UDM, System.Math, UConsulta;

{$R *.dfm}

procedure TRel_PDV_Venda.actGerarRelatorioExecute(Sender: TObject);
begin
//  inherited;
  try
    Screen.Cursor := crHourGlass;

    MontaParametros;
    MontaSQL;
    case cbbTipoRel.ItemIndex of
      0:
        begin
          Rel_Resumido.PreviewModal ;
        end;
      1:
        begin
          Relatorio.PreviewModal;
        end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TRel_PDV_Venda.actSairExecute(Sender: TObject);
begin
  inherited;
  Close ;
end;

procedure TRel_PDV_Venda.cbbTipoRelChange(Sender: TObject);
begin
  inherited;
  pnlFiltros.Height := ifthen(cbbTipoRel.ItemIndex = 0,96,122) ;
end;

procedure TRel_PDV_Venda.edpClientePesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := IntToStr(Consulta.Cliente) ;
end;

procedure TRel_PDV_Venda.edpProdutoPesquisa(Sender: TObject;
  var Retorno: string);
var
  aRetProd: TRetornoProduto;
begin
  inherited;
  aRetProd := Consulta.Produto('''PA'',''A''','Consulta de Produtos/Matéria-Prima') ;

  Retorno := IntToStr(aRetProd.iCodigo) ;
end;

procedure TRel_PDV_Venda.edpsqsVendedorPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Vendedor.ToString;
end;

procedure TRel_PDV_Venda.FormCreate(Sender: TObject);
begin
  inherited;
  pnlFiltros.Height := 96 ;
  dtp1.Date := Date ;
  dtp2.Date := Date ;
end;

procedure TRel_PDV_Venda.MontaDetalhe(stipo, sID: string);
const
      SQL = 'select a.TIPO,a.ID,a.ORDEM,cast(a.QTDE as integer) qtde,c.SIGLA unidade,'+
            'cast(a.VL_UNITARIO as numeric(10,2)) VL_UNITARIO,cast(a.VL_DESCONTO as numeric(10,2))VL_DESCONTO,'+
            'cast( ((a.QTDE * a.VL_UNITARIO) - a.VL_DESCONTO)  as numeric(10,2)) vl_liquido,'+
            'b.CODIGO codpro,b.NOME '+
            'from PDV_ITENS a '+
            'left outer join PRODUTO b on (b.CODIGO = a.ID_PRODUTO) '+
            'left outer join UNIDADE c on (c.CODIGO = b.COD_UNIDADE) '+
            'where a.tipo = %s '+
            'and a.ID = %s' ;
begin                                                                 //??Diferenca entre relatorios Rel_Resumido e detalhado em Totais Valor
  cdsDetail.IndexFieldNames := 'ordem' ;
  cdsDetail.Close ;
  cdsDetail.Data := DM.LerDataSet(Format(SQL,[QuotedStr(stipo),sID])) ;

  aTotQtde := aTotQtde + cdsDetailtot_qtde.Value ;
  aTotValor := aTotValor + cdsMasterVL_LIQUIDO.AsFloat ;
end;

procedure TRel_PDV_Venda.MontaParametros;
begin
  if cbbTipoRel.ItemIndex = 1 then
  begin
    rlblEmpFantasia.Caption := DM.Empresa.Fantasia;
    rlblNomeRelatorio.Caption := 'RELATÓRIO DE VENDAS';

    rlMemoParametros.Lines.Clear;
    rlMemoParametros.Lines.Add('PERÍODO DE: ' + FormatDateTime('dd/mm/yy', dtp1.Date) + ' à ' + FormatDateTime('dd/mm/yy', dtp2.Date));

    if edpsqsVendedor.Campo.Text <> EmptyStr then
      rlMemoParametros.Lines.Add('Vendedor: ' + edpsqsVendedor.Mostrar.Text);
    if edpCliente.Campo.Text <> EmptyStr then
      rlMemoParametros.Lines.Add('CLIENTE: ' + edpCliente.Mostrar.Text);
    if edpProduto.Campo.Text <> EmptyStr then
      rlMemoParametros.Lines.Add('Produto: ' + edpProduto.Mostrar.Text);
  end
  else
  begin
    RLLabel2.Caption := DM.Empresa.Fantasia;
    RLLabel3.Caption := 'RELATÓRIO DE VENDAS';

    RLMemo1.Lines.Clear;
    RLMemo1.Lines.Add('PERÍODO DE: ' + FormatDateTime('dd.mm.yyyy', dtp1.Date) + ' à ' + FormatDateTime('dd.mm.yyyy', dtp2.Date));

    if edpsqsVendedor.Campo.Text <> EmptyStr then
      RLMemo1.Lines.Add('Vendedor: ' + edpsqsVendedor.Mostrar.Text);
    if edpCliente.Campo.Text <> EmptyStr then
      RLMemo1.Lines.Add('CLIENTE: ' + edpCliente.Mostrar.Text);
    if edpProduto.Campo.Text <> EmptyStr then
      RLMemo1.Lines.Add('Produto: ' + edpProduto.Mostrar.Text);
  end;
end;

procedure TRel_PDV_Venda.MontaSQL;
var
  SQLVenda, SQLVendaItens: string;
begin
  aTotQtde  := 0 ;
  aTotValor := 0 ;
  gTotLiq := 0;
  gTotBruto := 0 ;
  rlblTotQtde.Caption := EmptyStr ;

  SQLVenda := 'select a.TIPO,a.ID,a.EMISSAO,cast(a.VL_PRODUTO as numeric(10,2)) vl_bruto,'+
              'cast((a.VL_PRODUTO - coalesce(h.VL_PAGO,0)) as numeric(10,2)) vl_liquido,a.status,'+
              'b.NOME_RAZAO cliente,e.USU_NOME VENDEDORA,'+
              'cast( (select list(upper(f.FORMA_PAGTO)||'': ''||''R$ ''||f.VALOR,''  '') from PDV_RECEBER f where f.tipo = a.TIPO and f.ID = a.ID) as varchar(500) ) formas_pagto '+
              'from PDV_MASTER a '+
              'left outer join CLIENTE b on (b.codigo = a.ID_CLIENTE) '+
              'left outer join USUARIO e on (e.ID_VENDEDOR = a.ID_VENDEDOR) '+
              'left outer join PDV_RECEBER h on (h.tipo = a.tipo and h.id = a.id and h.forma_pagto = ''DESCONTO'') '+
              'where a.EMISSAO between '+QuotedStr(FormatDateTime('dd.mm.yyyy',dtp1.Date))+ ' and '+
                                         QuotedStr(FormatDateTime('dd.mm.yyyy',dtp2.Date)) ;

  if ((edpsqsVendedor.Campo.Text <> EmptyStr) and
      (edpsqsVendedor.Campo.Text <> '0'))then
    SQLVenda := SQLVenda + ' and a.id_vendedor = '+edpsqsVendedor.Campo.Text ;
  if ((edpCliente.Campo.Text <> EmptyStr) and
       (edpCliente.Campo.Text <> '0'))then
    SQLVenda := SQLVenda + ' and b.codigo = '+edpCliente.Campo.Text ;

  if (cbbTipoRel.ItemIndex = 1) then
  begin
    if ( (edpProduto.Campo.Text <> EmptyStr) and (edpProduto.Campo.Text <> '0') )  then
      SQLVenda := SQLVenda + ' and h.id_produto = '+edpProduto.Campo.Text ;
  end;

  SQLVenda := SQLVenda + ' group by 1,2,3,4,5,6,7,8' ;

  cdsMaster.IndexFieldNames := 'tipo;id' ;
  cdsMaster.Close ;
  cdsMaster.Data := DM.LerDataSet(SQLVenda) ;

  if cdsMaster.IsEmpty then
  begin
    MessageDlg('Vendas não encontrada no período informado.',mtInformation,[mbOK],0) ;
    Exit ;
  end;
end;

procedure TRel_PDV_Venda.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblTotLiquido.Caption := FormatCurr('#,##0.00',gTotLiq);
  rlblTotBruto.Caption := FormatCurr('#,##0.00',gTotBruto);
end;

procedure TRel_PDV_Venda.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  if aTotQtde > 0 then
    rlblTotQtde.Caption := 'QTDE. ITENS:  '+ FormatFloat('#,##0.000',aTotQtde) ;
  if aTotValor > 0 then
    rlblTotValor.Caption := 'Vl. Total Liq. R$  '+ FormatFloat('#,##0.00',aTotValor) ;
end;

procedure TRel_PDV_Venda.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  if cdsMasterSTATUS.AsString = 'CANCELADA' then
    RLBand5.Font.Color := clRed
  else
  begin
    RLBand5.Font.Color := clBlack;
    gTotLiq := gTotLiq + cdsMasterVL_LIQUIDO.AsFloat ;
    gTotBruto := gTotBruto + cdsMasterVL_BRUTO.AsFloat ;
  end;

  if rlband5.Color = clwhite then
    rlband5.Color := cl3dlight
  else
    rlband5.Color := clwhite;


end;

procedure TRel_PDV_Venda.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  if cdsMasterSTATUS.AsString = 'CANCELADA' then
  begin
    RLDBText7.Font.Color := clRed;

  end
  else
  begin
    RLDBText7.Font.Color := clBlack ;
    MontaDetalhe(cdsMasterTIPO.AsString, cdsMasterID.AsString);
  end;
end;

procedure TRel_PDV_Venda.RLDBText4BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
  inherited;
  if cdsMasterSTATUS.AsString = 'CANCELADA' then
    AText := '*VENDA CANCELDA* - '+ AText ;
end;

procedure TRel_PDV_Venda.RLDBText7BeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
  inherited;
  if cdsMasterSTATUS.AsString = 'CANCELADA' then
    AText := AText + '   ***VENDA CANCELADA***   ';
end;

procedure TRel_PDV_Venda.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  PrintIt := cdsMasterSTATUS.AsString <> 'CANCELADA' ;
end;

end.

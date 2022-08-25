unit URel_Venda0;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio, RLReport,
  Data.DB, Datasnap.DBClient,System.DateUtils;

type
  TRel_Venda0 = class(TPdr_Relatorio)
    RLBand1: TRLBand;
    rlpnlEmpresa: TRLPanel;
    rlblEmpFantasia: TRLLabel;
    rlblEmpRazao: TRLLabel;
    rlblEmpCNPJINSC: TRLLabel;
    rlblEmpEndereco: TRLLabel;
    rlblEmpBairroCidadeUF: TRLLabel;
    rlblEmpFones: TRLLabel;
    rlblEmailSite: TRLLabel;
    rlpnlTopoDireita: TRLPanel;
    rlblTitulo: TRLLabel;
    rlblVendaEmissao: TRLLabel;
    rlblImpressao: TRLLabel;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    rlblEndereco: TRLLabel;
    RLDBText2: TRLDBText;
    rlblBairro: TRLLabel;
    RLDBText3: TRLDBText;
    rlblCPFCNPJ: TRLLabel;
    RLDBText4: TRLDBText;
    rlblEmail: TRLLabel;
    RLDBText5: TRLDBText;
    rlblCidadeUF: TRLLabel;
    RLDBText7: TRLDBText;
    rlblFones: TRLLabel;
    RLDBText8: TRLDBText;
    rlblRGINSC: TRLLabel;
    RLDBText9: TRLDBText;
    rlblTitCliente: TRLLabel;
    rlblCel: TRLLabel;
    RLDBText10: TRLDBText;
    rlblNome: TRLLabel;
    cdsItens: TClientDataSet;
    cdsItensQTDE: TCurrencyField;
    cdsItensUNIDADE: TStringField;
    cdsItensDESCRI_PRODUTO: TStringField;
    cdsItensNOME_RAZAO: TStringField;
    cdsItensENDERECO: TStringField;
    cdsItensNUMERO: TStringField;
    cdsItensBAIRRO: TStringField;
    cdsItensCEP: TStringField;
    cdsItensCIDADE: TStringField;
    cdsItensCPF_CNPJ: TStringField;
    cdsItensTELEFONE: TStringField;
    cdsItensCELULAR: TStringField;
    cdsItensEMAIL: TStringField;
    cdsItensRG_INSC: TStringField;
    cdsItensVENDA: TIntegerField;
    cdsItensEMISSAO: TDateField;
    cdsItensVENDEDOR: TStringField;
    dsItens: TDataSource;
    cdsItensTIPO: TStringField;
    cdsItensID: TIntegerField;
    cdsItensUF: TStringField;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    rlblTitProduto: TRLLabel;
    rlpnlTitProdutos: TRLPanel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand5: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLBand4: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    cdsReceber: TClientDataSet;
    dsReceber: TDataSource;
    cdsReceberDT_VENC: TDateField;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText18: TRLDBText;
    RLBand6: TRLBand;
    RLLabel10: TRLLabel;
    RLBand7: TRLBand;
    RLLabel11: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText20: TRLDBText;
    RLBand8: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel14: TRLLabel;
    RLDBText21: TRLDBText;
    cdsItensFORMAS_PAGTO: TStringField;
    RLLabel15: TRLLabel;
    RLDBText22: TRLDBText;
    cdsItensCREDIARIO: TStringField;
    RLDBText23: TRLDBText;
    cdsReceberVALOR: TFMTBCDField;
    cdsItensVL_UNITARIO: TFMTBCDField;
    cdsItensVL_DESCONTO: TFMTBCDField;
    cdsItensTOT_PAGAR: TFMTBCDField;
    cdsItensVL_TOTAL: TFloatField;
    cdsItensSUBTOTAL: TFloatField;
    Rel_Orcamento: TRLReport;
    RLBand9: TRLBand;
    RLBand10: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel16: TRLLabel;
    rlblNum: TRLLabel;
    rlbl1: TRLLabel;
    rlblCliente: TRLLabel;
    rlbl2: TRLLabel;
    rlblEmissao: TRLLabel;
    rlbl3: TRLLabel;
    rlblValidade: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLGroup2: TRLGroup;
    RLBand12: TRLBand;
    RLPanel1: TRLPanel;
    rlbl4: TRLLabel;
    rlblTotItens: TRLLabel;
    rlbl6: TRLLabel;
    rlblVlTotItens: TRLLabel;
    RLBand11: TRLBand;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    dsOrItem: TClientDataSet;
    dsOrPagar: TClientDataSet;
    sOrItem: TDataSource;
    sOrPagar: TDataSource;
    dsOrItemID: TIntegerField;
    dsOrItemID_FORMAPAGTO: TIntegerField;
    dsOrItemEMISSAO: TDateField;
    dsOrItemDT_VALIDADE: TDateField;
    dsOrItemCLIENTE: TStringField;
    dsOrItemID_PROD: TIntegerField;
    dsOrItemNOME: TStringField;
    dsOrItemUNIDADE: TStringField;
    dsOrItemQTDE: TFMTBCDField;
    dsOrItemVUNIT: TFMTBCDField;
    dsOrItemVDESC: TFMTBCDField;
    dsOrItemVTOTAL: TFMTBCDField;
    dsOrPagarDESCRICAO: TStringField;
    dsOrPagarVENCTO: TDateField;
    dsOrPagarVALOR: TFMTBCDField;
    RLSubDetail2: TRLSubDetail;
    RLBand13: TRLBand;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLBand14: TRLBand;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    rlblEmpresaRazao: TRLLabel;
    rlblEmpresaCNPJ: TRLLabel;
    rlblEmpresaLog: TRLLabel;
    rlblEmpresaCep: TRLLabel;
    rlblEmpresaFone: TRLLabel;
    RLBand15: TRLBand;
    rlblImpresso: TRLLabel;
    cdsItensSTATUS: TStringField;
    rlblVendaCancelada: TRLLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBText2BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLDBText7BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure cdsItensCalcFields(DataSet: TDataSet);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand15BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBText1BeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);
  private
    { Private declarations }
    procedure MontaSQL(pIdVenda : Integer; pTipo : string) ;
  public
    TotQtdeItens: Extended;
    TotVlItens: Currency;
    procedure Executar(aVenda: Integer; aTipo: string);
    procedure ExecOrcamento(pIdOrcamento: integer);
  end;

var
  Rel_Venda0: TRel_Venda0;

implementation

uses
  UDM;

{$R *.dfm}

procedure TRel_Venda0.cdsItensCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsItensSUBTOTAL.AsFloat := cdsItensQTDE.AsFloat * cdsItensVL_UNITARIO.AsFloat ;
end;

procedure TRel_Venda0.ExecOrcamento(pIdOrcamento: integer);
const
  SQLOrItem = 'select a.ID,a.ID_FORMAPAGTO,a.EMISSAO,a.dt_validade,c.NOME_RAZAO cliente,'+
              'b.ID_PROD,d.NOME,b.unid unidade,b.QTDE,b.VUNIT,b.VDESC,b.VTOTAL '+
              'from ORCAMENTO a '+
              'left outer join ORCAMENTO_ITEM b on (b.ID_ORCAMENTO = a.ID) '+
              'left outer join CLIENTE c on (c.CODIGO = a.ID_CLIENTE) '+
              'left outer join PRODUTO d on (d.CODIGO = b.ID_PROD) '+
              'where a.ID = %s';
  SQLCond  =  'select a.DESCRICAO,'+
              'a.COND1,a.COND2,a.COND3,a.COND4,a.COND5,'+
              'a.COND6,a.COND7,a.COND8,a.COND9,a.COND10,'+
              'a.COND11,a.COND12,a.COND13,a.COND14,a.COND15 '+
              'from CONDPAGTO a where a.CODIGO = %s';
var
  dsTemp: TClientDataSet;
  I,lCont : Integer;
  lVlParcela,lVlTotal : Currency;
begin
  if pIdOrcamento < 1 then
    Exit;

  TotQtdeItens := 0;
  TotVlItens := 0;
  lVlParcela := 0;
  lVlTotal := 0;
  dsOrPagar.Close;
  dsOrPagar.CreateDataSet;

  dsOrItem.Close;
  dsOrItem.Data := DM.LerDataSet(Format(SQLOrItem,[IntToStr(pIdOrcamento)]));

  dsOrItem.First;
  while not dsOrItem.Eof do
  begin
    lVlTotal := lVlTotal+dsOrItem.FieldByName('VTOTAL').AsCurrency;
    dsOrItem.Next;
  end;

  if dsOrItem.FieldByName('id_formapagto').IsNull then
  begin
    dsOrPagar.Append;
    dsOrPagar.FieldByName('descricao').AsString := 'A VISTA [01/01]';
    dsOrPagar.FieldByName('vencto').AsDateTime := Date;
    dsOrPagar.FieldByName('valor').AsCurrency := lVlTotal;
    dsOrPagar.Post;
  end
  else
  begin
    dsTemp := TClientDataSet.Create(nil);
    try    
      dsTemp.Close;
      dsTemp.Data := DM.LerDataSet(Format(SQLCond,[dsOrItem.FieldByName('id_formapagto').AsString]));

      //percorre para pegar tot de parcelas
      for I := 1 to 15 do
      begin
        if dsTemp.FieldByName('cond'+IntToStr(i)).AsInteger=0 then
          Break
        else
          Inc(lCont);    
      end;
      
      //percorre para gerar parcelas
      lVlParcela := (lVlTotal / lCont);
      for I := 1 to 15 do
      begin
        if dsTemp.FieldByName('cond' + IntToStr(I)).AsInteger = 0 then
          Break
        else
        begin
          dsOrPagar.Append;
          dsOrPagar.FieldByName('descricao').AsString := dsTemp.FieldByName('descricao').AsString + ' [' + FormatFloat('00', I) + '/' + FormatFloat('00', lCont) + ']';
          dsOrPagar.FieldByName('vencto').AsDateTime := IncDay(Date, dsTemp.FieldByName('cond' + IntToStr(I)).AsInteger);
          dsOrPagar.FieldByName('valor').AsCurrency := lVlParcela;
          dsOrPagar.Post;
        end;
      end;
        
    finally
      FreeAndNil(dsTemp);
    end;
  end;

  Rel_Orcamento.PreviewModal;
end;

procedure TRel_Venda0.Executar(aVenda: Integer; aTipo: string);
begin
  MontaSQL(aVenda,aTipo);
  rlblEmpFantasia.Caption := DM.Empresa.Fantasia ;
  Relatorio.PreviewModal ;
end;

procedure TRel_Venda0.MontaSQL(pIdVenda: Integer; pTipo: string);
const SQL = 'select a.QTDE,a.UM unidade,b.NOME descri_produto,'+
            'cast(a.VL_UNITARIO as numeric(10,2))VL_UNITARIO,cast(a.VL_DESCONTO as numeric(10,2))VL_DESCONTO,'+
            'cast(a.VL_TOTAL  as double precision)VL_TOTAL,'+
            'e.NOME_RAZAO,e.ENDERECO,e.NUMERO,e.BAIRRO,e.CEP,e.CIDADE,e.UF,e.CPF_CNPJ,'+
            'e.DDD_FONE||''-''||e.TELEFONE1 telefone,e.DDD_CEL||''-''||e.CEL celular,e.EMAIL,e.RG_INSC,'+
            'd.ID venda,d.EMISSAO,d.STATUS,f.NOME vendedor,'+
            'cast(iif(h.percent_acrescimo > 0,h.descricao||'' - ''||h.percent_acrescimo,h.descricao) as varchar(100)) crediario,a.TIPO,a.ID,'+
            'cast( (select list(upper(x.FORMA_PAGTO)||'': ''||''R$ ''||x.VALOR,''  '') from PDV_RECEBER x where x.forma_pagto <> ''CREDIARIO'' and x.tipo = a.TIPO and x.ID = a.ID ) as varchar(500) ) formas_pagto,'+
            'cast((select p.VL_TOTAL from PRO_TOT_DUPLICATAS(a.TIPO,a.ID) p)as numeric(10,2) ) tot_pagar '+
            'from PDV_ITENS a '+
            'left outer join PRODUTO b on (b.CODIGO = a.ID_PRODUTO) '+
            'left outer join UNIDADE c on (c.CODIGO = b.COD_UNIDADE) '+
            'left outer join PDV_MASTER d on (d.ID = a.ID and d.TIPO = a.TIPO) '+
            'left outer join CLIENTE e on (e.CODIGO = d.ID_CLIENTE) '+
            'left outer join USUARIO f on (f.ID_VENDEDOR = d.ID_VENDEDOR) '+
            'left outer join CONDPAGTO h on (h.CODIGO = d.ID_CREDIARIO) '+
            'where a.TIPO = %S and a.ID = %s';

      SQL2 = 'select cast( (a.VALOR+coalesce(b.valor,0)) as numeric(10,2))valor,a.DT_VENC '+
             'from PDV_RECEBER a '+
             'left join PDV_RECEBER_PARCIAL b on (b.TIPO = a.TIPO and b.ID = a.ID and b.ORDEM=a.ORDEM)'+
             'where a.FORMA_PAGTO = ''CREDIARIO'' '+
             'and a.TIPO = %S and a.ID = %s';
begin
  cdsItens.Close ;
  cdsItens.Data := DM.LerDataSet(Format(SQL,[QuotedStr(pTipo),IntToStr(pIdVenda)])) ;

  cdsReceber.Close ;
  cdsReceber.Data := DM.LerDataSet(Format(SQL2,[QuotedStr(pTipo),IntToStr(pIdVenda)])) ;
end;

procedure TRel_Venda0.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblNum.Caption := FormatFloat('000',dsOrItem.FieldByName('id').AsInteger);
  rlblCliente.Caption := dsOrItem.FieldByName('cliente').AsString;
  rlblEmissao.Caption := FormatDateTime('dd/mm/yyyy',dsOrItem.FieldByName('emissao').AsDateTime);
  rlblValidade.Caption := FormatDateTime('dd/mm/yyyy',dsOrItem.FieldByName('dt_validade').AsDateTime);
end;

procedure TRel_Venda0.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  TotQtdeItens := TotQtdeItens+dsOrItem.FieldByName('qtde').AsFloat;
  TotVlItens := TotVlItens+dsOrItem.FieldByName('vtotal').AsCurrency;
end;

procedure TRel_Venda0.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblTotItens.Caption := FormatFloat('#,##0.000',TotQtdeItens);
  rlblVlTotItens.Caption := FormatCurr('#,##0.00',TotVlItens);
end;

procedure TRel_Venda0.RLBand15BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  rlblImpresso.Caption := 'Impresso em: '+FormatDateTime('dd/mm/yyyy hh:mm:ss',now);
end;

procedure TRel_Venda0.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  inherited;
  rlblVendaEmissao.Caption := 'Nº '+FormatFloat('000000',cdsItensID.AsInteger)+ ' - '+
                              FormatDateTime('dd/mm/yyyy',cdsItensEMISSAO.AsDateTime) ;
  rlblImpressao.Caption := 'IMPRESSÃO  '+FormatDateTime('dd/mm/yyyy - hh:mm:ss',Now) ;

  rlblVendaCancelada.Visible := cdsItens.FieldByName('STATUS').AsString = 'CANCELADA';
end;

procedure TRel_Venda0.RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  inherited;
  RLLabel11.Visible := not cdsItensCREDIARIO.AsString.IsEmpty ;
  if cdsItensCREDIARIO.AsString.IsEmpty then
    RLLabel15.Caption := 'TOTAL PAGO'
  else
    RLLabel15.Caption := 'TOTAL A PAGAR';
end;

procedure TRel_Venda0.RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  inherited;
  with DM.Empresa do
  begin
    rlblEmpresaRazao.Caption := RazaoSocial;
    rlblEmpresaCNPJ.Caption := 'CNPJ: ' + CNPJ;
    rlblEmpresaLog.Caption := Endereco + ',' +Numero ;
    rlblEmpresaCep.Caption := Cep+' - '+Cidade+' - '+UF;
    rlblEmpresaFone.Caption := DM.Empresa.Fone;
  end;
end;

procedure TRel_Venda0.RLDBText1BeforePrint(Sender: TObject; var AText: string;
  var PrintIt: Boolean);
begin
  inherited;
  if AText = '' then
    AText := 'Ao Consumidor';
end;

procedure TRel_Venda0.RLDBText2BeforePrint(Sender: TObject; var AText: string;
  var PrintIt: Boolean);
begin
  inherited;
  AText := AText + ', '+cdsItensNUMERO.AsString ;
end;

procedure TRel_Venda0.RLDBText7BeforePrint(Sender: TObject; var AText: string;
  var PrintIt: Boolean);
begin
  inherited;
  AText := AText+'/'+cdsItensCIDADE.AsString+'/'+cdsItensUF.AsString ;
end;

end.

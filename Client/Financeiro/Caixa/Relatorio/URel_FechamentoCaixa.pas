unit URel_FechamentoCaixa; {H=360 W=541}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Relatorio.Cabecalho,
  RLReport, Data.DB, Datasnap.DBClient, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, System.Math,
  RLFilters, RLPDFFilter,U_DataCorrida;

type
  TRel_FechamentoCaixa = class(TPdr_RelatorioRetratoCabecalho)
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    ds1: TClientDataSet;
    ds1VL_COMPUTADO: TFloatField;
    ds1VL_APURADO: TFloatField;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    lblTitulo: TLabel;
    imgFechar: TImage;
    pnlfundo: TPanel;
    pnlAcoes: TPanel;
    imgFiltrar: TImage;
    lblFiltrar: TLabel;
    imgGeraRelatorio: TImage;
    lblGeraRelatorio: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    Label1: TLabel;
    dbgrd1: TDBGrid;
    ds2: TClientDataSet;
    s2: TDataSource;
    ds2ID: TIntegerField;
    ds2IDCAIXA: TIntegerField;
    ds2ABERTURA: TStringField;
    ds2FECHAMENTO: TStringField;
    ds2DATA: TDateField;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel39: TRLLabel;
    rlblCSaldoInicial: TRLLabel;
    rlblCAVista: TRLLabel;
    rlblCPrazo: TRLLabel;
    rlblCEntrada: TRLLabel;
    rlblCDespesas: TRLLabel;
    rlblCSaldoFinalDin: TRLLabel;
    rlblCDiferenca: TRLLabel;
    RLLabel41: TRLLabel;
    RLMemo1: TRLMemo;
    ds1FORMA_PAGTO: TIntegerField;
    rlblSaldoFinalChe: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel44: TRLLabel;
    rlblRetDin: TRLLabel;
    RLLabel46: TRLLabel;
    rlblRetChq: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    rlblMantDin: TRLLabel;
    RLLabel51: TRLLabel;
    rlblMantChq: TRLLabel;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure imgFecharClick(Sender: TObject);
    procedure lblGeraRelatorioClick(Sender: TObject);
    procedure imgFiltrarClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    gTotBaixa,gTotPrazo,gTotSangria : Extended ;
    gTotDinheiro,gTotCheque : Extended ;
    gTotCartCredito,gTotCartDebito : Extended ;
    fCompDinheiro: Currency;
    fCompCD: Currency;
    fCompCheque: Currency;
    fCompCC: Currency;
    fApuCC: Currency;
    fApuCD: Currency;
    fApuCheque: Currency;
    fApuDinheiro: Currency;
    fDifCC: Currency;
    fDifCD: Currency;
    fDifCheque: Currency;
    fDifDinheiro: Currency;
    fCompTot: Currency;
    fDifTot: Currency;
    fApuTot: Currency;
    fVav: Currency;
    fRap: Currency;
    fVap: Currency;
    fSaFinal: Currency;
    fDifCaixa: Currency;
    fDesp: Currency;
    fOutE: Currency;
    fVMantCaixa: Currency;
    fRav: Currency;
    fVRetFechDin: Currency;
    fVRetFechChq: Currency;
    fSIni: Currency;

    function GetVlApurado(pFormaPagto:string):Extended ;
    function GetVlComputado(pFormaPagto:string):Extended ;

    procedure MontaSQL(lIDCaixa : string) ;
    procedure MontaParametros(pIdCaixa : string);

    procedure MontaSQLGrid();

  public
    //coluna vl computado
    property CompDinheiro : Currency read fCompDinheiro;
    property CompCheque : Currency read fCompCheque;
    property CompCC : Currency read fCompCC;
    property CompCD : Currency read fCompCD;
    property CompTot : Currency read fCompTot;
    //coluna vl apurado
    property ApuDinheiro : Currency read fApuDinheiro;
    property ApuCheque : Currency read fApuCheque;
    property ApuCC : Currency read fApuCC;
    property ApuCD : Currency read fApuCD;
    property ApuTot : Currency read fApuTot;
    //coluna vl diferenca
    property DifDinheiro : Currency read fDifDinheiro;
    property DifCheque : Currency read fDifCheque;
    property DifCC : Currency read fDifCC;
    property DifCD : Currency read fDifCD;
    property DifTot : Currency read fDifTot;
    //Totais
    property Vap : Currency read fVap;
    property Vav : Currency read fVav;
    //Conferencia
    property SIni : Currency read fSIni;
    property Rav : Currency read fRav;
    property Rap : Currency read fRap;
    property OutE : Currency read fOutE;
    property Desp : Currency read fDesp;
    property SaFinal : Currency read fSaFinal;
    property VRetFechDin : Currency read fVRetFechDin;
    property VRetFechChq : Currency read fVRetFechChq;
    property DifCaixa : Currency read fDifCaixa;
    property VMantCaixa : Currency read fVMantCaixa;


    procedure Executar(pIDCaixa : string) ;
  end;

var
  Rel_FechamentoCaixa: TRel_FechamentoCaixa;

implementation

uses
  UDM;

{$R *.dfm}

{ TRel_FechamentoCaixa }

procedure TRel_FechamentoCaixa.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
//  if gdSelected in State then
//    dbgrd1.Canvas.Brush.Color := $00DDDDDD;
//
//  dbgrd1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TRel_FechamentoCaixa.Executar(pIDCaixa : string);
begin
  fCompDinheiro := 0;
  fCompCD := 0;
  fCompCheque := 0;
  fCompCC := 0;
  fCompTot := 0;
  fApuCC := 0;
  fApuCD := 0;
  fApuCheque := 0;
  fApuDinheiro := 0;
  fApuTot := 0;
  fDifCC := 0;
  fDifCD := 0;
  fDifCheque := 0;
  fDifDinheiro := 0;
  fDifTot := 0;
  fVav := 0;
  fRap := 0;
  fVap := 0;
  fSaFinal := 0;
  fDifCaixa := 0;
  fDesp := 0;
  fOutE := 0;
  fVMantCaixa := 0;
  fRav := 0;
  fVRetFechDin := 0;
  fVRetFechChq := 0;
  fSIni := 0;

  MontaSQL(pIDCaixa) ;
  MontaParametros(pIdCaixa) ;
  rlblEmpFantasia.Caption := DM.Empresa.Fantasia ;
  rlblNomeRelatorio.Caption := '   FECHAMENTO DE CAIXA' ;
  Relatorio.PreviewModal ;
end;

function TRel_FechamentoCaixa.GetVlApurado(pFormaPagto: string): Extended;
begin
  if pFormaPagto = '1' then
    Result := DM.dsConsulta2.FieldByName('VL_DINHEIRO').AsFloat
  else if pFormaPagto = '4' then
    Result := DM.dsConsulta2.FieldByName('VL_CHEQUE').AsFloat
  else if pFormaPagto = '3' then
    Result := DM.dsConsulta2.FieldByName('VL_CCREDITO').AsFloat
  else if pFormaPagto = '2' then
    Result := DM.dsConsulta2.FieldByName('VL_CDEBITO').AsFloat;
end;

function TRel_FechamentoCaixa.GetVlComputado(pFormaPagto: string): Extended;
begin
  if pFormaPagto = '1' then
    Result := gTotDinheiro
  else if pFormaPagto = '4' then
    Result := gTotCheque
  else if pFormaPagto = '3' then
    Result := gTotCartCredito
  else if pFormaPagto = '2' then
    Result := gTotCartDebito
end;

procedure TRel_FechamentoCaixa.imgFiltrarClick(Sender: TObject);
begin
  inherited;
  MontaSQLGrid();
end;

procedure TRel_FechamentoCaixa.imgFecharClick(Sender: TObject);
begin
  inherited;
  Close ;
end;

procedure TRel_FechamentoCaixa.lblGeraRelatorioClick(Sender: TObject);
begin
  inherited;
  if not ds2IDCAIXA.IsNull then
    Executar(ds2IDCAIXA.AsString);
end;

procedure TRel_FechamentoCaixa.MontaParametros(pIdCaixa : string);
const
  SQL = 'SELECT cast(b.DT_HORA_ABERT_FECH as date) data,'+
        ' EXTRACT (HOUR FROM b.DT_HORA_ABERT_FECH) ||'+
        ''':'' || EXTRACT (MINUTE FROM b.DT_HORA_ABERT_FECH) hora,'+
        'b.USUARIO_ABERT_FECH usuario '+
        'FROM CAIXA a '+
        'left outer join CAIXA_ABERT_FECH b on (b.ID_CAIXA = a.ID) '+
        'where a.ID = %s '+
        'and b.TIPO = ''F''';
begin
  rlMemoParametros.Lines.Clear;
  with DM.dsConsulta do
  begin
    Close;
    Data := DM.LerDataSet(Format(SQL, [pIdCaixa]));

    if not IsEmpty then
    begin
      rlMemoParametros.Lines.Add('   Data do Fechamento: ' + FormatDateTime('dd/mm/yyyy', FieldByName('data').AsDateTime));
      rlMemoParametros.Lines.Add('   Hora do Fechamento: ' + FormatDateTime('hh:mm', FieldByName('hora').AsDateTime));
      rlMemoParametros.Lines.Add('Usuario do Fechamento: ' + FieldByName('usuario').AsString);
      rlMemoParametros.Lines.Add('ID do Caixa: ' + pIdCaixa);
      rlMemoParametros.Lines.Add('Situação: FECHADO');
    end
    else
    begin
      rlMemoParametros.Lines.Add('Situação: Caixa em ABERTO');
    end;
  end;
end;

procedure TRel_FechamentoCaixa.MontaSQL(lIDCaixa : string);
const
  SQL1= 'select coalesce(a.VL_DINHEIRO,0)VL_DINHEIRO,coalesce(a.VL_CHEQUE,0)VL_CHEQUE,'+
        'coalesce(a.VL_CCREDITO,0)VL_CCREDITO,coalesce(a.VL_CDEBITO,0)VL_CDEBITO,'+
        'coalesce(a.VL_RETIRADO,0)VL_RETIRADO,coalesce(a.VL_RETIRADOCHEQUE,0)VL_RETIRADOCHEQUE,'+
        'a.OBS '+
        'from CAIXA_APURACAO_VALORES a '+
        'where a.ID_CAIXA = %s ';

  SQL2 = 'with juncao as '+
         '( '+
         'SELECT iif (r.VALOR < 0,''S'',''E'') ENTSAI,coalesce(r.VALOR,0)VALOR,r.TIPO '+
         ',cast(r.DATA_HORA as date)data '+
         'FROM CAIXA_ENT_SAI r '+
         'where r.ID_CAIXA = %s '+
         ') '+
         'select ENTSAI,sum(valor) valor,tipo,data from juncao '+
         'group by 1,3,4';

  SQLTotCred = 'SELECT coalesce(sum(r.VALOR),0) tot_cred FROM PDV_RECEBER r ' +
               'left outer join PDV_MASTER a on (a.ID = r.ID and a.TIPO = a.TIPO) ' +
               'where a.EMISSAO = %s '+
               'and r.forma_pagto = ''CREDIARIO''';
//               'and ((r.ID_HISTORICO in (50,49,51,48) ) or (r.ID_CONTA is null))';
  pagto: array  [0..3] of string = ('1','4','3','2');
var
  I: Integer;
  SQL : string ;
begin
  SQL := 'with juncao as ( '+
         //receber
         'select ''R'' tipo,''C'' dc,b.id_historico, x.DESCRICAO historico,b.VL_PAGO valor '+
         'from PDV_RECEBER b '+
         'left outer join HISTORICO x on (x.id = b.ID_HISTORICO) '+
         'where b.id_conta = 1 and b.ID_HISTORICO <> 47 '+//desconto
         'and b.BAIXA_ID_CAIXA = '+lIDCaixa+
         ' union all  '+
         //receber parcial
         'select ''R'' tipo,''C'' dc,t.id_historico,x.DESCRICAO historico,t.VL_PAGO valor '+
         'from PDV_RECEBER_PARCIAL t '+
         'left outer join HISTORICO x on (x.id = t.ID_HISTORICO) '+
         'where t.id_conta = 1 and t.ID_CAIXA = '+lIDCaixa+
         ' union all '+
         //sangria
         'select ''S'' tipo,iif(r.valor < 0,''D'',''C'') dc,0 id_hitorico, '+
         'r.TIPO||'' - ''||r.forma_pagto historico,cast(iif(r.VALOR<0,r.valor*-1,r.valor) as numeric(10,2)) valor '+
         'from CAIXA_ENT_SAI r  '+
         'where r.ID_CAIXA = '+lIDCaixa+
         ' union all '+
         //pagar
         'select ''P'' tipo,''D'' dc,np.id_historico,x.DESCRICAO historico,cast(coalesce(np.BAIXA_VALOR,0) as numeric(10,2)) valor '+
         'from NOTA_ENTRADA_PAGAR np '+
         'left outer join HISTORICO x on (x.id = np.ID_HISTORICO) '+
         'where np.id_conta = 1 and np.ID_CAIXA = '+lIDCaixa+
         ')  '+
         'select tipo,dc,id_historico,historico,cast(sum(valor)as numeric(10,2)) valor '+
         'from JUNCAO '+
         'group by 1,2,3,4 order by 2';

  {computado}
  DM.dsConsulta.Close ;
  DM.dsConsulta.Data := DM.LerDataSet(SQL) ;
//  DM.dsConsulta.SaveToFile(ExtractFilePath(Application.ExeName)+'\'+'dsconsulta.cds',dfBinary);

  {Apuracao}
  DM.dsConsulta2.Close ;
  DM.dsConsulta2.Data := DM.LerDataSet(Format(SQL1,[lIDCaixa])) ;
//  DM.dsConsulta2.SaveToFile(ExtractFilePath(Application.ExeName)+'\'+'dsconsulta2.cds',dfBinary);

  {Sangria + Saldo Inicial}
  DM.dsConsulta3.Close ;
  DM.dsConsulta3.Data := DM.LerDataSet(Format(SQL2,[lIDCaixa])) ;
//  DM.dsConsulta3.SaveToFile(ExtractFilePath(Application.ExeName)+'\'+'dsconsulta3.cds',dfBinary);

  ds1.Close ;
  ds1.CreateDataSet ;

  with DM do
  begin
    dsConsulta.First;
    while not dsConsulta.Eof do
    begin
      if dsConsulta.FieldByName('dc').AsString = 'C' then
      begin
        case dsConsulta.FieldByName('id_historico').AsInteger of
          0:   //sangria
            begin
              if Pos('DINHEIRO', dsConsulta.FieldByName('historico').AsString) > 0 then
                fCompDinheiro := fCompDinheiro + dsConsulta.FieldByName('valor').AsCurrency
              else
                fCompCheque := fCompCheque + dsConsulta.FieldByName('valor').AsCurrency;
            end;
          1, 48:
            begin
              if dsConsulta.FieldByName('id_historico').AsInteger = 48 then
                fRap := fRap+dsConsulta.FieldByName('valor').AsCurrency
              else
              begin
                fRav := fRav+dsConsulta.FieldByName('valor').AsCurrency;
                fVav := fVav+dsConsulta.FieldByName('valor').AsCurrency;
              end;
              fCompDinheiro := fCompDinheiro+dsConsulta.FieldByName('valor').AsCurrency;
            end;
          2, 49:  //Cartao Debito
            begin
              if dsConsulta.FieldByName('id_historico').AsInteger = 49 then
                fRap := fRap+dsConsulta.FieldByName('valor').AsCurrency
              else
              begin
//                fRav := fRav+dsConsulta.FieldByName('valor').AsCurrency;
                fVav := fVav+dsConsulta.FieldByName('valor').AsCurrency;
              end;
              fCompCD := fCompCD+dsConsulta.FieldByName('valor').AsCurrency;
            end;
          3, 50:  //Cartao Credito
            begin
              if dsConsulta.FieldByName('id_historico').AsInteger = 50 then
                fRap := fRap+dsConsulta.FieldByName('valor').AsCurrency
              else
              begin
//                fRav := fRav+dsConsulta.FieldByName('valor').AsCurrency;
                fVav := fVav+dsConsulta.FieldByName('valor').AsCurrency;
              end;
              fCompCC := fCompCC+dsConsulta.FieldByName('valor').AsCurrency;
            end;
          4, 51:   //Cheque
            begin
              if dsConsulta.FieldByName('id_historico').AsInteger = 51 then
                fRap := fRap+dsConsulta.FieldByName('valor').AsCurrency
              else
              begin
                fRav := fRav+dsConsulta.FieldByName('valor').AsCurrency;
                fVav := fVav+dsConsulta.FieldByName('valor').AsCurrency;
              end;
              fCompCheque := fCompCheque+dsConsulta.FieldByName('valor').AsCurrency;
            end;
        end;
      end
      else //debito
 //debito
      begin
        case dsConsulta.FieldByName('id_historico').AsInteger of
          0:   //sangria
            begin
              if Pos('DINHEIRO', dsConsulta.FieldByName('historico').AsString) > 0 then
                fCompDinheiro := fCompDinheiro - dsConsulta.FieldByName('valor').AsCurrency
              else
                fCompCheque := fCompCheque - dsConsulta.FieldByName('valor').AsCurrency;
            end;
          34:
            begin
              fCompDinheiro := fCompDinheiro - dsConsulta.FieldByName('valor').AsCurrency;
              fDesp := fDesp + dsConsulta.FieldByName('valor').AsCurrency;
            end;
          52:
            begin
              fCompCD := fCompCD - dsConsulta.FieldByName('valor').AsCurrency;
              fDesp := fDesp + dsConsulta.FieldByName('valor').AsCurrency;
            end;
          53:
            begin
              fCompCC := fCompCC - dsConsulta.FieldByName('valor').AsCurrency;
              fDesp := fDesp + dsConsulta.FieldByName('valor').AsCurrency;
            end;
          54:
            begin
              fCompCheque := fCompCheque - dsConsulta.FieldByName('valor').AsCurrency;
              fDesp := fDesp + dsConsulta.FieldByName('valor').AsCurrency;
            end;
        end;
      end;

      {$REGION 'old apagar'}
      //Boleto nao é demonstrado no Fechamento pois segundo Eduardo cai direto na conta bancaria
      {if (dsConsulta.FieldByName('forma_pagto').AsInteger = 5) then //'BOLETO BANCARIO'
      begin
        dsConsulta.Next;
      end;

      if (dsConsulta.FieldByName('tipo').AsString = '2') then //baixa duplicata
      begin
        gTotBaixa := gTotBaixa + dsConsulta.FieldByName('valor').AsFloat;
      end;

      if (dsConsulta.FieldByName('forma_pagto').IsNull) then //Venda a Prazo
//          (dsConsulta.FieldByName('dt_baixa').AsDateTime <> Date)) then
      begin
        gTotPrazo := gTotPrazo + dsConsulta.FieldByName('valor').AsFloat;
      end;

      if dsConsulta.FieldByName('tipo').AsString = '3' then //Venda a Prazo
      begin
        gTotSangria := gTotSangria + dsConsulta.FieldByName('valor').AsFloat;
      end;

      if dsConsulta.FieldByName('forma_pagto').AsInteger = 1 then //'DINHEIRO'
        gTotDinheiro := gTotDinheiro + dsConsulta.FieldByName('valor').AsFloat
      else if dsConsulta.FieldByName('forma_pagto').AsInteger = 4 then //'CHEQUE'
        gTotCheque := gTotCheque + dsConsulta.FieldByName('valor').AsFloat
      else if dsConsulta.FieldByName('forma_pagto').AsInteger = 3 then //'CARTAO DE CREDITO'
        gTotCartCredito := gTotCartCredito + dsConsulta.FieldByName('valor').AsFloat
      else if dsConsulta.FieldByName('forma_pagto').AsInteger = 2 then //'CARTAO DE DEBITO'
        gTotCartDebito := gTotCartDebito + dsConsulta.FieldByName('valor').AsFloat;}
      {$ENDREGION}

      dsConsulta.Next;
    end;

    fApuDinheiro := GetVlApurado('1');
    fApuCC := GetVlApurado('3');
    fApuCD := GetVlApurado('2');
    fApuCheque := GetVlApurado('4');

    fCompTot := fCompDinheiro+fCompCD+fCompCheque+fCompCC;
    fApuTot := fApuDinheiro+fApuCD+fApuCheque+fApuCC;

    fDifCC := fApuCC-fCompCC;
    fDifCD := fApuCD-fCompCD;
    fDifCheque := fApuCheque-fCompCheque;
    fDifDinheiro := fApuDinheiro-fCompDinheiro;

    fDifTot := fDifCC+fDifCD+fDifCheque+fDifDinheiro;

//    esta no evento da banda
//    fVap := DM.GetFloat(Format(SQLTotCred,[QuotedStr(
//                      FormatDateTime('dd.mm.yyyy',ds1.FieldByName('DT_HORA_ABERT_FECH').AsDateTime))]),'tot_cred');

    dsConsulta3.Locate('tipo','ABERTURA CAIXA',[]);
    fSIni := dsConsulta3.FieldByName('valor').AsCurrency;
    fVap := DM.GetFloat(Format(SQLTotCred,[QuotedStr(
                      FormatDateTime('dd.mm.yyyy',dsConsulta3.FieldByName('data').AsDateTime))]),'tot_cred');

    if dsConsulta3.Locate('entsai;tipo', VarArrayOf(['E', 'ENT/SAIDA CAIXA']), []) then        {sangria tot Entrada}
      fOutE := DM.dsConsulta3.FieldByName('valor').AsFloat;
    if dsConsulta3.Locate('entsai;tipo', VarArrayOf(['S', 'ENT/SAIDA CAIXA']), []) then        {sangria tot Saida}
      fDesp := DM.dsConsulta3.FieldByName('valor').AsFloat;

    if fDesp < 0 then
      fDesp := fDesp *  - 1;

    fSaFinal := fSIni+fRav+fRap+fOutE-fDesp;
    fVRetFechDin := dsConsulta2.FieldByName('VL_RETIRADO').AsFloat;
    fVRetFechChq := dsConsulta2.FieldByName('VL_RETIRADOCHEQUE').AsFloat;
    fDifCaixa := (fApuTot-fCompTot);
    if fDifCaixa < 0 then
     fDifCaixa := fDifCaixa*-1;
    fVMantCaixa := fSaFinal - (DM.dsConsulta2.FieldByName('VL_RETIRADO').AsFloat + fDifCaixa)
  end;
end;



procedure TRel_FechamentoCaixa.MontaSQLGrid;
const
  SQL = 'SELECT r.ID, r.ID_CAIXA,cast(r.DT_HORA_ABERT_FECH as date) data,'+
        'r.DT_HORA_ABERT_FECH, r.USUARIO_ABERT_FECH USUARIO '+
        'FROM CAIXA_ABERT_FECH r '+
        'where cast(r.DT_HORA_ABERT_FECH as date) between %s and %s' +
        ' order by 1';
begin
  ds2.Close;
  ds2.CreateDataSet ;

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[QuotedStr(FormatDateTime('dd.mm.yyyy',dtp1.Date)),
                                                  QuotedStr(FormatDateTime('dd.mm.yyyy',dtp2.Date))]));

  if DM.dsConsulta.IsEmpty then
  begin
    MessageDlg('Nenhum caixa fechado no período informado.',mtInformation,[mbOK],0);
    Exit ;
  end;

  DM.dsConsulta.First;
  while not DM.dsConsulta.Eof do
  begin
    if not ds2.Locate('IDCAIXA',DM.dsConsulta.FieldByName('ID_CAIXA').AsInteger,[]) then
    begin
      ds2.Append ;
      ds2ID.AsInteger := DM.dsConsulta.FieldByName('ID').AsInteger;
      ds2IDCAIXA.AsInteger := DM.dsConsulta.FieldByName('ID_CAIXA').AsInteger;
      ds2DATA.AsDateTime := DM.dsConsulta.FieldByName('data').AsDateTime;
      ds2ABERTURA.AsString := Trim(DM.dsConsulta.FieldByName('USUARIO').AsString) +' '+
                                 FormatDateTime('dd/mm/yy hh:mm',DM.dsConsulta.FieldByName('DT_HORA_ABERT_FECH').AsDateTime) ;
      ds2FECHAMENTO.Clear;
    end
    else
    begin
      ds2.Edit ;
      ds2FECHAMENTO.AsString := Trim(DM.dsConsulta.FieldByName('USUARIO').AsString) +' '+
                                 FormatDateTime('dd/mm/yy hh:mm',DM.dsConsulta.FieldByName('DT_HORA_ABERT_FECH').AsDateTime) ;
    end;
    ds2.Post ;
    DM.dsConsulta.Next ;
  end;
end;

procedure TRel_FechamentoCaixa.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  //linha DINHEIRO
  RLLabel9.Caption := FormatFloat('#,##0.00', fCompDinheiro);
  RLLabel13.Caption := FormatFloat('#,##0.00', fApuDinheiro);
  RLLabel17.Caption := FormatFloat('#,##0.00', fDifDinheiro);
  //linha cheque
  RLLabel10.Caption := FormatFloat('#,##0.00', fCompCheque);
  RLLabel14.Caption := FormatFloat('#,##0.00', fApuCheque);
  RLLabel18.Caption := FormatFloat('#,##0.00', fDifCheque);
  //linha CC
  RLLabel11.Caption := FormatFloat('#,##0.00', fCompCC);
  RLLabel15.Caption := FormatFloat('#,##0.00', fApuCC);
  RLLabel19.Caption := FormatFloat('#,##0.00', fDifCC);
  //linha CD
  RLLabel12.Caption := FormatFloat('#,##0.00', fCompCD);
  RLLabel16.Caption := FormatFloat('#,##0.00', fApuCD);
  RLLabel20.Caption := FormatFloat('#,##0.00', fDifCD);
  //linha total
  RLLabel21.Caption := FormatFloat('#,##0.00', fCompTot);
  RLLabel22.Caption := FormatFloat('#,##0.00', fApuTot);
  RLLabel23.Caption := FormatFloat('#,##0.00', fDifTot);

  RLLabel28.Caption := 'R$ '+FormatFloat('#,##0.00', fVap);//venda prazo
  RLLabel29.Caption := 'R$ '+FormatFloat('#,##0.00', fVav);//venda vista
  RLLabel30.Caption := 'R$ '+FormatFloat('#,##0.00', fVap+fVav);//total


  {$REGION 'old apagar'}
  {ds1.First;
  while not ds1.Eof do
  begin
    if ds1FORMA_PAGTO.AsInteger = 1 then //'DINHEIRO'
    begin
      RLLabel9.Caption := FormatFloat('#,##0.00', ds1VL_COMPUTADO.AsFloat);
      RLLabel13.Caption := FormatFloat('#,##0.00', ds1VL_APURADO.AsFloat);
      RLLabel17.Caption := FormatFloat('#,##0.00', ds1VL_APURADO.AsFloat - ds1VL_COMPUTADO.AsFloat);
    end;

    if ds1FORMA_PAGTO.AsInteger = 4 then //'CHEQUE'
    begin
      RLLabel10.Caption := FormatFloat('#,##0.00', ds1VL_COMPUTADO.AsFloat);
      RLLabel14.Caption := FormatFloat('#,##0.00', ds1VL_APURADO.AsFloat);
      RLLabel18.Caption := FormatFloat('#,##0.00', ds1VL_APURADO.AsFloat - ds1VL_COMPUTADO.AsFloat);
    end;

    if ds1FORMA_PAGTO.AsInteger = 3 then //'CARTAO DE CREDITO'
    begin
      RLLabel11.Caption := FormatFloat('#,##0.00', ds1VL_COMPUTADO.AsFloat);
      RLLabel15.Caption := FormatFloat('#,##0.00', ds1VL_APURADO.AsFloat);
      RLLabel19.Caption := FormatFloat('#,##0.00', ds1VL_APURADO.AsFloat - ds1VL_COMPUTADO.AsFloat);
    end;

    if ds1FORMA_PAGTO.AsInteger = 2 then //'CARTAO DE DEBITO'
    begin
      RLLabel12.Caption := FormatFloat('#,##0.00', ds1VL_COMPUTADO.AsFloat);
      RLLabel16.Caption := FormatFloat('#,##0.00', ds1VL_APURADO.AsFloat);
      RLLabel20.Caption := FormatFloat('#,##0.00', ds1VL_APURADO.AsFloat - ds1VL_COMPUTADO.AsFloat);
    end;
    lTotComp := lTotComp + ds1VL_COMPUTADO.AsFloat;
    lTotApu := lTotApu + ds1VL_APURADO.AsFloat;
    ds1.Next;
  end;

  lDiferenca := lTotApu - lTotComp;
  //Totalizadores
  RLLabel21.Caption := FormatFloat('#,##0.00', lTotComp);
  RLLabel22.Caption := FormatFloat('#,##0.00', lTotApu);
  RLLabel23.Caption := FormatFloat('#,##0.00', lDiferenca);

  //rodape
  RLLabel28.Caption := 'R$ '+FormatFloat('#,##0.00', gTotPrazo);//venda prazo
  RLLabel30.Caption := 'R$ '+FormatFloat('#,##0.00', gTotBaixa);//baixa parcela

  //Regra aplicada no caso de nao haver venda no caixa
  lTotVista := (lTotComp - (gTotBaixa+gTotSangria));
  if lTotVista < 0 then
    lTotVista := 0
  else
    lTotVista := lTotVista;
  RLLabel29.Caption := 'R$ '+FormatFloat('#,##0.00', lTotVista);//venda vista }
  {$ENDREGION}

  {*************Conferencia**************}
  rlblCSaldoInicial.Caption := FormatFloat('#,##0.00', fSIni);

  rlblCAVista.Caption := FormatFloat('#,##0.00', fRav);
  rlblCPrazo.Caption := FormatFloat('#,##0.00', fRap);

  rlblCEntrada.Caption := FormatFloat('#,##0.00', fOutE);

  rlblCDespesas.Caption := FormatFloat('#,##0.00', fDesp);

//  rlblCSaldoFinal.Caption := FormatFloat('#,##0.00', fSaFinal);
  rlblCSaldoFinalDin.Caption := FormatFloat('#,##0.00', fCompDinheiro);
  rlblSaldoFinalChe.Caption := FormatFloat('#,##0.00', fCompCheque);

  rlblRetDin.Caption := FormatFloat('#,##0.00',fVRetFechDin);
  rlblRetChq.Caption := FormatFloat('#,##0.00',fVRetFechChq);
  rlblCDiferenca.Caption := FormatFloat('#,##0.00', fDifCaixa);

  rlblMantDin.Caption := FormatFloat('#,##0.00', (fCompDinheiro-fVRetFechDin)-fDifCaixa);
  rlblMantChq.Caption := FormatFloat('#,##0.00', fCompCheque-fVRetFechChq);

  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := DM.dsConsulta2.FieldByName('OBS').AsString;
end;

end.

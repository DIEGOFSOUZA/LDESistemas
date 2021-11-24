unit UFrm_CaixaFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.DBCtrls,
  Datasnap.DBClient, Vcl.Grids;

type
  TFrm_CaixaFechamento = class(TPdr_Child)
    lblTitulo: TLabel;
    pnlFundo: TPanel;
    pnlEsquerda: TPanel;
    pnlDireita: TPanel;
    pnlCentro: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    imgFechado: TImage;
    imgAberto: TImage;
    lblStatusCaixa: TLabel;
    Label1: TLabel;
    edtSaldoInicial: TEdit;
    dbgrdHistAbertFech: TDBGrid;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    edtDinheiro: TEdit;
    lbl4: TLabel;
    edtCartaoCredito: TEdit;
    lbl5: TLabel;
    edtCartaoDebito: TEdit;
    lbl6: TLabel;
    edtCheque: TEdit;
    lbl8: TLabel;
    edtTotEntrada: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtDinheiroSaida: TEdit;
    Label7: TLabel;
    edtChequeSaida: TEdit;
    Label8: TLabel;
    edtTotSaida: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtDinheiroSaldo: TEdit;
    Label11: TLabel;
    edtSaldoFinal: TEdit;
    ds0: TClientDataSet;
    ds1: TClientDataSet;
    ds2: TClientDataSet;
    ds0ID: TIntegerField;
    ds0ABERTO_FECHADO: TStringField;
    ds1ID: TIntegerField;
    ds1ID_CAIXA: TIntegerField;
    ds1DT_HORA_ABERT_FECH: TSQLTimeStampField;
    ds1USUARIO_ABERT_FECH: TStringField;
    ds1TIPO: TStringField;
    s1: TDataSource;
    ds1OBS: TMemoField;
    ds3: TClientDataSet;
    s3: TDataSource;
    ds2ID: TIntegerField;
    ds2ID_CAIXA: TIntegerField;
    ds2FORMA_PAGTO: TStringField;
    ds2VALOR: TFMTBCDField;
    ds2TIPO: TStringField;
    ds2DATA_HORA: TSQLTimeStampField;
    ds2USUARIO: TStringField;
    lbl7: TLabel;
    edtCrediario: TEdit;
    ds1SALDO: TFMTBCDField;
    tmrAtualiza: TTimer;
    imgFechar: TImage;
    imgAtualizar: TImage;
    pnlInfApuracao: TPanel;
    imgApuracao: TImage;
    lblApuracao: TLabel;
    pnlAddMov: TPanel;
    imgAddMovimento: TImage;
    lblAddMovimento: TLabel;
    pnlRelatorio: TPanel;
    imgRelatorio: TImage;
    lblRelFechamento: TLabel;
    pnlFechaCaixa: TPanel;
    imgFechaCaixa: TImage;
    lblFechaCaixa: TLabel;
    ds3TIPO: TStringField;
    ds3DC: TStringField;
    ds3DATAEHORA: TStringField;
    ds3VENDANF: TStringField;
    ds3USU_VEND: TStringField;
    ds3HISTORICO: TStringField;
    ds3VALOR: TFMTBCDField;
    ds3CLI_FOR: TStringField;
    ds3OBS: TStringField;
    dbgrdParcela: TDBGrid;
    ds3ID_HISTORICO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure btnAddMovimentoClick(Sender: TObject);
    procedure imgFechaCaixaClick(Sender: TObject);
    procedure imgFechadoDblClick(Sender: TObject);
    procedure btnValorApuradoClick(Sender: TObject);
    procedure tmrAtualizaTimer(Sender: TObject);
    procedure imgAtualizarClick(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
    procedure imgRelatorioClick(Sender: TObject);
    procedure imgAddMovimentoClick(Sender: TObject);
    procedure imgApuracaoClick(Sender: TObject);
    procedure ds3DCGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgrdParcelaTitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure LoadMovimentos();
    procedure Sair() ;
    procedure FecharCaixa() ;
    procedure ReabrirCaixa() ;
    procedure ImpressaoCaixa() ;
    procedure Limpar() ;
    function Validar() : Boolean ;

  public
    { Public declarations }
  end;

var
  Frm_CaixaFechamento: TFrm_CaixaFechamento;

implementation

uses
  UDM, UFrm_Sangria, UFrm_ReabreCaixa, UFrm_Caixa_InformaValores,
  URel_FechamentoCaixa, UFuncoes, u_Mensagem;

{$R *.dfm}

{ TFrm_CaixaFechamento }

procedure TFrm_CaixaFechamento.btnAddMovimentoClick(Sender: TObject);
begin
  inherited;
  if not Validar() then
    Exit ;

  if not Assigned(Frm_Sangria) then
    Frm_Sangria := TFrm_Sangria.Create(Self);
  try
    with Frm_Sangria do
    begin

     bAtualizar := False ;
     iCaixa :=  ds0ID.AsInteger ;
     ShowModal ;

     if bAtualizar then
       LoadMovimentos();
    end;
  finally
    FreeAndNil(Frm_Sangria);
  end;
end;

procedure TFrm_CaixaFechamento.btnValorApuradoClick(Sender: TObject);
begin
  inherited;
  if not Validar() then
    Exit ;

  {Validar se ja nao foi informado antes}
  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet('select a.ID from CAIXA_APURACAO_VALORES a '+
                                      'where a.ID_CAIXA = '+ds0ID.AsString) ;
  if not DM.dsConsulta.IsEmpty then
  begin
    if TMensagem.Pergunta('Valores da apuração ja foram informados.'+#13#10+
                          'Deseja informa-los novamente?') then
    begin
      DM.ExecutarSQL(DM.BancoDados,
                     'delete from CAIXA_APURACAO_VALORES a '+
                     'where a.ID_CAIXA = '+ds0ID.AsString);
    end
    else
      Exit
  end;



  if not Assigned(Frm_Caixa_InformaValores) then
    Frm_Caixa_InformaValores := TFrm_Caixa_InformaValores.Create(Self);
  try
    with Frm_Caixa_InformaValores do
    begin
      idCaixa := ds0ID.AsString;
      ds1.Last ;
      idAbertCaixa := ds1ID.AsString ;

      ShowModal;

    end;
  finally
    FreeAndNil(Frm_Caixa_InformaValores);
  end;
end;

procedure TFrm_CaixaFechamento.dbgrdParcelaTitleClick(Column: TColumn);
begin
  inherited;
  ds3.IndexFieldNames := Column.FieldName;
end;

procedure TFrm_CaixaFechamento.ds3DCGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'D' then
    Text := 'Débito'
  else
    Text := 'Crédito';
end;

procedure TFrm_CaixaFechamento.FecharCaixa;
var
  sObs: string;
  lValor : Extended;
begin
  sObs := 'TOTAIS FECHAMENTO' +#13+
          'ENTRADAS' +#13+
          'DINHEIRO: '+edtDinheiro.Text+#13+
          'CHEQUE: '+edtCheque.Text+#13+
          'CC: '+edtCartaoCredito.Text+#13+
          'CD: '+edtCartaoDebito.Text+#13+#13+

          'SAIDAS'+#13+
          'DINHEIRO: '+edtDinheiroSaida.Text+#13+
          'CHEQUE: '+edtCheque.Text+#13+#13+

          'SALDO FINAL: '+edtSaldoFinal.Text+#13+#13+

          'CREDIARIO: '+edtCrediario.Text;

//  lValor := StrToFloatDef(StringReplace(edtDinheiroSaldo.Text,'.',EmptyStr,[rfReplaceAll]),0);

  if DM.SMCadastroClient.setCaixa(DM.BancoDados, 'FECHAMENTO', ds0ID.AsInteger,
     DM.Usuario.login, 'DINHEIRO', GetValor(edtDinheiroSaldo.Text), sObs, EmptyStr) then
  begin
    TMensagem.Informacao('Fechamento de Caixa efetuado com sucesso!');
    Limpar();
    Close();
  end;
end;

procedure TFrm_CaixaFechamento.FormShow(Sender: TObject);
begin
  inherited;
  LoadMovimentos();
end;

procedure TFrm_CaixaFechamento.imgRelatorioClick(Sender: TObject);
begin
  inherited;
  ImpressaoCaixa() ;
end;

procedure TFrm_CaixaFechamento.imgAddMovimentoClick(Sender: TObject);
begin
  inherited;
  if not Validar() then
    Exit ;

  if not Assigned(Frm_Sangria) then
    Frm_Sangria := TFrm_Sangria.Create(Self);
  try
    with Frm_Sangria do
    begin

      bAtualizar := False;
      iCaixa := ds0ID.AsInteger;
      ShowModal;

      if bAtualizar then
        LoadMovimentos();
    end;
  finally
    FreeAndNil(Frm_Sangria);
  end;
end;

procedure TFrm_CaixaFechamento.imgApuracaoClick(Sender: TObject);
begin
  inherited;
  if not Validar() then
    Exit ;

  {Validar se ja nao foi informado antes}
  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet('select a.ID from CAIXA_APURACAO_VALORES a ' + 'where a.ID_CAIXA = ' + ds0ID.AsString);
  if not DM.dsConsulta.IsEmpty then
  begin
    if TMensagem.Pergunta('Valores da apuração ja foram informados.' + #13#10 + 'Deseja informa-los novamente?') then
    begin
      DM.ExecutarSQL(DM.BancoDados, 'delete from CAIXA_APURACAO_VALORES a ' + 'where a.ID_CAIXA = ' + ds0ID.AsString);
    end
    else
      Exit
  end;

  if not Assigned(Frm_Caixa_InformaValores) then
    Frm_Caixa_InformaValores := TFrm_Caixa_InformaValores.Create(Self);
  try
    with Frm_Caixa_InformaValores do
    begin
      idCaixa := ds0ID.AsString;
      ds1.Last;
      idAbertCaixa := ds1ID.AsString;

      ShowModal;

    end;
  finally
    FreeAndNil(Frm_Caixa_InformaValores);
  end;
end;

procedure TFrm_CaixaFechamento.imgAtualizarClick(Sender: TObject);
begin
  inherited;
  LoadMovimentos();
end;

procedure TFrm_CaixaFechamento.imgFechaCaixaClick(Sender: TObject);
const
     SQL = 'select a.ID from CAIXA_APURACAO_VALORES a '+
           'where a.ID_CAIXA = %s ';
begin
  inherited;
  if not Validar() then
    Exit ;

  with DM do
  begin
    dsconsulta.Close;
    dsconsulta.Data := DM.LerDataSet(Format(SQL, [ds0ID.AsString]));
    if dsconsulta.IsEmpty then
    begin
      TMensagem.Atencao('Não informado Valores Apurados.');
      Exit;
    end;
  end;

  if TMensagem.Pergunta('Confirma o FECHAMENTO DO CAIXA?') then
    FecharCaixa();
end;

procedure TFrm_CaixaFechamento.imgFechadoDblClick(Sender: TObject);
begin
  inherited;
//  ReabrirCaixa() ;
end;

procedure TFrm_CaixaFechamento.imgFecharClick(Sender: TObject);
begin
  inherited;
  Sair() ;
end;

procedure TFrm_CaixaFechamento.ImpressaoCaixa;
begin
  if not Validar() then
    Exit;

  if not Assigned(Rel_FechamentoCaixa) then
    Rel_FechamentoCaixa := TRel_FechamentoCaixa.Create(Self);
  try
    Rel_FechamentoCaixa.Executar(ds0ID.AsString);
  finally
    FreeAndNil(Rel_FechamentoCaixa);
  end;
end;

procedure TFrm_CaixaFechamento.Label12Click(Sender: TObject);
begin
  inherited;
  Sair();
end;

procedure TFrm_CaixaFechamento.Limpar;
begin
  edtSaldoInicial.Text := '0,00';
  edtDinheiro.Text := '0,00';
  edtCartaoCredito.Text := '0,00';
  edtCartaoDebito.Text := '0,00';
  edtCheque.Text := '0,00';
  edtTotEntrada.Text := '0,00';
  edtDinheiroSaida.Text := '0,00';
  edtChequeSaida.Text := '0,00';
  edtTotSaida.Text := '0,00';
  edtDinheiroSaldo.Text := '0,00';
  edtSaldoFinal.Text := '0,00';
  edtCrediario.Text := '0,00';


  lblStatusCaixa.Caption := 'FECHADO';
  imgAberto.Visible := False;
  imgFechado.Visible := True;

  ds0.Close ;
  ds1.Close ;
  ds2.Close ;
  ds3.Close ;

  tmrAtualiza.Enabled := False ;
end;

procedure TFrm_CaixaFechamento.LoadMovimentos();
const
  SQL0 = 'select a.ID,a.ABERTO_FECHADO from CAIXA a '+
         'left outer join CAIXA_ABERT_FECH b on (b.ID_CAIXA = a.ID) '+
//         'where cast(b.DT_HORA_ABERT_FECH as date) = %s '+
         'where a.ID = %s '+
         'and a.aberto_fechado = ''A'' '+
         'group by 1,2';

  SQL1 = 'SELECT r.ID, r.ID_CAIXA, r.DT_HORA_ABERT_FECH, r.USUARIO_ABERT_FECH,'+
         'r.TIPO, cast(r.SALDO as numeric(10,2)) SALDO,r.OBS '+
         'FROM CAIXA_ABERT_FECH r '+
         'where r.ID_CAIXA = %s ';

  SQL2 = 'SELECT r.ID, r.ID_CAIXA,'+
         'r.FORMA_PAGTO, cast(r.VALOR as numeric(10,2)) VALOR, r.TIPO,'+
         'r.DATA_HORA, r.USUARIO '+
         'FROM CAIXA_ENT_SAI r '+
         'where r.ID_CAIXA = %s ';

  SQLTotCred = 'SELECT coalesce(sum(r.VALOR),0) tot_cred FROM PDV_RECEBER r '+
               'left outer join PDV_MASTER a on (a.ID = r.ID and a.TIPO = a.TIPO) '+
               'where a.EMISSAO = %s '+
               'and r.forma_pagto = ''CREDIARIO''';
//               'and ((r.ID_HISTORICO in (50,49,51,48) ) or (r.ID_CONTA is null))';

var mIDCaixa : string ;
    SQL3 : string;
    fEntDin,fEntChe,fEntCred,fEntDeb,fEntParc,fEntTotal,
    fSaiDin,fSaiChe,fSaiTotal,
    fSaldoFinal,fSaldoDin : Extended;
begin
  Screen.Cursor := crHourGlass;
  try
    {inicializa variaveis e componentes}
    mIDCaixa := '0';
    imgFechado.Visible := False ;
    imgAberto.Visible := False ;
    lblStatusCaixa.Caption := EmptyStr;
    fEntDin     := 0;
    fEntChe     := 0;
    fEntCred    := 0;
    fEntDeb     := 0;
    fEntParc    := 0;
    fEntTotal   := 0;
    fSaiChe     := 0;
    fSaiDin     := 0;
    fSaiTotal   := 0;
    fSaldoDin   := 0;
    fSaldoFinal := 0;

    {Verifica se tem Caixa Aberto, caso tenha lista apenas movimentacoes do mesmo,
     caso nao tenha, listar todos os caixas do dia}


    {Carrega os datasets}
    ds0.Close ;
    ds0.Data := DM.LerDataSet(Format(SQL0,[DM.GetString('select max(id) id from CAIXA','id')]));

    if ds0.IsEmpty then
    begin
      Exit;
    end;
    mIDCaixa := ds0ID.AsString;
//    mIDCaixa := '300';

    ds1.IndexFieldNames := 'id';
    ds1.Close ;
    ds1.Data := DM.LerDataSet(Format(SQL1,[mIDCaixa])) ;

    {historico de abert e fechamento}
    ds2.Close ;
    ds2.Data := DM.LerDataSet(Format(SQL2,[mIDCaixa])) ;

    {Movimentacoes do Dia}
    {$REGION 'Sql antiga'}
    {SQL3 := 'select a.EMISSAO,b.dt_baixa,cast(right(b.USUARIO_EMISSAO,5) as time) hora,'+
            'iif(b.FORMA_PAGTO <> ''CREDIARIO'',cast(''VENDA: ''||a.ID as varchar(50)),'+
            'cast(''VENDA: ''||a.ID||'' ''||b.ORDEM as varchar(50))) descricao,'+
            'b.FORMA_PAGTO,'+
            'cast(coalesce(iif(b.FORMA_PAGTO = ''CREDIARIO'',b.VALOR,b.VL_PAGO),0)as numeric(10,2))entrada,'+
            'cast(0 as numeric(10,2)) saida,'+
            'cast('''' as varchar(300)) obs '+
            'from PDV_MASTER a '+
            'left outer join PDV_RECEBER b on (b.TIPO = a.TIPO and b.ID = a.ID) '+
            'left outer join PDV_RECEBER c on (c.TIPO = a.TIPO and c.ID = a.ID and c.forma_pagto = ''DESCONTO'') '+
            'where b.FORMA_PAGTO <> ''DESCONTO'' '+
            'and a.ID_CAIXA = '+ mIDCaixa +
            ' group by 1,2,3,4,5,6 ' +

            //Abertura, Sangria e outros
            ' union all '+
            'SELECT cast(r.DATA_HORA as date) emissao,cast(r.DATA_HORA as date) dt_baixa,'+
            'cast(r.DATA_HORA as time) hora,'+
            'r.TIPO descricao,'+
            'r.FORMA_PAGTO,'+
            'cast(iif(r.VALOR > 0,r.VALOR,0) as numeric(10,2)) entrada,'+
            'cast(iif(r.VALOR < 0,r.VALOR,0) as numeric(10,2)) saida, '+
            'cast(r.OBS as varchar(300)) obs '+
            'FROM CAIXA_ENT_SAI r '+
            'where r.ID_CAIXA = '+mIDCaixa +
            //Contas a pagar
            ' union all '+
            'SELECT n.EMISSAO,np.BAIXA_DATA dt_baixa,'+
            'null hora,'+
            '''BAIXA CONTAS A PAGAR'' descricao,'+
            'np.CAIXA_FORMAPAGTO FORMA_PAGTO,'+
            'cast(0 as numeric(10,2)) entrada,'+
            'cast((np.BAIXA_VALOR * -1) as numeric(10,2)) saida,'+
            'cast(''Fornecedor: ''||f.razao_nome||''|Nota: ''||n.N_NF||''|Duplicata: ''||np.ndup as varchar(300)) obs '+
            'FROM NOTA_ENTRADA n '+
            'left outer join NOTA_ENTRADA_PAGAR np on (np.id_notaentrada = n.id) '+
            'left outer join FABRICANTE f on (f.codigo = n.codfor) '+
            'where np.id_conta = 1 '+
            ' and np.ID_CAIXA = '+mIDCaixa +

            //Baixa Integral de Parcelas dia
            ' union all '+
            'SELECT r.DT_BAIXA EMISSAO,r.DT_BAIXA,cast(right(r.USUARIO_BAIXA,5) as time) hora,'+
            'cast(''BAIXA INTEGRAL: ''||r.ORDEM||'' VENDA: ''||a.ID as varchar(50)) descricao,'+
            'r.BAIXA_FORMA_PAGTO FORMA_PAGTO, cast(r.VL_PAGO as numeric(10,2))entrada,'+
            'cast(0 as numeric(10,2)) saida,'+
            'cast('''' as varchar(300)) obs '+
            'FROM PDV_MASTER a '+
            'left outer join PDV_RECEBER r on (r.TIPO = a.TIPO and r.ID = a.ID) '+
//            'where r.FORMA_PAGTO = ''CREDIARIO'' '+
            'where r.id_conta = 1 '+
            'and r.BAIXA_ID_CAIXA = '+mIDCaixa+
            ' and r.baixa_forma_pagto <> ''BOLETO BANCARIO'' '+

            //Baixa Parcial de Parcelas dia
            ' union all '+
            'SELECT a.DT_BAIXA emissao,a.DT_BAIXA,cast(right(a.USUARIO_BAIXA,5) as time) hora,'+
            'cast(''BAIXA PARCIAL: ''||a.ORDEM||'' VENDA: ''||a.ID as varchar(50)) descricao,'+
            'a.BAIXA_FORMA_PAGTO FORMA_PAGTO, cast(a.VL_PAGO as numeric(10,2))entrada,'+
            'cast(0 as numeric(10,2)) saida,'+
            'cast('''' as varchar(300)) obs '+
            'FROM PDV_MASTER b '+
            'left outer join PDV_RECEBER_PARCIAL a on (a.ID = b.ID and a.TIPO = b.TIPO) '+
            'where a.ID_CAIXA = '+mIDCaixa+
            ' and a.baixa_forma_pagto <> ''BOLETO BANCARIO'' '+
            ' order by 2' ;  }
    {$ENDREGION}
    SQL3 := //receber
           'select ''R'' tipo,''C'' dc,cast(extract(day from b.dt_baixa)||''/''||extract(month from b.dt_baixa)||''/''||extract(year from b.dt_baixa)||''-''||right(b.USUARIO_BAIXA,5) as varchar(30))dataehora,'+
           'cast(a.TIPO||''-''||a.ID as varchar(20)) VendaNF,'+
           'coalesce(c.USU_NOME,substring(B.USUARIO_BAIXA from 1 for position(''|'' in B.USUARIO_BAIXA)-1)) usu_vend,'+
           'b.ID_HISTORICO,d.DESCRICAO historico,b.VL_PAGO valor,'+
           'e.NOME_RAZAO cli_for,cast('''' as varchar(300))obs '+
           'from PDV_RECEBER b '+
           'left outer join PDV_MASTER a on (b.TIPO = a.TIPO and b.ID = a.ID) '+
           'left outer join USUARIO c on (c.ID_VENDEDOR = a.ID_VENDEDOR) '+
           'left outer join HISTORICO d on (d.ID = b.ID_HISTORICO) '+
           'left outer join CLIENTE e on (e.CODIGO = a.ID_CLIENTE) '+
           'where b.ID_CONTA = 1 '+
           'and b.BAIXA_ID_CAIXA = '+mIDCaixa+
           ' and b.ID_HISTORICO <> 47 '+//desconto
           ' and b.ID_HISTORICO <> 99 '+//Credito(gerado via devolucao)

           ' union all '+

           //receber parcial
           'select ''R'' tipo,''C'' dc,cast(extract(day from b.dt_baixa)||''/''||extract(month from b.dt_baixa)||''/''||extract(year from b.dt_baixa)||''-''||right(b.USUARIO_BAIXA,5) as varchar(30))dataehora,'+
           'cast(a.TIPO||''-''||a.ID as varchar(20)) VendaNF,'+
           'coalesce(c.USU_NOME,substring(B.USUARIO_BAIXA from 1 for position(''|'' in B.USUARIO_BAIXA)-1)) usu_vend,'+
           'b.ID_HISTORICO,d.DESCRICAO historico,b.VL_PAGO valor,'+
           'e.NOME_RAZAO cli_for,cast('''' as varchar(300))obs '+
           'from PDV_RECEBER_PARCIAL b '+
           'left outer join PDV_MASTER a on (b.TIPO = a.TIPO and b.ID = a.ID) '+
           'left outer join USUARIO c on (c.ID_VENDEDOR = a.ID_VENDEDOR) '+
           'left outer join HISTORICO d on (d.ID = b.ID_HISTORICO) '+
           'left outer join CLIENTE e on (e.CODIGO = a.ID_CLIENTE) '+
           'where b.ID_CONTA = 1 '+
           'and b.ID_CAIXA = '+mIDCaixa+

           ' union all '+

           //sangria
           'SELECT ''S'' tipo,iif(r.VALOR < 0,''D'',''C'') DC,'+
           'cast(extract(day from r.DATA_HORA)||''/''||extract(month from r.DATA_HORA)||''/''||extract(year from r.DATA_HORA)||''-''||lpad(extract(hour from r.DATA_HORA),2,''0'')||'':''||lpad(extract(minute from r.DATA_HORA),2,''0'') as varchar(30))dataehora,'+
           'cast('''' as varchar(20))vendanf,r.USUARIO usu_vend,'+
           'cast(0 as integer)id_historico,cast(r.TIPO||'' - ''||r.FORMA_PAGTO as varchar(60))historico,'+
           'cast(iif(r.VALOR < 0,r.valor*-1,r.valor)as numeric(10,2))valor,cast('''' as varchar(100)) cli_for,'+
           'cast(r.OBS as varchar(300)) obs '+
           'FROM CAIXA_ENT_SAI r '+
           'where r.ID_CAIXA = '+mIDCaixa+

           ' union all '+

           //pagar
           'SELECT ''P'' tipo,''D'' dc,'+
           'cast(extract(day from np.BAIXA_DATA)||''/''||extract(month from np.BAIXA_DATA)||''/''||extract(year from np.BAIXA_DATA)||''-''||right(np.BAIXA_USUARIO,5) as varchar(30))dataehora,'+
           'lpad(n.N_NF,4,''0'') vendanf,'+
           'substring(np.BAIXA_USUARIO from 1 for position(''|'' in np.BAIXA_USUARIO)-1) usu_vend,'+
           'np.ID_HISTORICO,d.DESCRICAO historico,'+
           'cast(np.BAIXA_VALOR as numeric(10,2)) valor,'+
           'f.RAZAO_NOME cli_for,'+
           'cast(''Duplicata: ''||lpad(np.ndup,2,''0'')||''/''||(select lpad(count(*),2,''0'') from NOTA_ENTRADA_PAGAR where id_notaentrada = n.ID) as varchar(300)) obs '+
           'FROM NOTA_ENTRADA n  '+
           'left outer join NOTA_ENTRADA_PAGAR np on (np.id_notaentrada = n.id) '+
           'left outer join FABRICANTE f on (f.codigo = n.codfor)  '+
           'left outer join HISTORICO d on (d.ID = np.ID_HISTORICO) '+
           'where np.id_conta = 1 '+
           'and np.ID_CAIXA = '+mIDCaixa+
           'order by 3 desc';

    ds3.Close;
    ds3.Data := DM.LerDataSet(SQL3);

    {Status}
    if ds0ABERTO_FECHADO.AsString = 'A' then
    begin
      imgAberto.Visible := True ;
      lblStatusCaixa.Color := clGreen ;
      lblStatusCaixa.Caption := 'ABERTO';
    end
    else
    begin
      imgFechado.Visible := True ;
      lblStatusCaixa.Color := clRed ;
      lblStatusCaixa.Caption := 'FECHADO';
    end;

    {saldo inicial}
     ds2.Locate('tipo','ABERTURA CAIXA',[]);
     edtSaldoInicial.Text := FormatFloat('#,##0.00', ds2VALOR.AsFloat);

    //Totalizadores
    ds3.DisableControls;
    try
      ds3.First;
      while not ds3.Eof do
      begin
        if (ds3.FieldByName('dc').AsString = 'C') then
        begin
          if ds3.FieldByName('id_historico').AsInteger = 0 then //sangria
          begin
            if Pos('DINHEIRO',ds3.FieldByName('historico').AsString) > 0 then
              fEntDin := fEntDin+ds3.FieldByName('valor').AsCurrency
            else
              fEntChe := fEntChe+ds3.FieldByName('valor').AsCurrency;
          end
          else
          begin
            case ds3.FieldByName('id_historico').AsInteger of
            //Venda/Recebimento Crediario
              1,48:
                fEntDin := fEntDin + ds3.FieldByName('valor').AsCurrency;
              2,49:
                fEntDeb := fEntDeb + ds3.FieldByName('valor').AsCurrency;
              3,50:
                fEntCred := fEntCred + ds3.FieldByName('valor').AsCurrency;
              4,51:
                fEntChe := fEntChe + ds3.FieldByName('valor').AsCurrency;
            end;
          end;
          fEntTotal := fEntTotal+ds3.FieldByName('valor').AsCurrency;
        end
        else //debito
        begin
          if ds3.FieldByName('id_historico').AsInteger = 0 then //sangria
          begin
            if Pos('DINHEIRO',ds3.FieldByName('historico').AsString) > 0 then
              fSaiDin := fSaiDin+ds3.FieldByName('valor').AsCurrency
            else
              fSaiDin := fSaiDin+ds3.FieldByName('valor').AsCurrency;
          end;
          case ds3.FieldByName('id_historico').AsInteger of
            //Pagto NF
              34:
                fSaiDin := fSaiDin+ds3.FieldByName('valor').AsCurrency;
              54:
                fSaiChe := fSaiChe+ds3.FieldByName('valor').AsCurrency;
            end;
          fSaiTotal := fSaiTotal+ds3.FieldByName('valor').AsCurrency;
        end;

       {$REGION 'apagar old'}
       {if ((ds3FORMA_PAGTO.AsString = 'CREDIARIO') and
           (ds3DT_BAIXA.AsDateTime = DATE)) then
       begin
         ds3.Delete;
       end;

        if ds3ENTRADA.AsFloat > 0 then
        begin
          if ds3FORMA_PAGTO.AsString = 'CREDIARIO' then
            fEntParc := fEntParc + ds3ENTRADA.AsFloat
          else
          begin
            if ds3FORMA_PAGTO.AsString = 'DINHEIRO' then
              fEntDin := fEntDin + ds3ENTRADA.AsFloat
            else if ds3FORMA_PAGTO.AsString = 'CHEQUE' then
              fEntChe := fEntChe + ds3ENTRADA.AsFloat
            else if ds3FORMA_PAGTO.AsString = 'CARTAO DE CREDITO' then
              fEntCred := fEntCred + ds3ENTRADA.AsFloat
            else if ds3FORMA_PAGTO.AsString = 'CARTAO DE DEBITO' then
              fEntDeb := fEntDeb + ds3ENTRADA.AsFloat;
            fEntTotal := fEntTotal + ds3ENTRADA.AsFloat;
          end;
        end;

        if ds3SAIDA.AsFloat < 0 then
        begin
           if ds3FORMA_PAGTO.AsString = 'DINHEIRO' then
            fSaiDin := fSaiDin + ds3SAIDA.AsFloat
          else if ds3FORMA_PAGTO.AsString = 'CHEQUE' then
            fSaiChe := fSaiChe + ds3SAIDA.AsFloat;
          fSaiTotal := fSaiTotal + ds3SAIDA.AsFloat;
        end;  }
       {$ENDREGION}
        ds3.Next ;
      end;
      fSaldoDin   := fEntDin-fSaiDin;
      fSaldoFinal := fEntTotal-fSaiTotal;
      fEntParc    := DM.GetFloat(Format(SQLTotCred,[QuotedStr(
                      FormatDateTime('dd.mm.yyyy',ds1.FieldByName('DT_HORA_ABERT_FECH').AsDateTime))]),'tot_cred');
    finally
      ds3.EnableControls ;
      ds3.First ;
    end;

    edtDinheiro.Text := FormatCurr('#,##0.00',fEntDin) ;
    edtCartaoCredito.Text := FormatCurr('#,##0.00',fEntCred) ;
    edtCartaoDebito.Text := FormatCurr('#,##0.00',fEntDeb) ;
    edtCheque.Text := FormatCurr('#,##0.00',fEntChe) ;
    edtCrediario.Text := FormatCurr('#,##0.00',fEntParc) ;
    edtTotEntrada.Text := FormatCurr('#,##0.00',fEntTotal) ;

    edtDinheiroSaida.Text := FormatCurr('#,##0.00',fSaiDin) ;
    edtChequeSaida.Text := FormatCurr('#,##0.00',fSaiChe) ;
    edtTotSaida.Text := FormatCurr('#,##0.00',fSaiTotal) ;

    edtDinheiroSaldo.Text := FormatCurr('#,##0.00',fSaldoDin) ;
    edtSaldoFinal.Text := FormatCurr('#,##0.00',fSaldoFinal) ;
  finally
    Screen.Cursor := crDefault;
  end;

end;

procedure TFrm_CaixaFechamento.ReabrirCaixa;
begin
  inherited;
  if not Assigned(Frm_ReabreCaixa) then
    Frm_ReabreCaixa := TFrm_ReabreCaixa.Create(Self);
  try
    with Frm_ReabreCaixa do
    begin

     bAtualizar := False ;
     iCaixa :=  ds0ID.AsInteger ;
     ShowModal ;

     if bAtualizar then
       LoadMovimentos();
    end;
  finally
    FreeAndNil(Frm_ReabreCaixa);
  end;
end;

procedure TFrm_CaixaFechamento.Sair;
begin
  Close ;
end;

procedure TFrm_CaixaFechamento.tmrAtualizaTimer(Sender: TObject);
begin
  inherited;
  LoadMovimentos();
end;

function TFrm_CaixaFechamento.Validar: Boolean;
begin
  Result := True ;

  if (ds0.IsEmpty) then
  begin
    Result := False ;
    TMensagem.Atencao('Caixa inexistente.');
    Exit
  end;
  if (ds0ABERTO_FECHADO.AsString = 'F') then
  begin
    Result := False ;
    TMensagem.Atencao('Caixa já se encontra Fechado.');
    Exit
  end;
end;

end.

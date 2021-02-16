unit UFrm_ContasAReceber;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.ActnList,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,

  UPdr_Child,
  UEDPesquisa,

  Data.DB,
  Datasnap.DBClient,
  Vcl.Imaging.pngimage,
  U_DataCorrida;

type
  TGetCaixa = record
    ExisteCaixa: Boolean;
    IdCaixa: string;
  end;

type
  TFrm_ContasAReceber = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlRodape: TPanel;
    pnlFiltro: TPanel;
    rgSituacao: TRadioGroup;
    rgPesquisar: TRadioGroup;
    nbFiltros: TNotebook;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    edpCliente: TEdPesquisa;
    Label3: TLabel;
    edtDoc: TEdit;
    lblTitulo: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblVencidas: TLabel;
    lblaVencer: TLabel;
    lblPendente: TLabel;
    lblBaixadas: TLabel;
    lblTotal: TLabel;
    pnlAcoes: TPanel;
    spbtnBaixarDup: TSpeedButton;
    actlstMain: TActionList;
    actBaixaDuplicata: TAction;
    btnAlteraVencto: TSpeedButton;
    actAlteraVencto: TAction;
    spbtnFiltrar: TSpeedButton;
    actFiltrar: TAction;
    cdsGrid: TClientDataSet;
    cdsGridID: TIntegerField;
    cdsGridTIPO: TStringField;
    cdsGridORDEM: TStringField;
    cdsGridDT_VENC: TDateField;
    cdsGridDT_BAIXA: TDateField;
    cdsGridUSUARIO_BAIXA: TStringField;
    cdsGridCLIENTE: TStringField;
    dsGrid: TDataSource;
    spbtnSair: TSpeedButton;
    actSair: TAction;
    cdsGridUSUARIO_EMISSAO: TStringField;
    Label9: TLabel;
    btnImprimir: TSpeedButton;
    actImprimir: TAction;
    imgFechar: TImage;
    dbgrd1: TDBGrid;
    cdsGridVALOR: TFloatField;
    cdsGridEMISSAO: TDateField;
    procedure edpClientePesquisa(Sender: TObject; var Retorno: string);
    procedure rgPesquisarClick(Sender: TObject);
    procedure actBaixaDuplicataExecute(Sender: TObject);
    procedure actAlteraVenctoExecute(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure dbgrd1TitleClick(Column: TColumn);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actImprimirExecute(Sender: TObject);
    procedure imgFecharClick(Sender: TObject);
  private
    { Private declarations }
    procedure MontaSQL() ;
    procedure Totalizar() ;
    procedure InsereTabDel() ;
    procedure DeleteDup() ;
    procedure AddParciais() ;

    function GetIDCaixa() : TGetCaixa ;
  public
    { Public declarations }
    sFiltro : string ;
  end;

var
  Frm_ContasAReceber: TFrm_ContasAReceber;

implementation

uses
  UConsulta, UDM, UFrm_RetornoEdit,
  URel_ContasAReceber, UFrm_ContasaReceber_Baixa,
  u_Mensagem;

{$R *.dfm}

procedure TFrm_ContasAReceber.actBaixaDuplicataExecute(Sender: TObject);
var
  lIdCaixa: string;
begin
  inherited;
  if cdsGrid.IsEmpty then
    Exit ;

  if (not cdsGridDT_BAIXA.IsNull) then
  begin
    TMensagem.Informacao('Duplicata já foi baixada.') ;
    Exit ;
  end;

  //BaixarDup() ;

  {inserir o caixa se informado conta CAIXA PDV na tela de baixa}
//  with GetIDCaixa do
//  begin
//    if not ExisteCaixa then
//      lIdCaixa := 'null'
//    else
//      lIdCaixa := IdCaixa
//  end;

  if not Assigned(Frm_ContasaReceber_Baixa) then
    Frm_ContasaReceber_Baixa := TFrm_ContasaReceber_Baixa.Create(Self);
  try
    with Frm_ContasaReceber_Baixa do
    begin
      TitVenda := cdsGrid.FieldByName('id').AsInteger;
      TitEmissao := cdsGrid.FieldByName('emissao').AsDateTime;
      TitDuplicata := cdsGrid.FieldByName('ordem').AsString;
      TitVencto := cdsGrid.FieldByName('dt_venc').AsDateTime;
      TitValor := cdsGrid.FieldByName('valor').AsCurrency;
      TitCliente := cdsGrid.FieldByName('cliente').AsString;

      Usuario := DM.User;
      DataBaixa := Date;
      ValorBaixa := cdsGrid.FieldByName('valor').AsCurrency;
      IdCaixa := lIdCaixa;

      ShowModal;

      if Retorno = 'sucesso' then
      begin
        TMensagem.Informacao('Duplicata baixada com sucesso.');
        actFiltrarExecute(Self)
      end
      else if Retorno = 'cancelar' then
      begin
        //
      end
      else
        TMensagem.Erro('Não foi possivel baixar a duplicata.' + #13#10 + Retorno);

    end;
  finally
    FreeAndNil(Frm_ContasaReceber_Baixa);
  end;
end;

procedure TFrm_ContasAReceber.actAlteraVenctoExecute(Sender: TObject);
begin
  inherited;
  if (not cdsGridDT_BAIXA.IsNull) then
  begin
    TMensagem.Informacao('Duplicata com baixa. Data de vencto. não pode ser alterada.') ;
    Exit ;
  end;

  if not Assigned(Frm_RetornoEdit) then
    Frm_RetornoEdit := TFrm_RetornoEdit.Create(Self);
  try
    with Frm_RetornoEdit do
    begin
      lbl1.Caption := 'Informe a nova data de Vencimento';
      medt1.Visible := True;

      ShowModal ;

      if aRetorno <> 'exit' then
      begin
        try
          DM.ExecutarSQL(DM.BancoDados, 'update PDV_RECEBER a '+
                                        'set a.DT_VENC = '+QuotedStr(aRetorno)+
                                        ' where a.ID = '+ cdsGridID.AsString +
                                        ' and a.TIPO = '+ QuotedStr(cdsGridTIPO.AsString) +
                                        ' and a.ORDEM = '+QuotedStr(cdsGridORDEM.AsString) );
        except
          on e: Exception do
          begin
            TMensagem.Erro('Erro: ' + e.Message);
          end;
        end;
      end;

    end;
  finally
    FreeAndNil(Frm_RetornoEdit);
  end;

  actFiltrarExecute(Self);
end;

procedure TFrm_ContasAReceber.actFiltrarExecute(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    MontaSQL();
    if not cdsGrid.IsEmpty then
      cdsGrid.First;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrm_ContasAReceber.actImprimirExecute(Sender: TObject);
begin
  inherited;
  if cdsGrid.IsEmpty then
    Exit ;

  if not Assigned(Rel_ContasAReceber) then
    Rel_ContasAReceber := TRel_ContasAReceber.Create(Self);
  try
    with Rel_ContasAReceber do
    begin
      ds1.DataSet := cdsGrid;

      rlblNomeRelatorio.Caption := 'Contas a Receber';
      Relatorio.PrintDialog := False ;
      Relatorio.ShowProgress := False ;

      rlMemoParametros.Lines.Clear ;
      rlMemoParametros.Lines.Add('Situação da(s) Duplicata(s): ');
      rlMemoParametros.Lines.Add('  '+rgSituacao.Items[rgSituacao.ItemIndex]);
      rlMemoParametros.Lines.Add('Filtro:');
      rlMemoParametros.Lines.Add('  '+sFiltro) ;

      Executar ;
    end;
  finally
    FreeAndNil(Rel_ContasAReceber);
  end;
end;

procedure TFrm_ContasAReceber.actSairExecute(Sender: TObject);
begin
  inherited;
  Close ;
end;

procedure TFrm_ContasAReceber.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  {Efeito de linha selecionada}
  if Rect.Top = TStringGrid(dbgrd1).CellRect(0, TStringGrid(dbgrd1).Row).Top then
  begin
    dbgrd1.Canvas.FillRect(Rect);
    dbgrd1.Canvas.Font.Color := clWhite;
    dbgrd1.Canvas.Brush.Color := clHighlight;
    dbgrd1.DefaultDrawDataCell(Rect, Column.Field, State)
  end;
end;

procedure TFrm_ContasAReceber.dbgrd1TitleClick(Column: TColumn);
begin
  inherited;
  cdsGrid.IndexFieldNames := Column.FieldName ;
end;

procedure TFrm_ContasAReceber.InsereTabDel;
var
  txt: string;
begin
  txt := 'INSERT INTO DEL_PDV_RECEBER (ID, TIPO, FORMA_PAGTO, ORDEM, DT_VENC, VALOR, USUARIO_EMISSAO, USUARIO_EXCLUSAO) '+
         'VALUES ( '+
         cdsGridID.AsString + ','+
         QuotedStr(cdsGridTIPO.AsString) + ','+
         QuotedStr('CREDIARIO') + ','+
         QuotedStr(cdsGridORDEM.AsString) + ','+
         QuotedStr(FormatDateTime('dd.mm.yyyy',cdsGridDT_VENC.AsDateTime)) + ','+
         CurrToStr(cdsGridVALOR.AsCurrency) + ','+
         QuotedStr(cdsGridUSUARIO_EMISSAO.AsString) + ','+
         QuotedStr(DM.UsuarioDataHora) + ' )';
  try
    DM.ExecutarSQL(DM.BancoDados, txt);
  except
    on e: Exception do
    begin
      MessageDlg('Erro: '+e.Message,mtError,[mbOK],0) ;
    end;

  end;
end;

procedure TFrm_ContasAReceber.DeleteDup;
const
  SQL = 'delete from PDV_RECEBER a '+
        'where a.TIPO = ''0'' '+
        'and a.ID = %s '+
        'and a.ORDEM = %s';
begin
  try
    DM.ExecutarSQL(DM.BancoDados, Format(SQL,[cdsGridID.AsString,QuotedStr(cdsGridORDEM.AsString)]));
  except
    on e: Exception do
    begin
      MessageDlg('Erro: '+e.Message,mtError,[mbOK],0) ;
    end;
  end;
end;

procedure TFrm_ContasAReceber.edpClientePesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := IntToStr (Consulta.Cliente) ;
end;

procedure TFrm_ContasAReceber.FormCreate(Sender: TObject);
begin
  inherited;
  nbFiltros.PageIndex := 0 ;
  dtp1.Date := Date ;
  dtp2.Date := Date ;
end;

function TFrm_ContasAReceber.GetIDCaixa: TGetCaixa;
const
  SQL = 'select max(a.ID) IDCAIXA, a.ABERTO_FECHADO status ' +
        'from CAIXA a ' +
        'left outer join CAIXA_ABERT_FECH b on (b.ID_CAIXA = a.ID) ' +
        'where cast(b.DT_HORA_ABERT_FECH as date) = %s '+
        'group by 2';
begin
  Result.IdCaixa := EmptyStr ;
  Result.ExisteCaixa := False ;

  DM.dsConsulta.Close ;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[QuotedStr(FormatDateTime('dd.mm.yyyy',Now))])) ;

  if DM.dsConsulta.IsEmpty then
  begin
    TMensagem.Atencao('Necessário efetuar a abertura de caixa.') ;
    Exit ;
  end
  else if DM.dsConsulta.FieldByName('status').AsString = 'F' then
  begin
    TMensagem.Atencao('Caixa encontra-se Fechado.') ;
    Exit ;
  end;
  Result.ExisteCaixa := True ;
  Result.IdCaixa := DM.dsConsulta.FieldByName('IDCAIXA').AsString ;
end;

procedure TFrm_ContasAReceber.imgFecharClick(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TFrm_ContasAReceber.MontaSQL;
var
  txt: string;
  txtParcial: string;
  sCliente : string ;
begin
  txtParcial := '' ;

  txt := 'SELECT a.ID, a.TIPO, a.ORDEM, a.DT_VENC,'+
         'cast(a.VALOR as double precision)valor,'+
         'a.DT_BAIXA,a.USUARIO_BAIXA,'+
         'c.NOME_RAZAO cliente,a.USUARIO_EMISSAO,b.emissao '+
         'FROM PDV_MASTER b '+
         'left outer join PDV_RECEBER a on (a.TIPO = b.TIPO and a.ID = b.ID) '+
         'left outer join CLIENTE c on (c.CODIGO = b.ID_CLIENTE) '+
         'where a.FORMA_PAGTO = ''CREDIARIO'' ' ;
  case rgPesquisar.ItemIndex of
    0:
      begin
        txt := txt + ' and a.dt_venc between ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date)) + ' and ' +
                                                 QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));
        sFiltro := 'Vencimento: '+FormatDateTime('dd.mm.yyyy', dtp1.Date)+' a '+FormatDateTime('dd.mm.yyyy', dtp2.Date);
      end;
    1:
      begin
        txt := txt + ' and b.emissao between ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date)) + ' and ' +
                                                 QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));
        sFiltro := 'Emissão: '+FormatDateTime('dd.mm.yyyy', dtp1.Date)+' a '+FormatDateTime('dd.mm.yyyy', dtp2.Date);
      end;
    2:
      begin
        txt := txt + ' and a.dt_baixa between ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date)) + ' and ' +
                                                  QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));
        sFiltro := 'Baixada: '+FormatDateTime('dd.mm.yyyy', dtp1.Date)+' a '+FormatDateTime('dd.mm.yyyy', dtp2.Date);
      end;
    3:
      begin
        if edpCliente.Campo.Text = EmptyStr then
        begin
          MessageDlg('Informe o Cliente',mtInformation,[mbOK],0) ;
          edpCliente.Campo.SetFocus ;
          Abort ;
        end
        else
        begin
          txt := txt + ' and b.id_cliente = ' + edpCliente.Campo.Text;
          sFiltro := 'Cliente: '+edpCliente.Campo.Text;
        end;
      end;
    4:
     begin
       if edtDoc.Text = EmptyStr then
      begin
          MessageDlg('Informe o nº da Venda/Docto.',mtInformation,[mbOK],0) ;
          edtDoc.SetFocus ;
          Abort ;
        end
        else
        begin
          txt := txt + ' and b.tipo = ''0'' ' +
                       ' and b.ID = '+ edtDoc.Text ;
          sFiltro := 'Venda Nº: '+edtDoc.Text ;
        end;
     end;
  end;

  case rgSituacao.ItemIndex of
    0:
      begin
        txt := txt + ' and a.dt_baixa is null ';
        txtParcial := txtParcial + ' and b.dt_baixa is null ';
      end;
    1:
      begin
        txt := txt + ' and a.dt_baixa is not null ';
        txtParcial := txtParcial + ' and b.dt_baixa is not null ';
      end;
  end;

  cdsGrid.IndexFieldNames := 'ordem' ;
  cdsGrid.Close ;
  cdsGrid.Data := DM.LerDataSet(txt) ;

  //Busca Parciais
  if rgSituacao.ItemIndex <> 0 then
    AddParciais();

//  if not cdsGrid.IsEmpty then
//  begin
//    try
//      cdsGrid.DisableControls;
//      cdsGrid.First;
//      while not cdsGrid.Eof do
//      begin
//
//        sCliente := cdsGridCLIENTE.AsString;
//        DM.dsConsulta.Close;
//        DM.dsConsulta.Data := DM.LerDataSet('SELECT b.* ' +
//                                            'FROM PDV_RECEBER_PARCIAL b ' +
//                                            'where b.ID = ' + cdsGridID.AsString +
//                                            'and b.TIPO = ' + QuotedStr(cdsGridTIPO.AsString) +
//                                            txtParcial);
//        if not DM.dsConsulta.IsEmpty then
//        begin
//          DM.dsConsulta.First;
//          while not DM.dsConsulta.Eof do
//          begin
//            cdsGrid.Append;
//            cdsGridID.AsInteger := DM.dsConsulta.FieldByName('ID').AsInteger;
//            cdsGridTIPO.AsString := DM.dsConsulta.FieldByName('TIPO').AsString;
//            cdsGridORDEM.AsString := DM.dsConsulta.FieldByName('ORDEM').AsString;
//            cdsGridDT_VENC.AsDateTime := DM.dsConsulta.FieldByName('DT_VENC').AsDateTime;
//            cdsGridDT_BAIXA.AsDateTime := DM.dsConsulta.FieldByName('DT_BAIXA').AsDateTime;
//            cdsGridUSUARIO_BAIXA.AsString := DM.dsConsulta.FieldByName('USUARIO_BAIXA').AsString;
//            cdsGridCLIENTE.AsString := sCliente;
//            cdsGridUSUARIO_EMISSAO.AsString := DM.dsConsulta.FieldByName('USUARIO_EMISSAO').AsString;
//            cdsGridVALOR.AsFloat := DM.dsConsulta.FieldByName('VALOR').AsFloat;
//            cdsGrid.Post;
//            DM.dsConsulta.Next;
//          end;
//        end;
//        cdsGrid.Next;
//      end;
//    finally
//      cdsGrid.EnableControls;
//    end;
//  end;

  Label9.Visible := cdsGrid.IsEmpty;

  Totalizar();
end;

procedure TFrm_ContasAReceber.AddParciais;
var
  txt: string;
  sWhere : string ;
begin
  txt :=  'SELECT a.ID, a.TIPO, a.ORDEM, a.DT_VENC,'+
          'cast(a.VALOR as numeric(10,2))valor,'+
          'a.DT_BAIXA,a.USUARIO_BAIXA,'+
          'c.NOME_RAZAO cliente,a.USUARIO_EMISSAO,b.emissao '+
          'FROM PDV_RECEBER_PARCIAL a '+
          'left outer join PDV_MASTER b on (b.ID = a.ID and b.TIPO = a.TIPO) '+
          'left outer join CLIENTE c on (c.CODIGO = b.ID_CLIENTE) ';

  sWhere := ' where ';

  case rgPesquisar.ItemIndex of
    0:
      begin
        txt := txt + sWhere + ' a.dt_venc between ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date)) + ' and ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));
        sWhere := ' and ';
      end;
    1:
      begin
        txt := txt + sWhere + ' b.emissao between ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date)) + ' and ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));
        sWhere := ' and ';
      end;
    2:
      begin
        txt := txt + sWhere + ' a.dt_baixa between ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date)) + ' and ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));
        sWhere := ' and ';
      end;
    3:
      begin
        txt := txt + sWhere + 'b.id_cliente = ' + edpCliente.Campo.Text;
        sWhere := ' and ';
      end;
    4:
      begin
        txt := txt + sWhere + 'b.tipo = ''0'' ' + ' and b.ID = ' + edtDoc.Text;
      end;
  end;

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(txt);

  if not DM.dsConsulta.IsEmpty then
  begin
    DM.dsConsulta.First;
    while not DM.dsConsulta.Eof do
    begin
      cdsGrid.Append;
      cdsGridID.AsInteger := DM.dsConsulta.FieldByName('ID').AsInteger;
      cdsGridTIPO.AsString := DM.dsConsulta.FieldByName('TIPO').AsString;
      cdsGridORDEM.AsString := DM.dsConsulta.FieldByName('ORDEM').AsString;
      cdsGridDT_VENC.AsDateTime := DM.dsConsulta.FieldByName('DT_VENC').AsDateTime;
      cdsGridDT_BAIXA.AsDateTime := DM.dsConsulta.FieldByName('DT_BAIXA').AsDateTime;
      cdsGridUSUARIO_BAIXA.AsString := DM.dsConsulta.FieldByName('USUARIO_BAIXA').AsString;
      cdsGridCLIENTE.AsString := DM.dsConsulta.FieldByName('CLIENTE').AsString;
      cdsGridUSUARIO_EMISSAO.AsString := DM.dsConsulta.FieldByName('USUARIO_EMISSAO').AsString;
      cdsGridVALOR.AsFloat := DM.dsConsulta.FieldByName('VALOR').AsFloat;
      cdsGrid.FieldByName('emissao').AsDateTime := DM.dsConsulta.FieldByName('EMISSAO').AsDateTime;
      cdsGrid.Post;
      DM.dsConsulta.Next;
    end;
  end;

end;

procedure TFrm_ContasAReceber.rgPesquisarClick(Sender: TObject);
begin
  inherited;
  case rgPesquisar.ItemIndex of
    0, 1:
      nbFiltros.PageIndex := 0;
    2: begin
         nbFiltros.PageIndex := 0;
         rgSituacao.ItemIndex := 1;
    end;
    3:
      nbFiltros.PageIndex := 1;
    4:
      nbFiltros.PageIndex := 2;
  end;
end;

procedure TFrm_ContasAReceber.Totalizar;
var
  aVencidas, aVencer, aPendente, aBaixadas, aTotal: Extended;
begin
  aVencidas := 0;
  aVencer := 0;
  aPendente := 0;
  aBaixadas := 0;
  aTotal := 0;

  try
    cdsGrid.DisableControls;
    cdsGrid.First;
    while not cdsGrid.Eof do
    begin
      if not cdsGridDT_BAIXA.IsNull then
        aBaixadas := aBaixadas + cdsGridVALOR.AsFloat
      else
      begin
        if cdsGridDT_VENC.AsDateTime < Date then
          aVencidas := aVencidas + cdsGridVALOR.AsFloat
        else
          aVencer := aVencer + cdsGridVALOR.AsFloat;
      end;
      cdsGrid.Next;
    end;

    lblVencidas.Caption := FormatFloat('#,##0.00', aVencidas);
    lblaVencer.Caption  := FormatFloat('#,##0.00', aVencer);
    lblPendente.Caption := FormatFloat('#,##0.00', aVencidas + aVencer);
    lblBaixadas.Caption := FormatFloat('#,##0.00', aBaixadas);
    lblTotal.Caption    := FormatFloat('#,##0.00', aVencidas + aVencer + aBaixadas);
  finally
    cdsGrid.EnableControls;
  end;
end;

end.

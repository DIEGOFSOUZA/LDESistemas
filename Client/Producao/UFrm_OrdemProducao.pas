unit UFrm_OrdemProducao;
                        {Ajustar na gravação, erro de Violação de chave unique key tabela Lote(campo lote)
                         quando inserido varios itens apos a 1ª gravacao

                         **Tipos de Lote(Inicio Nomenclatura)**
                         LT - Lote
                         AC - Acerto(Tela AcertoEstoque)
                         ZR - Zerar (Tela AcertoEstoque)                               }
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

  Vcl.DBCtrls,
  Vcl.ActnList,
  Vcl.ComCtrls,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Menus,

  UPdr_Cad2,


  Data.DB,
  Datasnap.DBClient,

  PngSpeedButton,


  UEDPesquisa, Vcl.Imaging.pngimage,
  U_DataCorrida;
type
  TFrm_OrdemProducao = class(TPdr_Cad2)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    lblStatus: TLabel;
    Label7: TLabel;
    mmo1: TMemo;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    dtpEmissao: TDateTimePicker;
    dtpEntrega: TDateTimePicker;
    dtpValidade: TDateTimePicker;
    dtpEstimativa: TDateTimePicker;
    edtLote: TEdit;
    Panel5: TPanel;
    PngAddProduto: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    edpProduto: TEdPesquisa;
    Label8: TLabel;
    edtQtde: TEdit;
    cdsMatPrima: TClientDataSet;
    cdsMatPrimaID: TIntegerField;
    cdsMatPrimaID_LOTE: TStringField;
    cdsMatPrimaID_MATPRIMA: TIntegerField;
    cdsItens: TClientDataSet;
    dsItens: TDataSource;
    cdsItensID: TIntegerField;
    cdsItensID_LOTE: TStringField;
    cdsItensCODPRO: TIntegerField;
    cdsItensNOME: TStringField;
    cdsID: TIntegerField;
    cdsLOTE: TStringField;
    cdsEMISSAO: TDateField;
    cdsVALIDADE: TDateField;
    cdsENTREGA: TDateField;
    cdsESTIMATIVA_PRONTO: TSQLTimeStampField;
    cdsOBS: TStringField;
    cdsSTATUS: TStringField;
    chkGeraMatPrima: TCheckBox;
    cdsGERA_MATPRIMA: TStringField;
    cdsUSUARIO: TStringField;
    lblInfo: TLabel;
    pnlEsquerda: TPanel;
    actFinalizarLote: TAction;
    actListar: TAction;
    cdsItensCOD_UM: TIntegerField;
    cdsItensUM: TStringField;
    cdsItensQTDE: TFMTBCDField;
    cdsItensQTDE_FECHADA: TFMTBCDField;
    cdsMatPrimaQTDE: TFMTBCDField;
    cdsMatPrimaQTDE_FECHADA: TFMTBCDField;
    pnlFechaLote: TPanel;
    imgFechaLote: TImage;
    lblFechaLote: TLabel;
    pnlRelatorio: TPanel;
    imgRelatorio: TImage;
    lblRelatorio: TLabel;
    cdsLOTE_ACERTO: TStringField;
    cdsItensENTSAI: TStringField;
    cdsItensDESCRI_ITEM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure edpProdutoPesquisa(Sender: TObject; var Retorno: string);
    procedure PngAddProdutoClick(Sender: TObject);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure cdsItensAfterInsert(DataSet: TDataSet);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtLoteChange(Sender: TObject);
    procedure cdsItensBeforeDelete(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure actFinalizarLoteExecute(Sender: TObject);
    procedure actListarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure MontaSql(pCodigo: integer;pLote : string);
    procedure Iniciar() ;
    procedure LimpaCamposItens() ;
    function  Validar() : Boolean ;
    procedure GravaMatPrima(iCodPro : integer; eQtde : Extended) ;
    procedure DeletaMatPrima(iCodPro : integer; eQtde : Extended) ;
    procedure CarregaCampos() ;
    function ValidarInsertItens() : Boolean;
    procedure ZerarCds;
    function EscolhaUM(pCodPro : string): integer;
  public
    { Public declarations }
    aUnidade : string ;

    procedure Novo() ; override ;
    procedure Gravar() ; override ;
    procedure Excluir() ; override ;
    procedure localizar() ; override ;
    procedure Editar() ; override ;
  end;
const SQL_CONVERSAO = 'select coalesce(a.CONV_QTDE,1) qtde_conversao '+
                      'from PRODUTO a '+
                      'where a.CODIGO = %s' ;

var
  Frm_OrdemProducao: TFrm_OrdemProducao;

implementation

{$R *.dfm}

uses UDM, UConsulta, UFuncoes, URel_ListaMatPrimaLote,
      UFrm_EscolhaUM, u_Mensagem;

procedure TFrm_OrdemProducao.actFinalizarLoteExecute(Sender: TObject);
const
  SQL = 'SELECT cast(iif(a.COD_UM = b.CONV_UNIDADE,(a.QTDE*b.CONV_QTDE),a.QTDE)as numeric(15,3)) qtde_a_fechar '+
        'FROM LOTE_ITENS a '+
        'left outer join PRODUTO b on (b.CODIGO = a.CODPRO) '+
        'where a.ID = %s';
begin
  inherited;
  if cdsItens.IsEmpty then
    Exit;

  if cdsSTATUS.AsString = 'FINALIZADO'  then
  begin
    TMensagem.Atencao('Lote já Finalizado.') ;
    Exit ;
  end;

  if (cds.State in [dsEdit,dsInsert]) then
  begin
   TMensagem.Atencao('Necessário Gravar o Lote.') ;
   Exit ;
  end;

  if not (cds.State in [dsEdit]) then
    Editar;

  cdsSTATUS.AsString := 'FINALIZADO' ;

  try
    cdsItens.DisableControls;

    cdsItens.First;
    while not cdsItens.Eof do
    begin
      cdsItens.Edit;
      cdsItensQTDE_FECHADA.AsFloat := DM.GetFloat(Format(SQL,[cdsItensID.AsString]),'qtde_a_fechar') ;
      cdsItens.Post;
      cdsItens.Next;
    end;

  finally
    cdsItens.EnableControls;
  end;

  Gravar ;
end;

procedure TFrm_OrdemProducao.actListarExecute(Sender: TObject);
begin
  inherited;
  if ((cdsItens.IsEmpty) or (edtLote.Text = EmptyStr)) then
    Exit;

  if (cds.State in [dsEdit, dsInsert]) then
  begin
    TMensagem.Atencao('Necessário gravar o Lote.');
    Exit;
  end;

  if not Assigned(Rel_ListaMatPrimaLote) then
    Rel_ListaMatPrimaLote := TRel_ListaMatPrimaLote.Create(Self);
  try
    with Rel_ListaMatPrimaLote do
    begin
      aLote := edtLote.Text;
//      aLote := 'LT2310191427' ;
      Executar;
    end;
  finally
    FreeAndNil(Rel_ListaMatPrimaLote);
  end;
end;

procedure TFrm_OrdemProducao.CarregaCampos;
begin
  edtLote.Text           := cdsLOTE.AsString ;
  dtpEmissao.Date        := cdsEMISSAO.AsDateTime ;
  dtpEmissao.Date        := cdsENTREGA.AsDateTime ;
  dtpEstimativa.DateTime := cdsESTIMATIVA_PRONTO.AsDateTime ;
  dtpValidade.Date       := cdsVALIDADE.AsDateTime ;
  mmo1.Lines.Clear ;
  mmo1.Lines.Text         := cdsOBS.AsString ;
  lblStatus.Caption       := cdsSTATUS.AsString ;
  chkGeraMatPrima.Checked := cdsGERA_MATPRIMA.AsString = 'S' ;

  Label6.Visible    := True ;
  lblStatus.Visible := True ;

  if cdsSTATUS.AsString = 'FINALIZADO' then
  begin
    lblStatus.Font.Color := clBlue ;
    lblStatus.Caption    := 'FINALIZADO' ;
    panel5.enabled := False ;
  end
  else
  begin
    lblStatus.Font.Color := clRed ;
    lblStatus.Caption    := 'PENDENTE' ;
    panel5.enabled := True ;
  end;
end;

procedure TFrm_OrdemProducao.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsID.AsInteger := 0 ;
  cdsEMISSAO.AsDateTime := Date ;
  cdsSTATUS.AsString    := 'PENDENTE' ;
  cdsUSUARIO.AsString   := DM.UsuarioDataHora ;
  cds.FieldByName('LOTE_ACERTO').AsString := 'N';

  lblStatus.Font.Color := clRed ;
  lblStatus.Caption    := 'PENDENTE' ;
end;

procedure TFrm_OrdemProducao.cdsItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsItensID.AsInteger         := 0 ;
  cdsItensQTDE_FECHADA.AsFloat := 0 ;
  cdsItensID_LOTE.AsString     := edtLote.Text ;
  cdsItens.FieldByName('ENTSAI').AsString := 'ENTRADA';
end;

procedure TFrm_OrdemProducao.cdsItensBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if chkGeraMatPrima.Checked then
    DeletaMatPrima(cdsItensCODPRO.AsInteger,cdsItensQTDE.AsFloat) ;
end;

procedure TFrm_OrdemProducao.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
//  if cdsItens.IsEmpty then
//    Exit ;
//
//  if not (cds.State in [dsEdit]) then
//    Editar ;
//
//  cdsItens.Edit ;
//  cdsItensQTDE_FECHADA.AsFloat := cdsItensQTDE.AsFloat ;
//  cdsItens.Post ;
end;

procedure TFrm_OrdemProducao.DeletaMatPrima(iCodPro: integer; eQtde: Extended);
const
     SQL = 'select b.ID_MATPRIMA,b.QTDE '+
           'from PRODUTO_COMPOSICAO b '+
           'where b.ID_PRODUTO = %s' ;
var
  Temp: TClientDataSet;
begin
  try
    Temp := TClientDataSet.Create(nil);
    Temp.Data := DM.LerDataSet(Format(SQL, [IntToStr(iCodPro)])); {Busca Ficha Tecnica do Produto(composicao)}
    if Temp.IsEmpty then
      Exit ;

    cdsMatPrima.IndexFieldNames := 'ID_MATPRIMA' ;
//    cdsMatPrima.SaveToFile('d:\cds\MatPrima.cds',dfBinary);
    Temp.First;
    while not Temp.Eof do
    begin
      cdsMatPrima.Locate('ID_MATPRIMA', Temp.FieldByName('ID_MATPRIMA').AsInteger, []);
      if ( cdsMatPrimaQTDE.AsFloat <= (Temp.FieldByName('QTDE').AsFloat * eQtde) ) then
        cdsMatPrima.Delete
      else
      begin
        cdsMatPrima.Edit;
        cdsMatPrimaQTDE.AsFloat         := cdsMatPrimaQTDE.AsFloat - (Temp.FieldByName('QTDE').AsFloat * eQtde);
        cdsMatPrimaQTDE_FECHADA.AsFloat := cdsMatPrimaQTDE.AsFloat ;
        cdsMatPrima.Post;
      end;
      Temp.Next;
    end;

//    cdsItens.SaveToFile('d:\cds\LoteItensDel.cds',dfBinary);
//    cdsMatPrima.SaveToFile('d:\cds\MatPrimaDel.cds',dfBinary);
  finally
    FreeAndNil(Temp);
  end;
end;

procedure TFrm_OrdemProducao.Editar;
begin
  inherited;

end;

procedure TFrm_OrdemProducao.ZerarCds;
begin
  cds.Close;
  cds.CreateDataSet;
  cdsItens.Close;
  cdsItens.CreateDataSet;
  cdsMatPrima.Close;
  cdsMatPrima.CreateDataSet;
end;

procedure TFrm_OrdemProducao.GravaMatPrima(iCodPro: integer; eQtde: Extended);
const
     SQL = 'select b.ID_MATPRIMA,b.QTDE '+
           'from PRODUTO_COMPOSICAO b '+
           'where b.ID_PRODUTO = %s' ;
var
  Temp: TClientDataSet;
begin
  try
    {Busca Ficha Tecnica do Produto(composicao)}
    Temp := TClientDataSet.Create(nil);
    Temp.Data := DM.LerDataSet(Format(SQL, [IntToStr(iCodPro)]));
    if Temp.IsEmpty then
      Exit ;

    Temp.First;
    while not Temp.Eof do
    begin
      if not cdsMatPrima.Locate('ID_MATPRIMA', Temp.FieldByName('ID_MATPRIMA').AsInteger, []) then
      begin
        cdsMatPrima.Append;
        cdsMatPrimaID.AsInteger          := 0;
        cdsMatPrimaID_LOTE.AsString      := edtLote.Text;
        cdsMatPrimaID_MATPRIMA.AsInteger := Temp.FieldByName('ID_MATPRIMA').AsInteger;
        cdsMatPrimaQTDE.AsFloat          := Temp.FieldByName('QTDE').AsFloat * eQtde ;
      end
      else
      begin
        cdsMatPrima.Edit;
        cdsMatPrimaQTDE.AsFloat := cdsMatPrimaQTDE.AsFloat + (Temp.FieldByName('QTDE').AsFloat * eQtde);
      end;
      cdsMatPrimaQTDE_FECHADA.AsFloat := cdsMatPrimaQTDE.AsFloat ;
      cdsMatPrima.Post;
      Temp.Next;
    end;

//    cdsItens.SaveToFile('d:\cds\LoteItens.cds',dfBinary);
//    cdsMatPrima.SaveToFile('d:\cds\MatPrima.cds',dfBinary);
  finally
    FreeAndNil(Temp);
  end;
end;

procedure TFrm_OrdemProducao.edpProdutoPesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoProduto;
begin
  inherited;
  if chkGeraMatPrima.Checked then
  begin
    aRet := Consulta.Produto(QuotedStr('PA'),'Consulta de Produtos');
  end
  else
    aRet := Consulta.Produto(EmptyStr,'Consulta de Produtos/Matéria-Prima');
  if aRet.iCodigo > 0 then
  begin
    Retorno := IntToStr(aRet.iCodigo);
    EscolhaUM(Retorno) ;
    edtQtde.SetFocus;
  end;
end;

function TFrm_OrdemProducao.EscolhaUM(pCodPro : string): integer;
const
      SQL = 'select coalesce(a.CONV_QTDE,0) conv_qtde '+
            'from produto a '+
            'where a.CODIGO = %s' ;

      SQL2 = 'select a.COD_UNIDADE '+
             'from produto a '+
             'where a.CODIGO = %s' ;
begin
  begin
    if not Assigned(Frm_EscolhaUM) then
      Frm_EscolhaUM := TFrm_EscolhaUM.Create(Self);
    try
      with Frm_EscolhaUM do
      begin
        aCodPro := pCodPro;
        aQTDE := 0;
        RadioGroup1.Items.Clear;
        MontaSql();

        if DM.GetInteger(Format(SQL, [pCodPro]), 'conv_qtde') > 1 then
        begin
          ShowModal;

//          Result := aRetCodUnidade;
          cdsItensCOD_UM.AsInteger := aRetCodUnidade;
          cdsItensUM.AsString := aRetUnidade;
        end
        else
        begin
//          Result := Frm_EscolhaUM.RadioGroup1.Items[RadioGroup1.ItemIndex] ;
          cdsItensCOD_UM.AsInteger := aCodUM1;
          cdsItensUM.AsString := Frm_EscolhaUM.RadioGroup1.Items[RadioGroup1.ItemIndex];
        end;
      end;
    finally
      FreeAndNil(Frm_EscolhaUM);
    end;
  end
end;

procedure TFrm_OrdemProducao.edtLoteChange(Sender: TObject);
begin
  inherited;
  Panel3.Enabled := Trim(edtLote.Text) <> '' ;
end;

procedure TFrm_OrdemProducao.edtQtdeKeyPress(Sender: TObject; var Key: Char);
var
  aValor: Extended;
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula

  if Key = #13 then
  begin
    begin
      inherited;
      if not ValidarInsertItens then
        Abort;

      if TryStrToFloat(edtQtde.Text, aValor) then
        if StrToFloat(edtQtde.Text) > 0 then
        begin
          cdsItensCODPRO.AsInteger := StrToInt(edpProduto.Campo.Text);
          cdsItensNOME.AsString := edpProduto.Mostrar.Text;
          cdsItensQTDE.AsFloat := StrToFloat(edtQtde.Text);
          cdsItensID_LOTE.AsString := edtLote.Text;
          cdsItensDESCRI_ITEM.AsString := edpProduto.Mostrar.Text;
          cdsItens.Post;

          if chkGeraMatPrima.Checked then
            GravaMatPrima(cdsItensCODPRO.AsInteger, cdsItensQTDE.AsFloat);

          LimpaCamposItens;
        end;
    end;
    edpProduto.Campo.Enabled := False;
    edtQtde.Enabled := False;
  end;
end;

procedure TFrm_OrdemProducao.Excluir;
begin
  if cds.IsEmpty then
  begin
    TMensagem.Informacao('Não existe registro para excluir...');
    Exit;
  end;

  if not (cds.State in [dsEdit, dsInsert]) then
  begin
    if TMensagem.Pergunta('Confirma a exclusão ?') then
    begin
      DM.ExecutarSQL(DM.BancoDados, 'delete from LOTE a where a.ID = ' + cdsID.AsString);
      cds.Delete;
      ZerarCds ;
      Iniciar ;
    end;
  end;
//  inherited;
end;

procedure TFrm_OrdemProducao.FormCreate(Sender: TObject);
begin
  inherited;
  ZerarCds;

  Iniciar ;
end;

procedure TFrm_OrdemProducao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 //Apertou ESC
  if Key = Vk_Escape then
    if cdsItens.State in [dsInsert] then
    begin
      cdsItens.Cancel;
      LimpaCamposItens;
      edpProduto.Campo.Enabled := False;
      edtQtde.Enabled := False;
    end;
end;

procedure TFrm_OrdemProducao.Gravar;
var
  aLote, aLoteItens, aMatPrima, aRetorno: OleVariant;
begin
  if not Validar then
    Exit ;

  if not (cds.State in [dsInsert,dsEdit]) then
    cds.Edit ;

  cdsLOTE.AsString                := edtLote.Text ;
  cdsVALIDADE.AsDateTime          := dtpValidade.Date ;
  cdsENTREGA.AsDateTime           := dtpEntrega.Date ;
  cdsESTIMATIVA_PRONTO.AsDateTime := dtpEstimativa.DateTime ;
  cdsOBS.AsString                 := mmo1.Lines.Text ;
//  cdsSTATUS.AsString := IfThen(cdsItensTOT_DIFERENCA.Value = 0,'FINALIZADO','PENDENTE') ;


  if chkGeraMatPrima.Checked then
    cdsGERA_MATPRIMA.AsString := 'S'
  else
    cdsGERA_MATPRIMA.AsString := 'N' ;

  inherited;

  aLote := null;
  aLoteItens := null;
  aMatPrima := null;

  if cds.ChangeCount > 0 then
    aLote := cds.Delta;
  if cdsItens.ChangeCount > 0 then
    aLoteItens := cdsItens.Delta;
  if cdsMatPrima.ChangeCount > 0 then
    aMatPrima := cdsMatPrima.Delta;

  aRetorno := DM.SMCadastroClient.setOrdemProducao(DM.BancoDados, cdsID.AsInteger, cdsItensID_LOTE.AsString,
                                                     VarArrayOf([aLote, aLoteItens, aMatPrima]));

  cds.Close;
  cdsItens.Close;
  cdsMatPrima.Close ;

  cds.Data         := aRetorno[0];
  cdsItens.Data    := aRetorno[1];
  cdsMatPrima.Data := aRetorno[2] ;

  cdsID.AsInteger ;

  if cdsSTATUS.AsString = 'FINALIZADO' then
  begin
    lblStatus.Font.Color := clBlue ;
    lblStatus.Caption := 'FINALIZADO' ;
  end
  else
  begin
    lblStatus.Font.Color := clRed ;
    lblStatus.Caption := 'PENDENTE' ;
  end;
end;

procedure TFrm_OrdemProducao.Iniciar;
begin
  edtLote.Text := EmptyStr ;
  mmo1.Lines.Clear ;
  dtpEmissao.Date := Date ;
  dtpEntrega.Date := Date ;
  dtpValidade.Date := Date ;
  dtpEstimativa.Date := Now ;
  edtQtde.Text := '0' ;
  chkGeraMatPrima.Checked := True ;

  Label6.Visible := False ;
  lblStatus.Visible := False ;
end;

procedure TFrm_OrdemProducao.LimpaCamposItens;
begin
  edpProduto.Campo.Text   := EmptyStr;
  edpProduto.Mostrar.Text := EmptyStr;
  edtQtde.Text            := EmptyStr ;
end;

procedure TFrm_OrdemProducao.localizar;
var
  aRetLote: TRetornoLote;
begin
  inherited;
  aRetLote := Consulta.Lote('N');

  if aRetLote.ID > 0 then
    MontaSql(aRetLote.ID,aRetLote.LOTE);
end;

procedure TFrm_OrdemProducao.MontaSql(pCodigo: integer;pLote : string);
var
  tmp: OleVariant;
begin
  if pCodigo = 0 then
    Exit;

  tmp              := DM.SMCadastroClient.getOrdemProducao(DM.BancoDados, pCodigo,pLote);
  cds.Data         := tmp[0];
  cdsItens.Data    := tmp[1];
  cdsMatPrima.Data := tmp[2] ;

  CarregaCampos ;
end;

procedure TFrm_OrdemProducao.Novo;
begin
  inherited;
  Iniciar ;

  edtLote.Text := 'LT'+FormatDateTime('ddmmyyhhmm',Now) ;

  Label6.Visible := True ;
  lblStatus.Visible := True ;
  lblStatus.Font.Color := clRed ;
  lblStatus.Caption := 'PENDENTE' ;
  Panel5.Enabled := True ;

  cdsItens.Close ;
  cdsItens.CreateDataSet ;

  cdsMatPrima.Close ;
  cdsMatPrima.CreateDataSet ;

  edtLote.SetFocus ;
end;

procedure TFrm_OrdemProducao.PngAddProdutoClick(Sender: TObject);
begin
  inherited;
  if not(cds.State in [dsInsert,dsEdit]) then
    Editar ;

  cdsItens.Append ;

  edpProduto.Campo.Enabled := True ;
  edtQtde.Enabled := True ;
  edpProduto.Campo.SetFocus ;
  keybd_event(VK_F3, 0, 0, 0);
end;

procedure TFrm_OrdemProducao.PngSpeedButton1Click(Sender: TObject);
const
    SQL = 'delete FROM LOTE_ITENS a '+
          'where a.ID = %s' ;
begin
  inherited;
  if cdsItens.IsEmpty then
  begin
    TMensagem.Informacao('Não há registro para ser excluso.');
    Exit;
  end;

  if TMensagem.Pergunta('Confirma a exclusão no Lote do produto: ' + cdsItensNOME.AsString + ' ?') then
  try
    cdsItens.Delete;
    Gravar;
    TMensagem.Informacao('Exclusão efetuada com sucesso.');
  except
    TMensagem.Erro('Erro: Exclusão não efetuada.');
  end;
end;


function TFrm_OrdemProducao.Validar: Boolean;
begin
  Result := True ;

  if edtLote.Text = EmptyStr then
  begin
    Result := False ;
    TMensagem.Atencao('Campo de preenchimento obrigatório: Lote') ;
    Exit ;
  end;

  if not ValidaData(DateToStr(dtpEmissao.Date)) then
  begin
    Result := False ;
    Exit ;
  end;

  if not ValidaData(DateToStr(dtpEntrega.Date)) then
  begin
    Result := False ;
    Exit ;
  end;

  if not ValidaData(DateToStr(dtpValidade.Date)) then
  begin
    Result := False ;
    Exit ;
  end;

end;

function TFrm_OrdemProducao.ValidarInsertItens: Boolean;
const
  SQL1 = 'select b.ID_MATPRIMA,b.QTDE ' + 'from PRODUTO_COMPOSICAO b ' + 'where b.ID_PRODUTO = %s';
  SQL2 = 'select p.situacao from produto p where p.codigo = %s';
var
  Temp: TClientDataSet;
begin
  Result := True ;
  if edtQtde.Text = EmptyStr then
  begin
    Result := False ;
    TMensagem.Atencao('Informe a quantidade.');
    Exit;
  end;

  if edpProduto.Campo.Text = EmptyStr then
  begin
    Result := False ;
    TMensagem.Atencao('Informe o Produto');
    edpProduto.Campo.SetFocus;
    Exit;
  end;

  if edtLote.Text = EmptyStr then
  begin
    Result := False ;
    TMensagem.Atencao('Informe o Lote');
    edtLote.SetFocus;
    Exit;
  end;

  if (DM.GetString(Format(SQL2,[edpProduto.Campo.Text]),'situacao')='INATIVO') then
  begin
    Result := False;
    TMensagem.Atencao('Produto Inativo. Verifique o cadastro.') ;
    Exit;
  end;

  if chkGeraMatPrima.Checked then
  try
    Temp := TClientDataSet.Create(nil);
    Temp.Data := DM.LerDataSet(Format(SQL1, [edpProduto.Campo.Text])); {Busca Ficha Tecnica do Produto(composicao)}
    if Temp.IsEmpty then
    begin
      Result := False;
      TMensagem.Atencao('Composição do Produto não encontrada.' + #13#10 + 'Por favor adeque o Produto para devida saida da Matéria-Prima.');
    end;
  finally
    FreeAndNil(Temp);
  end;
end;

end.

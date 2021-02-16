unit UFrm_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls,
  UDBPesquisa, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.DBGrids, UEDPesquisa, Vcl.Menus, Vcl.Imaging.pngimage, Vcl.Grids;

type
  TFrm_Produto = class(TPdr_Cad)
    cdsComposicaoProduto: TClientDataSet;
    dsComposicaoProduto: TDataSource;
    cdsComposicaoProdutoID: TIntegerField;
    cdsComposicaoProdutoID_PRODUTO: TIntegerField;
    cdsComposicaoProdutoID_MATPRIMA: TIntegerField;
    cdsComposicaoProdutoQTDE: TFMTBCDField;
    cdsComposicaoProdutoMATERIAPRIMA: TStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBPesquisa1: TDBPesquisa;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cdsCODIGO: TIntegerField;
    cdsNOME: TStringField;
    cdsCOD_UNIDADE: TIntegerField;
    cdsEAN_CODBARRA: TStringField;
    cdsCOD_FABRICANTE: TIntegerField;
    cdsCOD_GRUPO: TIntegerField;
    cdsCOD_SUBGRUPO: TIntegerField;
    cdsDESCRICAO: TStringField;
    cdsCOD_NCM: TStringField;
    cdsTIPO_PRODUTO: TStringField;
    cdsDESCRI_UNIDADE: TStringField;
    cdsGRUPO: TStringField;
    cdsSUBGRUPO: TStringField;
    cdsDESCRI_NCM: TStringField;
    imgTrilha: TImage;
    lblTrilhar: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    actTrilhar: TAction;
    cdsCONV_UNIDADE: TIntegerField;
    tsConversao: TTabSheet;
    pnlFundoTab: TPanel;
    lblTitConversao: TLabel;
    pnlTopTab: TPanel;
    DBPesquisa2: TDBPesquisa;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    cdsCONV_DESCRIUNIDADE: TStringField;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    cdsPRECO_VENDA: TCurrencyField;
    cdsQTDE_ESTOQUE: TFMTBCDField;
    cdsPRECO_CUSTO: TCurrencyField;
    cdsPESO_BRUTO: TFMTBCDField;
    cdsPESO_LIQUIDO: TFMTBCDField;
    cdsQTDE_MINIMA: TFMTBCDField;
    cdsCONV_QTDE: TFMTBCDField;
    cdsCONV_PRECO: TCurrencyField;
    cdsESTIMA_PRODUCAO: TFMTBCDField;
    pnlLucro: TPanel;
    lblLucro: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    pnl1: TPanel;
    PngAddProduto: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    DBGrid1: TDBGrid;
    pnl2: TPanel;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    DBPesquisa5: TDBPesquisa;
    DBPesquisa6: TDBPesquisa;
    procedure FormCreate(Sender: TObject);
    procedure DBPesquisa3Pesquisa(Sender: TObject; var Retorno: string);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure DBPesquisa5Pesquisa(Sender: TObject; var Retorno: string);
    procedure DBPesquisa6Pesquisa(Sender: TObject; var Retorno: string);
    procedure EdPesquisa5Pesquisa(Sender: TObject; var Retorno: string);
    procedure PngAddProdutoClick(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actTrilharExecute(Sender: TObject);
    procedure DBPesquisa1Pesquisa(Sender: TObject; var Retorno: string);
    procedure DBPesquisa2Pesquisa(Sender: TObject; var Retorno: string);

  private
    procedure MontaSql(pCodigo : Integer) ;
    function Validar() : Boolean ;

    procedure ResetaCDS() ;
    procedure ReadWrite() ;
    procedure GeraHistoricoPreco();
    procedure MargemLucro();
  public
    procedure Novo() ; override ;
    procedure Gravar() ; override ;
    procedure Excluir() ; override ;
    procedure localizar() ; override ;
    procedure Editar() ; override ;
    procedure Cancelar() ; override ;
  end;

var
  Frm_Produto: TFrm_Produto;

implementation

{$R *.dfm}

uses UConsulta, UDM, UMakeReadWrite, UFrm_ProdutoComposicao, URel_ProdutoTrilha, UFuncoes;

procedure TFrm_Produto.actTrilharExecute(Sender: TObject);
begin
  inherited;
  if cdsCODIGO.AsInteger < 1 then
  begin
    MessageDlg('Informe o Produto', mtInformation, [mbAbort], 0);
    Exit;
  end;

  if not Assigned(Rel_ProdutoTrilha) then
    Rel_ProdutoTrilha := TRel_ProdutoTrilha.Create(Self);
  try
    with Rel_ProdutoTrilha do
    begin
      aCodProduto := cdsCODIGO.AsInteger;
      Executar;
    end;
  finally
    FreeAndNil(Rel_ProdutoTrilha);
  end;
end;

procedure TFrm_Produto.Cancelar;
begin
  inherited;
   if cdsComposicaoProduto.State in [dsEdit,dsInsert] then
    cdsComposicaoProduto.Cancel ;
end;

procedure TFrm_Produto.cdsAfterInsert(DataSet: TDataSet);
const
  SQL = 'select gen_id(GEN_PRODUTO,1) id from RDB$DATABASE';
begin
  inherited;
  cdsCODIGO.AsInteger       := DM.GetInteger(SQL,'id') ;
  cdsQTDE_ESTOQUE.AsFloat   := 0 ;
  cdsPESO_BRUTO.AsFloat     := 0 ;
  cdsPESO_LIQUIDO.AsFloat   := 0 ;
  cdsPRECO_VENDA.AsCurrency := 0 ;
  cdsPRECO_CUSTO.AsCurrency := 0 ;
  cdsCONV_PRECO.AsCurrency  := 0 ;
  cdsQTDE_MINIMA.AsFloat    := 0 ;
  cdsTIPO_PRODUTO.AsString  := 'PA' ;
end;

procedure TFrm_Produto.DBPesquisa1Pesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoUnidade;
begin
  inherited;
  aRet := Consulta.Unidade;
  if aRet.Codigo > 0 then
    Retorno := IntToStr(aRet.Codigo);
end;

procedure TFrm_Produto.DBPesquisa2Pesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoUnidade;
begin
  inherited;
  aRet := Consulta.Unidade;
  if aRet.Codigo > 0 then
    Retorno := IntToStr(aRet.Codigo);
end;

procedure TFrm_Produto.DBPesquisa3Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.NCM ;
end;

procedure TFrm_Produto.DBPesquisa5Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := IntToStr(Consulta.Grupo_Produto) ;
end;

procedure TFrm_Produto.DBPesquisa6Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := IntToStr(Consulta.SubGrupo_Produto) ;
end;

procedure TFrm_Produto.Editar;
begin
  inherited;
end;

procedure TFrm_Produto.EdPesquisa5Pesquisa(Sender: TObject;
  var Retorno: string);
var aRet : TRetornoProduto ;
begin
  inherited;
  aRet := Consulta.Produto(QuotedStr('MP'),'Consulta de Matéria-Prima') ;
  if aRet.iCodigo > 0 then
    Retorno := IntToStr(aRet.iCodigo);
end;

procedure TFrm_Produto.Excluir;
begin
  inherited;
  if cds.ChangeCount > 0 then
  begin
    Dm.SMCadastroClient.setProduto(dm.BancoDados, cdsCODIGO.AsInteger, VarArrayOf([cds.Delta, null]));
    ResetaCDS;
  end;
end;

procedure TFrm_Produto.FormCreate(Sender: TObject);
begin
  inherited;
  ResetaCDS ;

  ReadWrite ;

  PageControl1.TabIndex := 0 ;
//  TabSheet2.TabVisible:=false ;
end;

procedure TFrm_Produto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   //Apertou ESC
  if Key = Vk_Escape then
    if cdsComposicaoProduto.State in [dsInsert] then
    begin
      cdsComposicaoProduto.Cancel;
    end;
end;

procedure TFrm_Produto.GeraHistoricoPreco;
var
  lSQL : string;
begin
  if (cds.FieldByName('preco_venda').NewValue <> cds.FieldByName('preco_venda').OldValue) then
  begin
    lSQL := 'INSERT INTO PRECOVENDA_HISTORICO (ID, ID_PROD, USUARIO, PRECO_NOVO, DATA) '+
            'VALUES ( '+
            '0'+
            ','+cds.FieldByName('codigo').AsString+
            ','+QuotedStr(DM.User)+
            ','+ValorFormatadoFirebird(cds.FieldByName('preco_venda').AsString)+
            ','+QuotedStr(FormatDateTime('dd.mm.yyy',Date))+
            ')';
    DM.ExecutarSQL(DM.BancoDados,lSQL);
  end;
end;

procedure TFrm_Produto.Gravar;
var
  aRetorno, aProduto, aProdComposicao: OleVariant;
  lEstado : TDataSetState;
begin
  if not Validar then
    Exit;

  lEstado := cds.State;
  inherited;
  aProduto := null;
  aProdComposicao := null;

  if cds.ChangeCount > 0 then
  begin
    aProduto := cds.Delta;
    if lEstado in [dsEdit] then
      GeraHistoricoPreco();
  end;

  if cdsComposicaoProduto.ChangeCount > 0 then
    aProdComposicao := cdsComposicaoProduto.Delta;

  aRetorno := Dm.SMCadastroClient.setProduto(dm.BancoDados, cdsCODIGO.AsInteger, VarArrayOf([aProduto, aProdComposicao]));

  cds.Close;
  cds.Data := aRetorno[0];

  cdsComposicaoProduto.Close;
  cdsComposicaoProduto.Data := aRetorno[1];

  if ((cds.FieldByName('preco_venda').AsCurrency>0) and
      (cds.FieldByName('preco_custo').AsCurrency>0)) then
    MargemLucro()
  else
    pnlLucro.Visible := False;
end;

procedure TFrm_Produto.localizar;
var
  aRetProd: TRetornoProduto;
begin
  inherited;
  aRetProd := Consulta.Produto(QuotedStr('PA'),'Consulta de Produtos');

  MontaSql(aRetProd.iCodigo);
  if ((cds.FieldByName('preco_venda').AsCurrency>0) and
      (cds.FieldByName('preco_custo').AsCurrency>0)) then
    MargemLucro()
  else
    pnlLucro.Visible := False;
end;

procedure TFrm_Produto.MargemLucro;
var
  lResultado: Currency;
begin
  lResultado := ((cds.FieldByName('preco_venda').AsCurrency-
                  cds.FieldByName('preco_custo').AsCurrency)/cds.FieldByName('preco_custo').AsCurrency)*100;

  lblLucro.Caption := FormatCurr('#,##0.00',lResultado)+'%';
  pnlLucro.Visible := True;
end;

procedure TFrm_Produto.MontaSql(pCodigo: Integer);
var
  tmp: OleVariant;
begin
  if pCodigo = 0 then
    Exit;

  tmp := DM.SMCadastroClient.getProduto(DM.BancoDados, pCodigo);
  cds.Close ;
  cdsComposicaoProduto.Close ;

  cds.Data := tmp[0];
  cdsComposicaoProduto.Data := tmp[1];

  ReadWrite;
end;

procedure TFrm_Produto.Novo;
begin
  inherited;
  cdsComposicaoProduto.Close;
  cdsComposicaoProduto.CreateDataSet ;
  DBEdit1.SetFocus ;
end;

procedure TFrm_Produto.PngAddProdutoClick(Sender: TObject);
begin
  inherited;
  if cds.IsEmpty then
    Exit;

  if not Assigned(Frm_ProdutoComposicao) then
    Frm_ProdutoComposicao := TFrm_ProdutoComposicao.Create(Self);
  try
    with Frm_ProdutoComposicao do
    begin
      aRetorno := EmptyStr;

      pnlFornecedor.Visible := False;
      Height := 133;

      edt1.Text := '0';
      lblUnidade.Caption := EmptyStr;

      ShowModal;

      if aRetorno = 'sucesso' then
      begin
        cdsComposicaoProduto.Append;
        cdsComposicaoProdutoID.AsInteger := 0;
        cdsComposicaoProdutoID_PRODUTO.AsInteger := cdsCODIGO.AsInteger;
        cdsComposicaoProdutoID_MATPRIMA.AsInteger := aCodMatPrima;
        cdsComposicaoProdutoQTDE.AsFloat := aQtde;
        cdsComposicaoProdutoMATERIAPRIMA.AsString := edp1.Mostrar.Text;
        cdsComposicaoProduto.Post;
        if not (cds.State in [dsInsert, dsEdit]) then
          Editar;
      end;
    end;
  finally
    FreeAndNil(Frm_ProdutoComposicao);
  end;
end;

procedure TFrm_Produto.PngSpeedButton1Click(Sender: TObject);
const
    SQL = 'delete FROM PRODUTO_COMPOSICAO a '+
          'where a.ID = %s' ;
begin
  inherited;
  if cdsComposicaoProduto.IsEmpty then
  begin
    MessageDlg('Não há registro para ser excluso.',mtInformation,[mbAbort],0) ;
    Exit ;
  end;

  if MessageDlg('Confirma a exclusão da Matéria-Prima: ' + cdsComposicaoProdutoMATERIAPRIMA.AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if DM.ExecutarSQL(DM.BancoDados, Format(SQL, [IntToStr(cdsComposicaoProdutoID.AsInteger)])) > 0 then
    begin
      cdsComposicaoProduto.Delete;
      MessageDlg('Exclusão efetuada com sucesso.', mtInformation, [mbOK], 0);
    end;
    MontaSql(cdsCODIGO.AsInteger);
  end;
end;

procedure TFrm_Produto.ReadWrite;
begin
  MakeReadWrite(cdsDESCRI_UNIDADE);
  MakeReadWrite(cdsCONV_DESCRIUNIDADE);
  MakeReadWrite(cdsDESCRI_NCM);
  MakeReadWrite(cdsGRUPO);
  MakeReadWrite(cdsSUBGRUPO);
  MakeReadWrite(cdsComposicaoProdutoMATERIAPRIMA);
end;

procedure TFrm_Produto.ResetaCDS;
begin
  cds.Close;
  cds.CreateDataSet ;

  cdsComposicaoProduto.Close;
  cdsComposicaoProduto.CreateDataSet ;
end;

function TFrm_Produto.Validar: Boolean;
begin
  Result := True ;
  if Trim(DBEdit1.Text) = '' then
  begin
    MessageDlg('Informar o Nome do produto',mtError,[mbOK],0) ;
    DBEdit1.SetFocus ;
    Result := False ;
    Exit ;
  end;

  if Trim(DBEdit2.Text) = '' then
  begin
    MessageDlg('Informar preço de venda',mtError,[mbOK],0) ;
    DBEdit2.SetFocus ;
    Result := False ;
    Exit ;
  end;

   if Trim(DBEdit8.Text) = '' then
  begin
    MessageDlg('Informar preço de custo',mtError,[mbOK],0) ;
    DBEdit8.SetFocus ;
    Result := False ;
    Exit ;
  end;

   if Trim(DBPesquisa1.Campo.Text) = '' then
  begin
    MessageDlg('Informar a Unidade de Medida.',mtError,[mbOK],0) ;
    DBPesquisa1.Campo.SetFocus ;
    Result := False ;
    Exit ;
  end;

  if DBPesquisa2.Campo.Text <> EmptyStr then
  begin
    if ((DBEdit4.Text = EmptyStr) or (StrToFloat(DBEdit4.Text) < 0)) then
    begin
      MessageDlg('Informar a Quantidade da Conversão.', mtError, [mbOK], 0);
      DBEdit4.SetFocus;
      Result := False;
      Exit;
    end;

    if StrToCurrDef(DBEdit6.Text, 0) < 0.01 then
    begin
      MessageDlg('Informar o Preço da Conversão.', mtError, [mbOK], 0);
      DBEdit6.SetFocus;
      Result := False;
      Exit;
    end;
  end;


end;

end.

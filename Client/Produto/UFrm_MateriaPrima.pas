unit UFrm_MateriaPrima;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.ComCtrls, Vcl.Buttons, PngSpeedButton,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, UDBPesquisa, Vcl.Mask,
  Vcl.DBGrids, UEDPesquisa, Vcl.Menus, Vcl.Imaging.pngimage, Vcl.Grids;

type
  TFrm_MateriaPrima = class(TPdr_Cad)
    dsProdutoFornecedor: TDataSource;
    cdsProdutoFornecedor: TClientDataSet;
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
    cdsFABRICANTE: TStringField;
    cdsGRUPO: TStringField;
    cdsSUBGRUPO: TStringField;
    cdsDESCRI_NCM: TStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBPesquisa1: TDBPesquisa;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    chkTipo: TCheckBox;
    cdsProdutoFornecedorID: TIntegerField;
    cdsProdutoFornecedorID_PRODUTO: TIntegerField;
    cdsProdutoFornecedorID_FORNECEDOR: TIntegerField;
    cdsProdutoFornecedorREFERENCIA_FORNEC: TStringField;
    cdsProdutoFornecedorRAZAO_NOME: TStringField;
    pnlFornecedores: TPanel;
    PngAddProduto: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    imgTrilha: TImage;
    lblTrilhar: TLabel;
    actTrilhar: TAction;
    cdsCONV_UNIDADE: TIntegerField;
    tsConversao: TTabSheet;
    pnlFundoTab: TPanel;
    lblTitConversao: TLabel;
    pnlTopTab: TPanel;
    Label10: TLabel;
    DBPesquisa2: TDBPesquisa;
    DBEdit4: TDBEdit;
    cdsCONV_DESCRIUNIDADE: TStringField;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    cdsPRECO_VENDA: TCurrencyField;
    cdsQTDE_ESTOQUE: TFMTBCDField;
    cdsPRECO_CUSTO: TCurrencyField;
    cdsESTIMA_PRODUCAO: TFMTBCDField;
    cdsPESO_BRUTO: TFMTBCDField;
    cdsPESO_LIQUIDO: TFMTBCDField;
    cdsQTDE_MINIMA: TFMTBCDField;
    cdsCONV_QTDE: TFMTBCDField;
    cdsCONV_PRECO: TCurrencyField;
    cdsProdutoFornecedorPRECO: TFMTBCDField;
    Label3: TLabel;
    DBEdit8: TDBEdit;
    cdsDT_CADASTRO: TDateField;
    tsInfAd: TTabSheet;
    pnl2: TPanel;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    pnlDesc: TPanel;
    pnlDescMaximo: TPanel;
    lblTitDesc: TLabel;
    DBEdit11: TDBEdit;
    cdsDESC_MAXIMO: TFMTBCDField;
    procedure EdPesquisa5Pesquisa(Sender: TObject; var Retorno: string);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure DBPesquisa1Pesquisa(Sender: TObject; var Retorno: string);
    procedure PngAddProdutoClick(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure actTrilharExecute(Sender: TObject);
    procedure DBPesquisa2Pesquisa(Sender: TObject; var Retorno: string);
    procedure pnlDescClick(Sender: TObject);
  private
    { Private declarations }
    procedure MontaSql(pCodigo : Integer) ;
    function Validar() : Boolean ;
    procedure ResetaCDS() ;
    procedure ReadWrite() ;
  public
    { Public declarations }
    procedure Novo() ; override ;
    procedure Gravar() ; override ;
    procedure Excluir() ; override ;
    procedure localizar() ; override ;
    procedure Editar() ; override ;
    procedure Cancelar() ; override ;
  end;

var
  Frm_MateriaPrima: TFrm_MateriaPrima;

implementation

{$R *.dfm}

uses UDM, UConsulta,UMakeReadWrite, UFrm_ProdutoComposicao, URel_ProdutoTrilha, u_Mensagem;

procedure TFrm_MateriaPrima.actTrilharExecute(Sender: TObject);
begin
  inherited;
  if cdsCODIGO.AsInteger < 1 then
  begin
    TMensagem.Informacao('Informe a Matéria-Prima');
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

procedure TFrm_MateriaPrima.Cancelar;
begin
  inherited;
  if cdsProdutoFornecedor.State in [dsEdit, dsInsert] then
    cdsProdutoFornecedor.Cancel;
end;

procedure TFrm_MateriaPrima.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCODIGO.AsInteger       := DM.GetInteger('select GEN_ID(GEN_PRODUTO,1) id from RDB$DATABASE','id') ;
  cdsQTDE_ESTOQUE.AsFloat   := 0 ;
  cdsPESO_BRUTO.AsFloat     := 0 ;
  cdsPESO_LIQUIDO.AsFloat   := 0 ;
  cdsPRECO_VENDA.AsCurrency := 0 ;
  cdsPRECO_CUSTO.AsCurrency := 0 ;
  cdsCONV_PRECO.AsCurrency  := 0 ;
  cdsQTDE_MINIMA.AsFloat    := 0 ;
  cdsTIPO_PRODUTO.AsString  := 'MP' ;
  cdsDT_CADASTRO.AsDateTime := Date;
end;

procedure TFrm_MateriaPrima.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TFrm_MateriaPrima.DBPesquisa1Pesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoUnidade;
begin
  inherited;
  aRet := Consulta.Unidade;
  if aRet.Codigo > 0 then
    Retorno := IntToStr(aRet.Codigo);
end;

procedure TFrm_MateriaPrima.DBPesquisa2Pesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoUnidade;
begin
  inherited;
  aRet := Consulta.Unidade;
  if aRet.Codigo > 0 then
    Retorno := IntToStr(aRet.Codigo);
end;

procedure TFrm_MateriaPrima.Editar;
begin
  inherited;

end;

procedure TFrm_MateriaPrima.EdPesquisa5Pesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoFabricante;
begin
  inherited;
  aRet := Consulta.Fabricante;
  if aRet.iCodigo > 0 then
    Retorno := IntToStr(aRet.iCodigo);
end;


procedure TFrm_MateriaPrima.Excluir;
begin
  inherited;
  if cds.ChangeCount > 0 then
  begin
    Dm.SMCadastroClient.setMateriaPrima(dm.BancoDados, cdsCODIGO.AsInteger, VarArrayOf([cds.Delta, null]));
    ResetaCDS;
  end;
end;

procedure TFrm_MateriaPrima.FormCreate(Sender: TObject);
begin
  inherited;
  ResetaCDS ;
  PageControl1.TabIndex := 0 ;
  pnlDescMaximo.Enabled := DM.UserPerfil = 'Administrador';
end;

procedure TFrm_MateriaPrima.Gravar;
var
  oRetorno,aMatPrima,aFornecedor: OleVariant;
begin
  if not Validar then
    Exit ;

  if chkTipo.Checked then
    cdsTIPO_PRODUTO.AsString := 'A'
  else
    cdsTIPO_PRODUTO.AsString := 'MP' ;
  inherited;

  aMatPrima := null ;
  aFornecedor := null ;

  if cds.ChangeCount > 0 then
    aMatPrima := cds.Delta ;
  if cdsProdutoFornecedor.ChangeCount > 0 then
    aFornecedor := cdsProdutoFornecedor.Delta ;

  oRetorno := Dm.SMCadastroClient.setMateriaPrima(dm.BancoDados, cdsCODIGO.AsInteger, VarArrayOf([aMatPrima,aFornecedor]));

  cds.Close;
  cds.Data := oRetorno[0];

  cdsProdutoFornecedor.Close;
  cdsProdutoFornecedor.Data := oRetorno[1];
end;

procedure TFrm_MateriaPrima.localizar;
var
  aRetProd: TRetornoProduto;
begin
  inherited;
  aRetProd := Consulta.Produto('''MP'',''A''','Consulta de Produtos/Matéria-Prima');

  MontaSql(aRetProd.iCodigo);
end;

procedure TFrm_MateriaPrima.MontaSql(pCodigo: Integer);
var
  tmp: OleVariant;
begin
  if pCodigo = 0 then
    Exit;

  tmp := DM.SMCadastroClient.getMateriaPrima(DM.BancoDados, pCodigo);

  cds.Close ;
  cdsProdutoFornecedor.Close ;

  cds.Data := tmp[0];
  cdsProdutoFornecedor.Data := tmp[1];

  chkTipo.Checked := cdsTIPO_PRODUTO.AsString = 'A' ;
  ReadWrite;
end;


procedure TFrm_MateriaPrima.Novo;
begin
  inherited;
  cdsProdutoFornecedor.Close ;
  cdsProdutoFornecedor.CreateDataSet ;

  DBEdit1.SetFocus ;
end;

procedure TFrm_MateriaPrima.PngAddProdutoClick(Sender: TObject);
begin
  if cds.IsEmpty then
    Exit ;

  if not Assigned(Frm_ProdutoComposicao) then
    Frm_ProdutoComposicao := TFrm_ProdutoComposicao.Create(Self);
  try
    with Frm_ProdutoComposicao do
    begin
      aRetorno := EmptyStr ;
      pnlMatPrima.Visible := False ;
      Height := 146 ;               //ajustar de acordo Com a consulta

      ShowModal;

      if aRetorno = 'sucesso' then
      begin
        cdsProdutoFornecedor.Append;
        cdsProdutoFornecedorID.AsInteger := 0;
        cdsProdutoFornecedorID_PRODUTO.AsInteger := cdsCODIGO.AsInteger;
        cdsProdutoFornecedorID_FORNECEDOR.AsInteger := aCodFornecedor;
        cdsProdutoFornecedorPRECO.AsFloat := aPrecoFornecedor;
        cdsProdutoFornecedorREFERENCIA_FORNEC.AsString := aRefFornecedor;
        cdsProdutoFornecedorRAZAO_NOME.AsString := edp2.Mostrar.Text;
        cdsProdutoFornecedor.Post;

        if not (cds.State in [dsInsert, dsEdit]) then
          Editar;
      end;
    end;

  finally
    FreeAndNil(Frm_ProdutoComposicao);
  end;
end;


procedure TFrm_MateriaPrima.PngSpeedButton1Click(Sender: TObject);
const
    SQL = 'delete FROM PRODUTO_FORNECEDOR a '+
          'where a.ID = %s' ;
begin
  inherited;
  if cdsProdutoFornecedor.IsEmpty then
  begin
    TMensagem.Atencao('Não há registro para ser excluso.') ;
    Exit ;
  end;

  if TMensagem.Pergunta('Confirma a exclusão do Fornecedor: ' + cdsProdutoFornecedorRAZAO_NOME.AsString + ' ?') then
    if DM.ExecutarSQL(DM.BancoDados, Format(SQL, [IntToStr(cdsProdutoFornecedorID.AsInteger)])) > 0 then
    begin
      cdsProdutoFornecedor.Delete;
      TMensagem.Informacao('Exclusão efetuada com sucesso.');
    end;
end;

procedure TFrm_MateriaPrima.pnlDescClick(Sender: TObject);
begin
  inherited;
  if (pnlDescMaximo.Enabled = False) then
  begin
    TMensagem.Informacao('Edição permitida para o perfil Administrador.');
  end;
end;

procedure TFrm_MateriaPrima.ReadWrite;
begin
  MakeReadWrite(cdsDESCRI_UNIDADE);
  MakeReadWrite(cdsCONV_DESCRIUNIDADE);
  MakeReadWrite(cdsDESCRI_NCM);
  MakeReadWrite(cdsFABRICANTE);
  MakeReadWrite(cdsGRUPO);
  MakeReadWrite(cdsSUBGRUPO);
  MakeReadWrite(cdsProdutoFornecedorRAZAO_NOME);
end;

procedure TFrm_MateriaPrima.ResetaCDS;
begin
  cds.Close;
  cds.CreateDataSet;

  cdsProdutoFornecedor.Close;
  cdsProdutoFornecedor.CreateDataSet;
end;

function TFrm_MateriaPrima.Validar: Boolean;
begin
  Result := True;
  if Trim(DBEdit1.Text) = '' then
  begin
    TMensagem.Atencao('Informe a Descrição do Material');
    DBEdit1.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(DBPesquisa1.Campo.Text) = '' then
  begin
    TMensagem.Atencao('Informe a Unidade de Medida');
    DBPesquisa1.Campo.SetFocus;
    Result := False;
    Exit;
  end;

  if ((chkTipo.Checked) and (DBEdit2.Text = EmptyStr)) then
  begin
    TMensagem.Atencao('Informe o Preço de Venda.');
    DBEdit2.SetFocus;
    Result := False;
    Exit;
  end;

  if DBPesquisa2.Campo.Text <> EmptyStr then
  begin
    if ((DBEdit4.Text = EmptyStr) or (StrToFloat(DBEdit4.Text) < 0)) then
    begin
      TMensagem.Atencao('Informar a Quantidade da Conversão.');
      DBEdit4.SetFocus;
      Result := False;
      Exit;
    end;

    if StrToCurrDef(DBEdit6.Text, 0) < 1 then
    begin
      TMensagem.Atencao('Informar o Preço da Conversão.');
      DBEdit6.SetFocus;
      Result := False;
      Exit;
    end;
  end;
end;

end.

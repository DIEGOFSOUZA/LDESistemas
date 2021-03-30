unit UFrm_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls,
  UDBPesquisa, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,System.StrUtils,
  Vcl.DBGrids, UEDPesquisa, Vcl.Menus, Vcl.Imaging.pngimage, Vcl.Grids;

type
  TFrm_Produto = class(TPdr_Cad)
    cdsComposicaoProduto: TClientDataSet;
    dsComposicaoProduto: TDataSource;
    pnlFundo2: TPanel;
    actTrilhar: TAction;
    dsHistVenda: TDataSource;
    cdsHistVenda: TClientDataSet;
    Panel3: TPanel;
    pnlPreco: TPanel;
    lblTitPreco: TLabel;
    pnlPrecoCusto: TPanel;
    Label3: TLabel;
    Label17: TLabel;
    dbedtPRECO_CUSTO: TDBEdit;
    pnlPrecoCenter: TPanel;
    pnlPVenda: TPanel;
    Label15: TLabel;
    dbedtPRECO_VENDA: TDBEdit;
    pnlLucro: TPanel;
    lblLucro: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    pnlDescMaximo: TPanel;
    lblTitDesc: TLabel;
    DBEdit11: TDBEdit;
    pnlPAtac: TPanel;
    Label16: TLabel;
    dbedtPRECO_ATACADO: TDBEdit;
    pnlLucroAtacado: TPanel;
    lblLucroAtacado: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    pnlQtdeMinAtac: TPanel;
    Label2: TLabel;
    dbedtQTDE_MIN_ATACADO: TDBEdit;
    pnlTopo: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    imgTrilha: TImage;
    lblTrilhar: TLabel;
    DBEdit1: TDBEdit;
    DBPesquisa1: TDBPesquisa;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBPesquisa5: TDBPesquisa;
    DBPesquisa6: TDBPesquisa;
    pnlTopLeft: TPanel;
    Label6: TLabel;
    dbtxtCODIGO: TDBText;
    pnlPages: TPanel;
    pgc1: TPageControl;
    tsEstoque: TTabSheet;
    pnl2: TPanel;
    tsComposicao: TTabSheet;
    pnlComposicao: TPanel;
    tsConversao: TTabSheet;
    pnlFundoTab: TPanel;
    lblTitConversao: TLabel;
    pnlTopTab: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    DBPesquisa2: TDBPesquisa;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    tsHistPrecoVenda: TTabSheet;
    pnlHistorico: TPanel;
    Label20: TLabel;
    dbcbbSITUACAO: TDBComboBox;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    pnlMovimentar: TPanel;
    Label21: TLabel;
    cbbTpMov: TComboBox;
    Label22: TLabel;
    edtQtdeMov: TEdit;
    lblTitMov: TLabel;
    btnMovimentar: TSpeedButton;
    actMovimentar: TAction;
    Panel2: TPanel;
    Label26: TLabel;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label4: TLabel;
    dbtxtQTDE_ESTOQUE: TDBText;
    tsFiscal: TTabSheet;
    pnlFundoFiscal: TPanel;
    Label24: TLabel;
    dbcbbFISCAL_TIPO: TDBComboBox;
    dbcbbFISCAL_ORIGEM: TDBComboBox;
    Label25: TLabel;
    dbpsqsNCM: TDBPesquisa;
    dbpsqsCEST: TDBPesquisa;
    pnlFundoComposicao: TPanel;
    pnlTopoComposicao: TPanel;
    pnlFundo1Comp: TPanel;
    pnlProdAdd: TPanel;
    pnlAdd: TPanel;
    btnAddItem: TSpeedButton;
    pnlQtde: TPanel;
    lblUM: TLabel;
    edtQtde: TEdit;
    pnlItem: TPanel;
    edpsqsProduto: TEdPesquisa;
    actAddItem: TAction;
    pnlTotalItem: TPanel;
    Label53: TLabel;
    lblTotItem: TLabel;
    pnlVlUnitario: TPanel;
    lbl8: TLabel;
    lblUnitario: TLabel;
    pnlGridComposicao: TPanel;
    pnlAcaoComposicao: TPanel;
    PngSpeedButton1: TPngSpeedButton;
    PngAddProduto: TPngSpeedButton;
    pnlExcItem: TPanel;
    imgExcItem: TImage;
    btnEscItem: TSpeedButton;
    pnlRodapeComposicao: TPanel;
    Label27: TLabel;
    lblCustEstimado: TLabel;
    dbgrdComposicao: TDBGrid;
    cdsCODIGO: TIntegerField;
    cdsNOME: TStringField;
    cdsPRECO_VENDA: TCurrencyField;
    cdsCOD_UNIDADE: TIntegerField;
    cdsQTDE_ESTOQUE: TFMTBCDField;
    cdsPRECO_CUSTO: TCurrencyField;
    cdsESTIMA_PRODUCAO: TFMTBCDField;
    cdsPESO_BRUTO: TFMTBCDField;
    cdsPESO_LIQUIDO: TFMTBCDField;
    cdsEAN_CODBARRA: TStringField;
    cdsCOD_GRUPO: TIntegerField;
    cdsCOD_SUBGRUPO: TIntegerField;
    cdsDESCRICAO: TStringField;
    cdsTIPO_PRODUTO: TStringField;
    cdsQTDE_MINIMA: TFMTBCDField;
    cdsCONV_UNIDADE: TIntegerField;
    cdsCONV_QTDE: TFMTBCDField;
    cdsCONV_PRECO: TCurrencyField;
    cdsDT_CADASTRO: TDateField;
    cdsDESC_MAXIMO: TFMTBCDField;
    cdsPRECO_ATACADO: TFMTBCDField;
    cdsQTDE_MIN_ATACADO: TFMTBCDField;
    cdsSITUACAO: TStringField;
    cdsFISCAL_TIPO: TStringField;
    cdsFISCAL_ORIGEM: TStringField;
    cdsFISCAL_NCM: TIntegerField;
    cdsFISCAL_CEST: TIntegerField;
    cdsDESCRI_UNIDADE: TStringField;
    cdsfdqryProdutoFornecedor: TDataSetField;
    cdsfdqryProdutoComposicao: TDataSetField;
    cdsULTIMA_ALTERACAO: TStringField;
    pnlHistVenda: TPanel;
    dbgrdItens: TDBGrid;
    Label14: TLabel;
    pnlHistCusto: TPanel;
    lblTitHistCusto: TLabel;
    dbgrdHistCusto: TDBGrid;
    cdsfdqryPrecoVendaHist: TDataSetField;
    cdsHistVendaID_PROD: TIntegerField;
    cdsHistVendaUSUARIO: TStringField;
    cdsHistVendaPRECO_NOVO: TFMTBCDField;
    cdsHistVendaDATA: TDateField;
    cdsHistVendaDT_FIM: TDateField;
    cdsComposicaoProdutoID_PRODUTO: TIntegerField;
    cdsComposicaoProdutoID_MATPRIMA: TIntegerField;
    cdsComposicaoProdutoQTDE: TFMTBCDField;
    cdsComposicaoProdutoCUSTO_UNIT: TFMTBCDField;
    cdsComposicaoProdutoCUSTO_TOTAL: TFMTBCDField;
    cdsComposicaoProdutoNOME: TStringField;
    cdsComposicaoProdutoSIGLA: TStringField;
    cdsHistCusto: TClientDataSet;
    dsHistCusto: TDataSource;
    cdsfdqryPrecoCustoHist: TDataSetField;
    cdsHistCustoID_PROD: TIntegerField;
    cdsHistCustoPRECO_NOVO: TFMTBCDField;
    cdsHistCustoDATA: TDateField;
    cdsHistCustoDATA_FIM: TDateField;
    cdsHistCustoUSUARIO: TStringField;
    cdsCALC_CUSTO_COMPOSICAO: TStringField;
    chkCustoEstimado: TCheckBox;
    cdsCONV_DESCRIUNIDADE: TStringField;
    cdsGRUPO: TStringField;
    cdsSUBGRUPO: TStringField;
    cdsNCM: TStringField;
    cdsCEST: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure DBPesquisa5Pesquisa(Sender: TObject; var Retorno: string);
    procedure DBPesquisa6Pesquisa(Sender: TObject; var Retorno: string);
    procedure PngAddProdutoClick(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actTrilharExecute(Sender: TObject);
    procedure DBPesquisa1Pesquisa(Sender: TObject; var Retorno: string);
    procedure DBPesquisa2Pesquisa(Sender: TObject; var Retorno: string);
    procedure pnlDescClick(Sender: TObject);
    procedure cdsPRECO_ATACADOChange(Sender: TField);
    procedure actMovimentarExecute(Sender: TObject);
    procedure edtQtdeMovKeyPress(Sender: TObject; var Key: Char);
    procedure dbpsqsNCMPesquisa(Sender: TObject; var Retorno: string);
    procedure dbpsqsCESTPesquisa(Sender: TObject; var Retorno: string);
    procedure actAddItemExecute(Sender: TObject);
    procedure edpsqsProdutoPesquisa(Sender: TObject; var Retorno: string);
    procedure edpsqsProdutoedtCampoChange(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsComposicaoProdutoID_MATPRIMAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure dbgrdComposicaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chkCustoEstimadoClick(Sender: TObject);
    procedure cdsAfterCancel(DataSet: TDataSet);

  private
    FCustoEstimado: Currency;
    procedure MontaSql(pCodigo : Integer) ;
    function Validar() : Boolean ;
    function ValidarMovimentacao() : Boolean;

    procedure ResetaCDS() ;
    procedure MargemLucro(aTipo:integer);
    procedure SetItem(aIDMatPrima:integer);
    procedure CalcCustoComposicao();
  public
    property CustoEstimado: Currency  read FCustoEstimado;

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
uses
  UConsulta, UDM, UMakeReadWrite, UFrm_ProdutoComposicao, URel_ProdutoTrilha,
  UFuncoes, u_Mensagem;

procedure TFrm_Produto.actAddItemExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrm_Produto.actMovimentarExecute(Sender: TObject);
begin
  inherited;
  if ValidarMovimentacao then
    if DM.SMProducao.setMovimento(DM.BancoDados,DM.User,cds.FieldByName('codigo').AsInteger,
         StrToFloat(edtQtdeMov.Text),cds.FieldByName('COD_UNIDADE').AsInteger,cbbTpMov.Text,
         cds.FieldByName('NOME').AsString) then
    begin
      MontaSql(cds.FieldByName('codigo').AsInteger);
      cbbTpMov.ItemIndex := 0;
      edtQtdeMov.Text:= '0';
    end
    else
      TMensagem.Erro('Não foi possivel gerar a movimentação. Tente novamente.');
end;

procedure TFrm_Produto.actTrilharExecute(Sender: TObject);
begin
  inherited;
  if cdsCODIGO.AsInteger < 1 then
  begin
    TMensagem.Informacao('Informe o produto.');
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

procedure TFrm_Produto.CalcCustoComposicao;
begin
  FCustoEstimado := 0;

  if (not cdsComposicaoProduto.IsEmpty) then
  begin
    cdsComposicaoProduto.DisableControls;
    try
      cdsComposicaoProduto.First;
      while not cdsComposicaoProduto.Eof do
      begin
        FCustoEstimado := FCustoEstimado+cdsComposicaoProduto.FieldByName('CUSTO_TOTAL').AsCurrency;
        cdsComposicaoProduto.Next;
      end;
    finally
      cdsComposicaoProduto.EnableControls;
    end;
  end;
  lblCustEstimado.Caption := FormatCurr('R$ #,##0.00',FCustoEstimado);
  if (cds.FieldByName('CALC_CUSTO_COMPOSICAO').AsString = 'S') then
    chkCustoEstimado.Checked := True
  else
    chkCustoEstimado.Checked := False;
end;

procedure TFrm_Produto.Cancelar;
begin
  inherited;

end;

procedure TFrm_Produto.cdsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  cdsComposicaoProduto.CancelUpdates;
  cdsHistVenda.CancelUpdates;
  cdsHistCusto.CancelUpdates;
end;

procedure TFrm_Produto.cdsAfterInsert(DataSet: TDataSet);
const
  SQL = 'select gen_id(GEN_PRODUTO,1) id from RDB$DATABASE';
begin
  inherited;
  cdsCODIGO.AsInteger := 0; //DM.GetInteger(SQL,'id')
  cdsQTDE_ESTOQUE.AsFloat := 0;
  cdsPESO_BRUTO.AsFloat := 0;
  cdsPESO_LIQUIDO.AsFloat := 0;
  cdsPRECO_VENDA.AsCurrency := 0;
  cdsPRECO_CUSTO.AsCurrency := 0;
  cdsCONV_PRECO.AsCurrency := 0;
  cdsQTDE_MINIMA.AsFloat := 0;
  cdsTIPO_PRODUTO.AsString := 'PA';
  cdsDT_CADASTRO.AsDateTime := Date;
  cdsSITUACAO.AsString := 'ATIVO';
end;

procedure TFrm_Produto.cdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  cds.FieldByName('ULTIMA_ALTERACAO').AsString := DM.UsuarioDataHora;
  if (cds.FieldByName('PRECO_CUSTO').AsCurrency <> CustoEstimado) then
    cds.FieldByName('CALC_CUSTO_COMPOSICAO').AsString := 'N'
  else
    cds.FieldByName('CALC_CUSTO_COMPOSICAO').AsString := IfThen(chkCustoEstimado.Checked, 'S', 'N');
end;

procedure TFrm_Produto.cdsComposicaoProdutoID_MATPRIMAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Sender.AsString+' '+cdsComposicaoProduto.FieldByName('NOME').AsString;
end;

procedure TFrm_Produto.cdsPRECO_ATACADOChange(Sender: TField);
begin
  inherited;
  pnlQtdeMinAtac.Visible := (cds.FieldByName('PRECO_ATACADO').AsCurrency > 0);
  if pnlQtdeMinAtac.Visible then
    dbedtQTDE_MIN_ATACADO.SetFocus;
end;

procedure TFrm_Produto.chkCustoEstimadoClick(Sender: TObject);
begin
  inherited;
  Editar;
  if chkCustoEstimado.Checked then
    cds.FieldByName('PRECO_CUSTO').AsCurrency := CustoEstimado
  else
    cds.FieldByName('PRECO_CUSTO').AsCurrency := 0;
end;

procedure TFrm_Produto.dbgrdComposicaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
//  ShowScrollBar(dbgrdComposicao.Handle, SB_VERT, False);
//  ShowScrollBar(dbgrdComposicao.Handle, SB_HORZ, False);
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

procedure TFrm_Produto.dbpsqsCESTPesquisa(Sender: TObject; var Retorno: string);
begin
  inherited;
  Retorno := Consulta.CEST.ToString;
end;

procedure TFrm_Produto.dbpsqsNCMPesquisa(Sender: TObject; var Retorno: string);
begin
  inherited;
  Retorno := Consulta.NCM.ToString ;
end;

procedure TFrm_Produto.Editar;
begin
  inherited;
end;

procedure TFrm_Produto.edpsqsProdutoedtCampoChange(Sender: TObject);
begin
  inherited;
  if ((edpsqsProduto.Campo.Text <> '') and ((StrToInt(edpsqsProduto.Campo.Text) > 0))) then
  begin
    SetItem(StrToInt(edpsqsProduto.Campo.Text));
  end
  else
  begin
    lblUM.Visible := False;
    edtQtde.Text := '1,000';
    lblUnitario.Caption := '0,00';
    lblTotItem.Caption := '0,00';
  end;
end;

procedure TFrm_Produto.edpsqsProdutoPesquisa(Sender: TObject; var Retorno: string);
var
  aRet: TRetornoProduto;
begin
  inherited;
  aRet := Consulta.Produto(QuotedStr('MP'), 'Consulta de Matéria-Prima');
  if aRet.iCodigo > 0 then
    Retorno := IntToStr(aRet.iCodigo);
end;

procedure TFrm_Produto.edtQtdeMovKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0;
end;

procedure TFrm_Produto.Excluir;
begin
  inherited;
  try
    inherited;
    if cds.ChangeCount > 0 then
    begin
      DM.SMProduto.setProduto(DM.BancoDados, cds.FieldByName('ID').AsInteger, cds.Delta);
      cds.Close;
      cds.Data := DM.SMProduto.getProduto(DM.BancoDados, -1);
    end;
//    LimpaForm();
    TMensagem.Informacao('Exclusão efetuada com sucesso.');
  except
    TMensagem.Erro('', 'Exclusão não efetuada.');
  end;
//  if cds.ChangeCount > 0 then
//  begin
//    Dm.SMCadastroClient.setProduto(dm.BancoDados, cdsCODIGO.AsInteger, VarArrayOf([cds.Delta, null]));
//    ResetaCDS;
//  end;
end;

procedure TFrm_Produto.FormCreate(Sender: TObject);
begin
  inherited;
  ResetaCDS ;

//  ReadWrite ;

  pgc1.TabIndex := 1;
  pnlDescMaximo.Enabled := DM.UserPerfil = 'Administrador';
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

procedure TFrm_Produto.Gravar;
var
  lRetorno: OleVariant;
begin
  if not Validar then
    Exit ;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    try
      lRetorno := DM.SMProduto.setProduto(DM.BancoDados, cds.FieldByName('codigo').AsInteger, cds.Delta);
      cds.Close;
      cds.Data := lRetorno;
      CalcCustoComposicao;

      pnlLucro.Visible := False;
      pnlLucroAtacado.Visible := False;

      if (cds.FieldByName('preco_custo').AsCurrency > 0) then
      begin
        if (cds.FieldByName('preco_venda').AsCurrency > 0) then
          MargemLucro(0);
        if (cds.FieldByName('PRECO_ATACADO').AsCurrency > 0) then
          MargemLucro(1);
      end;
      TMensagem.Informacao('Gravação efetuada com sucesso');
//        pgc1.TabIndex := 0;
    except
      TMensagem.Erro('Não foi possível efetuar a gravação. Tente novamente.');
    end;
  end;
end;

procedure TFrm_Produto.localizar;
var
  aRetProd: TRetornoProduto;
begin
  inherited;
  aRetProd := Consulta.Produto(QuotedStr('PA'),'Consulta de Produtos');

  MontaSql(aRetProd.iCodigo);
  pnlLucro.Visible := False;
  pnlLucroAtacado.Visible := False;

  if (cds.FieldByName('preco_custo').AsCurrency > 0) then
  begin
    if (cds.FieldByName('preco_venda').AsCurrency > 0) then
      MargemLucro(0);
    if (cds.FieldByName('PRECO_ATACADO').AsCurrency > 0) then
      MargemLucro(1);
  end;
end;

procedure TFrm_Produto.MargemLucro(aTipo:integer);
var
  lResultado: Currency;
begin
  if (aTipo = 0) then //Venda varejo
  begin
    lResultado := ((cds.FieldByName('preco_venda').AsCurrency -
          cds.FieldByName('preco_custo').AsCurrency) / cds.FieldByName('preco_custo').AsCurrency) * 100;

    lblLucro.Caption := FormatCurr('#,##0.00', lResultado) + '%';
    pnlLucro.Visible := True;
  end;

  if (aTipo = 1) then //Venda Atacado
  begin
    lResultado := ((cds.FieldByName('PRECO_ATACADO').AsCurrency -
          cds.FieldByName('preco_custo').AsCurrency) / cds.FieldByName('preco_custo').AsCurrency) * 100;

    lblLucroAtacado.Caption := FormatCurr('#,##0.00', lResultado) + '%';
    pnlLucroAtacado.Visible := True;
  end;
end;

procedure TFrm_Produto.MontaSql(pCodigo: Integer);
begin
  if pCodigo = 0 then
    Exit;

  cds.Close ;
  cds.Data := DM.SMProduto.getProduto(DM.BancoDados, pCodigo);
  CalcCustoComposicao;

  pnlQtdeMinAtac.Visible := (cds.FieldByName('PRECO_ATACADO').AsCurrency > 0);
end;

procedure TFrm_Produto.Novo;
begin
//  inherited;
  if not (cds.State in [dsEdit, dsInsert]) then
  begin
    cds.FieldDefs.Clear;
    ResetaCDS;
    cds.append;
  end;
  DBEdit1.SetFocus ;
end;

procedure TFrm_Produto.PngAddProdutoClick(Sender: TObject);
begin
  inherited;
  {if cds.IsEmpty then
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

      if (aRetorno = 'sucesso') then
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
  end;   }
end;

procedure TFrm_Produto.PngSpeedButton1Click(Sender: TObject);
const
    SQL = 'delete FROM PRODUTO_COMPOSICAO a '+
          'where a.ID = %s' ;
begin
  inherited;
  {if cdsComposicaoProduto.IsEmpty then
  begin
    TMensagem.Informacao('Não há registro para ser excluso.') ;
    Exit ;
  end;

  if TMensagem.Pergunta('Confirma a exclusão da Matéria-Prima: ' + cdsComposicaoProdutoMATERIAPRIMA.AsString + ' ?') then
  begin
    if DM.ExecutarSQL(DM.BancoDados, Format(SQL, [IntToStr(cdsComposicaoProdutoID.AsInteger)])) > 0 then
    begin
      cdsComposicaoProduto.Delete;
      TMensagem.Informacao('Exclusão efetuada com sucesso.');
    end;
    MontaSql(cdsCODIGO.AsInteger);
  end; }
end;

procedure TFrm_Produto.pnlDescClick(Sender: TObject);
begin
  inherited;
  if (pnlDescMaximo.Enabled = False) then
  begin
    TMensagem.Informacao('Edição permitida para o perfil Administrador.');
  end;
end;

procedure TFrm_Produto.ResetaCDS;
begin
  cds.Close;
  cds.FieldDefs.Clear;
  cds.Data := DM.SMProduto.getProduto(DM.BancoDados, -1);
end;

procedure TFrm_Produto.SetItem(aIDMatPrima: integer);
const
  SQL = 'select a.preco_custo,b.sigla '+
        'from produto a '+
        'left join unidade b on (b.codigo=a.cod_unidade) '+
        'where a.codigo = %s';
begin
  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[aIDMatPrima.ToString]));

  lblUM.Visible := not DM.dsConsulta.IsEmpty;
  if (not DM.dsConsulta.IsEmpty) then
  begin
    lblUM.Caption := DM.dsConsulta.FieldByName('sigla').AsString;
    lblUnitario.Caption := FormatCurr('#,##0.00',DM.dsConsulta.FieldByName('preco_custo').AsCurrency);
// adicionar linha no onchange do Field
//    lblTotItem.Text := FormatCurr('#,##0.00',DM.dsConsulta.FieldByName('preco').AsCurrency);
  end;
end;

function TFrm_Produto.Validar: Boolean;
begin
  Result := True;
  if Trim(DBEdit1.Text) = '' then
  begin
    TMensagem.Atencao('Informar o nome do produto.');
    DBEdit1.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(dbedtPRECO_VENDA.Text) = '' then
  begin
    TMensagem.Atencao('Informar preço de venda.');
    dbedtPRECO_VENDA.SetFocus;
    Result := False;
    Exit;
  end;

  if Trim(dbedtPRECO_CUSTO.Text) = '' then
  begin
    TMensagem.Atencao('Informar preço de custo.');
    dbedtPRECO_CUSTO.SetFocus;
    Result := False;
    Exit;
  end;

  if (Trim(DBPesquisa1.Campo.Text) = '') then
  begin
    TMensagem.Atencao('Informar a Unidade de Medida.');
    DBPesquisa1.Campo.SetFocus;
    Result := False;
    Exit;
  end;

  if (DBPesquisa2.Campo.Text <> EmptyStr) then
  begin
    if ((DBEdit4.Text = EmptyStr) or (StrToFloat(DBEdit4.Text) < 0)) then
    begin
      TMensagem.Atencao('Informar a Quantidade da Conversão.');
      DBEdit4.SetFocus;
      Result := False;
      Exit;
    end;

//    if (StrToCurrDef(DBEdit6.Text, 0) < 0.01) then
//    begin
//      TMensagem.Atencao('Informar o Preço da Conversão.');
//      DBEdit6.SetFocus;
//      Result := False;
//      Exit;
//    end;
  end;
end;

function TFrm_Produto.ValidarMovimentacao: Boolean;
begin
  Result := True;

  if cds.IsEmpty then
  begin
    Result := False;
    Exit;
  end;

  if ((cds.Active) and (cds.State in [dsEdit, dsInsert])) then
  begin
    Result := False;
    TMensagem.Atencao('Necessário salvar antes de gerar a movimentação.');
    Exit;
  end;

  if (cbbTpMov.ItemIndex = 0) then
  begin
    Result := False;
    TMensagem.Atencao('Informe o tipo de movimentação: ENTRADA/SAIDA');
    cbbTpMov.SetFocus;
    Exit;
  end;

  if ((edtQtdeMov.Text = '') or (StrToFloat(edtQtdeMov.Text) < 1)) then
  begin
    Result := False;
    TMensagem.Atencao('Informe a quantidade a ser movimentada.');
    edtQtdeMov.SetFocus;
    Exit;
  end;
end;

end.

unit UFrm_MateriaPrima;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad,
  System.Actions, Vcl.ActnList, Data.DB, Datasnap.DBClient, Vcl.ComCtrls,
  Vcl.Buttons, PngSpeedButton, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls,
  UDBPesquisa, Vcl.Mask, Vcl.DBGrids, UEDPesquisa, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.Grids;

type
  TFrm_MateriaPrima = class(TPdr_Cad)
    Panel2: TPanel;
    actTrilhar: TAction;
    pnlPages: TPanel;
    pgc1: TPageControl;
    tsEstoque: TTabSheet;
    TabSheet2: TTabSheet;
    pnlFornecedores: TPanel;
    tsFragmentacao: TTabSheet;
    pnlEstoque: TPanel;
    pnlMovimentar: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    lblTitMov: TLabel;
    btnMovimentar: TSpeedButton;
    cbbTpMov: TComboBox;
    edtQtdeMov: TEdit;
    pnlEstoqueAtual: TPanel;
    Label26: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    dbtxtQTDE_ESTOQUE: TDBText;
    DBEdit12: TDBEdit;
    pnlFundoFragm: TPanel;
    lblTitConversao: TLabel;
    pnlTopTab: TPanel;
    pnlFragmExemplo: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    pnlFragmentacao: TPanel;
    lblUnidade: TLabel;
    pnlDadosFragmentacao: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    dbedtCONV_QTDE: TDBEdit;
    dbpsqsConvUnidade: TDBPesquisa;
    dbedtCONV_PRECO: TDBEdit;
    tsFiscal: TTabSheet;
    pnlFundoFiscal: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    dbcbbFISCAL_TIPO: TDBComboBox;
    dbcbbFISCAL_ORIGEM: TDBComboBox;
    dbpsqsNCM: TDBPesquisa;
    dbpsqsCEST: TDBPesquisa;
    tsHistPreco: TTabSheet;
    pnlHistorico: TPanel;
    pnlHistVenda: TPanel;
    Label14: TLabel;
    dbgrdHistCusto: TDBGrid;
    pnlHistCusto: TPanel;
    lblTitHistCusto: TLabel;
    dbgrdHistVenda: TDBGrid;
    Panel6: TPanel;
    pnlPreco: TPanel;
    lblTitPreco: TLabel;
    pnlPrecoCusto: TPanel;
    Label15: TLabel;
    Label17: TLabel;
    dbedtPRECO_CUSTO: TDBEdit;
    pnlPrecoCenter: TPanel;
    pnlPVenda: TPanel;
    Label16: TLabel;
    dbedtPRECO_VENDA: TDBEdit;
    pnlLucro: TPanel;
    lblLucro: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    pnlDescMaximo: TPanel;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    pnlPAtac: TPanel;
    Label27: TLabel;
    dbedtPRECO_ATACADO: TDBEdit;
    pnlLucroAtacado: TPanel;
    lblLucroAtacado: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    pnlQtdeMinAtac: TPanel;
    Label32: TLabel;
    dbedtQTDE_MIN_ATACADO: TDBEdit;
    pnlTopo: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    dbedtNOME: TDBEdit;
    dbpsqsUnidade: TDBPesquisa;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    dbpsqsGrupo: TDBPesquisa;
    dbpsqsSubGrupo: TDBPesquisa;
    pnlTopLeft: TPanel;
    Label37: TLabel;
    dbtxtCODIGO: TDBText;
    Label38: TLabel;
    dbcbbSITUACAO: TDBComboBox;
    DBMemo2: TDBMemo;
    pnlTrilha: TPanel;
    btnTrilhar: TSpeedButton;
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
    cdsULTIMA_ALTERACAO: TStringField;
    cdsCALC_CUSTO_COMPOSICAO: TStringField;
    cdsDESCRI_UNIDADE: TStringField;
    cdsCONV_DESCRIUNIDADE: TStringField;
    cdsGRUPO: TStringField;
    cdsSUBGRUPO: TStringField;
    cdsNCM: TStringField;
    cdsCEST: TStringField;
    cdsfdqryPrecoCustoHist: TDataSetField;
    cdsfdqryPrecoVendaHist: TDataSetField;
    cdsfdqryProdutoFornecedor: TDataSetField;
    cdsfdqryProdutoComposicao: TDataSetField;
    chkTipo: TCheckBox;
    cdsFornecedor: TClientDataSet;
    cdsHistVenda: TClientDataSet;
    cdsHistCusto: TClientDataSet;
    dsFornecedor: TDataSource;
    dsHistVenda: TDataSource;
    dsHistCusto: TDataSource;
    cdsHistVendaID_PROD: TIntegerField;
    cdsHistVendaUSUARIO: TStringField;
    cdsHistVendaPRECO_NOVO: TFMTBCDField;
    cdsHistVendaDATA: TDateField;
    cdsHistVendaDT_FIM: TDateField;
    cdsHistCustoID_PROD: TIntegerField;
    cdsHistCustoPRECO_NOVO: TFMTBCDField;
    cdsHistCustoDATA: TDateField;
    cdsHistCustoDATA_FIM: TDateField;
    cdsHistCustoUSUARIO: TStringField;
    cdsFornecedorID_FORNECEDOR: TIntegerField;
    cdsFornecedorID_PRODUTO: TIntegerField;
    cdsFornecedorPRECO: TFMTBCDField;
    cdsFornecedorREFERENCIA_FORNEC: TStringField;
    cdsFornecedorRAZAO_NOME: TStringField;
    actMovimentar: TAction;
    pnlExcFrag: TPanel;
    imgExcFrag: TImage;
    btnExcFragmentacao: TSpeedButton;
    actExcFragmentacao: TAction;
    procedure EdPesquisa5Pesquisa(Sender: TObject; var Retorno: string);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure DBPesquisa1Pesquisa(Sender: TObject; var Retorno: string);
    procedure PngAddProdutoClick(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure actTrilharExecute(Sender: TObject);
    procedure dbpsqsConvUnidadePesquisa(Sender: TObject; var Retorno: string);
    procedure pnlDescClick(Sender: TObject);
    procedure actMovimentarExecute(Sender: TObject);
    procedure cdsDESCRI_UNIDADEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsPRECO_ATACADOChange(Sender: TField);
    procedure cdsQTDE_ESTOQUEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsAfterCancel(DataSet: TDataSet);
    procedure chkTipoClick(Sender: TObject);
    procedure actExcFragmentacaoExecute(Sender: TObject);
    procedure dbpsqsNCMPesquisa(Sender: TObject; var Retorno: string);
    procedure dbpsqsCESTPesquisa(Sender: TObject; var Retorno: string);
    procedure dbpsqsGrupoPesquisa(Sender: TObject; var Retorno: string);
    procedure dbpsqsSubGrupoPesquisa(Sender: TObject; var Retorno: string);
  private
    function Validar(): Boolean;
    function ValidarMovimentacao(): Boolean;
    function VoltaQtde(aQtde: Extended): Extended;

    procedure MontaSql(pCodigo : Integer) ;
    procedure ResetaCDS() ;
    procedure MargemLucro(aTipo:integer);
  public
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

uses
  UDM, UConsulta, URel_ProdutoTrilha, u_Mensagem;

procedure TFrm_MateriaPrima.actExcFragmentacaoExecute(Sender: TObject);
begin
  inherited;
  Editar;
  cds.FieldByName('CONV_UNIDADE').Clear;
  cds.FieldByName('CONV_QTDE').Clear;
  cds.FieldByName('CONV_PRECO').Clear;
  cds.FieldByName('CONV_DESCRIUNIDADE').Clear;
end;

procedure TFrm_MateriaPrima.actMovimentarExecute(Sender: TObject);
begin
  inherited;
  if ValidarMovimentacao then
    if DM.SMProducao.setMovimento(DM.BancoDados, DM.User,
      cds.FieldByName('codigo').AsInteger, StrToFloat(edtQtdeMov.Text),
      VoltaQtde(StrToFloat(edtQtdeMov.Text)),
      cds.FieldByName('COD_UNIDADE').AsInteger, cbbTpMov.Text,
      cds.FieldByName('NOME').AsString) then
    begin
      MontaSql(cds.FieldByName('codigo').AsInteger);
      cbbTpMov.ItemIndex := 0;
      edtQtdeMov.Text := '0';
    end
    else
      TMensagem.Erro('Não foi possivel gerar a movimentação. Tente novamente.');
end;

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
end;

procedure TFrm_MateriaPrima.cdsAfterCancel(DataSet: TDataSet);
begin
  inherited;
  cdsFornecedor.CancelUpdates;
  cdsHistVenda.CancelUpdates;
  cdsHistCusto.CancelUpdates;
end;

procedure TFrm_MateriaPrima.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCODIGO.AsInteger       := 0;//DM.GetInteger('select GEN_ID(GEN_PRODUTO,1) id from RDB$DATABASE','id') ;
  cdsQTDE_ESTOQUE.AsFloat   := 0 ;
  cdsPESO_BRUTO.AsFloat     := 0 ;
  cdsPESO_LIQUIDO.AsFloat   := 0 ;
  cdsPRECO_VENDA.AsCurrency := 0 ;
  cdsPRECO_CUSTO.AsCurrency := 0 ;
  cdsQTDE_MINIMA.AsFloat    := 0 ;
  cdsTIPO_PRODUTO.AsString  := 'MP' ;
  cdsDT_CADASTRO.AsDateTime := Date;
  cdsSITUACAO.AsString := 'ATIVO';
end;

procedure TFrm_MateriaPrima.cdsBeforePost(DataSet: TDataSet);
begin
  inherited;
  cds.FieldByName('ULTIMA_ALTERACAO').AsString := DM.UsuarioDataHora;
end;

procedure TFrm_MateriaPrima.cdsDESCRI_UNIDADEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := Sender.AsString;
  lblUnidade.Visible := False;
  if ((not Sender.IsNull) and (Sender.AsString <> EmptyStr)) then
  begin
    lblUnidade.Caption := '1 ' + Sender.AsString + ' = ';
    lblUnidade.Visible := True;
  end;
end;

procedure TFrm_MateriaPrima.cdsPRECO_ATACADOChange(Sender: TField);
begin
  inherited;
  pnlQtdeMinAtac.Visible := (cds.FieldByName('PRECO_ATACADO').AsCurrency > 0);
  if pnlQtdeMinAtac.Visible then
    dbedtQTDE_MIN_ATACADO.SetFocus;
end;

procedure TFrm_MateriaPrima.cdsQTDE_ESTOQUEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if (not cds.FieldByName('CONV_QTDE').IsNull) then
    Text := FormatFloat('#,##0', (Sender.AsFloat / cds.FieldByName('CONV_QTDE').AsFloat))
  else
    Text := FormatFloat('##0.000', Sender.AsFloat);
end;

procedure TFrm_MateriaPrima.chkTipoClick(Sender: TObject);
begin
  inherited;
  Editar;
  if chkTipo.Checked then
    cds.FieldByName('TIPO_PRODUTO').AsString := 'A'
  else
    cds.FieldByName('TIPO_PRODUTO').AsString := 'MP';
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

procedure TFrm_MateriaPrima.dbpsqsGrupoPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := IntToStr(Consulta.Grupo_Produto) ;
end;

procedure TFrm_MateriaPrima.dbpsqsCESTPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.CEST.ToString;
end;

procedure TFrm_MateriaPrima.dbpsqsConvUnidadePesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoUnidade;
begin
  inherited;
  aRet := Consulta.Unidade;
  if aRet.Codigo > 0 then
    Retorno := IntToStr(aRet.Codigo);
end;

procedure TFrm_MateriaPrima.dbpsqsNCMPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.NCM.ToString;
end;

procedure TFrm_MateriaPrima.dbpsqsSubGrupoPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := IntToStr(Consulta.SubGrupo_Produto) ;
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
  try
    inherited;
    if cds.ChangeCount > 0 then
    begin
      DM.SMProduto.setProduto(DM.BancoDados, cds.FieldByName('ID').AsInteger, cds.Delta);
      cds.Close;
      cds.Data := DM.SMProduto.getProduto(DM.BancoDados, -1);
    end;
    TMensagem.Informacao('Exclusão efetuada com sucesso.');
  except
    TMensagem.Erro('', 'Exclusão não efetuada.');
  end;
end;

procedure TFrm_MateriaPrima.FormCreate(Sender: TObject);
begin
  inherited;
  ResetaCDS ;
  pgc1.TabIndex := 0 ;
  pnlDescMaximo.Enabled := DM.UserPerfil = 'Administrador';
  pnlMovimentar.Enabled := DM.UserPerfil = 'Administrador';
end;

procedure TFrm_MateriaPrima.Gravar;
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

procedure TFrm_MateriaPrima.localizar;
var
  aRetProd: TRetornoProduto;
begin
  inherited;
  aRetProd := Consulta.Produto('''MP'',''A''','Consulta de Produtos/Matéria-Prima');

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

procedure TFrm_MateriaPrima.MargemLucro(aTipo: integer);
var
  lResultado: Currency;
begin
  if (aTipo = 0) then //Venda varejo
  begin
    lResultado := ((cds.FieldByName('preco_venda').AsCurrency - cds.FieldByName('preco_custo').AsCurrency) /
                      cds.FieldByName('preco_custo').AsCurrency) * 100;

    lblLucro.Caption := FormatCurr('#,##0.00', lResultado) + '%';
    if (lResultado > 0) then
      lblLucro.Font.Color := clGreen
    else
      lblLucro.Font.Color := clRed;
    pnlLucro.Visible := True;
  end;

  if (aTipo = 1) then //Venda Atacado
  begin
    lResultado := ((cds.FieldByName('PRECO_ATACADO').AsCurrency - cds.FieldByName('preco_custo').AsCurrency) /
                      cds.FieldByName('preco_custo').AsCurrency) * 100;

    lblLucroAtacado.Caption := FormatCurr('#,##0.00', lResultado) + '%';
    if (lResultado > 0) then
      lblLucroAtacado.Font.Color := clGreen
    else
      lblLucroAtacado.Font.Color := clRed;
    pnlLucroAtacado.Visible := True;
  end;
end;

procedure TFrm_MateriaPrima.MontaSql(pCodigo: Integer);
var
  tmp: OleVariant;
begin
  if pCodigo = 0 then
    Exit;

  cds.Close ;
  cds.Data := DM.SMProduto.getProduto(DM.BancoDados, pCodigo);

  pnlQtdeMinAtac.Visible := (cds.FieldByName('PRECO_ATACADO').AsCurrency > 0);

  try
    chkTipo.OnClick := nil;
    if (cds.FieldByName('TIPO_PRODUTO').AsString = 'A') then
      chkTipo.Checked := True
    else
      chkTipo.Checked := False;
  finally
    chkTipo.OnClick := chkTipoClick;
  end;
end;


procedure TFrm_MateriaPrima.Novo;
begin
//  inherited;
  if not (cds.State in [dsEdit, dsInsert]) then
  begin
    ResetaCDS;
    cds.append;
  end;
  dbedtNOME.SetFocus ;
end;

procedure TFrm_MateriaPrima.PngAddProdutoClick(Sender: TObject);
begin
 { if cds.IsEmpty then
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
  end;  }
end;


procedure TFrm_MateriaPrima.PngSpeedButton1Click(Sender: TObject);
const
    SQL = 'delete FROM PRODUTO_FORNECEDOR a '+
          'where a.ID = %s' ;
begin
  inherited;
//  if cdsProdutoFornecedor.IsEmpty then
//  begin
//    TMensagem.Atencao('Não há registro para ser excluso.') ;
//    Exit ;
//  end;
//
//  if TMensagem.Pergunta('Confirma a exclusão do Fornecedor: ' + cdsProdutoFornecedorRAZAO_NOME.AsString + ' ?') then
//    if DM.ExecutarSQL(DM.BancoDados, Format(SQL, [IntToStr(cdsProdutoFornecedorID.AsInteger)])) > 0 then
//    begin
//      cdsProdutoFornecedor.Delete;
//      TMensagem.Informacao('Exclusão efetuada com sucesso.');
//    end;
end;

procedure TFrm_MateriaPrima.pnlDescClick(Sender: TObject);
begin
  inherited;
  if (pnlDescMaximo.Enabled = False) then
  begin
    TMensagem.Informacao('Edição permitida para o perfil Administrador.');
  end;
end;

procedure TFrm_MateriaPrima.ResetaCDS;
begin
  cds.Close;
  cds.FieldDefs.Clear;
  cds.Data := DM.SMProduto.getProduto(DM.BancoDados, -1);
end;

function TFrm_MateriaPrima.Validar: Boolean;
begin
  Result := True;
  if (Trim(dbedtNOME.Text) = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe a Descrição do Material');
    dbedtNOME.SetFocus;
    Exit;
  end;

  if (Trim(dbpsqsUnidade.Campo.Text) = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe a unidade de medida');
    dbpsqsUnidade.Campo.SetFocus;
    Exit;
  end;

  if ((chkTipo.Checked) and (dbedtPRECO_VENDA.Text = EmptyStr)) then
  begin
    Result := False;
    TMensagem.Atencao('Informe o Preço de Venda.');
    dbedtPRECO_VENDA.SetFocus;
    Exit;
  end;

  if (dbedtPRECO_ATACADO.Text <> '') then
  begin
    if not (StrToFloatDef(dbedtQTDE_MIN_ATACADO.Text, 0) > 0) then
    begin
      TMensagem.Atencao('Informar a qtde. mínima para venda no atacado');
      dbedtQTDE_MIN_ATACADO.SetFocus;
      Result := False;
      Exit;
    end;
  end;

  //Validar Fragmentacao
  if ( (dbedtCONV_QTDE.Text <> '') or (dbedtCONV_PRECO.Text <> '') or
       (dbpsqsConvUnidade.Campo.Text <> '') ) then
  begin
    if (dbedtCONV_QTDE.Text = '') then
    begin
      Result := False;
      TMensagem.Atencao('Informar a quantidade fragmentada.');
      pgc1.TabIndex := 2;
      dbedtCONV_QTDE.SetFocus;
      Exit;
    end;
    if (dbedtCONV_PRECO.Text = '') then
    begin
      Result := False;
      TMensagem.Atencao('Informar o preço de venda fragmentado.');
      pgc1.TabIndex := 2;
      dbedtCONV_PRECO.SetFocus;
      Exit;
    end;
    if (dbpsqsConvUnidade.Campo.Text = '') then
    begin
      Result := False;
      TMensagem.Atencao('Informar a unidade fragmentada.');
      pgc1.TabIndex := 2;
      dbpsqsConvUnidade.Campo.SetFocus;
      Exit;
    end;
  end;
end;

function TFrm_MateriaPrima.ValidarMovimentacao: Boolean;
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
    TMensagem.Atencao('Necessário Salvar/Cancelar alteração antes de gerar a movimentação.');
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

function TFrm_MateriaPrima.VoltaQtde(aQtde: Extended): Extended;
begin
  Result := aQtde;

  if ((not cds.FieldByName('CONV_QTDE').IsNull) and (cds.FieldByName('CONV_QTDE').AsFloat > 0)) then
    Result := (aQtde * cds.FieldByName('CONV_QTDE').AsFloat)
end;

end.

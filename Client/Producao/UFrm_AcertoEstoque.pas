unit UFrm_AcertoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Mask, UEDPesquisa, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, System.StrUtils;

type
  TFrm_AcertoEstoque = class(TPdr_Cad)
    pnlHeader: TPanel;
    Label32: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    pnlDetail: TPanel;
    pnlRight: TPanel;
    pnlClientGrid: TPanel;
    pnlTopGrid: TPanel;
    pnlProdAdd: TPanel;
    pnlItem: TPanel;
    edpsqsProduto: TEdPesquisa;
    pnlTotalItem: TPanel;
    Label53: TLabel;
    lblTotItem: TLabel;
    Label4: TLabel;
    edtSaldo: TEdit;
    pnlAdd: TPanel;
    btnAddItem: TSpeedButton;
    pnlAlocaGrid: TPanel;
    dbgrdItens: TDBGrid;
    pnlLegenda: TPanel;
    Label5: TLabel;
    pnlEscolha: TPanel;
    Label6: TLabel;
    cbbTipo: TComboBox;
    dsLoteItens: TClientDataSet;
    sItens: TDataSource;
    cdsID: TIntegerField;
    cdsLOTE: TStringField;
    cdsEMISSAO: TDateField;
    cdsVALIDADE: TDateField;
    cdsENTREGA: TDateField;
    cdsESTIMATIVA_PRONTO: TSQLTimeStampField;
    cdsOBS: TStringField;
    cdsSTATUS: TStringField;
    cdsGERA_MATPRIMA: TStringField;
    cdsUSUARIO: TStringField;
    cdsLOTE_ACERTO: TStringField;
    cdsfdqryLoteItens: TDataSetField;
    dsLoteItensID: TIntegerField;
    dsLoteItensID_LOTE: TStringField;
    dsLoteItensCODPRO: TIntegerField;
    dsLoteItensQTDE: TFMTBCDField;
    dsLoteItensQTDE_FECHADA: TFMTBCDField;
    dsLoteItensCOD_UM: TIntegerField;
    dsLoteItensENTSAI: TStringField;
    dsLoteItensDESCRI_ITEM: TStringField;
    DBEdit1: TDBEdit;
    actAddItem: TAction;
    DBEdit3: TDBEdit;
    pnlAutorizar: TPanel;
    btnAutorizar: TSpeedButton;
    actAutorizar: TAction;
    cdsAUTORIZACAO: TStringField;
    actAutorizado: TAction;
    DBText1: TDBText;
    pnlExcItem: TPanel;
    imgExcItem: TImage;
    btnEscItem: TSpeedButton;
    actExcItem: TAction;
    procedure cbbTipoClick(Sender: TObject);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure actAddItemExecute(Sender: TObject);
    procedure edtSaldoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edpsqsProdutoedtCampoChange(Sender: TObject);
    procedure actAutorizarExecute(Sender: TObject);
    procedure actAutorizadoExecute(Sender: TObject);
    procedure edpsqsProdutoPesquisa(Sender: TObject; var Retorno: string);
    procedure actExcItemExecute(Sender: TObject);
    procedure dsLoteItensBeforeDelete(DataSet: TDataSet);
  private
    FTipo: string;
    function ValidaItem(): Boolean;
    function VoltaQtde(): Double;
    procedure LoadSaldo();
    procedure NovoItem();
  public
    property Tipo: string read FTipo;
    procedure Novo(); override;
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
//    procedure Cancelar(); override;
//    procedure Editar(); override;
    procedure MontaSQL(aID: integer);
  end;

var
  Frm_AcertoEstoque: TFrm_AcertoEstoque;

implementation

uses
  u_Mensagem, UDM, UConsulta, UFuncoes;

{$R *.dfm}

procedure TFrm_AcertoEstoque.actAddItemExecute(Sender: TObject);
var
  lQtde: Double;
begin
  inherited;
  if (not ValidaItem) then
  begin
    Exit;
  end;

  lQtde := VoltaQtde;
  if (lQtde = 0) then //Saldo recontagem = Saldo atual
    Exit;

  if dsLoteItens.Locate('CODPRO',edpsqsProduto.Campo.Text,[]) then
  begin
    TMensagem.Atencao('Item ja existe neste LOTE. Necessário exclusao do mesmo para adicionar novamente.');
  end
  else
  begin
    dsLoteItens.Append;
    dsLoteItens.FieldByName('ID').AsInteger := 0;
    dsLoteItens.FieldByName('ID_LOTE').AsString := cds.FieldByName('LOTE').AsString;
    dsLoteItens.FieldByName('CODPRO').AsInteger := StrToInt(edpsqsProduto.Campo.Text);
    dsLoteItens.FieldByName('QTDE').AsFloat := lQtde;
    dsLoteItens.FieldByName('QTDE_FECHADA').AsFloat := 0;
    dsLoteItens.FieldByName('COD_UM').AsInteger := 35; //KG
    dsLoteItens.FieldByName('ENTSAI').AsString := ifthen(lQtde>0,'ENTRADA','SAIDA');
    dsLoteItens.FieldByName('DESCRI_ITEM').AsString := edpsqsProduto.Mostrar.Text;
    dsLoteItens.Post;
  end;

  NovoItem;
end;

procedure TFrm_AcertoEstoque.actAutorizadoExecute(Sender: TObject);
begin
  inherited;
  TMensagem.Informacao('Lote já foi autoizado e baixado.');
end;

procedure TFrm_AcertoEstoque.actAutorizarExecute(Sender: TObject);
const
  SQL = 'update LOTE a '+
        'set a.AUTORIZACAO = %s,'+
        'a.STATUS = ''FINALIZADO'' '+
        'where a.ID = %s';

  SQL2 = 'update LOTE_ITENS a '+
         'set a.QTDE_FECHADA = a.QTDE '+
         'where a.ID_LOTE = %s';
begin
  inherited;
  if (DM.UserPerfil <> 'Administrador') then
  begin
    TMensagem.Informacao('Autorização pode ser concedida apenas a usuário com perfil: Administrador.');
    Abort;
  end;

  //$004A4A4A - AUTORIZAR $0034C58B - AUTORIZADO
  if TMensagem.Pergunta('Confirma a autorização de Baixa do Lote: '+cds.FieldByName('LOTE').AsString+'?') then
  begin
    try
      DM.ExecutarSQL(DM.BancoDados,Format(SQL2,[QuotedStr(cds.FieldByName('LOTE').AsString)]));
      DM.ExecutarSQL(DM.BancoDados,Format(SQL,[QuotedStr(DM.UsuarioDataHora),cds.FieldByName('ID').AsString]));
      btnAutorizar.Action := actAutorizado;
      pnlAutorizar.Color := $0034C58B;
      MontaSQL(cds.FieldByName('ID').AsInteger);
      TMensagem.Informacao('Lote autorizado e baixado com êxito.');
    except
      TMensagem.Erro('Autorização do lote nao pode ser efetuado. Tente novamente.');
    end;
  end;
end;

procedure TFrm_AcertoEstoque.actExcItemExecute(Sender: TObject);
begin
  inherited;
  if ((cds.IsEmpty) or (dsLoteItens.IsEmpty)) then
    Exit;

  if (cds.FieldByName('STATUS').AsString = 'FINALIZADO') then
  begin
    TMensagem.Informacao('Lote Finalizado. Exclusão não pode ser efetuada.');
    Abort;
  end;

  if not dbgrdItens.Columns.Grid.Focused then
  begin
    TMensagem.Informacao('Selecione o item a ser excluso.');
    Exit;
  end;

  dsLoteItens.Delete;
end;

procedure TFrm_AcertoEstoque.cbbTipoClick(Sender: TObject);
begin
  inherited;
  case cbbTipo.ItemIndex of
    0:
      begin
        pnlEscolha.Visible := True;
        TMensagem.Informacao('Informe o tipo de movimentação deseja');
      end;
    1:
      begin
        fTipo := 'AC';
        pnlEscolha.Visible := False;
        Novo;
      end;
    2:
      begin
        fTipo := 'ZR';
        pnlEscolha.Visible := False;
        Novo;
      end;
  end;
end;

procedure TFrm_AcertoEstoque.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds.FieldByName('ID').AsInteger := 0;
  cds.FieldByName('LOTE').AsString := Tipo+FormatDateTime('ddmmyyhhmm',Now);
  cds.FieldByName('EMISSAO').AsDateTime := Date;
  cds.FieldByName('STATUS').AsString := 'PENDENTE';
  cds.FieldByName('GERA_MATPRIMA').AsString := 'N';
  cds.FieldByName('USUARIO').AsString := DM.UsuarioDataHora;
  cds.FieldByName('LOTE_ACERTO').AsString := 'S';
end;

procedure TFrm_AcertoEstoque.dsLoteItensBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (cds.State in [dsInsert,dsEdit]) then
    cds.Edit;
end;

procedure TFrm_AcertoEstoque.edpsqsProdutoedtCampoChange(Sender: TObject);
begin
  inherited;
  LoadSaldo();
end;

procedure TFrm_AcertoEstoque.edpsqsProdutoPesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoProduto;
begin
  inherited;
  aRet := Consulta.Produto(EmptyStr,'Consulta de Produtos/Matéria-Prima');
  if aRet.iCodigo > 0 then
  begin
    Retorno := IntToStr(aRet.iCodigo);
  end;
end;

procedure TFrm_AcertoEstoque.edtSaldoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
    actAddItem.Execute;

  if not (Key in ['0'..'9', #8, ',', #13]) then
    Key := #0;
end;

procedure TFrm_AcertoEstoque.Excluir;
begin
  try
    inherited;
    if cds.ChangeCount > 0 then
    begin
      DM.SMProducao.setProducao(DM.BancoDados, cds.FieldByName('ID').AsInteger, cds.Delta);
      cds.Close;
      cds.Data := DM.SMProducao.getProducao(DM.BancoDados, -1);
    end;
    TMensagem.Informacao('Exclusão efetuada com sucesso.');
  except
    TMensagem.Erro('', 'Exclusão não efetuada.');
  end;
end;

procedure TFrm_AcertoEstoque.FormCreate(Sender: TObject);
begin
  inherited;
  pnlEscolha.BringToFront;
end;

procedure TFrm_AcertoEstoque.Gravar;
var
  lRetorno: OleVariant;
begin
  inherited;
  if (cds.ChangeCount > 0) then
  begin
    try
      lRetorno := DM.SMProducao.setProducao(DM.BancoDados, cds.FieldByName('ID').AsInteger, cds.Delta);
      cds.Close;
      cds.Data := lRetorno;
      TMensagem.Informacao('Gravação efetuada com sucesso');

      pnlAutorizar.Visible := (not cds.IsEmpty);
    except
      TMensagem.Erro('Não foi possível gravar o LOTE. Tente novamente.');
    end;
  end;
end;

procedure TFrm_AcertoEstoque.LoadSaldo;
const
  SQL = 'select coalesce(qtde_estoque,0) qtde from PRODUTO where codigo = %s';
begin
  lblTotItem.Caption := FormatFloat('#,##0.0000',0);
  if ((edpsqsProduto.Campo.Text = '') or
      (edpsqsProduto.Mostrar.Text = 'Valor digitado não encontrado...') )  then
    Exit;

  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL,[edpsqsProduto.Campo.Text]));

  lblTotItem.Caption := FormatFloat('#,##0.0000',DM.dsConsulta.FieldByName('qtde').AsFloat);
end;

procedure TFrm_AcertoEstoque.localizar;
var
  aRetLote: TRetornoLote;
begin
  inherited;
  aRetLote := Consulta.Lote('S');

  if (aRetLote.ID > 0) then
  begin
    MontaSql(aRetLote.ID);
    pnlEscolha.SendToBack;
  end;
end;

procedure TFrm_AcertoEstoque.MontaSQL(aID: integer);
begin
  if (aID > 0) then
  begin
    cds.Close;
    cds.Data := DM.SMProducao.getProducao(DM.BancoDados, aID);
    if (not cds.IsEmpty) then
    begin
      //$004A4A4A - AUTORIZAR $0034C58B - AUTORIZADO
      if cds.FieldByName('AUTORIZACAO').IsNull then
      begin
        pnlAutorizar.Color := $004A4A4A;
        btnAutorizar.Action := actAutorizar;
      end
      else
      begin
        pnlAutorizar.Color := $0034C58B;
        btnAutorizar.Action := actAutorizado;
      end;
      pnlAutorizar.Visible := True;
    end;
  end;
end;

procedure TFrm_AcertoEstoque.Novo;
begin
  inherited;
  pnlAutorizar.Visible := False;
  DBEdit2.SetFocus;
end;

procedure TFrm_AcertoEstoque.NovoItem;
begin
  edpsqsProduto.Campo.Text := '';
  edpsqsProduto.Mostrar.Text := '';
  edtSaldo.Text := '';

  edpsqsProduto.Campo.SetFocus;
end;

function TFrm_AcertoEstoque.ValidaItem: Boolean;
var
  lValor: Double;
begin
  Result := True;

  if (cds.FieldByName('STATUS').AsString = 'FINALIZADO') then
  begin
    Result := False;
    TMensagem.Atencao('Lote já Finalizado.');
    edpsqsProduto.Campo.SetFocus;
    Exit;
  end;

  if ( (edpsqsProduto.Campo.Text = '') or
       (edpsqsProduto.Mostrar.Text = 'Valor digitado não encontrado...') )  then
  begin
    Result := False;
    TMensagem.Atencao('Infome o Item.');
    edpsqsProduto.Campo.SetFocus;
    Exit;
  end;

  if (not TryStrToFloat(edtSaldo.Text,lValor)) then
  begin
    Result := False;
    TMensagem.Atencao('Saldo recontagem inválido.');
    Exit;
  end;
end;

function TFrm_AcertoEstoque.VoltaQtde: Double;
var
  lQtdeContagem, lQtdeSistema: Double;
begin
  lQtdeContagem := StrToFloat( StringReplace(ValorFormatadoFirebird(edtSaldo.Text),'.',',',[rfReplaceAll]) );
  lQtdeSistema :=  StrToFloat( StringReplace(ValorFormatadoFirebird(lblTotItem.Caption),'.',',',[rfReplaceAll]) );

  if (lQtdeContagem > lQtdeSistema) then
    Result := (lQtdeContagem-lQtdeSistema)
  else if (lQtdeContagem < lQtdeSistema) then
    Result := ((lQtdeSistema-lQtdeContagem)*-1)
  else
    Result := 0;
end;

end.

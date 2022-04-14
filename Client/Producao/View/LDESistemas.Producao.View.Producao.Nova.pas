unit LDESistemas.Producao.View.Producao.Nova;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child2, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Samples.Spin, UEDPesquisa,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TFrmProducaoNova = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlBotoes: TPanel;
    pnlIncluir: TPanel;
    btnIncluir: TSpeedButton;
    pnlCenter: TPanel;
    pnlIncRodapeIncProduto: TPanel;
    pnlIncProduto: TPanel;
    btnIncProduto: TSpeedButton;
    pnlRodapeCustoTotal: TPanel;
    pnlGrid: TPanel;
    dbgrdPedidos: TDBGrid;
    lblCustoTotal: TLabel;
    lbl1: TLabel;
    pnlTop: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edtInicio: TEdit;
    edtFimProducao: TEdit;
    Label1: TLabel;
    edtResponsavel: TEdit;
    Label4: TLabel;
    edtObservacao: TEdit;
    dsItem: TDataSource;
    cdsItem: TClientDataSet;
    cdsLote: TClientDataSet;
    cdsLoteID: TIntegerField;
    cdsLoteEMISSAO: TDateField;
    cdsLoteDT_FIM_PRODUCAO: TDateField;
    cdsLoteOBS: TStringField;
    cdsLoteSTATUS: TStringField;
    cdsLoteGERA_MATPRIMA: TStringField;
    cdsLoteUSUARIO: TStringField;
    cdsLoteLOTE_ACERTO: TStringField;
    cdsLoteAUTORIZACAO: TStringField;
    dsLote: TDataSource;
    cdsItemID_LOTE: TIntegerField;
    cdsItemLOTE: TStringField;
    cdsItemCODPRO: TIntegerField;
    cdsItemQTDE: TFMTBCDField;
    cdsItemQTDE_FECHADA: TFMTBCDField;
    cdsItemCOD_UM: TIntegerField;
    cdsItemENTSAI: TStringField;
    cdsItemVALIDADE: TDateField;
    cdsItemCUSTO: TFMTBCDField;
    cdsItemPRODUTO: TStringField;
    cdsItemUNIDADE: TStringField;
    cdsItemtotal: TAggregateField;
    actSalvarProducao: TAction;
    actCancelarProducao: TAction;
    procedure edtInicioKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncProdutoClick(Sender: TObject);
    procedure edtFimProducaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsLoteAfterInsert(DataSet: TDataSet);
    procedure cdsItemAfterInsert(DataSet: TDataSet);
    procedure actSalvarProducaoExecute(Sender: TObject);
    procedure actCancelarProducaoExecute(Sender: TObject);
  private
    FCustoTotal: Currency;
    FIDLote: integer;
    procedure Iniciar();
    procedure SetCustoTotal(const Value: Currency);
    procedure InsertLote();
    function Validar(): Boolean;
    procedure CancelarProducao();
    procedure CarregarDados();
    procedure SetIDLote(const Value: integer);
  public
    property CustoTotal : Currency read FCustoTotal write SetCustoTotal;
    property IDLote : integer read FIDLote write SetIDLote;
  end;

var
  FrmProducaoNova: TFrmProducaoNova;

implementation

uses
  UDM, LDESistemas.Producao.View.Producao.IncluirItem, uFormat, u_Mensagem;

{$R *.dfm}

{ TFrmProducaoNova }

procedure TFrmProducaoNova.actCancelarProducaoExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrmProducaoNova.actSalvarProducaoExecute(Sender: TObject);
begin
  inherited;
  if not Validar then
    Exit;
  try
    InsertLote;
    if DM.SMProducao.setProducao_Insert(DM.BancoDados, VarArrayOf([cdsLote.Delta, cdsItem.Delta])) then
    begin
      TMensagem.Informacao('Ordem de produção gerado com sucesso.');
      Close;
    end
    else
      TMensagem.Erro('Não foi posível salvar a produção.' + sLineBreak + 'Tente novamente.');
  except
    TMensagem.Erro('Não foi posível salvar a produção.' + sLineBreak + 'Tente novamente.');
  end;
end;

procedure TFrmProducaoNova.btnIncProdutoClick(Sender: TObject);
begin
  inherited;
  if not Assigned(FrmProducaoIncluirItem) then
    FrmProducaoIncluirItem := TFrmProducaoIncluirItem.Create(Self);
  AlphaBlend := True;
  AlphaBlendValue := 128;
  try
    FrmProducaoIncluirItem.ShowModal;
    if (FrmProducaoIncluirItem.Retorno = 'sucess') then
    begin
      cdsItem.Append;
      cdsItemLOTE.AsString := FrmProducaoIncluirItem.LOTE;
      cdsItemCODPRO.AsInteger := FrmProducaoIncluirItem.ID_PRODUTO;
      cdsItemQTDE.AsFloat := FrmProducaoIncluirItem.Qtde;
      cdsItemQTDE_FECHADA.AsFloat := 0;
      cdsItemCOD_UM.AsInteger := FrmProducaoIncluirItem.ID_UND;
      if FrmProducaoIncluirItem.VALIDADE <> 0  then
        cdsItemVALIDADE.AsDateTime := FrmProducaoIncluirItem.VALIDADE;
      cdsItemCUSTO.AsCurrency := FrmProducaoIncluirItem.CustoProducao;
      cdsItemPRODUTO.AsString := FrmProducaoIncluirItem.PRODUTO;
      cdsItemUNIDADE.AsString := FrmProducaoIncluirItem.UNIDADE;
      cdsItem.Post;
      CustoTotal := FCustoTotal + FrmProducaoIncluirItem.CustoProducao;
    end;
  finally
    FreeAndNil(FrmProducaoIncluirItem);
    AlphaBlend := False;
  end;
end;

procedure TFrmProducaoNova.CancelarProducao;
begin
  CarregarDados;
  pnlTop.Enabled := False;
  pnlIncRodapeIncProduto.Visible := False;
  pnlIncluir.Color := $009A5741;
  btnIncluir.Action := actCancelarProducao;

end;

procedure TFrmProducaoNova.CarregarDados;
var
  lDados: OleVariant;
begin
  lDados := DM.SMProducao.getLote(DM.BancoDados, FIDLote);
  if not VarIsNull(lDados) then
  begin
    cdsLote.Data := lDados[0];
    edtInicio.Text := FormatDateTime('dd/mm/yyyy',cdsLote.FieldByName('EMISSAO').AsDateTime);
    edtFimProducao.Text := FormatDateTime('dd/mm/yyyy',cdsLote.FieldByName('DT_FIM_PRODUCAO').AsDateTime);
    edtResponsavel.Text := cdsLote.FieldByName('USUARIO').AsString;
    edtObservacao.Text := cdsLote.FieldByName('OBS').AsString;
    cdsItem.Data := lDados[1];
    CustoTotal := cdsItemtotal.Value;
  end;
end;

procedure TFrmProducaoNova.cdsItemAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsItemID_LOTE.AsInteger := -1;
  cdsItemENTSAI.AsString := 'ENTRADA';
end;

procedure TFrmProducaoNova.cdsLoteAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsLoteID.AsInteger := -1;
  cdsLoteSTATUS.AsString := 'PENDENTE';
  cdsLoteGERA_MATPRIMA.AsString := 'S';
  cdsLoteLOTE_ACERTO.AsString := 'N';
end;

procedure TFrmProducaoNova.edtFimProducaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Formatar(edtFimProducao, TFormato.Dt);
end;

procedure TFrmProducaoNova.edtInicioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Formatar(edtInicio, TFormato.Dt);
end;

procedure TFrmProducaoNova.FormCreate(Sender: TObject);
begin
  inherited;
  cdsLote.Close;
  cdsLote.CreateDataSet;
  cdsItem.Close;
  cdsItem.CreateDataSet;
end;

procedure TFrmProducaoNova.FormShow(Sender: TObject);
begin
  inherited;
//  Iniciar;
  if (FIDLote = -1) then
    Iniciar
  else
    CancelarProducao;
end;

procedure TFrmProducaoNova.Iniciar;
begin
  edtInicio.Text := FormatDateTime('dd/mm/yyyy',Date);
  edtFimProducao.Text := FormatDateTime('dd/mm/yyyy',Date);
  edtResponsavel.Text := DM.Usuario.Login;
  CustoTotal := 0;
  edtFimProducao.SetFocus;
  btnIncluir.Action := actSalvarProducao;
end;

procedure TFrmProducaoNova.InsertLote;
begin
  cdsLote.Append;
  cdsLote.FieldByName('EMISSAO').AsDateTime := StrToDate(edtInicio.Text);
  cdsLote.FieldByName('DT_FIM_PRODUCAO').AsDateTime := StrToDate(edtFimProducao.Text);
  if (edtObservacao.Text <> '') then
    cdsLote.FieldByName('OBS').AsString := edtObservacao.Text;
  cdsLote.FieldByName('USUARIO').AsString := edtResponsavel.Text;
  cdsLote.Post;
end;

procedure TFrmProducaoNova.SetCustoTotal(const Value: Currency);
begin
  FCustoTotal := Value;
  lblCustoTotal.Caption := FormatCurr('R$ #,##0.00',Value);
end;

procedure TFrmProducaoNova.SetIDLote(const Value: integer);
begin
  FIDLote := Value;

end;

function TFrmProducaoNova.Validar: Boolean;
var
  lData: TDateTime;
begin
  Result := True;
  if not ((TryStrToDate(edtInicio.Text,lData)) or (TryStrToDate(edtInicio.Text,lData))) then
  begin
    Result := False;
    TMensagem.Atencao('Data inválida.');
    edtInicio.SetFocus;
    Exit;
  end;
end;

end.

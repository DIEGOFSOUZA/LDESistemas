unit UFrm_PDVDevConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  UPdr_Child2, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Datasnap.DBClient,
  U_DataCorrida;

type
  TFrm_PDVDevConsulta = class(TPdr_Child2)
    pnlFundo: TPanel;
    pnlConsulta: TPanel;
    pnlData: TPanel;
    Label1: TLabel;
    dtp1: TDateTimePicker;
    pnlCupom: TPanel;
    edtCupom: TEdit;
    Label3: TLabel;
    Label2: TLabel;
    cbbFIltro: TComboBox;
    pnlVendas: TPanel;
    pnlTitVendas: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    pnlAcoes: TPanel;
    pnlGrid: TPanel;
    dbgrdVendas: TDBGrid;
    pnlTroca: TPanel;
    btnTroca: TSpeedButton;
    actTroca: TAction;
    actImpressao: TAction;
    actCancelarVenda: TAction;
    actFiltrar: TAction;
    pnlImprimir: TPanel;
    btnImpressao: TSpeedButton;
    pnlCancelarVenda: TPanel;
    btnCancelarVenda: TSpeedButton;
    dsVenda: TDataSource;
    cdsVenda: TClientDataSet;
    cdsVendaTIPO: TStringField;
    cdsVendaID: TIntegerField;
    cdsVendaEMISSAO: TDateField;
    cdsVendaVL_TOTAL: TFMTBCDField;
    cdsVendaNOME_RAZAO: TStringField;
    pnlFiltrar: TPanel;
    btnFiltrar: TSpeedButton;
    cdsVendaSTATUS: TStringField;
    cdsVendaCLIENTE_DEFAULT: TStringField;
    procedure cbbFIltroChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actTrocaExecute(Sender: TObject);
    procedure actImpressaoExecute(Sender: TObject);
    procedure actCancelarVendaExecute(Sender: TObject);
    procedure actFiltrarExecute(Sender: TObject);
    procedure edtCupomKeyPress(Sender: TObject; var Key: Char);
  private
    procedure FitGrid(Grid: TDBGrid);   //deixar todas as colunas com o tam = maior registro
  public
    { Public declarations }
  end;

var
  Frm_PDVDevConsulta: TFrm_PDVDevConsulta;

implementation

uses
  UDM, u_Mensagem, URel_Venda0, UFrm_PDVDevItem;


{$R *.dfm}

procedure TFrm_PDVDevConsulta.actCancelarVendaExecute(Sender: TObject);
const
  SQL = 'select p.retorno from pro_iscrediario(%s,%s)p';
var
  lJustificativa: string;
begin
  inherited;
  if cdsVenda.IsEmpty then
    Exit;

  if not dbgrdVendas.Columns.Grid.Focused then
  begin
    TMensagem.Informacao('Selecione a venda a ser cancelada.');
    Exit;
  end;

//  if (cdsVenda.FieldByName('EMISSAO').AsDateTime <> Date) then
//  begin
//    TMensagem.Atencao('Cancelamento permitido apenas para vendas do dia.');
//    Exit;
//  end;

  if (cdsVenda.FieldByName('STATUS').AsString = 'CANCELADA') then
  begin
    TMensagem.Atencao('Venda já foi cancelada.');
    Exit;
  end;

  if (DM.GetInteger(Format(SQL,[QuotedStr('0'),cdsVenda.FieldByName('ID').AsString]),'retorno') = 1) then
  begin
    TMensagem.Atencao('Cancelamento permitido para vendas efetuada totalmente no crediario e não contenha duplicata recebida.');
    Exit;
  end;

  if TMensagem.Pergunta('Deseja realmente cancelar este cupom?') then
  begin
    lJustificativa := InputBox('JUSTIFICATIVA', 'Informe a Justificativa do cancelamento.', '');

    if DM.SMOrcamento.setCancelarVenda(DM.BancoDados, cdsVenda.FieldByName('ID').AsInteger, '0', lJustificativa, DM.UsuarioDataHora) then
    begin
      actFiltrar.Execute;
    end;
  end;
end;

procedure TFrm_PDVDevConsulta.actFiltrarExecute(Sender: TObject);
var
  lSQL, lCupom: string;
begin
  inherited;
  lCupom := '0';
  lSQL := 'select pm.tipo,pm.id,pm.emissao,pm.vl_total,c.nome_razao,pm.status,c.cliente_default ' +
          'from pdv_master pm ' +
          'left join cliente c on (c.codigo=pm.id_cliente) ' +
          'where pm.tipo = ''0'' ';
//          'and c.cliente_default = ''N'' ';
  if cbbFIltro.ItemIndex = 0 then
  begin
    lSQL := lSQL + ' and pm.emissao = ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.DateTime));
  end
  else
  begin
    if edtCupom.Text <> '' then
      lCupom := edtCupom.Text;
    lSQL := lSQL + ' and pm.id = ' + lCupom;
  end;

  cdsVenda.IndexFieldNames := 'nome_razao';
  cdsVenda.Close;
  cdsVenda.Data := DM.LerDataSet(lSQL);

  if cdsVenda.IsEmpty then
    TMensagem.Informacao('Nenhum registro encontrado.')
end;

procedure TFrm_PDVDevConsulta.actImpressaoExecute(Sender: TObject);
begin
  inherited;
  if cdsVenda.IsEmpty then
    Exit;

  if not dbgrdVendas.Columns.Grid.Focused then
  begin
    TMensagem.Informacao('Selecione a venda a ser impressa.');
    Exit;
  end;

  if not Assigned(Rel_Venda0) then
    Rel_Venda0 := TRel_Venda0.Create(Self);
  try
    Rel_Venda0.Executar(cdsVenda.FieldByName('ID').AsInteger, '0');
  finally
    FreeAndNil(Rel_Venda0);
  end;
end;

procedure TFrm_PDVDevConsulta.actTrocaExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(Frm_PDVDevItem) then
    Frm_PDVDevItem := TFrm_PDVDevItem.Create(Self);
  AlphaBlend := True;
  AlphaBlendValue := 128;
  try
    with Frm_PDVDevItem do
    begin
      Executar(cdsVenda.FieldByName('TIPO').AsString, cdsVenda.FieldByName('ID').AsInteger);
      ShowModal;
    end;
  finally
    FreeAndNil(Frm_PDVDevItem);
    AlphaBlend := False;
  end;
end;

procedure TFrm_PDVDevConsulta.cbbFIltroChange(Sender: TObject);
begin
  inherited;
  pnlData.Visible := cbbFIltro.ItemIndex = 0;
  pnlCupom.Visible := cbbFIltro.ItemIndex = 1;

  if (pnlData.Visible) then
    dtp1.SetFocus
  else
    edtCupom.SetFocus;
end;

procedure TFrm_PDVDevConsulta.edtCupomKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
    actFiltrar.Execute;
end;

procedure TFrm_PDVDevConsulta.FitGrid(Grid: TDBGrid);
const
  C_Add = 3;
var
  ds: TDataSet;
  bm: TBookmark;
  i: Integer;
  w: Integer;
  a: array of Integer;
begin
  ds := Grid.DataSource.DataSet;
  if Assigned(ds) then
  begin
    ds.DisableControls;
    bm := ds.GetBookmark;
    try
      ds.First;
      SetLength(a, Grid.Columns.Count);
      while not ds.Eof do
      begin
        for i := 0 to Grid.Columns.Count - 1 do
        begin
          if Assigned(Grid.Columns[i].Field) then
          begin
            w := Grid.Canvas.TextWidth(ds.FieldByName(Grid.Columns[i].Field.FieldName).DisplayText);
            if a[i] < w then
              a[i] := w;
          end;
        end;
        ds.Next;
      end;
      for i := 0 to Grid.Columns.Count - 1 do
        Grid.Columns[i].Width := a[i] + C_Add;
      ds.GotoBookmark(bm);
    finally
      ds.FreeBookmark(bm);
      ds.EnableControls;
    end;
  end;
end;

procedure TFrm_PDVDevConsulta.FormCreate(Sender: TObject);
begin
  inherited;
  pnlCupom.Left := 112;
  pnlCupom.Visible := False;
  dtp1.Date := Date;
  cbbFIltro.ItemIndex := 0;
  pnlFiltrar.Left := 224;
end;

end.


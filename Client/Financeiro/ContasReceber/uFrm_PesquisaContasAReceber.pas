unit uFrm_PesquisaContasAReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,System.Math,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPdr_FinanceiroPesquisar, Data.DB,
  Datasnap.DBClient, System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, UEDPesquisa,
  Vcl.ComCtrls;

type
  TFrm_PesquisaContasAReceber = class(TPdr_FinanceiroPesquisar)
    nbFiltros: TNotebook;
    edpCliente: TEdPesquisa;
    cbbFiltros: TComboBox;
    cbbOrigem: TComboBox;
    dsGridSELECAO: TIntegerField;
    dsGridVENCIMENTO: TDateField;
    dsGridSTATUS: TStringField;
    dsGridID_CLIENTE: TIntegerField;
    dsGridCLIENTE: TStringField;
    dsGridCONTA: TStringField;
    dsGridORIGEM: TStringField;
    dsGridVALOR: TFMTBCDField;
    dsGridSALDO: TFMTBCDField;
    dsGridTOT_VALOR: TAggregateField;
    dsGridTOT_SALDO: TAggregateField;
    pnlDatas: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    Label11: TLabel;
    chkSelTudo: TCheckBox;
    dsGridTIPO: TStringField;
    dsGridID: TIntegerField;
    dsGridORDEM: TStringField;
    procedure cbbFiltrosClick(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chkSelTudoClick(Sender: TObject);
    procedure edpClientePesquisa(Sender: TObject; var Retorno: string);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure dbgrd1KeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd1DblClick(Sender: TObject);
  private
    FTotSel: Currency;
    procedure SetTotSel(const Value: Currency);
    property TotSel:Currency read FTotSel write SetTotSel;
  public
    { Public declarations }
  end;

var
  Frm_PesquisaContasAReceber: TFrm_PesquisaContasAReceber;

implementation

uses
  UDM, UConsulta, uPdr_FinanceiroDuplicata, uFrm_ContasReceberDup;

{$R *.dfm}

procedure TFrm_PesquisaContasAReceber.actPesquisarExecute(Sender: TObject);
var
  lSQL: string;
  lTotReg : Integer;
begin
  inherited;
  lTotReg := 0;
  lSQL := 'with CONSULTA as '+
          '( '+
          'select b.DT_VENC,'+
          'iif(b.DT_VENC < ''today'',''VENCIDA'',''A RECEBER'') status,a.ID_CLIENTE,d.NOME_RAZAO cliente,'+
          'cast(''CUPOM DE VENDA:[''||a.ID||''] - ''||''[''||b.FORMA_PAGTO||'']'' as varchar(50))conta,'+
          'cast(''PDV''as varchar(20))origem,'+
          'b.VALOR+(select coalesce(sum (c.VL_PAGO),0) from PDV_RECEBER_PARCIAL c where c.ID = b.ID and c.TIPO = b.TIPO and c.ORDEM = b.ORDEM)valor,'+
          'b.VALOR saldo,b.tipo,b.id,b.ordem '+
          'from PDV_MASTER a '+
          'left outer join PDV_RECEBER b on (b.TIPO = a.TIPO and b.ID = a.ID) '+
          'left outer join CLIENTE d on (d.CODIGO = a.ID_CLIENTE) '+
          'where b.DT_BAIXA is null '+
          ') '+
          'select cast(0 as integer)selecao,cast(dt_venc as date)vencimento,'+
          'cast(status as varchar(10))status,'+
          'cast(id_cliente as integer)id_cliente,cliente,'+
          'cast(conta as varchar(50))conta,cast(origem as varchar(20))origem,'+
          'cast(valor as numeric(10,2))valor,cast(saldo as numeric(10,2))saldo,'+
          'tipo,id,ordem '+
          'from CONSULTA '+
          'where DT_VENC between ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp1.Date)) + ' and ' + QuotedStr(FormatDateTime('dd.mm.yyyy', dtp2.Date));
  case cbbFiltros.ItemIndex of
    0: //sacado
      begin
        if edpCliente.Campo.Text <> '' then
          lSQL := lSQL + ' and id_cliente = ' + edpCliente.Campo.Text;
      end;

    1: //origem
      lSQL := lSQL + ' and origem = ' + QuotedStr(UpperCase(cbbOrigem.Text));
  end;

  dsGrid.IndexFieldNames := 'vencimento';
  dsGrid.Close;
  dsGrid.Data := DM.LerDataSet(lSQL);

  pnlSemRegistro.Visible := dsGrid.IsEmpty;

  if (not dsGrid.IsEmpty) then
  begin
    lblTotValor.Caption := FormatCurr('R$ #,##0.00',dsGridTOT_VALOR.Value);
    lblTotSaldo.Caption := FormatCurr('R$ #,##0.00',dsGridTOT_SALDO.Value);
    TotSel := 0;
    lTotReg := dsGrid.RecordCount;
  end
  else
    pnlGrid.SendToBack;

  lblTotRegistro.Caption := 'EXIBINDO '+FormatFloat('#,##0',lTotReg)+' REGISTROS';
end;

procedure TFrm_PesquisaContasAReceber.cbbFiltrosClick(Sender: TObject);
begin
  inherited;
  nbFiltros.PageIndex := cbbFiltros.ItemIndex;
end;

procedure TFrm_PesquisaContasAReceber.chkSelTudoClick(Sender: TObject);
var
  lValue: Integer;
begin
  inherited;
  TotSel := 0;
  lValue := IfThen(chkSelTudo.Checked = True,1,0);

  dsGrid.DisableControls;
  try
    dsGrid.First;
    while not dsGrid.Eof do
    begin
      dsGrid.Edit ;
      dsGrid.FieldByName('selecao').AsInteger := lValue;
      dsGrid.Post;
      dsGrid.Next;
    end;

    if lValue = 1 then
      TotSel := dsGridTOT_SALDO.Value;

  finally
    dsGrid.EnableControls;
    dsGrid.First;
  end;
end;

procedure TFrm_PesquisaContasAReceber.dbgrd1CellClick(Column: TColumn);
begin
  inherited;
  if (dsGrid.IsEmpty) then
    Exit;

  if (dbgrd1.SelectedField.FieldName = 'SELECAO') then
  begin
    dsGrid.Edit;
    dsgrid.FieldByName('SELECAO').AsInteger := IfThen(dsGrid.FieldByName('SELECAO').AsInteger = 1, 0, 1);
    dsGrid.Post;
    if dsgrid.FieldByName('SELECAO').AsInteger = 0 then
      TotSel := TotSel - dsgrid.FieldByName('SALDO').AsCurrency
    else
      TotSel := TotSel + dsgrid.FieldByName('SALDO').AsCurrency;
  end;
end;

procedure TFrm_PesquisaContasAReceber.dbgrd1DblClick(Sender: TObject);
begin
  inherited;
  if not Assigned(Frm_ContasReceberDup) then
    Frm_ContasReceberDup := TFrm_ContasReceberDup.Create(Self);
  try
    Frm_ContasReceberDup.Executar('PDV',dsGrid.FieldByName('tipo').AsString,
                                  dsGrid.FieldByName('id').AsInteger,dsGrid.FieldByName('ordem').AsString);
  finally

    FreeAndNil(Frm_ContasReceberDup);
  end;
end;

procedure TFrm_PesquisaContasAReceber.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  inherited;

  if ((Sender as TDBGrid).DataSource.Dataset.IsEmpty) then
    Exit;

  // Desenha um checkbox no dbgrid
  if Column.FieldName = 'SELECAO' then
  begin
    TDBGrid(Sender).Canvas.FillRect(Rect);

    if ((Sender as TDBGrid).DataSource.Dataset.FieldByName('SELECAO').AsInteger = 1) then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminue o tamanho do CheckBox }
    DrawFrameControl(TDBGrid(Sender).Canvas.Handle, R, DFC_BUTTON,
      DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TFrm_PesquisaContasAReceber.dbgrd1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if ((Key = #32) and (not dsGrid.IsEmpty)) then
  begin
    if (dbgrd1.SelectedField.FieldName = 'SELECAO') then
    begin
      dsGrid.Edit;
      dsgrid.FieldByName('SELECAO').AsInteger := IfThen(dsGrid.FieldByName('SELECAO').AsInteger = 1, 0, 1);
      dsGrid.Post;
      if dsgrid.FieldByName('SELECAO').AsInteger = 0 then
        TotSel := TotSel - dsgrid.FieldByName('SALDO').AsCurrency
      else
        TotSel := TotSel + dsgrid.FieldByName('SALDO').AsCurrency;
    end;
  end;
end;

procedure TFrm_PesquisaContasAReceber.edpClientePesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Cliente.ToString ;
end;

procedure TFrm_PesquisaContasAReceber.FormCreate(Sender: TObject);
begin
  inherited;
  dtp1.Date := IncMonth(Date,-3);
  dtp2.Date := Date;
  actPesquisar.Execute;
end;

procedure TFrm_PesquisaContasAReceber.SetTotSel(const Value: Currency);
begin
  FTotSel := Value;
  lblTotSel.Caption := FormatCurr('TOTAL SELECIONADO: R$ #,##0.00', FTotSel);
  lblTotSel.Visible := FTotSel > 0;
end;

end.

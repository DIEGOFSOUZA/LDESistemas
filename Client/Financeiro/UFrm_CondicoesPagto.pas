unit UFrm_CondicoesPagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, System.Math ;

type
  TFrm_CondicoesPagto = class(TPdr_Cad2)
    pnlCabecalho: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    pnlCondicaoBotao: TPanel;
    pnlCondicao: TPanel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    lblTitBanco: TLabel;
    pnlIncluiCondPagto: TPanel;
    btnIncCondPagto: TSpeedButton;
    actIncCondPagto: TAction;
    dsDetail: TClientDataSet;
    sDetail: TDataSource;
    pnlgrid: TPanel;
    actSalvar: TAction;
    pnlSalvar: TPanel;
    imgSalvar: TImage;
    btnSalvar: TSpeedButton;
    pnlCancel: TPanel;
    imgCancel: TImage;
    btnCancelar: TSpeedButton;
    actCancel: TAction;
    pnlAcoes: TPanel;
    pnlEdit: TPanel;
    imgEdit: TImage;
    btnEdit: TSpeedButton;
    dbgrd1: TDBGrid;
    dsGrid: TClientDataSet;
    sGrid: TDataSource;
    pnlFundoGrid: TPanel;
    actEditParcelamento: TAction;
    dbrgrpAtivo: TDBRadioGroup;
    dbrgrpUSO_PDV: TDBRadioGroup;
    cdsDESCRI: TStringField;
    cdsATIVO: TStringField;
    cdsUSO_PDV: TStringField;
    cdsfdqryParcelamento: TDataSetField;
    dsDetailID_PAGTOFORMA: TIntegerField;
    dsDetailID: TIntegerField;
    dsDetailDESCRI: TStringField;
    dsDetailNUM_PARCELAS: TIntegerField;
    dsDetailINTV_PARCELAS: TIntegerField;
    dsDetailPRIMEIRA_PARC: TIntegerField;
    dsDetailACRESCIMO: TFMTBCDField;
    dsDetailUSO_COMPRAS: TStringField;
    dsDetailUSO_VENDAS: TStringField;
    cdsID_PAGTOFORMA: TIntegerField;
    dsGridID_PAGTOFORMA: TIntegerField;
    dsGridID: TIntegerField;
    dsGridDESCRI: TStringField;
    dsGridNUM_PARCELAS: TIntegerField;
    dsGridINTV_PARCELAS: TIntegerField;
    dsGridPRIMEIRA_PARC: TIntegerField;
    dsGridACRESCIMO: TFMTBCDField;
    dsGridUSO_COMPRAS: TStringField;
    dsGridUSO_VENDAS: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure actIncCondPagtoExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actEditParcelamentoExecute(Sender: TObject);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure dsDetailAfterInsert(DataSet: TDataSet);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    function Validar(): Boolean;
    function ValidarParcelamento():Boolean;
    procedure MontaSql(pCodigo: Integer);
  public
    procedure Novo(); override;
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
  end;

var
  Frm_CondicoesPagto: TFrm_CondicoesPagto;

implementation

uses
  UDM, u_Mensagem, UConsulta;

{$R *.dfm}

procedure TFrm_CondicoesPagto.actCancelExecute(Sender: TObject);
begin
  inherited;
  dsDetail.Cancel;
  pnlCondicao.Visible := False;
  dbgrd1.Options := dbgrd1.Options+[dgTitles];
end;

procedure TFrm_CondicoesPagto.actEditParcelamentoExecute(Sender: TObject);
begin
  inherited;
  if dsGrid.IsEmpty then
  begin
    Exit;
  end;

  if not dbgrd1.Columns.Grid.Focused then
  begin
    TMensagem.Informacao('Selecione a condição de pagamento.');
    Exit;
  end;

  if not (cds.State in [dsInsert,dsEdit]) then
    cds.Edit;

  dsDetail.Locate('id',dsGrid.FieldByName('id').AsInteger,[]);
  dsDetail.Edit;
  DBComboBox3.ItemIndex := IfThen(dsDetail.FieldByName('uso_compras').AsString = 'S',0,1) ;
  DBComboBox4.ItemIndex := IfThen(dsDetail.FieldByName('uso_vendas').AsString = 'S',0,1) ;

  pnlCondicao.Visible := True;
  dbgrd1.Options := dbgrd1.Options-[dgTitles];
  DBEdit2.SetFocus;
  DBEdit2.SelStart := Length(DBEdit2.Text);
end;

procedure TFrm_CondicoesPagto.actIncCondPagtoExecute(Sender: TObject);
begin
  inherited;
  pnlCondicao.Visible := True;
  dbgrd1.Options := dbgrd1.Options-[dgTitles];
  if not (cds.State in [dsInsert, dsEdit]) then
    cds.Edit;
  dsDetail.Append;
  DBComboBox3.ItemIndex := 1;
  DBComboBox4.ItemIndex := 1;
  DBEdit2.SetFocus;
end;

procedure TFrm_CondicoesPagto.actSalvarExecute(Sender: TObject);
begin
  inherited;
  if not ValidarParcelamento then
    Exit;

  try
    dsDetail.Post ;
    Gravar();
    pnlCondicao.Visible := False;
    dbgrd1.Options := dbgrd1.Options+[dgTitles];
  except

  end;
end;

procedure TFrm_CondicoesPagto.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds.FieldByName('ID_PAGTOFORMA').AsInteger := 0;
  cds.FieldByName('ATIVO').AsString := 'S';
  cds.FieldByName('USO_PDV').AsString := 'N';
end;

procedure TFrm_CondicoesPagto.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', #8, #13]) then
    Key := #0; //apenas numero
end;

procedure TFrm_CondicoesPagto.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero
end;

procedure TFrm_CondicoesPagto.dsDetailAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dsDetail.FieldByName('ID_PAGTOFORMA').AsInteger := cds.FieldByName('ID_PAGTOFORMA').AsInteger;
  dsDetail.FieldByName('ID').AsInteger := 0;
  dsDetail.FieldByName('ACRESCIMO').AsFloat := 0;
end;

procedure TFrm_CondicoesPagto.Excluir;
begin
  inherited;

end;

procedure TFrm_CondicoesPagto.FormCreate(Sender: TObject);
begin
  inherited;
  dbgrd1.Columns.Items[0].Width := 232;
  dbgrd1.Columns.Items[1].Width := 63;
  dbgrd1.Columns.Items[2].Width := 64;
  dbgrd1.Columns.Items[3].Width := 63;
  dbgrd1.Columns.Items[4].Width := 64;
  dbgrd1.Columns.Items[5].Width := 64;
  dbgrd1.Columns.Items[6].Width := 64;
end;

procedure TFrm_CondicoesPagto.Gravar;
var
  lRetorno: OleVariant;
begin
  if not Validar then
    Exit;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    lRetorno := DM.SMFormaPagto.setFormaPagto(DM.BancoDados, cds.FieldByName('ID_PAGTOFORMA').AsInteger, cds.Delta);
    cds.Close;
    dsGrid.Close;

    cds.Data := lRetorno[0];
    dsGrid.Data := lRetorno[1];
  end;
end;

procedure TFrm_CondicoesPagto.localizar;
begin
  inherited;
  MontaSql(Consulta.CondicoesPagto);
end;

procedure TFrm_CondicoesPagto.MontaSql(pCodigo: Integer);
var
  lRetorno: OleVariant;
begin
  lRetorno := DM.SMFormaPagto.getFormaPagto(DM.BancoDados, pCodigo);

  cds.Close ;
  dsGrid.Close;

  cds.Data := lRetorno[0];
  dsGrid.Data := lRetorno[1];
end;

procedure TFrm_CondicoesPagto.Novo;
var
  lRetorno: OleVariant;
begin
//  inherited;
  lRetorno := DM.SMFormaPagto.getFormaPagto(DM.BancoDados, -1);
  cds.Close;
  dsGrid.Close;
  cds.Data := lRetorno[0];
  dsGrid.Data := lRetorno[1];
  cds.append;
  DBEdit1.SetFocus;
end;

function TFrm_CondicoesPagto.Validar: Boolean;
begin
  Result := True;
  if (DBEdit1.Text = '') then
  begin
   TMensagem.Atencao('Informe a descrição.');
   DBEdit1.SetFocus;
   Result := False;
   Exit;
  end;

  if dsDetail.IsEmpty then
  begin
    TMensagem.Atencao('Tenha ao menos uma condição de pagamento ativa para vendas.');
    Result := False;
    actIncCondPagto.Execute ;
    Exit;
  end;
end;

function TFrm_CondicoesPagto.ValidarParcelamento: Boolean;
begin
  Result := True;
  if (DBEdit2.Text = '') then
  begin
   TMensagem.Atencao('Informe a descrição.');
   DBEdit2.SetFocus;
   Result := False;
   Exit;
  end;

  if (DBEdit3.Text = '') then
  begin
   TMensagem.Atencao('Informe o número de parcelas.');
   DBEdit3.SetFocus;
   Result := False;
   Exit;
  end;

  if (DBEdit4.Text = '') then
  begin
   TMensagem.Atencao('Informe o intervalo entre as parcelas.');
   DBEdit4.SetFocus;
   Result := False;
   Exit;
  end;

  if (DBEdit5.Text = '') then
  begin
   TMensagem.Atencao('Informe para quando será a 1ª parcela.');
   DBEdit5.SetFocus;
   Result := False;
   Exit;
  end;

//  if (DBComboBox3.ItemIndex = 0) then
//  begin
//   TMensagem.Atencao('Parcelamento será utilizado em compras?');
//   DBComboBox3.SetFocus;
//   Result := False;
//   Exit;
//  end;
//
//  if (DBComboBox4.ItemIndex = 0) then
//  begin
//   TMensagem.Atencao('Parcelamento será utilizado em vendas?');
//   DBComboBox4.SetFocus;
//   Result := False;
//   Exit;
//  end;

end;

end.

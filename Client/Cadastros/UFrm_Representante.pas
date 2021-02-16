unit UFrm_Representante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad, Vcl.Menus, System.Actions,
  Vcl.ActnList, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls, System.Math,
  Vcl.Imaging.pngimage;

type
  TFrm_Representante = class(TPdr_Cad)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    pnlTopo: TPanel;
    lblNome_Razao: TLabel;
    lblCpfCnpj: TLabel;
    lblRgInsc: TLabel;
    lblEmailPrincipal: TLabel;
    lblSite: TLabel;
    lblDDDPrincipal: TLabel;
    lblFone1: TLabel;
    lblFone2: TLabel;
    lblDDDCel: TLabel;
    lblCel: TLabel;
    pnlPF: TPanel;
    lblDtNasc: TLabel;
    lblProfissao: TLabel;
    lblEstCivil: TLabel;
    rgSexo: TRadioGroup;
    cbbEstCivil: TComboBox;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    dbedtTELEFONE1: TDBEdit;
    dbedtTELEFONE2: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    pnlObs: TPanel;
    lbl2: TLabel;
    DBMemo1: TDBMemo;
    TabSheet2: TTabSheet;
    pnlEndEntrega: TPanel;
    lblTitEndEntrega: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblNum0: TLabel;
    lblBairro0: TLabel;
    lblCpl0: TLabel;
    lblCid0: TLabel;
    lblUF: TLabel;
    cbbCid0: TComboBox;
    cbbUF0: TComboBox;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit21: TDBEdit;
    TabSheet3: TTabSheet;
    pnlBanco: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    lblTitBanco: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    lblID: TLabel;
    dbedtID: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    cdsCODIGO: TIntegerField;
    cdsCPF: TStringField;
    cdsRG: TStringField;
    cdsNOME: TStringField;
    cdsEMAIL: TStringField;
    cdsSITE: TStringField;
    cdsDDD_FONE: TStringField;
    cdsTELEFONE1: TStringField;
    cdsTELEFONE2: TStringField;
    cdsCEL_PARTICULAR: TStringField;
    cdsCEL_EMPRESA: TStringField;
    cdsSEXO: TStringField;
    cdsPROFISSAO: TStringField;
    cdsOBS: TStringField;
    cdsCEP: TStringField;
    cdsUF: TStringField;
    cdsCIDADE: TStringField;
    cdsENDERECO: TStringField;
    cdsCOMPLEMENTO: TStringField;
    cdsNUMERO: TStringField;
    cdsBAIRRO: TStringField;
    cdsSITUACAO: TStringField;
    cdsDT_ADMISSAO: TDateField;
    cdsBANCO_NOME: TStringField;
    cdsBANCO_AGENCIA: TStringField;
    cdsBANCO_CONTA: TStringField;
    dbcbbSituacao: TDBComboBox;
    Label5: TLabel;
    cdsESTADO_CIVIL: TStringField;
    cdsDDD_CEL_PARTICULAR: TStringField;
    cdsDDD_CEL_EMPRESA: TStringField;
    cdsDTNASC: TDateField;
    cdsPERCENT_COMISSAO: TCurrencyField;
    cdsMETA: TFMTBCDField;
    Label6: TLabel;
    dbedtPERCENT_COMISSAO: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure cbbEstCivilChange(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure cdsDTNASCSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
    procedure MontaSql(pCodigo : Integer) ;
    function Validar() : Boolean ;
  public
    { Public declarations }
    procedure Novo(); override;
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
  end;

var
  Frm_Representante: TFrm_Representante;

implementation

uses
  UDM, UFuncoes, UConsulta;

{$R *.dfm}

procedure TFrm_Representante.cbbEstCivilChange(Sender: TObject);
begin
  inherited;
  Editar ;
end;

procedure TFrm_Representante.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCODIGO.AsInteger  := 0 ;
  cdsSITUACAO.AsString := 'ATIVO' ;
end;

procedure TFrm_Representante.cdsDTNASCSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text = '  /  /    ' then
    Sender.clear
  else
    Sender.AsDateTime := StrToDate(Text);
end;

procedure TFrm_Representante.DBEdit13Exit(Sender: TObject);
begin
  inherited;
  if DBEdit13.Text <> EmptyStr then
    DBEdit13.Text := MaskCEP(DBEdit13.Text);
end;

procedure TFrm_Representante.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if DBEdit1.Text <> EmptyStr then
    DBEdit1.Text := MaskData(DBEdit1.Text, '99/99/9999');
end;

procedure TFrm_Representante.DBEdit7Exit(Sender: TObject);
begin
  inherited;
  if DBEdit7.Text <> EmptyStr then
    if vercpf(DBEdit7.Text) then
      DBEdit7.Text := MaskCpfCnpj(DBEdit7.Text);
end;


procedure TFrm_Representante.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not (Key in ['0'..'9', #8])) and (Key <> #13) then
    Key := #0;
end;

procedure TFrm_Representante.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if DBEdit8.Text <> EmptyStr then
    DBEdit8.Text := MaskRgIE(DBEdit8.Text);
end;

procedure TFrm_Representante.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 0 ;
  cds.Close ;
  cds.CreateDataSet ;
end;

procedure TFrm_Representante.Excluir;
var
  mCodigo: integer;
begin
  mCodigo := cdsCODIGO.AsInteger;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setRepresentante(dm.BancoDados, mCodigo, cds.Delta);

    cds.Close;
    cds.CreateDataSet;
  end;
end;

procedure TFrm_Representante.Gravar;
var
  mRetorno: OleVariant;
begin
  if not Validar then
    Exit ;

  cdsSEXO.AsString         := rgSexo.Items[rgSexo.ItemIndex];
  cdsESTADO_CIVIL.AsString := cbbEstCivil.Text ;
  cdsCIDADE.AsString       := cbbCid0.Text ;
  cdsUF.AsString           := cbbUF0.Text ;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setRepresentante(DM.BancoDados, cdsCODIGO.AsInteger, cds.Delta);
    cds.Close;
    cds.Data := mRetorno;
  end;
end;

procedure TFrm_Representante.localizar;
begin
  inherited;
  MontaSql(Consulta.Representante);
end;

procedure TFrm_Representante.MontaSql(pCodigo: Integer);
begin
  if pCodigo = 0 then
    Exit;

  cds.Close;
  cds.Data := DM.SMCadastroClient.getRepresentante(DM.BancoDados, pCodigo);

  rgSexo.ItemIndex      := rgSexo.Items.IndexOf(cdsSEXO.AsString) ;
  cbbEstCivil.ItemIndex := cbbEstCivil.Items.IndexOf(cdsESTADO_CIVIL.AsString);
  cbbCid0.ItemIndex     := cbbCid0.Items.IndexOf(cdsCIDADE.AsString);
  cbbUF0.ItemIndex      := cbbUF0.Items.IndexOf(cdsUF.AsString);
end;

procedure TFrm_Representante.Novo;
begin
  inherited;
  PageControl1.TabIndex := 0;
  DBEdit7.SetFocus;
end;

function TFrm_Representante.Validar: Boolean;
begin
  Result := True ;
  if DBEdit7.Text = EmptyStr then
  begin
    Result := False ;
    MessageDlg('Informe o "C.P.F"',mtInformation,[mbOK],0) ;
    PageControl1.TabIndex := 0 ;
    DBEdit7.SetFocus ;
  end;

  if DBEdit8.Text = EmptyStr then
  begin
    Result := False ;
    MessageDlg('Informe o "R.G."',mtInformation,[mbOK],0) ;
    PageControl1.TabIndex := 0 ;
    DBEdit8.SetFocus ;
  end;

  if DBEdit10.Text = EmptyStr then
  begin
    Result := False ;
    MessageDlg('Informe o "NOME DO REPRESENTANTE"',mtInformation,[mbOK],0) ;
    PageControl1.TabIndex := 0 ;
    DBEdit10.SetFocus ;
  end;

  if rgSexo.itemIndex = -1 then
  begin
    Result := False ;
    MessageDlg('Informe o "SEXO"',mtInformation,[mbOK],0) ;
    PageControl1.TabIndex := 0 ;
    rgSexo.SetFocus ;
  end;
end;

end.

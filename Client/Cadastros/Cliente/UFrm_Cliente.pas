unit UFrm_Cliente;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,
  System.Math,
  System.StrUtils,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ActnList,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.DBCtrls,
  Vcl.ComCtrls,
  Vcl.Mask,
  Vcl.Buttons,
  Vcl.Menus,
  Data.DB,
  Datasnap.DBClient,
  UPdr_Cad,
  UDBPesquisa, Vcl.Imaging.pngimage ;
type
  TFrm_Cliente = class(TPdr_Cad)
    DBLookupComboBox1: TDBLookupComboBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    pnlEndPrincipal: TPanel;
    lblTitEndPrincipal: TLabel;
    pnlEndEntrega: TPanel;
    lblTitEndEntrega: TLabel;
    pnlEndCob: TPanel;
    lblTitCob: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblNum0: TLabel;
    lblBairro0: TLabel;
    lblCpl0: TLabel;
    lblCid0: TLabel;
    cbbCid0: TComboBox;
    cbbUF0: TComboBox;
    lblUF: TLabel;
    lbl6: TLabel;
    cbbCid1: TComboBox;
    cbbUF1: TComboBox;
    lbl7: TLabel;
    lblCid2: TLabel;
    cbbCid2: TComboBox;
    cbbUF2: TComboBox;
    lblUF2: TLabel;
    chkMesmoCob: TCheckBox;
    chkMesmoEnt: TCheckBox;
    pnlTopo: TPanel;
    pnlPF: TPanel;
    lblDtNasc: TLabel;
    rgSexo: TRadioGroup;
    lblProfissao: TLabel;
    lblEstCivil: TLabel;
    cbbEstCivil: TComboBox;
    pnlContato: TPanel;
    lblNomeContato: TLabel;
    lblTitContato: TLabel;
    lblContatoFone: TLabel;
    lblContatoEmail: TLabel;
    pnlObs: TPanel;
    lbl2: TLabel;
    pnlBanco: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    lblTitBanco: TLabel;
    cdsCODIGO: TIntegerField;
    cdsPESSOA: TStringField;
    cdsCPF_CNPJ: TStringField;
    cdsRG_INSC: TStringField;
    cdsNOME_RAZAO: TStringField;
    cdsFANTASIA: TStringField;
    cdsDATA_NASC: TStringField;
    cdsSEXO: TStringField;
    cdsEST_CIVIL: TStringField;
    cdsCEP: TStringField;
    cdsENDERECO: TStringField;
    cdsNUMERO: TStringField;
    cdsCOMPLEMENTO: TStringField;
    cdsBAIRRO: TStringField;
    cdsCIDADE: TStringField;
    cdsUF: TStringField;
    cdsINSC_MUNICIPAL: TStringField;
    cdsDDD_FONE: TStringField;
    cdsTELEFONE1: TStringField;
    cdsTELEFONE2: TStringField;
    cdsDDD_CEL: TStringField;
    cdsCEL: TStringField;
    cdsEMAIL: TStringField;
    cdsSITE: TStringField;
    cdsCOD_RAMOATIVIDADE: TIntegerField;
    cdsCOD_REPRESENTANTE: TIntegerField;
    cdsPROFISSAO: TStringField;
    cdsOBS: TMemoField;
    cdsBANCO_NOME: TStringField;
    cdsBANCO_CONTA: TStringField;
    cdsBANCO_AGENCIA: TStringField;
    cdsDT_CADASTRO: TDateField;
    cdsENT_MESMO: TStringField;
    cdsENT_CEP: TStringField;
    cdsENT_ENDERECO: TStringField;
    cdsENT_BAIRRO: TStringField;
    cdsENT_NUMERO: TStringField;
    cdsENT_CIDADE: TStringField;
    cdsENT_UF: TStringField;
    cdsCOB_MESMO: TStringField;
    cdsCOB_CEP: TStringField;
    cdsCOB_ENDERECO: TStringField;
    cdsCOB_NUMERO: TStringField;
    cdsCOB_BAIRRO: TStringField;
    cdsCOB_CIDADE: TStringField;
    cdsCOB_UF: TStringField;
    cdsCONTATO_NOME: TStringField;
    cdsCONTATO_FONE: TStringField;
    cdsCONTATO_EMAIL: TStringField;
    cdsRAMO: TStringField;
    lblNome_Razao: TLabel;
    lblTipo: TLabel;
    lblCpfCnpj: TLabel;
    lblRgInsc: TLabel;
    lblFantasia: TLabel;
    lblInscMunicipal: TLabel;
    lblEmailPrincipal: TLabel;
    lblSite: TLabel;
    lblDDDPrincipal: TLabel;
    lblFone1: TLabel;
    lblFone2: TLabel;
    lblDDDCel: TLabel;
    lblCel: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    dbedtTELEFONE1: TDBEdit;
    dbedtTELEFONE2: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit21: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    cbbPessoa: TComboBox;
    DBPesquisa1: TDBPesquisa;
    cdsREPNOME: TStringField;
    cdsVL_CREDITO: TFMTBCDField;
    cdsVL_DEBITO: TFMTBCDField;
    cdsLIMITE_CREDITO: TFMTBCDField;
    Label11: TLabel;
    DBEdit32: TDBEdit;
    Label12: TLabel;
    DBEdit33: TDBEdit;
    btnValidarCpfCnpj: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure DBPesquisa1Pesquisa(Sender: TObject; var Retorno: string);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure cbbPessoaChange(Sender: TObject);
    procedure chkMesmoEntClick(Sender: TObject);
    procedure chkMesmoCobClick(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure cbbEstCivilChange(Sender: TObject);
    procedure rgSexoClick(Sender: TObject);
    procedure cdsDATA_NASCSetText(Sender: TField; const Text: string);
    procedure DBEdit32KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7Exit(Sender: TObject);
    procedure btnValidarCpfCnpjClick(Sender: TObject);
  private
    { Private declarations }
    procedure AlteraPessoa() ;
    procedure CarregarCampos() ;
    procedure CarregarCDS() ;
    procedure MontaSql(pCodigo : Integer) ;
    function ClienteExiste():Boolean;
    procedure CarregaCidades() ;
  public
    { Public declarations }
    procedure Novo() ; override ;
    procedure Gravar() ; override ;
    procedure Excluir() ; override ;
    procedure localizar() ; override ;
  end;

var
  Frm_Cliente: TFrm_Cliente;

implementation

{$R *.dfm}

uses UDM, UConsulta, UMakeReadWrite, UFuncoes, u_Mensagem;

{ TFrm_Cliente }

procedure TFrm_Cliente.AlteraPessoa;
begin
  case cbbPessoa.ItemIndex of
    0:  //Fisica
      begin
        lblCPFCNPJ.Caption := 'CPF *';
        lblRgInsc.Caption := 'RG';
        lblNome_Razao.Caption := 'NOME *';

        DBEdit9.Enabled := False;
        DBEdit11.Enabled := False;
        pnlPF.Enabled := True;
      end;
    1:  //Juridica
      begin
        lblCPFCNPJ.Caption := 'CNPJ *';
        lblRgInsc.Caption := 'INSC. EST.';
        lblNome_Razao.Caption := 'RAZÃO SOCIAL *';

        DBEdit9.Enabled := True;
        DBEdit11.Enabled := True;
        pnlPF.Enabled := False;
      end;
  end;
end;

procedure TFrm_Cliente.btnValidarCpfCnpjClick(Sender: TObject);
begin
  inherited;
  if DBEdit7.Text <> EmptyStr then
  begin
    if cbbPessoa.ItemIndex = 0 then
    begin
      if not IsValidCPF(OnlyDigit(DBEdit7.Text)) then
      begin
        TMensagem.Atencao('CPF inválido');
        DBEdit7.SelectAll;
      end
      else
      begin
        TMensagem.Informacao('CPF válido!');
        DBEdit8.SetFocus;
      end;
    end
    else
    begin
      if not IsValidCNPJ(OnlyDigit(DBEdit7.Text)) then
      begin
        TMensagem.Atencao('CNPJ inválido');
        DBEdit7.SelectAll;
      end
      else
      begin
        TMensagem.Informacao('CNPJ válido!');
        DBEdit8.SetFocus;
      end;
    end;
  end;
end;

procedure TFrm_Cliente.CarregaCidades;
var
  tmp: TClientDataSet;
begin
  try
    tmp := TClientDataSet.Create(nil);
    tmp.Data := DM.LerDataSet('SELECT a.NOME FROM CIDADES a order by 1');

    tmp.DisableControls;
    tmp.First;
    while not tmp.Eof do
    begin
      cbbCid0.Items.Add(tmp.FieldByName('nome').AsString);
      cbbCid1.Items.Add(tmp.FieldByName('nome').AsString);
      cbbCid2.Items.Add(tmp.FieldByName('nome').AsString);
      tmp.Next;
    end;
    tmp.EnableControls;
  finally
    FreeAndNil(tmp);
  end;
end;


procedure TFrm_Cliente.CarregarCampos;
begin
  cbbPessoa.ItemIndex := IfThen(cdsPESSOA.AsString = 'F', 0, 1);

  if cdsPESSOA.AsString = 'F' then
  begin
    rgSexo.ItemIndex := IfThen(cdsSEXO.AsString = 'MASCULINO', 0, 1);
    cbbEstCivil.ItemIndex := cbbEstCivil.Items.IndexOf(cdsEST_CIVIL.AsString);
  end;

  cbbCid0.ItemIndex := cbbCid0.Items.IndexOf(cdsCIDADE.AsString);
  cbbUF0.ItemIndex := cbbUF0.Items.IndexOf(cdsUF.AsString);

  if cdsENT_MESMO.AsString = 'N' then //S = SIM N = NAO
  begin
    chkMesmoEnt.Checked := False;
    cbbCid1.ItemIndex := cbbCid1.Items.IndexOf(cdsENT_CIDADE.AsString);
    cbbUF1.ItemIndex := cbbUF1.Items.IndexOf(cdsENT_UF.AsString);
  end
  else
    chkMesmoEnt.Checked := True;

  if cdsCOB_MESMO.AsString = 'N' then //S = SIM N = NAO
  begin
    chkMesmoCob.Checked := False;
    cbbCid2.ItemIndex := cbbCid2.Items.IndexOf(cdsCOB_CIDADE.AsString);
    cbbUF2.ItemIndex := cbbUF2.Items.IndexOf(cdsCOB_UF.AsString);
  end
  else
    chkMesmoCob.Checked := True;
end;

procedure TFrm_Cliente.CarregarCDS;
begin
  cdsPESSOA.AsString   := Copy(cbbPessoa.Text,1,1) ;

  if cdsPESSOA.AsString = 'F' then
  begin
//    cdsDATA_NASC.AsString := MaskData(edtDtNasc.Text, '99.99.9999');
    cdsSEXO.AsString := rgSexo.Items[rgSexo.ItemIndex];
    cdsFANTASIA.Clear;
    cdsINSC_MUNICIPAL.Clear ;
    cdsEST_CIVIL.AsString := cbbEstCivil.Text ;
  end
  else
  begin
    cdsPROFISSAO.Clear ;
  end;
  cdsCIDADE.AsString := cbbCid0.Text ;
  cdsUF.AsString := cbbUF0.Text ;

  if chkMesmoEnt.Checked then
  begin
    cdsENT_CEP.Clear ;
    cdsENT_ENDERECO.Clear;
    cdsENT_NUMERO.Clear ;
    cdsENT_BAIRRO.Clear ;
    cdsENT_CIDADE.Clear ;
    cdsENT_UF.Clear ;
  end
  else
  begin
    cdsENT_CIDADE.AsString := cbbCid1.Text;
    cdsENT_UF.AsString := cbbUF1.Text;
  end;

  if chkMesmoCob.Checked then
  begin
    cdsCOB_CEP.Clear ;
    cdsCOB_ENDERECO.Clear ;
    cdsCOB_NUMERO.Clear ;
    cdsCOB_BAIRRO.Clear ;
    cdsCOB_CIDADE.Clear ;
    cdsCOB_UF.Clear ;
  end
  else
  begin
    cdsCOB_CIDADE.AsString := cbbCid2.Text;
    cdsCOB_UF.AsString := cbbUF2.Text;
  end;
end;

procedure TFrm_Cliente.cbbEstCivilChange(Sender: TObject);
begin
  inherited;
  Editar ;
end;

procedure TFrm_Cliente.cbbPessoaChange(Sender: TObject);
begin
  inherited;
  AlteraPessoa ;
  Editar ;
end;

procedure TFrm_Cliente.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCODIGO.AsInteger := 0 ;
  cdsDT_CADASTRO.AsDateTime := Date ;
  cdsVL_CREDITO.AsCurrency := 0 ;
  cdsVL_DEBITO.AsCurrency := 0 ;
  chkMesmoCob.Checked := True;
  chkMesmoEnt.Checked := True;
end;

procedure TFrm_Cliente.cdsDATA_NASCSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = '  /  /    ' then
    Sender.clear
  else
    Sender.AsDateTime := StrToDate(Text);
end;

procedure TFrm_Cliente.chkMesmoCobClick(Sender: TObject);
begin
  inherited;
  if chkMesmoCob.Checked then
  begin
    DBEdit25.ReadOnly := True;
    DBEdit26.ReadOnly := True;
    DBEdit27.ReadOnly := True;
    DBEdit28.ReadOnly := True;
    cbbCid2.Enabled := True;
    cbbUF2.Enabled := True;
  end
  else
  begin
    DBEdit25.ReadOnly := False;
    DBEdit26.ReadOnly := False;
    DBEdit27.ReadOnly := False;
    DBEdit28.ReadOnly := False;
    cbbCid2.Enabled := False;
    cbbUF2.Enabled := False;
  end;
end;

procedure TFrm_Cliente.chkMesmoEntClick(Sender: TObject);
begin
  inherited;
  if chkMesmoEnt.Checked then
  begin
    DBEdit2.ReadOnly := True ;
    DBEdit22.ReadOnly := True ;
    DBEdit23.ReadOnly := True ;
    DBEdit24.ReadOnly := True ;
    cbbCid1.Enabled := True ;
    cbbUF1.Enabled := True ;
  end
  else
  begin
    DBEdit2.ReadOnly := False ;
    DBEdit22.ReadOnly := False ;
    DBEdit23.ReadOnly := False ;
    DBEdit24.ReadOnly := False ;
    cbbCid1.Enabled := False ;
    cbbUF1.Enabled := False ;
  end;
end;

function TFrm_Cliente.ClienteExiste(): Boolean;
const
  SQL = 'SELECT r.NOME_RAZAO cliente FROM CLIENTE r where r.CPF_CNPJ = %s';
begin
  Result := False;
  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL, [QuotedStr(DBEdit7.Text)]));
  if (not DM.dsConsulta.IsEmpty) then
  begin
    Result := True;
    TMensagem.Atencao('Cliente ' + DM.dsConsulta.FieldByName('cliente').AsString + ' já está cadastrado.');
  end;
end;

procedure TFrm_Cliente.ComboBox1Change(Sender: TObject);
begin
  inherited;
  AlteraPessoa() ;
end;

procedure TFrm_Cliente.DBEdit13Exit(Sender: TObject);
begin
  inherited;
    if DBEdit13.Text <> EmptyStr then
    DBEdit13.Text := MaskCEP(DBEdit13.Text);
end;

procedure TFrm_Cliente.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if DBEdit1.Text <> EmptyStr then
    DBEdit1.Text := MaskData(DBEdit1.Text, '99/99/9999');
end;

procedure TFrm_Cliente.DBEdit25Exit(Sender: TObject);
begin
  inherited;
  if DBEdit25.Text <> EmptyStr then
    DBEdit25.Text := MaskCEP(DBEdit25.Text);
end;

procedure TFrm_Cliente.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if DBEdit2.Text <> EmptyStr then
    DBEdit2.Text := MaskCEP(DBEdit2.Text);
end;

procedure TFrm_Cliente.DBEdit32KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TFrm_Cliente.DBEdit7Exit(Sender: TObject);
begin
  inherited;
  if DBEdit7.Text <> EmptyStr then
  begin
    DBEdit7.Text := MaskCpfCnpj(DBEdit7.Text);
    ClienteExiste();
  end;
end;

procedure TFrm_Cliente.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
//******Permitir apenas Numeros*****
  if (not (Key in ['0'..'9', #8])) and (Key <> #13) then
    Key := #0;
end;

procedure TFrm_Cliente.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if DBEdit8.Text <> EmptyStr then
    DBEdit8.Text := MaskRgIE(DBEdit8.Text) ;
end;

procedure TFrm_Cliente.DBPesquisa1Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := IntToStr(Consulta.Representante) ;
end;

procedure TFrm_Cliente.DBRadioGroup1Change(Sender: TObject);
begin
  inherited;
  AlteraPessoa() ;
end;

procedure TFrm_Cliente.Excluir;
var
  mCodigo: integer;
begin
  mCodigo := cdsCODIGO.AsInteger;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setCliente(dm.BancoDados, mCodigo, cds.Delta);
    cds.Close;
    cds.CreateDataSet;
  end;
end;

procedure TFrm_Cliente.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 0 ;
  cds.Close ;
  cds.CreateDataSet ;
//  CarregaCidades ;
end;

procedure TFrm_Cliente.Gravar;
var
  mRetorno: OleVariant;
begin
  if (cds.State = dsInsert) then
    if ClienteExiste then
      Abort ;

  CarregarCDS() ;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setCliente(DM.BancoDados, cdsCODIGO.AsInteger, cds.Delta);
    cds.Close;
    cds.Data := mRetorno;
  end;
end;

procedure TFrm_Cliente.localizar;
begin
  inherited;
  MontaSql(Consulta.Cliente);
  AlteraPessoa ;
end;

procedure TFrm_Cliente.MontaSql(pCodigo: Integer);
begin
   if pCodigo = 0 then
    Exit ;

  cds.Close ;
  cds.Data := DM.SMCadastroClient.getCliente(DM.BancoDados,pCodigo) ;

  MakeReadWrite(cdsREPNOME);
  CarregarCampos() ;
end;


procedure TFrm_Cliente.Novo;
begin
  inherited;
  PageControl1.TabIndex := 0 ;
  cbbPessoa.DroppedDown := True ;
  cbbPessoa.SetFocus ;
end;

procedure TFrm_Cliente.rgSexoClick(Sender: TObject);
begin
  inherited;
  Editar ;
end;

end.

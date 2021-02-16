unit UFrm_Fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Menus,System.Math,
  Vcl.Imaging.pngimage;

type
  RetForn = record
    ID: Integer;
    Razao: string;
  end;


type
  TFrm_Fornecedor = class(TPdr_Cad)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet2: TTabSheet;
    pnlBanco: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    lblTitBanco: TLabel;
    dbedtBanco: TDBEdit;
    dbedtBANCO_Agencia: TDBEdit;
    DBEdit14: TDBEdit;
    pnlTopo: TPanel;
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
    cdsCODIGO: TIntegerField;
    cdsTIPO_PESSOA: TStringField;
    cdsCPF_CNPJ: TStringField;
    cdsRG_INSC: TStringField;
    cdsINSC_MUNICIPAL: TStringField;
    cdsRAZAO_NOME: TStringField;
    cdsFANTASIA: TStringField;
    cdsDDD_FONE: TStringField;
    cdsTELEFONE: TStringField;
    cdsTELEFONE2: TStringField;
    cdsDDD_CEL: TStringField;
    cdsCELULAR: TStringField;
    cdsEMAIL: TStringField;
    cdsSITE: TStringField;
    cdsEND_CEP: TStringField;
    cdsEND_ENDERECO: TStringField;
    cdsEND_COMPLEMENTO: TStringField;
    cdsEND_NUMERO: TStringField;
    cdsEND_BAIRRO: TStringField;
    cdsEND_CIDADE: TStringField;
    cdsEND_UF: TStringField;
    cdsCONTATO: TStringField;
    cdsCONTATO_FONE: TStringField;
    cdsCONTATO_EMAIL: TStringField;
    cdsBANCO_NOME: TStringField;
    cdsBANCO_AGENCIA: TStringField;
    cdsBANCO_CONTA: TStringField;
    cdsBANCO_TIPOCONTA: TStringField;
    cdsCODGRUPO: TIntegerField;
    cdsGRUPO: TStringField;
    pnlEndEntrega: TPanel;
    lblTitEndEntrega: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblNum0: TLabel;
    lblBairro0: TLabel;
    lblCpl0: TLabel;
    lblCid0: TLabel;
    lblUF: TLabel;
    dbcbbCidade: TDBComboBox;
    dbcbbEND_UF: TDBComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    pnlPrincipalFundo: TPanel;
    pnlContato: TPanel;
    lblNomeContato: TLabel;
    lblTitContato: TLabel;
    lblContatoFone: TLabel;
    lblContatoEmail: TLabel;
    pnlObs: TPanel;
    lbl2: TLabel;
    cdsOBS: TStringField;
    DBMemo1: TDBMemo;
    DBEdit4: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit21: TDBEdit;
    cdsDT_CADASTRO: TDateField;
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure dsStateChange(Sender: TObject);
  private
    FIdForn: integer;
    FRazaoForn: string;
    procedure MontaSql(pCodigo: Integer);
    function Validar(): Boolean;
    procedure AlteraPessoa();
    function FornecedorExiste():Boolean;
  public
    ChamadaNF : Boolean;
    property IdForn: integer read FIdForn;
    property RazaoForn: string read FRazaoForn;

    procedure Novo(); override;
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
    procedure Editar(); override;
    procedure Cancelar(); override;


    class function Execute: RetForn;
  end;

var
  Frm_Fornecedor: TFrm_Fornecedor;

implementation

{$R *.dfm}

uses UDM, UConsulta, UFuncoes, u_Mensagem;

{ TFrm_Fornecedor }

procedure TFrm_Fornecedor.AlteraPessoa;
begin
  case DBComboBox2.ItemIndex of
    0:  //Fisica
      begin
        lblCPFCNPJ.Caption := 'CPF *';
        lblRgInsc.Caption := 'RG';
        lblNome_Razao.Caption := 'NOME *';

        DBEdit9.Enabled := False;
        DBEdit11.Enabled := False;
      end;
    1:  //Juridica
      begin
        lblCPFCNPJ.Caption := 'CNPJ *';
        lblRgInsc.Caption := 'INSC. EST.';
        lblNome_Razao.Caption := 'RAZÃO SOCIAL *';

        DBEdit9.Enabled := True;
        DBEdit11.Enabled := True;
      end;
  end;
end;

procedure TFrm_Fornecedor.Cancelar;
begin
  inherited;
  if ChamadaNF then
    actSair.Execute;
end;

procedure TFrm_Fornecedor.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCODIGO.AsInteger := 0 ;
  cdsDT_CADASTRO.AsDateTime := Date ;
end;

procedure TFrm_Fornecedor.DBComboBox2Change(Sender: TObject);
begin
  inherited;
  AlteraPessoa ;
end;

procedure TFrm_Fornecedor.DBEdit6Exit(Sender: TObject);
begin
  inherited;
  if DBEdit6.Text <> EmptyStr then
    DBEdit6.Text := MaskCEP(DBEdit6.Text);
end;

procedure TFrm_Fornecedor.DBEdit7Exit(Sender: TObject);
begin
  inherited;
  if DBEdit7.Text <> EmptyStr then
  begin
    DBEdit7.Text := MaskCpfCnpj(dbedit7.Text);
    FornecedorExiste();
  end;
end;

procedure TFrm_Fornecedor.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
//******Permitir apenas Numeros*****
  if (not (Key in ['0'..'9', #8])) and (Key <> #13) then
    Key := #0;
end;

procedure TFrm_Fornecedor.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if DBEdit8.Text <> EmptyStr then
    DBEdit8.Text := MaskRgIE(DBEdit8.Text) ;
end;

procedure TFrm_Fornecedor.dsStateChange(Sender: TObject);
begin
  inherited;
  DBComboBox2.ItemIndex := ifthen(cdsTIPO_PESSOA.AsString = 'F', 0, 1);
  AlteraPessoa;
end;

procedure TFrm_Fornecedor.Editar;
begin
  inherited;
  DBComboBox2.ItemIndex := ifthen(cdsTIPO_PESSOA.AsString = 'F', 0, 1);
  AlteraPessoa;
end;

procedure TFrm_Fornecedor.Excluir;
var
  mCodigo: integer;
begin
  mCodigo := cdsCODIGO.AsInteger;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setFornecedor(dm.BancoDados, mCodigo, cds.Delta);

    cds.Close;
    cds.CreateDataSet;
  end;
end;

class function TFrm_Fornecedor.Execute: RetForn;
var
  lFrm: TFrm_Fornecedor;
begin
  Result.ID := 0;
  lFrm := TFrm_Fornecedor.Create(nil);
  try
    lFrm.ChamadaNF := True;
    lFrm.pnlEditar.Visible := False;
    lFrm.pnlExcluir.Visible := False;
    lFrm.pnlLocalizar.Visible := False;
    lFrm.pnlSair.Visible := False;
//    lFrm.Novo;
    lFrm.ShowModal;
    Result.ID := lFrm.IdForn;
    Result.Razao := lFrm.RazaoForn;
    lFrm.actSair.Execute;
  finally
    FreeAndNil(lFrm);
  end;
end;

procedure TFrm_Fornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  ChamadaNF := False;
  PageControl1.TabIndex := 0 ;
  cds.Close ;
  cds.CreateDataSet ;
end;

function TFrm_Fornecedor.FornecedorExiste: Boolean;
const
  SQL = 'SELECT r.RAZAO_NOME fornecedor FROM FABRICANTE r where r.CPF_CNPJ = %s';
begin
  Result := False;
  DM.dsConsulta.Close;
  DM.dsConsulta.Data := DM.LerDataSet(Format(SQL, [QuotedStr(DBEdit7.Text)]));
  if (not DM.dsConsulta.IsEmpty) then
  begin
    Result := True;
    TMensagem.Atencao('Fornecedor ' + DM.dsConsulta.FieldByName('fornecedor').AsString + ' já está cadastrado.');
  end;
end;


procedure TFrm_Fornecedor.Gravar;
var
  mRetorno: OleVariant;
begin
  if (cds.State = dsInsert) then
    if FornecedorExiste then
      Abort ;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setFornecedor(DM.BancoDados, cdsCODIGO.AsInteger, cds.Delta);
    cds.Close;
    cds.Data := mRetorno;

    DBComboBox2.ItemIndex := ifthen(cdsTIPO_PESSOA.AsString = 'F', 0, 1);
    AlteraPessoa;
    FIdForn := cds.FieldByName('codigo').AsInteger;
    FRazaoForn := cds.FieldByName('razao_nome').AsString;
    if ChamadaNF then
      actSair.Execute;
  end;
end;

procedure TFrm_Fornecedor.localizar;
begin
  inherited;
  if (not ChamadaNF) then
    MontaSql(Consulta.Fornecedor);
end;

procedure TFrm_Fornecedor.MontaSql(pCodigo: Integer);
begin
   if pCodigo = 0 then
    Exit ;

  cds.Close ;
  cds.Data := DM.SMCadastroClient.getFornecedor(DM.BancoDados,pCodigo) ;

  DBComboBox2.ItemIndex := ifthen(cdsTIPO_PESSOA.AsString = 'F',0,1) ;
  AlteraPessoa ;

  dbcbbCidade.ItemIndex := dbcbbCidade.Items.IndexOf(cdsEND_CIDADE.AsString);
  dbcbbEND_UF.ItemIndex := dbcbbEND_UF.Items.IndexOf(cdsEND_UF.AsString);

  if ( (cds.Active) and (cds.RecordCount > 0) ) then
  begin
      fIdForn := cds.FieldByName('codigo').AsInteger;
      FRazaoForn := cds.FieldByName('razao_nome').AsString;
  end;
end;

procedure TFrm_Fornecedor.Novo;
begin
  inherited;
  pageControl1.TabIndex := 0 ;
  DBComboBox2.DroppedDown := True ;
  DBComboBox2.SetFocus ;
end;

function TFrm_Fornecedor.Validar: Boolean;
begin
  Result := True ;

end;

end.

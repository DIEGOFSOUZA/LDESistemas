unit UFrm_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, System.Actions, Vcl.ActnList, Datasnap.DBClient,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrm_Usuario = class(TPdr_Cad2)
    cdsUSU_ID: TIntegerField;
    cdsUSU_NOME: TStringField;
    cdsUSU_SENHA: TStringField;
    cdsEMAIL: TStringField;
    cdsFONE: TStringField;
    cdsPERFIL: TStringField;
    cdsNOME: TStringField;
    pnlFields: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    Label6: TLabel;
    DBComboBox3: TDBComboBox;
    Label7: TLabel;
    DBComboBox4: TDBComboBox;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    cdsADMIN_PDV: TStringField;
    cdsVENDEDOR: TStringField;
    pnlCodVenda: TPanel;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    cdsCOMISSAO: TFMTBCDField;
    cdsID_VENDEDOR: TIntegerField;
    cdsATIVO: TStringField;
    Label11: TLabel;
    DBComboBox2: TDBComboBox;
    cdsID_GRUPO: TIntegerField;
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBComboBox4Change(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
  private
    procedure MontaSql(pCodigo: Integer);
    function Validar(): Boolean;
  public
    procedure Novo(); override;
    procedure Gravar(); override;
    procedure localizar(); override;
  end;

var
  Frm_Usuario: TFrm_Usuario;

implementation

uses
  UDM, UConsulta, u_Mensagem, UFuncoes;

{$R *.dfm}

{ TFrm_Usuario }

procedure TFrm_Usuario.actExcluirExecute(Sender: TObject);
begin
  TMensagem.Informacao('Não é permitido exclusão de usuário.');
  //inherited;

end;

procedure TFrm_Usuario.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds.FieldByName('usu_id').AsInteger := 0;
  cds.FieldByName('comissao').AsCurrency := 0;
  cds.FieldByName('ativo').AsString := 'Sim';
  cds.FieldByName('ID_GRUPO').AsInteger := 1; //padrao(acesso total)
end;

procedure TFrm_Usuario.DBComboBox4Change(Sender: TObject);
begin
  inherited;
  if DBComboBox4.ItemIndex = 0 then
    pnlCodVenda.Visible := True
  else
  begin
    pnlCodVenda.Visible := False;
//    cds.FieldByName('comissao').AsCurrency := 0;
//    cds.FieldByName('id_vendedor').Clear;
  end;
end;

procedure TFrm_Usuario.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close;
  cds.CreateDataSet;
end;

procedure TFrm_Usuario.Gravar;
var
  lRetorno: OleVariant;
begin
  if not Validar then
    Abort;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    lRetorno := DM.SMCadastroClient.setUsuario(DM.BancoDados,
                                               cds.FieldByName('usu_id').AsInteger, cds.Delta);
    cds.Close;
    cds.Data := lRetorno;
  end;

end;

procedure TFrm_Usuario.localizar;
begin
  inherited;
  MontaSql(Consulta.Usuario);
end;

procedure TFrm_Usuario.MontaSql(pCodigo: Integer);
begin
  if pCodigo = 0 then
    Exit;

  cds.Close;
  cds.Data := DM.SMCadastroClient.getUsuario(DM.BancoDados, pCodigo);
  DBComboBox4Change(Self);
  DBEdit1.SetFocus;
end;

procedure TFrm_Usuario.Novo;
begin
  inherited;
  DBEdit1.SetFocus;
end;

function TFrm_Usuario.Validar: Boolean;
begin
  Result := True;
  if (DBEdit1.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe o nome do usuário');
    DBEdit1.SetFocus;
    Exit;
  end;

  if (DBEdit2.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe o email do usuário');
    DBEdit2.SetFocus;
    Exit;
  end
  else if (not IsValidEmail(DBEdit2.Text)) then
  begin
    Result := False;
    TMensagem.Atencao('Email inválido.');
    DBEdit2.SetFocus;
    Exit;
  end;

  if (DBComboBox1.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe o perfil do usuário.');
    DBComboBox1.SetFocus;
    Exit;
  end;

  if (DBComboBox3.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Usuário é administrador PDV?');
    DBComboBox3.SetFocus;
    Exit;
  end;

  if (DBComboBox4.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Usuário é vendedor(a)?');
    DBComboBox4.SetFocus;
    Exit;
  end;

  if (DBEdit4.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe o login do usuário.');
    DBEdit4.SetFocus;
    Exit;
  end;

  if (DBEdit5.Text = '') then
  begin
    Result := False;
    TMensagem.Atencao('Informe a senha do usuário.');
    DBEdit5.SetFocus;
    Exit;
  end
  else if (Length(Trim(DBEdit5.Text))<8) then
  begin
    Result := False;
    TMensagem.Atencao('Senha deve conter no mínimo 8 caracteres.');
    DBEdit5.SetFocus;
    Exit;
  end;

  if ((DBComboBox4.ItemIndex = 0) and (DBEdit6.Text = '')) then
  begin
    Result := False;
    TMensagem.Atencao('Necessário informar código de vendedor(a).');
    DBEdit6.SetFocus;
    Exit;
  end;
end;

end.

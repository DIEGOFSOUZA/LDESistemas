unit UFrm_ContaBancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2, Vcl.Menus, System.Actions,
  Vcl.ActnList, Data.DB, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_ContaBancaria = class(TPdr_Cad2)
    cdsID: TStringField;
    cdsBCO_NUMERO: TStringField;
    cdsBCO_NOME: TStringField;
    cdsBCO_AGENCIA: TStringField;
    cdsBCO_CONTA: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure actExcluirExecute(Sender: TObject);
  private
    procedure MontaSql(pCodigo: string);
  public
    procedure Novo(); override;
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
  end;

var
  Frm_ContaBancaria: TFrm_ContaBancaria;

implementation

uses
  UDM, UConsulta, u_Mensagem;

{$R *.dfm}

{ TFrm_ContaBancaria }

procedure TFrm_ContaBancaria.actExcluirExecute(Sender: TObject);
begin
  TMensagem.Informacao('Não é permitido exclusão de conta');
//  inherited;

end;

procedure TFrm_ContaBancaria.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsID.AsInteger := 0 ;
end;

procedure TFrm_ContaBancaria.Excluir;
var
  mCodigo: integer;
begin
  mCodigo := cdsID.AsInteger;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setContaBancaria(dm.BancoDados, mCodigo, cds.Delta);

    cds.Close;
    cds.CreateDataSet;
  end;
end;

procedure TFrm_ContaBancaria.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close ;
  cds.CreateDataSet ;
end;

procedure TFrm_ContaBancaria.Gravar;
var
  mRetorno: OleVariant;
begin
  if DBEdit1.Text = EmptyStr then
  begin
    MessageDlg('Campo Código não informado',mtInformation,[mbOK],0);
    DBEdit1.SetFocus ;
    Exit ;
  end;

  if DBEdit2.Text = EmptyStr then
  begin
    MessageDlg('Campo Banco não informado',mtInformation,[mbOK],0);
    DBEdit2.SetFocus ;
    Exit ;
  end;

  if DBEdit3.Text = EmptyStr then
  begin
    MessageDlg('Campo Agência não informado',mtInformation,[mbOK],0);
    DBEdit3.SetFocus ;
    Exit ;
  end;

  if DBEdit4.Text = EmptyStr then
  begin
    MessageDlg('Campo Conta não informado',mtInformation,[mbOK],0);
    DBEdit4.SetFocus ;
    Exit ;
  end;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setContaBancaria(DM.BancoDados, cdsID.AsInteger, cds.Delta);
    cds.Close;
    cds.Data := mRetorno ;
  end;
end;

procedure TFrm_ContaBancaria.localizar;
begin
  inherited;
  MontaSql(Consulta.ContaBancaria);
end;

procedure TFrm_ContaBancaria.MontaSql(pCodigo: string);
begin
  if pCodigo = '0' then
    Exit;

  cds.Close;
  cds.Data := DM.SMCadastroClient.getContaBancaria(DM.BancoDados, StrToInt(pCodigo));
end;

procedure TFrm_ContaBancaria.Novo;
begin
  inherited;
  DBEdit1.SetFocus ;
end;

end.

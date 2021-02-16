unit UFrm_Historico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2, Vcl.Menus, System.Actions,
  Vcl.ActnList, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  UDBPesquisa;

type
  TFrm_TipoNotaEntrada = class(TPdr_Cad2)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    cdsID: TIntegerField;
    cdsCHAVE: TStringField;
    cdsDESCRICAO: TStringField;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    cdsDEBITO_CREDITO: TStringField;
    dbpsqsGrupo: TDBPesquisa;
    cdsID_GRUPO: TIntegerField;
    cdsGRUPO: TStringField;
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure dbpsqsGrupoPesquisa(Sender: TObject; var Retorno: string);
  private
    procedure MontaSql(pCodigo: Integer);
  public
    procedure Novo(); override;
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
  end;

var
  Frm_TipoNotaEntrada: TFrm_TipoNotaEntrada;

implementation

uses
  UDM, UConsulta, u_Mensagem, UMakeReadWrite;

{$R *.dfm}

{ TFrm_TipoNotaEntrada }

procedure TFrm_TipoNotaEntrada.actExcluirExecute(Sender: TObject);
begin
  TMensagem.Informacao('Não é permitido exclusão de histórico');

//  inherited;

end;

procedure TFrm_TipoNotaEntrada.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsID.AsInteger := 0 ;
  cds.FieldByName('debito_credito').AsString := 'Débito';
  DBComboBox1.ItemIndex := 0 ;
end;

procedure TFrm_TipoNotaEntrada.dbpsqsGrupoPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Historico_Grupo.ToString;
end;

procedure TFrm_TipoNotaEntrada.Excluir;
var
  mCodigo: integer;
begin
  mCodigo := cdsID.AsInteger;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setHistorico(dm.BancoDados, mCodigo, cds.Delta);

    cds.Close;
    cds.CreateDataSet;
  end;
end;

procedure TFrm_TipoNotaEntrada.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close ;
  cds.CreateDataSet ;
end;

procedure TFrm_TipoNotaEntrada.Gravar;
var
  mRetorno: OleVariant;
begin
  if DBEdit1.Text = EmptyStr then
  begin
    TMensagem.Atencao('Campo Identificação não informado');
    DBEdit1.SetFocus ;
    Abort ;
  end;

  if DBEdit2.Text = EmptyStr then
  begin
    TMensagem.Atencao('Campo Descrição não informado');
    DBEdit2.SetFocus ;
    Abort ;
  end;

  if dbpsqsGrupo.Campo.Text = EmptyStr then
  begin
    TMensagem.Atencao('Informe o grupo do histórico');
    dbpsqsGrupo.Campo.SetFocus ;
    Abort ;
  end;

  inherited;
  if (cds.ChangeCount > 0) then
  begin
    mRetorno := DM.SMCadastroClient.setHistorico(DM.BancoDados, cdsID.AsInteger, cds.Delta);
    cds.Close;
    cds.Data := mRetorno ;
  end;
end;

procedure TFrm_TipoNotaEntrada.localizar;
begin
  inherited;
  MontaSql(Consulta.Historico);
end;

procedure TFrm_TipoNotaEntrada.MontaSql(pCodigo: Integer);
begin
  if pCodigo = 0 then
    Exit;

  cds.Close;
  cds.Data := DM.SMCadastroClient.getHistorico(DM.BancoDados, pCodigo);
  MakeReadWrite(cdsGRUPO);
end;

procedure TFrm_TipoNotaEntrada.Novo;
begin
  inherited;
  DBEdit1.SetFocus ;
end;

end.

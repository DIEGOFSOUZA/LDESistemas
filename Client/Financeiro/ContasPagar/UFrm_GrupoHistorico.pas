unit UFrm_GrupoHistorico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_GrupoHistorico = class(TPdr_Cad2)
    cdsCODIGO: TIntegerField;
    cdsDESCRI: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure actExcluirExecute(Sender: TObject);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
   private
    procedure MontaSql(pCodigo: Integer);
  public
    procedure Novo(); override;
    procedure Gravar(); override;
    procedure localizar(); override;
  end;

var
  Frm_GrupoHistorico: TFrm_GrupoHistorico;

implementation

uses
  u_Mensagem, UDM, UConsulta;

{$R *.dfm}

{ TFrm_GrupoHistorico }

procedure TFrm_GrupoHistorico.actExcluirExecute(Sender: TObject);
begin
  TMensagem.Informacao('Não é permitido exclusão de grupo de histórico');
//  inherited;
end;

procedure TFrm_GrupoHistorico.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds.FieldByName('codigo').AsInteger := 0;
end;

procedure TFrm_GrupoHistorico.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close;
  cds.CreateDataSet;
end;

procedure TFrm_GrupoHistorico.Gravar;
var
  lRetorno: OleVariant;
begin
  if DBEdit2.Text = EmptyStr then
  begin
    TMensagem.Atencao('Informe a descrição');
    DBEdit2.SetFocus;
    Abort;
  end;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    lRetorno := DM.SMCadastroClient.setHistoricoGrupo(DM.BancoDados, cds.FieldByName('codigo').AsInteger, cds.Delta);
    cds.Close;
    cds.Data := lRetorno;
  end;
end;

procedure TFrm_GrupoHistorico.localizar;
begin
  inherited;
  MontaSql(Consulta.Historico_Grupo);
end;

procedure TFrm_GrupoHistorico.MontaSql(pCodigo: Integer);
begin
  if pCodigo = 0 then
    Exit;

  cds.Close;
  cds.Data := DM.SMCadastroClient.getHistoricoGrupo(DM.BancoDados, pCodigo);
end;

procedure TFrm_GrupoHistorico.Novo;
begin
  inherited;
  DBEdit2.SetFocus;
end;

end.

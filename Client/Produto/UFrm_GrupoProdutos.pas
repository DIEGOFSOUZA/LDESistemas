unit UFrm_GrupoProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2,
  System.Actions, Vcl.ActnList, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage;

type
  TFrm_GrupoProdutos = class(TPdr_Cad2)
    cdsCODIGO: TIntegerField;
    cdsDESCRI: TStringField;
    cdsOBS: TMemoField;
    pnlCentro: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    DBText1: TDBText;
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    procedure MontaSql(pCodigo: Integer);
  public
    { Public declarations }
    procedure Novo(); override;
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
  end;

var
  Frm_GrupoProdutos: TFrm_GrupoProdutos;

implementation

{$R *.dfm}

uses
  UDM, UConsulta, u_Mensagem;

{ TFrm_GrupoProdutos }

procedure TFrm_GrupoProdutos.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds.FieldByName('CODIGO').AsInteger := 0;
end;

procedure TFrm_GrupoProdutos.Excluir;
var
  mCodigo: integer;
begin
  mCodigo := cdsCODIGO.AsInteger;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setGrupoProdutos(dm.BancoDados, mCodigo, cds.Delta);

    cds.Close;
    cds.CreateDataSet;
  end;
end;

procedure TFrm_GrupoProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close;
  cds.CreateDataSet;
end;

procedure TFrm_GrupoProdutos.Gravar;
var
  mRetorno: OleVariant;
begin
  if (Trim(DBEdit2.Text) = '') then
  begin
    TMensagem.Atencao('Informe o nome do grupo.');
    DBEdit2.SetFocus;
    Exit;
  end;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setGrupoProdutos(DM.BancoDados, cdsCODIGO.AsInteger, cds.Delta);
    cds.Close;
    cds.Data := mRetorno;
  end;
end;

procedure TFrm_GrupoProdutos.localizar;
begin
  inherited;
  MontaSql(Consulta.Grupo_Produto);
end;

procedure TFrm_GrupoProdutos.MontaSql(pCodigo: Integer);
begin
  if (pCodigo = 0) then
    Exit;

  cds.Close;
  cds.Data := DM.SMCadastroClient.getGrupoProdutos(DM.BancoDados, pCodigo);
end;

procedure TFrm_GrupoProdutos.Novo;
begin
  inherited;
  DBEdit2.SetFocus;
end;

end.


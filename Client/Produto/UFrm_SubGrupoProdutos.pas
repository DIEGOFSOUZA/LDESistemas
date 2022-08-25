unit UFrm_SubGrupoProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2,
  Data.DB, System.Actions, Vcl.ActnList, Datasnap.DBClient, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Menus,
  Vcl.Imaging.pngimage;

type
  TFrm_SubGrupoProdutos = class(TPdr_Cad2)
    cdsCODIGO: TIntegerField;
    cdsDESCRI: TStringField;
    cdsOBS: TMemoField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    pnlCentro: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    DBMemo2: TDBMemo;
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure MontaSql(pCodigo: Integer);
  public
    { Public declarations }
    procedure Novo(); override;
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
  end;

var
  Frm_SubGrupoProdutos: TFrm_SubGrupoProdutos;

implementation

{$R *.dfm}

uses
  UConsulta, UDM, u_Mensagem;

{ TFrm_SubGrupoProdutos }

procedure TFrm_SubGrupoProdutos.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds.FieldByName('CODIGO').AsInteger := 0;
end;

procedure TFrm_SubGrupoProdutos.Excluir;
var
  mCodigo: integer;
begin
  mCodigo := cdsCODIGO.AsInteger;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setSubGrupoProdutos(dm.BancoDados, mCodigo, cds.Delta);

    cds.Close;
    cds.CreateDataSet;
  end;
end;

procedure TFrm_SubGrupoProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close;
  cds.CreateDataSet;
end;

procedure TFrm_SubGrupoProdutos.Gravar;
var
  mRetorno: OleVariant;
begin
  if Trim(DBEdit1.Text) = '' then
  begin
    TMensagem.Atencao('Informar o nome do Subgrupo.');
    DBEdit1.SetFocus;
    Exit;
  end;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setSubGrupoProdutos(DM.BancoDados, cdsCODIGO.AsInteger, cds.Delta);
    cds.Close;
    cds.Data := mRetorno;
  end;
end;

procedure TFrm_SubGrupoProdutos.localizar;
begin
  inherited;
  MontaSql(Consulta.SubGrupo_Produto);
end;

procedure TFrm_SubGrupoProdutos.MontaSql(pCodigo: Integer);
begin
  if pCodigo = 0 then
    Exit;

  cds.Close;
  cds.Data := DM.SMCadastroClient.getSubGrupoProdutos(DM.BancoDados, pCodigo);
end;

procedure TFrm_SubGrupoProdutos.Novo;
begin
  inherited;
  DBEdit1.SetFocus;
end;

end.


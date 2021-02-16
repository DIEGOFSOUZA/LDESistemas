unit uFrm_CadUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_CadUnidade = class(TPdr_Cad2)
    cdsCODIGO: TIntegerField;
    cdsNOME: TStringField;
    cdsSIGLA: TStringField;
    cdsPADRAO: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
  private
    procedure MontaSql(pCodigo : integer) ;
  public
    procedure Novo(); override;
    procedure Gravar(); override;
    procedure localizar(); override;
  end;

var
  Frm_CadUnidade: TFrm_CadUnidade;

implementation

uses
  UDM, u_Mensagem, UConsulta;

{$R *.dfm}

procedure TFrm_CadUnidade.actExcluirExecute(Sender: TObject);
begin
  TMensagem.Informacao('Não é permitido exclusão.');
//  inherited;
end;

procedure TFrm_CadUnidade.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds.FieldByName('codigo').AsInteger := 0;
  cds.FieldByName('padrao').AsString := 'N';
end;

procedure TFrm_CadUnidade.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close ;
  cds.CreateDataSet ;
end;

procedure TFrm_CadUnidade.Gravar;
var
  mRetorno: OleVariant;
begin
  if DBEdit2.Text = '' then
  begin
    TMensagem.Atencao('É necessário informar a sigla da unidade.');
    DBEdit2.SetFocus ;
    Abort ;
  end;

  if DBEdit3.Text = '' then
  begin
    TMensagem.Atencao('É necessário informar o nome da unidade.');
    DBEdit3.SetFocus ;
    Abort ;
  end;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setUnidade(DM.BancoDados, cdsCODIGO.AsInteger, cds.Delta);
    cds.Close;
    cds.Data := mRetorno;
  end;
end;

procedure TFrm_CadUnidade.localizar;
var
  aTemp: TRetornoUnidade;
begin
  inherited;
  aTemp := Consulta.Unidade;
  if aTemp.Codigo > 0 then
    MontaSql(aTemp.Codigo);
end;

procedure TFrm_CadUnidade.MontaSql(pCodigo: integer);
begin
  if pCodigo = 0 then
    Exit;

  cds.Close;
  cds.Data := DM.SMCadastroClient.getUnidade(DM.BancoDados, IntToStr(pCodigo));
end;

procedure TFrm_CadUnidade.Novo;
begin
  inherited;
  DBEdit2.SetFocus;
end;

end.

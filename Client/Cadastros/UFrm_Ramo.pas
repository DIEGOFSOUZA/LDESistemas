unit UFrm_Ramo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, System.Actions, Vcl.ActnList, Data.DB, Datasnap.DBClient,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus;

type
  TFrm_Ramo = class(TPdr_Cad2)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    cdsCODIGO: TIntegerField;
    cdsDESCRI: TStringField;
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure MontaSql(pCodigo : Integer) ;
  public
    { Public declarations }
    procedure Novo() ; override ;
    procedure Gravar() ; override ;
    procedure Excluir() ; override ;
    procedure localizar() ; override ;
  end;

var
  Frm_Ramo: TFrm_Ramo;

implementation

{$R *.dfm}

uses UConsulta, UDM;

{ TFrm_Ramo }

procedure TFrm_Ramo.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCODIGO.AsInteger := 0 ;
end;

procedure TFrm_Ramo.Excluir;
var mCodigo : integer ;
begin
  mCodigo := cdsCODIGO.AsInteger ;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setRamo(dm.BancoDados,
       mCodigo,cds.Delta) ;

    cds.Close ;
    cds.CreateDataSet ;
  end;
end;

procedure TFrm_Ramo.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close ;
  cds.CreateDataSet ;
end;

procedure TFrm_Ramo.Gravar;
var mRetorno : OleVariant ;
begin
  if Trim(DBEdit2.Text) = '' then
  begin
   MessageDlg('Informar o Ramo de Atividade',mtInformation,[mbOK],0) ;
   DBEdit2.SetFocus ;
   Exit ;
  end ;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setRamo(DM.BancoDados,
       cdsCODIGO.AsInteger,cds.Delta) ;
    cds.Close ;
    cds.Data := mRetorno ;
  end;
end;

procedure TFrm_Ramo.localizar;
begin
  inherited;
  MontaSql(Consulta.Ramo_Atividade);
end;

procedure TFrm_Ramo.MontaSql(pCodigo: Integer);
begin
   if pCodigo = 0 then
    Exit ;

  cds.Close ;
  cds.Data := DM.SMCadastroClient.getRamo(DM.BancoDados,pCodigo) ;
end;

procedure TFrm_Ramo.Novo;
begin
  inherited;
  DBEdit2.SetFocus ;
end;

end.

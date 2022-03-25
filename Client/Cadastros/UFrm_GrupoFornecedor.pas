unit UFrm_GrupoFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, System.Actions, Vcl.ActnList, Data.DB, Datasnap.DBClient,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus, Vcl.Imaging.pngimage;

type
  TFrm_GrupoFornecedor = class(TPdr_Cad2)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    cdsCODIGO: TIntegerField;
    cdsDESCRI: TStringField;
    cdsOBS: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure cdsAfterInsert(DataSet: TDataSet);
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
  Frm_GrupoFornecedor: TFrm_GrupoFornecedor;

implementation

{$R *.dfm}

uses UConsulta, UDM;

{ TFrm_GrupoFabricante1 }

procedure TFrm_GrupoFornecedor.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCODIGO.AsInteger := 0 ;
end;

procedure TFrm_GrupoFornecedor.Excluir;
begin
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setGrupoFornecedor(dm.BancoDados,
       cdsCODIGO.AsInteger,cds.Delta) ;
    cds.Close ;
    cds.CreateDataSet ;
  end;
end;

procedure TFrm_GrupoFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close ;
  cds.CreateDataSet ;
end;

procedure TFrm_GrupoFornecedor.Gravar;
var mRetorno : OleVariant ;
begin
  if Trim(DBEdit2.Text) = '' then
  begin
   MessageDlg('Informar o Nome do Grupo...',mtError,[mbOK],0) ;
   DBEdit2.SetFocus ;
   Exit ;
  end;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setGrupoFornecedor(DM.BancoDados,
       cdsCODIGO.AsInteger,cds.Delta) ;
    cds.Close ;
    cds.Data := mRetorno ;
  end;
end;

procedure TFrm_GrupoFornecedor.localizar;
begin
  inherited;
  MontaSql(Consulta.Grupo_Fornecedor);
end;

procedure TFrm_GrupoFornecedor.MontaSql(pCodigo: Integer);
begin
  if pCodigo = 0 then
   Exit ;

  cds.Close ;
  cds.Data := DM.SMCadastroClient.getGrupoFornecedor(DM.BancoDados,pCodigo) ;
end;

procedure TFrm_GrupoFornecedor.Novo;
begin
  inherited;
  DBEdit2.SetFocus ;
end;

end.

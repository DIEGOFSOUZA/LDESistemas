unit UFrm_Cidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad, FireDAC.Stan.Intf,
  FireDAC.Stan.Param, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  FireDAC.Comp.Client, Data.DB, Datasnap.DBClient,
  Vcl.Buttons, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.Menus, Vcl.Imaging.pngimage ;


type
  TFrm_Cidades = class(TPdr_Cad)
    UFrm_Cidades: TPanel;
    cdsCODIGO: TIntegerField;
    cdsCOD_UF: TSmallintField;
    cdsNOME: TStringField;
    cdsUF: TStringField;
    cdsCOD_IBGE: TStringField;
    cdsCEP: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
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
  Frm_Cidades: TFrm_Cidades;

implementation

{$R *.dfm}

uses UConsulta, UDM ;

procedure TFrm_Cidades.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCODIGO.AsInteger := 0 ;
end;

procedure TFrm_Cidades.Excluir;
var mCodCid : integer ;
begin
  mCodCid := cdsCODIGO.AsInteger ;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setCidades(dm.BancoDados,
       mCodCid,cds.Delta) ;

    cds.Close ;
    cds.CreateDataSet ;
  end;
end;

procedure TFrm_Cidades.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close ;
  cds.CreateDataSet ;
  //DBComboBox1.Items.Clear ;
  //DBComboBox1.Items.AddStrings(BuscaUF);
end;

procedure TFrm_Cidades.Gravar;
var mRetorno : OleVariant ;
begin
  if Trim(cdsNOME.AsString) = '' then
  begin
    MessageDlg('Informe a cidade',mtError,[mbOK],0) ;
    DBEdit3.SetFocus ;
    Exit ;
  end;

  if Trim(cdsUF.AsString) = '' then
  begin
    MessageDlg('Informe o Estado...',mtError,[mbOK],0) ;
    DBEdit4.SetFocus ;
    Exit ;
  end;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setCidades(DM.BancoDados,
       cdsCODIGO.AsInteger,cds.Delta) ;
    cds.Close ;
    cds.Data := mRetorno ;
  end;
end;

procedure TFrm_Cidades.localizar;
begin
  inherited;
  MontaSql(Consulta.Cidades);
end;

procedure TFrm_Cidades.MontaSql(pCodigo : Integer);
var txt : string ;
begin
   if pCodigo = 0 then
    Exit ;

  cds.Close ;
  cds.Data := DM.SMCadastroClient.getCidades(DM.BancoDados,pCodigo) ;
end;

procedure TFrm_Cidades.Novo;
begin
  inherited;
  DBEdit2.SetFocus ;
end;

end.

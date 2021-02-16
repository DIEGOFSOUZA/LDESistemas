unit UFrm_CondicaoPagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad2, Vcl.Menus, System.Actions,
  Vcl.ActnList, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Imaging.pngimage;

type
  TFRM_CondicaoPagto = class(TPdr_Cad2)
    cdsCODIGO: TIntegerField;
    cdsCOND1: TSmallintField;
    cdsCOND2: TSmallintField;
    cdsCOND3: TSmallintField;
    cdsCOND4: TSmallintField;
    cdsCOND5: TSmallintField;
    cdsCOND6: TSmallintField;
    cdsCOND7: TSmallintField;
    cdsCOND8: TSmallintField;
    cdsCOND9: TSmallintField;
    cdsCOND10: TSmallintField;
    cdsCOND11: TSmallintField;
    cdsCOND12: TSmallintField;
    cdsCOND13: TSmallintField;
    cdsCOND14: TSmallintField;
    cdsCOND15: TSmallintField;
    cdsATIVO: TStringField;
    cdsPERCENT_ACRESCIMO: TCurrencyField;
    cdsDIAS: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    pnlDias: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    dbrgrpAtivo: TDBRadioGroup;
    Label3: TLabel;
    DBEdit11: TDBEdit;
    Label4: TLabel;
    cdsDESCRICAO: TStringField;
    DBEdit18: TDBEdit;
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure MontaSql(pCodigo : integer) ;
  public
    { Public declarations }
    procedure Novo() ; override ;
    procedure Gravar() ; override ;
    procedure Excluir() ; override ;
    procedure localizar() ; override ;
  end;

var
  FRM_CondicaoPagto: TFRM_CondicaoPagto;

implementation

uses
  UDM, UConsulta;

{$R *.dfm}

procedure TFRM_CondicaoPagto.cdsAfterInsert(DataSet: TDataSet);
var
  x: Integer;
begin
  inherited;
  cdsATIVO.AsString := 'A';
  cdsCODIGO.AsInteger := 0;
  cdsPERCENT_ACRESCIMO.AsInteger := 0;
  for x := 1 to 15 do
    cds.FieldByName('cond' + IntToStr(x)).asinteger := 0;
end;

procedure TFRM_CondicaoPagto.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8]) then key := #0 ; //apenas numero e virgula
end;

procedure TFRM_CondicaoPagto.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if not (key in ['0'..'9',#8]) then key := #0 ;
end;

procedure TFRM_CondicaoPagto.Excluir;
begin
  inherited;
  DM.SMCadastroClient.setCondPagto(DM.BancoDados, cdsCODIGO.AsInteger, cds.Data);
  cds.Close;
  cds.CreateDataSet;
end;

procedure TFRM_CondicaoPagto.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close ;
  cds.CreateDataSet ;
end;

procedure TFRM_CondicaoPagto.Gravar;
var
  mRetorno: OleVariant;
begin
  if (Trim(Dbedit18.Text) = EmptyStr) then
  begin
    MessageDlg('Informe a Descrição.',mtWarning,[mbOK],0) ;
    DBEdit18.SetFocus ;
    Abort ;
  end;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setCondPagto(DM.BancoDados, cdsCODIGO.AsInteger, cds.Delta);
    cds.Close;
    cds.Data := mRetorno;
  end;
end;

procedure TFRM_CondicaoPagto.localizar;
begin
  inherited;
  MontaSql(Consulta.CondPagto);
end;

procedure TFRM_CondicaoPagto.MontaSql(pCodigo : integer) ;
begin
  if pCodigo < 1 then
    Exit ;

  cds.Close ;
  cds.Data := Dm.SMCadastroClient.getCondPagto(DM.BancoDados,pCodigo) ;
end;

procedure TFRM_CondicaoPagto.Novo;
begin
  inherited;
  DBEdit2.SetFocus ;
end;

end.

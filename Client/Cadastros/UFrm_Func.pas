unit UFrm_Func;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad,
  System.Actions, Vcl.ActnList, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, System.StrUtils;

type
  TFrm_Func = class(TPdr_Cad)
    cdsCODIGO: TIntegerField;
    cdsNOME: TStringField;
    cdsATIVO: TStringField;
    cdsSETOR: TStringField;
    cdsADVERTENCIA: TMemoField;
    cdsSUSPENCAO: TMemoField;
    cdsOBS: TMemoField;
    cdsCPF: TStringField;
    cdsRG: TStringField;
    cdsENDERECO: TStringField;
    cdsBAIRRO: TStringField;
    cdsCIDADE: TStringField;
    cdsESTADO: TStringField;
    cdsFONE: TStringField;
    cdsCEL: TStringField;
    cdsMAIL: TStringField;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    cdsID_VENDEDOR: TIntegerField;
    pnl1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    pnl2: TPanel;
    DBEdit9: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure cdsUsuarioBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
    function Validar(): boolean;
    procedure MontaSql(mCodigo: integer);
  public
    { Public declarations }
    procedure Novo(); override;
    procedure Gravar(); override;
    procedure Excluir(); override;
    procedure localizar(); override;
  end;

var
  Frm_Func: TFrm_Func;

implementation

{$R *.dfm}

uses
  UDM, UConsulta, u_Mensagem, UConstantes;

procedure TFrm_Func.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCODIGO.AsInteger := 0;
  cdsATIVO.AsString := 'A';
end;

procedure TFrm_Func.cdsUsuarioBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not (cds.State in [dsEdit, dsInsert]) then
    cds.Edit;
end;

procedure TFrm_Func.Excluir;
var
  mCodigo: integer;
begin
  mCodigo := cdsCODIGO.AsInteger;
  inherited;
  if cds.ChangeCount > 0 then
  begin
    DM.SMCadastroClient.setFuncionario(dm.BancoDados, mCodigo, VarArrayOf([cds.Delta, null]));
    cds.Close;
    cds.CreateDataSet;
  end;
end;

procedure TFrm_Func.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close;
  cds.CreateDataSet;
  pgc1.TabIndex := 0;

  pnl1.Color := cor03;
  pnl2.Color := cor03;
end;

procedure TFrm_Func.Gravar;
var
  mFuncionario, mRetorno: OleVariant;
begin
  if not Validar then
    Exit;

  mFuncionario := null;
  cds.Post;

  if cds.ChangeCount > 0 then
    mFuncionario := cds.Delta;


  mRetorno := DM.SMCadastroClient.setFuncionario(DM.BancoDados, cdsCODIGO.AsInteger,
       VarArrayOf([mFuncionario]));

  cds.Close;
  cds.Data := mRetorno[0];
end;

procedure TFrm_Func.localizar;
begin
  inherited;
  MontaSql(Consulta.Funcionario);
end;

procedure TFrm_Func.MontaSql(mCodigo: integer);
var
  tmp: OleVariant;
begin
  if mCodigo = 0 then
    Exit;

  cds.Close;
  tmp := DM.SMCadastroClient.getFuncionario(DM.BancoDados, mCodigo);
  cds.Data := tmp[0];
end;

procedure TFrm_Func.Novo;
begin
  inherited;
  pgc1.TabIndex := 0;
  DBEdit5.SetFocus;
end;

function TFrm_Func.Validar: boolean;
begin
  if DBEdit5.Text = '' then
  begin
    Result := False;
    TMensagem.Atencao('É necessário informar o CPF!');
    pgc1.TabIndex := 0;
    DBEdit5.SetFocus;
    Exit;
  end;
  if DBEdit6.Text = '' then
  begin
    Result := False;
    TMensagem.Atencao('É necessário informar o RG!');
    pgc1.TabIndex := 0;
    DBEdit6.SetFocus;
    Exit;
  end;
  if DBEdit2.Text = '' then
  begin
    Result := False;
    TMensagem.Atencao('É necessário informar o Nome do Funcionário!');
    pgc1.TabIndex := 0;
    DBEdit2.SetFocus;
    Exit;
  end;

  Result := True;
end;

end.


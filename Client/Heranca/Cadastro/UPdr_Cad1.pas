unit UPdr_Cad1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Buttons,
  PngSpeedButton, Vcl.ExtCtrls;

type
  TPdr_Cad1 = class(TForm)
    Panel1: TPanel;
    SpbtnNovo: TPngSpeedButton;
    SpbtnEditar: TPngSpeedButton;
    SpbtnExcluir: TPngSpeedButton;
    SpbtnLocalizar: TPngSpeedButton;
    SpbtnCancelar: TPngSpeedButton;
    SpbtnSair: TPngSpeedButton;
    SpbtnGravar: TPngSpeedButton;
    cds: TClientDataSet;
    ds: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dsStateChange(Sender: TObject);
    procedure SpbtnNovoClick(Sender: TObject);
    procedure SpbtnEditarClick(Sender: TObject);
    procedure SpbtnExcluirClick(Sender: TObject);
    procedure SpbtnCancelarClick(Sender: TObject);
    procedure SpbtnGravarClick(Sender: TObject);
    procedure SpbtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Pdr_Cad1: TPdr_Cad1;

implementation

{$R *.dfm}

uses UDM;

procedure TPdr_Cad1.dsStateChange(Sender: TObject);
var tmp : boolean ;
begin
  inherited;
  if not cds.Active then
  begin
   tmp := false ;
   SpbtnNovo.Enabled      := tmp ;
   SpbtnEditar.Enabled    := tmp ;
   SpbtnGravar.Enabled    := tmp ;
   SpbtnCancelar.Enabled  := tmp ;
   SpbtnExcluir.Enabled   := tmp ;
   SpbtnLocalizar.Enabled := tmp ;
  end
  else
  begin
   tmp := ds.DataSet.State = dsBrowse ;
   SpbtnNovo.Enabled      := tmp ;
   SpbtnEditar.Enabled    := tmp ;
   SpbtnGravar.Enabled    := not tmp ;
   SpbtnCancelar.Enabled  := not tmp ;
   SpbtnExcluir.Enabled   := tmp ;
   SpbtnLocalizar.Enabled := tmp ;
  end ;
end;

procedure TPdr_Cad1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cds.Close ;
end;

procedure TPdr_Cad1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (cds.State in [dsEdit,dsInsert]) then
  begin
   MessageDlg('Antes de sair deve-se gravar ou cancelar.',mtInformation,[mbOk],0) ;
   CanClose := false ;
  end ;
end;

procedure TPdr_Cad1.FormCreate(Sender: TObject);
begin
  Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
  Top  := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
  cds.Close ;
  cds.CreateDataSet ;
end;

procedure TPdr_Cad1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = Vk_F2 then
  SpbtnLocalizar.Click ;
end;

procedure TPdr_Cad1.SpbtnCancelarClick(Sender: TObject);
begin
 cds.Cancel ;
 cds.CancelUpdates ;
end;

procedure TPdr_Cad1.SpbtnEditarClick(Sender: TObject);
begin
  cds.Edit ;
end;

procedure TPdr_Cad1.SpbtnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma exclusão ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
   try
    Cds.Delete ;
    Cds.ApplyUpdates(-1) ;
    DM.SMClient.FecharTransacao(true);
   except
    dm.SMClient.FecharTransacao(False);
    MessageDlg('Ocorreu um erro na exclusão+'#13+'Exclusão não efetuada',mtError,[mbOk],0) ;
   end ;
  end ;
end;

procedure TPdr_Cad1.SpbtnGravarClick(Sender: TObject);
begin
  try
   if (cds.State in [dsEdit,dsInsert]) then
    cds.Post ;
   cds.ApplyUpdates(-1) ;
   DM.SMClient.FecharTransacao(true) ;
  except
   MessageDlg('Erro na gravação...',mtError,[mbOk],0) ;
   DM.SMClient.FecharTransacao(false) ;
  end ;
end;

procedure TPdr_Cad1.SpbtnNovoClick(Sender: TObject);
begin
  cds.Append ;
end;

procedure TPdr_Cad1.SpbtnSairClick(Sender: TObject);
begin
  Close ;
end;

end.

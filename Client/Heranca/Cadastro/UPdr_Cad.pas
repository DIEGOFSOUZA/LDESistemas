unit UPdr_Cad;

interface

uses
  Winapi.Windows,
  Winapi.Messages,

  System.SysUtils,
  System.Variants,
  System.Classes,
  System.Actions,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Buttons,
  Vcl.ActnList,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  Vcl.Menus,

  UPdr_Child,

  Data.DB,
  Datasnap.DBClient,

  Vcl.Imaging.pngimage;

type
  TPdr_Cad = class(TPdr_Child)
    ds: TDataSource;
    cds: TClientDataSet;
    actMaster: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actLocalizar: TAction;
    actCancelar: TAction;
    actGravar: TAction;
    actSair: TAction;
    lblTitulo: TLabel;
    Panel4: TPanel;
    Label23: TLabel;
    pnlFundo0: TPanel;
    Panel1: TPanel;
    pnlFundo1: TPanel;
    pnlSair: TPanel;
    imgSair: TImage;
    pnlGravar: TPanel;
    imgGravar: TImage;
    pnlCancelar: TPanel;
    imgCancelar: TImage;
    pnlLocalizar: TPanel;
    imgLocalizar: TImage;
    pnlExcluir: TPanel;
    imgExcluir: TImage;
    pnlEditar: TPanel;
    imgEditar: TImage;
    pnlAdicionar: TPanel;
    imgAdicionar: TImage;
    lblAdicionar: TLabel;
    lblEditar: TLabel;
    lblExcluir: TLabel;
    lblLocalizar: TLabel;
    lblCancelar: TLabel;
    lblSalvar: TLabel;
    lblSair: TLabel;
    procedure SpbtnSairClick(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure dsStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actLocalizarExecute(Sender: TObject);
    procedure lblTituloMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
  private
    function GetTransparenciaPanel(pValor:Boolean):Integer ;
  public
    { Public declarations }
    procedure Novo() ; virtual ;
    procedure Editar() ; virtual ;
    procedure Gravar() ; virtual ;
    procedure Excluir() ; virtual ;
    procedure Cancelar() ; virtual ;
    procedure localizar() ; virtual ; abstract ;
  end;

var
  Pdr_Cad: TPdr_Cad;

implementation

uses
  u_Mensagem,UConstantes;

{$R *.dfm}

{ TPdr_Cad }

procedure TPdr_Cad.actCancelarExecute(Sender: TObject);
begin
  inherited;
  Cancelar() ;
end;

procedure TPdr_Cad.actEditarExecute(Sender: TObject);
begin
  inherited;
  Editar() ;
end;

procedure TPdr_Cad.actExcluirExecute(Sender: TObject);
begin
  inherited;
  Excluir() ;
end;

procedure TPdr_Cad.actGravarExecute(Sender: TObject);
begin
  inherited;
  Gravar() ;
end;

procedure TPdr_Cad.actLocalizarExecute(Sender: TObject);
begin
  inherited;
  localizar() ;
end;

procedure TPdr_Cad.actNovoExecute(Sender: TObject);
begin
  inherited;
  Novo() ;
end;

procedure TPdr_Cad.actSairExecute(Sender: TObject);
begin
  inherited;
  Close ;
end;

procedure TPdr_Cad.Cancelar;
begin
  if cds.State in [dsEdit,dsInsert] then
    cds.Cancel ;
end;

procedure TPdr_Cad.dsStateChange(Sender: TObject);
var
  tmp: boolean;
begin
  inherited;
  if not cds.Active then
  begin
    tmp := False;
    actNovo.Enabled := tmp;
    actEditar.Enabled := tmp;
    actGravar.Enabled := tmp;
    actExcluir.Enabled := tmp;
    actCancelar.Enabled := tmp;
    {desabilitar}
  end
  else
  begin
    tmp := ds.DataSet.State = dsBrowse;
    actNovo.Enabled := tmp;
    actEditar.Enabled := tmp;
    actGravar.Enabled := not tmp;
    actCancelar.Enabled := not tmp;

    actExcluir.Enabled := tmp and (not cds.IsEmpty);
  end;

  pnlAdicionar.Color := GetTransparenciaPanel(actNovo.Enabled) ;
  pnlAdicionar.Enabled := actNovo.Enabled ;

  pnlEditar.Color := GetTransparenciaPanel(actEditar.Enabled) ;
  pnlEditar.Enabled := actEditar.Enabled ;

  pnlExcluir.Color := GetTransparenciaPanel(actExcluir.Enabled) ;
  pnlExcluir.Enabled := actExcluir.Enabled ;

  pnlLocalizar.Color := GetTransparenciaPanel(actLocalizar.Enabled) ;
  pnlLocalizar.Enabled := actLocalizar.Enabled ;

  pnlCancelar.Color := GetTransparenciaPanel(actCancelar.Enabled) ;
  pnlCancelar.Enabled := actCancelar.Enabled ;

  pnlGravar.Color := GetTransparenciaPanel(actGravar.Enabled) ;
  pnlGravar.Enabled := actGravar.Enabled ;
end;

procedure TPdr_Cad.Editar;
begin
  if not (cds.State in [dsEdit,dsInsert]) then
    cds.Edit ;
end;

procedure TPdr_Cad.Excluir;
begin
  if cds.IsEmpty then
  begin
    TMensagem.Informacao('Não existe registro para excluir...');
    Exit;
  end;

  if not (cds.State in [dsEdit, dsInsert]) then
  begin
    if TMensagem.Pergunta('Confirma a exclusão ?') then
      cds.Delete;
  end;
end;

procedure TPdr_Cad.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if cds.Active and (cds.State in [dsEdit, dsInsert]) then
  begin
    if not (TMensagem.Pergunta('Gravação não foi concluida, deseja sair?')) then
      CanClose := False;
  end
  else
    CanClose := True;
end;

procedure TPdr_Cad.FormCreate(Sender: TObject);
begin
  inherited;
  lblTitulo.Color := cor01;
  Panel1.Color := cor02;
  pnlFundo0.Color := cor03;
end;

function TPdr_Cad.GetTransparenciaPanel(pValor: Boolean): Integer;
begin
  if pValor then
    Result := $006B2F00
  else
    Result := $00FFB87D ;
end;

procedure TPdr_Cad.Gravar;
begin
  if (cds.State in [dsEdit,dsInsert]) then
    cds.Post ;
end;

procedure TPdr_Cad.lblTituloMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
const
  sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TPdr_Cad.Novo;
begin
  if not (cds.State in [dsEdit, dsInsert]) then
  begin
    cds.FieldDefs.Clear;
    cds.Close;
    cds.CreateDataSet;
    cds.append;
  end;
end;

procedure TPdr_Cad.SpbtnSairClick(Sender: TObject);
begin
  inherited;
  Close ;
end;

end.

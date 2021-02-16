unit UPdr_CadLista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Data.DB, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList;

type
  TPdr_CadLista = class(TPdr_Child)
    pnlFundo: TPanel;
    pgc: TPageControl;
    tsLista: TTabSheet;
    tsCrud: TTabSheet;
    pnlPesquisa: TPanel;
    dsLista: TClientDataSet;
    dsPrincipal: TClientDataSet;
    sLista: TDataSource;
    sPrincipal: TDataSource;
    lblTitulo: TLabel;
    dbgrdParcela: TDBGrid;
    Panel1: TPanel;
    pnlSair: TPanel;
    imgSair: TImage;
    lblSair: TLabel;
    pnlGravar: TPanel;
    imgGravar: TImage;
    lblSalvar: TLabel;
    pnlCancelar: TPanel;
    imgCancelar: TImage;
    lblCancelar: TLabel;
    pnlLocalizar: TPanel;
    imgLocalizar: TImage;
    lblLocalizar: TLabel;
    pnlExcluir: TPanel;
    imgExcluir: TImage;
    lblExcluir: TLabel;
    pnlEditar: TPanel;
    imgEditar: TImage;
    lblEditar: TLabel;
    pnlAdicionar: TPanel;
    imgAdicionar: TImage;
    lblAdicionar: TLabel;
    imgFechar: TImage;
    actMaster: TActionList;
    actNovo: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actLocalizar: TAction;
    actCancelar: TAction;
    actGravar: TAction;
    actSair: TAction;
    pnlGrids: TPanel;
    pnl1: TPanel;
    procedure dbgrdParcelaTitleClick(Column: TColumn);
    procedure sPrincipalStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actNovoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function GetTransparenciaPanel(pValor:Boolean):Integer ;
  public
    procedure Novo() ; virtual ;
    procedure Editar() ; virtual ;
    procedure Gravar() ; virtual ;
    procedure Excluir() ; virtual ;
    procedure Cancelar() ; virtual ;
    procedure localizar() ; virtual ; abstract ;
    procedure Sair(); virtual;
  end;

var
  Pdr_CadLista: TPdr_CadLista;

implementation

uses
  u_Mensagem;

{$R *.dfm}

procedure TPdr_CadLista.actCancelarExecute(Sender: TObject);
begin
  inherited;
  Cancelar();
end;

procedure TPdr_CadLista.actEditarExecute(Sender: TObject);
begin
  inherited;
  Editar();
end;

procedure TPdr_CadLista.actExcluirExecute(Sender: TObject);
begin
  inherited;
  Excluir();
end;

procedure TPdr_CadLista.actGravarExecute(Sender: TObject);
begin
  inherited;
  Gravar();
end;

procedure TPdr_CadLista.actLocalizarExecute(Sender: TObject);
begin
  inherited;
  localizar();
end;

procedure TPdr_CadLista.actNovoExecute(Sender: TObject);
begin
  inherited;
  Novo();
end;

procedure TPdr_CadLista.actSairExecute(Sender: TObject);
begin
  inherited;
  Sair();
end;

procedure TPdr_CadLista.Cancelar;
begin
  if dsPrincipal.State in [dsEdit,dsInsert] then
    dsPrincipal.Cancel ;
end;

procedure TPdr_CadLista.dbgrdParcelaTitleClick(Column: TColumn);
begin
  inherited;
  dsLista.IndexFieldNames := Column.FieldName;
end;

procedure TPdr_CadLista.Editar;
begin
  if not (dsPrincipal.State in [dsEdit,dsInsert]) then
    dsPrincipal.Edit ;
end;

procedure TPdr_CadLista.Excluir;
begin
  if dsPrincipal.IsEmpty then
  begin
    TMensagem.Informacao('Não existe registro para excluir...');
    Exit;
  end;

  if not (dsPrincipal.State in [dsEdit, dsInsert]) then
  begin
    if TMensagem.Pergunta('Confirma a exclusão ?') then
      dsPrincipal.Delete;
  end;
end;

procedure TPdr_CadLista.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if dsPrincipal.Active and (dsPrincipal.State in [dsEdit, dsInsert]) then
  begin
    if not (TMensagem.Pergunta('Gravação não foi concluida, deseja sair?')) then
      CanClose := False;
  end
  else
    CanClose := True;
end;

procedure TPdr_CadLista.FormCreate(Sender: TObject);
begin
  inherited;
  pgc.ActivePageIndex := 0;
end;

function TPdr_CadLista.GetTransparenciaPanel(pValor: Boolean): Integer;
begin
  if pValor then
    Result := $006B2F00
  else
    Result := $00FFB87D;
end;

procedure TPdr_CadLista.Gravar;
begin
  if (dsPrincipal.State in [dsEdit,dsInsert]) then
    dsPrincipal.Post ;
end;

procedure TPdr_CadLista.Novo;
begin
  if not (dsPrincipal.State in [dsEdit, dsInsert]) then
  begin
    dsPrincipal.FieldDefs.Clear;
    dsPrincipal.Close;
    dsPrincipal.CreateDataSet;
    dsPrincipal.append;
  end;
end;

procedure TPdr_CadLista.Sair;
begin
  Close();
end;

procedure TPdr_CadLista.sPrincipalStateChange(Sender: TObject);
var
  tmp: boolean;
begin
  inherited;
  if not dsPrincipal.Active then
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
    tmp := sPrincipal.DataSet.State = dsBrowse;
    actNovo.Enabled := tmp;
    actEditar.Enabled := tmp;
    actGravar.Enabled := not tmp;
    actCancelar.Enabled := not tmp;

    actExcluir.Enabled := tmp and (not dsPrincipal.IsEmpty);
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

end.

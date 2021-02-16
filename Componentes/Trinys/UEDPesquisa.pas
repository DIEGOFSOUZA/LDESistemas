unit UEDPesquisa;

interface

uses UPadraoConsulta, System.Classes, Vcl.DBCtrls, Data.DB, Vcl.ExtCtrls,
     Vcl.StdCtrls, Vcl.Buttons, Vcl.Graphics, Vcl.Controls, Datasnap.DBClient,
     System.SysUtils, Winapi.Messages, System.UITypes, Vcl.Dialogs ;

type
  TEdPesquisa = class(TCustomPanel)
  private
    { Private declarations }
    ConfereCodigo, ConfereDescricao : string ;
    fLabel : TLabel ;
    fCampo : TEdit ;
    fMostrar : TEdit ;
    fBotao : TSpeedButton ;
    fBranco : TSimNao ;
    fOnPesquisa : TExecutaPesquisaF3 ;
    fConsultaTabela: TConsultaTabela;
    procedure Reposicionar() ;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure fOnClick(Sender: TObject) ;
    procedure OnExit(Sender: TObject) ;
    procedure OnKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState) ;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner : TComponent) ; override ;
    destructor Destroy ; override ;
  published
    { Published declarations }
    property PermitirBranco : TSimNao read fBranco write fBRanco ;
    property ConsultaTabela : TConsultaTabela read fConsultaTabela ;
    property OnPesquisa : TExecutaPesquisaF3 read fOnPesquisa write fOnPesquisa ;
    property Titulo : TLabel read fLabel ;
    property Mostrar : TEdit read fMostrar ;
    property Campo : TEdit read fCampo ;
    property TabOrder ;
    property TabStop ;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TrinysComponente', [TEDPesquisa]);
end;

{ TEdPesquisa }

procedure TEdPesquisa.CMEnter(var Message: TCMEnter);
begin
  inherited ;
  Campo.SetFocus ;
end;

constructor TEdPesquisa.Create(AOwner: TComponent);
begin
  inherited Create(AOwner) ;

  TabStop := True ;

  Self.bevelouter := bvNone ;
  Self.Caption := '' ;
  Self.Height := 21 ;
  Self.TabStop := true ;

  fConsultaTabela := TConsultaTabela.Create(Self) ;
  fConsultaTabela.SetSubComponent(True);
  fConsultaTabela.Name := 'ctConsultaTabela' ;
  fConsultaTabela.Tabela := '' ;
  fConsultaTabela.Pesquisa := '' ;
  fConsultaTabela.Mostrar := '' ;
  fConsultaTabela.ExecutaSQL := nil ;

  fLabel := TLabel.Create(Self);
  fLabel.SetSubComponent(true) ;
  fLabel.Name := 'lblTitulo' ;
  fLabel.Caption := 'Titulo' ;
  fLabel.Visible := True;
  InsertControl(fLabel) ;

  fCampo := TEdit.Create(Self);
  fCampo.SetSubComponent(true);
  fCampo.Name := 'edtCampo' ;
  fCampo.Text := '' ;
  fCampo.CharCase := ecUpperCase ;
  fCampo.Visible := true ;
  fCampo.Width := 57 ;
  fCampo.OnExit := OnExit ;
  fCampo.ReadOnly := false ;
  fCampo.OnKeyDown := OnKeyDown ;
  InsertControl(fCampo) ;

  fBotao := TSpeedButton.Create(Self);
  fBotao.SetSubComponent(true);
  fBotao.Name := 'btBotao' ;
  fBotao.Caption := 'F3' ;
  fBotao.Font.Color := clBlue ;
  fBotao.Height := 21 ;
  fBotao.Width := 23 ;
  fBotao.Visible := true ;
  fBotao.OnClick := fOnClick ;
  fBotao.Flat := true ;
  InsertControl(fBotao) ;

  fMostrar := TEdit.Create(Self);
  fMostrar.SetSubComponent(true);
  fMostrar.Name := 'edtMostrar' ;
  fMostrar.Text := '' ;
  fMostrar.TabStop := false ;
  fMostrar.ReadOnly := true ;
  fMostrar.Font.Color := clBlue ;
  fMostrar.Width := 250 ;
  InsertControl(fMostrar) ;

  ConfereCodigo := '' ;
  ConfereDescricao := '' ;

  Reposicionar() ;

end;

destructor TEdPesquisa.Destroy;
begin
  FreeAndNil(fConsultaTabela) ;
  FreeAndNil(fBotao) ;
  FreeAndNil(fLabel) ;
  FreeAndNil(fMostrar) ;
  FreeAndNil(fCampo) ;
  inherited Destroy ;
end;

procedure TEdPesquisa.fOnClick(Sender: TObject);
var mlista : String ;
begin
  if Assigned(fOnPesquisa) then
  begin
    mlista := '' ;
    fOnPesquisa(Sender, mlista) ;
    if mlista <> '' then
    begin
      Campo.Text := mlista ;
      OnExit(Campo);
    end ;
  end ;
end;

procedure TEdPesquisa.OnExit(Sender: TObject);
var Aux : TClientDataSet ;
    txt : string ;
begin

  if (PermitirBranco = Nao) and (Campo.Text = '') then
  begin
    MessageDlg('Valor não pode estar em branco....',mtInformation,[mbOk],0) ;
    Campo.SetFocus ;
    Exit ;
  end ;

  if (PermitirBranco = Sim) and (Campo.Text = '') then
  begin
    fMostrar.Text := 'Todos' ;
    Exit ;
  end ;

  if (ConfereCodigo = fCampo.Text) and (ConfereDescricao = fMostrar.Text) then
    Exit ;

  if not Assigned(fConsultaTabela.ExecutaSQL) then
    raise Exception.Create('Não é possivel fazer uma conexão ao banco de dados'#13+
                           'Metodo ExecutaSQL não preencido');

  Aux := TClientDataSet.Create(nil);
  try
    txt := 'select ' + fConsultaTabela.Mostrar +
           '  from ' + UpperCase(fConsultaTabela.Tabela)+
           ' where ' + fConsultaTabela.Pesquisa + ' = ''' +
               Campo.Text + '''' ;

    Aux.Data := fConsultaTabela.ExecutaSQL.ExecutaSQL(txt) ;
    if Aux.IsEmpty then
      begin
        fMostrar.Text := 'Valor digitado não encontrado...' ;
        MessageDlg('Valor digitado não encontrado...',mtInformation,[mbOk],0) ;
      end
    else
      begin
        fMostrar.Text := Aux.FieldByName(fConsultaTabela.Mostrar).AsString ;
        ConfereCodigo := fCampo.Text ;
        ConfereDescricao := fMostrar.Text ;
      end ;
  finally
    FreeAndNil(Aux);
  end ;
end;

procedure TEdPesquisa.OnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VKF3 then
    fBotao.Click ;
end;

procedure TEdPesquisa.Reposicionar;
begin
  fLabel.Top := 3 ;
  fLabel.Left := 0 ;

  fCampo.Top := 0 ;
  fCampo.Left := fLabel.Width + 2 ;

  fBotao.Top := 0 ;
  fBotao.Left := fCampo.Left + fCampo.Width + 1 ;

  fMostrar.Top := 0 ;
  fMostrar.Left := fBotao.Left + fBotao.Width + 1 ;

  Self.Width := fLabel.Width + fCampo.Width +
                fBotao.Width + fMostrar.Width + 5 ;

  Self.Caption := '' ;
  UpDate ;
end;

procedure TEdPesquisa.WMPaint(var Message: TWMPaint);
begin
  inherited ;
  Reposicionar() ;
end;

end.

unit UDBPesquisa;

interface

uses UPadraoConsulta, System.Classes, Vcl.DBCtrls, Data.DB, Vcl.ExtCtrls,
     Vcl.StdCtrls, Vcl.Buttons, Vcl.Graphics, Vcl.Controls, Datasnap.DBClient,
     System.SysUtils, Winapi.Messages, System.UITypes, Vcl.Dialogs ;

type
  TDBPesquisa = class(TCustomPanel)
  private
    { Private declarations }
    ConfereCodigo, ConfereDescricao : string ;
    Associar : boolean ;
    fConsultaTabela: TConsultaTabela;
    fOnValidate : TFieldNotifyEvent;
    fLabel : TLabel ;
    fMostrar : TDBEdit ;
    fCampo : TDBEdit ;
    fBotao : TSpeedButton ;
    fOnPesquisa : TExecutaPesquisaF3 ;
    function VerificaCampo() : Boolean ;
    procedure fOnClick(Sender: TObject) ;
    procedure Reposicionar() ;
    procedure Validar(Sender : TField) ;
    procedure OnKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState) ;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
  protected
    { Protected declarations }
    //procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    //procedure SetParent(AParent: TWinControl); override;
    //procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    //procedure SetName(const Value: TComponentName); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property Titulo : TLabel read fLabel ;
    property ConsultaTabela : TConsultaTabela read fConsultaTabela ;
    property Mostrar : TDBEdit read fMostrar ;
    property Campo : TDBEdit read fCampo ;
    property OnPesquisa : TExecutaPesquisaF3 read fOnPesquisa write fOnPesquisa ;
    property TabOrder ;
    property TabStop ;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TrinysComponente', [TDBPesquisa]);
end;

{ TDBPesquisa }

procedure TDBPesquisa.CMEnter(var Message: TCMEnter);
begin
  inherited;
  Campo.SetFocus ;
end;

constructor TDBPesquisa.Create(AOwner: TComponent);
begin
  inherited Create(AOwner) ;
  ConfereCodigo := '' ;
  ConfereDescricao := '' ;

  Associar := True ;
  TabStop := True ;

  fOnValidate := nil ;

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

  fCampo := TDBEdit.Create(Self);
  fCampo.SetSubComponent(true);
  fCampo.Name := 'edtCampo' ;
  fCampo.Text := '' ;
  fCampo.CharCase := ecUpperCase ;
  fCampo.Visible := true ;
  fCampo.Width := 57 ;
  fCampo.OnKeyDown := OnKeyDown ;
  fCampo.ReadOnly := false ;
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

  fMostrar := TDBEdit.Create(Self);
  fMostrar.SetSubComponent(true);
  fMostrar.Name := 'edtMostrar' ;
  fMostrar.Text := '' ;
  fMostrar.TabStop := false ;
  fMostrar.ReadOnly := true ;
  fMostrar.Font.Color := clBlue ;
  fMostrar.Width := 250 ;
  InsertControl(fMostrar) ;

  Reposicionar() ;
end;

destructor TDBPesquisa.Destroy;
begin
  if (fCampo.DataField <> '') and (not (fCampo.DataSource = nil)) and
     (fCampo.DataSource.DataSet.Active) then
    fCampo.Field.OnValidate := fOnValidate ;

  fOnValidate := nil ;

  FreeAndNil(fConsultaTabela) ;
  FreeAndNil(fBotao) ;
  FreeAndNil(fLabel) ;
  FreeAndNil(fMostrar) ;
  FreeAndNil(fCampo) ;

  inherited Destroy ;
end;

procedure TDBPesquisa.fOnClick(Sender: TObject);
var mlista : String ;
begin
  if Assigned(fOnPesquisa) and VerificaCampo() then
  begin
    mlista := '' ;
    fCampo.SetFocus ;
    fOnPesquisa(Sender, mlista) ;
    if mlista <> '' then
    begin
      Campo.Field.AsString := mlista ;
      Validar(Campo.Field);
    end ;
      Validar(Campo.Field) ;
  end ;
end;

procedure TDBPesquisa.OnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Associar then
  begin
    if (fCampo.DataField <> '') and (not (fCampo.DataSource = nil)) and
        (fCampo.DataSource.DataSet.Active) then
    begin
      Associar := False ;
      fOnValidate := nil ;
      if Assigned(fCampo.Field.OnValidate) then
        fOnValidate := fCampo.Field.OnValidate ;
      fCampo.Field.OnValidate := Validar ;
    end ;
  end ;

  if Key = VKF3 then
    fBotao.Click ;

end;

procedure TDBPesquisa.Reposicionar;
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

procedure TDBPesquisa.Validar(Sender: TField);
var Aux : TClientDataSet ;
    txt : string ;
    sValor : string ;
begin
  if Assigned(fOnValidate) then
  begin
    try
      fOnValidate(Sender) ;
    except

    end ;
  end ;

  if Campo.Field.IsNull then
  begin
    Mostrar.Field.Clear ;
    ConfereCodigo := '' ;
    ConfereDescricao := '' ;
    Exit ;
  end;

  if (ConfereCodigo = fCampo.Field.AsString) and (ConfereDescricao = fMostrar.Field.AsString) then
    Exit ;

  if not Assigned(fConsultaTabela.ExecutaSQL) then
    raise Exception.Create('Não é possivel fazer uma conexão ao banco de dados'#13+
                           'Metodo ExecutaSQL não preencido');

  if (VerificaCampo()) and (fConsultaTabela.Mostrar <> '') and
     (fConsultaTabela.Tabela <> '') then
  begin
    Aux := TClientDataSet.Create(nil);
    try
      txt := 'select ' + fConsultaTabela.Mostrar +
             ' from ' + UpperCase(fConsultaTabela.Tabela) ;
      if (Campo.Field.DataType = ftInteger) or (Campo.Field.DataType = ftSmallint) then
        txt := txt + ' where '+fConsultaTabela.Pesquisa + ' = ' +
                 Campo.Field.AsString
      else
        txt := txt + ' where '+fConsultaTabela.Pesquisa + ' = ''' +
                 Campo.Field.AsString + '''' ;

      Aux.Data := fConsultaTabela.ExecutaSQL.ExecutaSQL(txt) ;

      //Diego - motivo: Não permitir Historicos Inativos (02/07/19)
      sValor := fConsultaTabela.Mostrar ;
      if (Pos(',',fConsultaTabela.Mostrar) <> 0) then
      begin
        if Aux.FieldByName('ativo').AsString = 'N' then
        begin
          Mostrar.Field.AsString := 'Registro Inativo...';
          Exit;
        end;

        sValor := Copy(fConsultaTabela.Mostrar, 1, Pos(',', fConsultaTabela.Mostrar) - 1);
      end ;



      if Aux.IsEmpty then
        begin
          if (Mostrar.DataField <> '') and (Mostrar.DataField <> Campo.DataField) then
            Mostrar.Field.AsString := 'Valor digitado não encontrado...' ;
          MessageDlg('Valor digitado não encontrado...',mtInformation,[mbOk],0) ;
        end
      else
        if (Mostrar.DataField <> '') and (Mostrar.DataField <> Campo.DataField) then
        begin
//          Mostrar.Field.AsString := Aux.FieldByName(fConsultaTabela.Mostrar).AsString ;
          Mostrar.Field.AsString := Aux.FieldByName(sValor).AsString ;
          ConfereCodigo := fCampo.Field.AsString ;
          ConfereDescricao := fMostrar.Field.AsString ;
        end;
    finally
      FreeAndNil(Aux);
    end ;
  end ;
end;

function TDBPesquisa.VerificaCampo: Boolean;
begin
   Result := False ;
   if (Campo.DataField <> '') and (Campo.DataSource <> nil) and
      (Campo.DataSource.DataSet.Active) then
   begin
     Result := Campo.DataSource.DataSet.State in [dsEdit,dsInsert] ;
     if not Result then
     begin
       Result := true ;
       Campo.DataSource.DataSet.Edit ;
     end ;
   end ;
end ;

procedure TDBPesquisa.WMPaint(var Message: TWMPaint);
begin
  inherited ;
  Reposicionar() ;
end;

end.

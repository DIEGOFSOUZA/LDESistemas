unit UPdr_Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Segundo, Data.DB, Datasnap.DBClient,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids;

type
  TCampoCamsulta = record
    Nome : string ;
    NomeSQL : string ;
    Descricao : string ;
    Mascara : string ;
    Pesquisa : boolean ;
    Retorno : boolean ;
    Mostrar : boolean ;
    Width : Integer ;
  end;

  TArrayCampoConsulta = array of TCampoCamsulta ;

  TLerDataSet = function(pSql : string) : OleVariant of object ;

type
  TPdr_Consulta = class(TPdr_Segundo)
    Ler: TClientDataSet;
    sLer: TDataSource;
    Panel1: TPanel;
    DBGridConsulta: TDBGrid;
    Label2: TLabel;
    edTexto: TEdit;
    lblTitulo: TLabel;
    Label1: TLabel;
    lbl1: TLabel;
    cbCampoConsulta: TComboBox;
    GroupBox1: TGroupBox;
    RadioGroup1: TRadioGroup;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridConsultaDblClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure cbCampoConsultaClick(Sender: TObject);
    procedure DBGridConsultaTitleClick(Column: TColumn);
    procedure edTextoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Campos : TArrayCampoConsulta ;
    InstrucaoSQL : string ;
    LerDataSet : TLerDataSet ;
    procedure ExecutarConsulta() ;
    procedure MontaRetorno() ;
  public
    { Public declarations }
    Retorno : TStringList ;
    OrdenacaoDbGrid : string ;
    ConsultaTipoPessoa : Boolean ;
    constructor Create(AOwner : TComponent; pTitulo : string; pSql : string; pOrdemDbGrid : string ;
                  pCampos : TArrayCampoConsulta; pLerDataSet : TLerDataSet; pIndexConsulta : integer) ;
  end;

var
  Pdr_Consulta: TPdr_Consulta;

implementation

{$R *.dfm}

uses UDM;

procedure TPdr_Consulta.cbCampoConsultaClick(Sender: TObject);
begin
  inherited;
  edTexto.SetFocus ;
end;

constructor TPdr_Consulta.Create(AOwner : TComponent; pTitulo : string; pSql : string; pOrdemDbGrid : string ;
                  pCampos : TArrayCampoConsulta; pLerDataSet : TLerDataSet; pIndexConsulta : integer) ;
var x : integer ;
    Coluna : TColumn ;
begin
  inherited Create(AOwner);
  Retorno := TStringList.Create ;

  Caption := pTitulo ;
  lblTitulo.Caption := '   '+pTitulo ;
  InstrucaoSQL := pSql ;
  LerDataSet := pLerDataSet ;
  Campos := pCampos ;
  OrdenacaoDbGrid := pOrdemDbGrid ;

  DBGridConsulta.Columns.Clear ;
  cbCampoConsulta.Items.Clear ;
  for x := 0 to High(pCampos) do
  begin
    if pCampos[x].Pesquisa then
      cbCampoConsulta.Items.Add( pCampos[x].Descricao ) ;

    if pCampos[x].Mostrar then
    begin
      Coluna := DBGridConsulta.Columns.Add;
      Coluna.FieldName := pCampos[x].Nome;
      Coluna.Title.Caption := pCampos[x].Descricao;
      if pCampos[x].Width <> 0 then
        Coluna.Width := pCampos[x].Width;
    end;
  end;
  cbCampoConsulta.ItemIndex := pIndexConsulta ;
end;

procedure TPdr_Consulta.DBGridConsultaDblClick(Sender: TObject);
begin
  inherited;
  MontaRetorno() ;
  Close ;
end;

procedure TPdr_Consulta.DBGridConsultaTitleClick(Column: TColumn);
begin
  inherited;
  Ler.IndexFieldNames := Column.FieldName ;
end;

procedure TPdr_Consulta.edTextoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Ler.Active then
  begin
     case Key of
        VK_DOWN : Ler.Next ;
        VK_UP   : Ler.Prior ;
        VK_DELETE : begin
                       edTexto.Text := '' ;
                       Ler.Close ;
                    end ;
     end ;
  end ;
end;

procedure TPdr_Consulta.ExecutarConsulta;
var
  tmp, CampoConsulta: string;
  x: integer;
  WhereAnd: string;
begin
  CampoConsulta := '';
  Ler.Close;
  tmp := InstrucaoSQL;

  for x := 0 to High(Campos) do
  begin
    if Campos[x].Descricao = cbCampoConsulta.Text then
    begin
      CampoConsulta := Campos[x].NomeSQL;
      if OrdenacaoDbGrid = '' then
        Ler.IndexFieldNames := Campos[x].Nome;
    end;
  end;

  if edTexto.Text <> '' then
  begin
    if Pos('WHERE', UpperCase(tmp)) > 0 then
      WhereAnd := ' and '
    else
      WhereAnd := ' where ';

    if (Pos('%', edTexto.Text) > 0) then
      tmp := tmp + WhereAnd + 'upper(' + CampoConsulta + ') like '+QuotedStr(UpperCase(edTexto.Text))
    else
      tmp := tmp + WhereAnd + 'upper(' + CampoConsulta + ') like '+QuotedStr('%'+UpperCase(edTexto.Text)+'%');
  end;


//    case RadioGroup1.ItemIndex of
//      0:
//        tmp := tmp + WhereAnd + 'upper('+CampoConsulta + ') like ''' + edTexto.Text + '%''';
//      1:
//        tmp := tmp + WhereAnd + 'upper('+CampoConsulta + ') like ''%' + edTexto.Text + '%''';
//      2:
//        begin
//          if Pos('DATA',UpperCase(cbCampoConsulta.Text)) > 0 then
//            tmp := tmp + WhereAnd + 'upper('+CampoConsulta + ') = ' + QuotedStr( FormatDateTime('dd.mm.yyyy', StrToDate(edTexto.Text)) ) + ' '
//          else
//            tmp := tmp + WhereAnd + 'upper('+CampoConsulta + ')= ' + QuotedStr(edTexto.Text) + ' ';
//        end;
//    end;
//  end;
//
//  if ConsultaTipoPessoa then
//    if Pos('WHERE', UpperCase(tmp)) > 0 then
//      WhereAnd := ' and '
//    else
//      WhereAnd := ' where ';

  if OrdenacaoDbGrid <> '' then
    tmp := tmp + ' order by ' + OrdenacaoDbGrid;

  Ler.Data := DM.LerDataSet(tmp);

  for x := 0 to High(Campos) do
  begin
    if Campos[x].Mascara <> '' then
    begin
      case Ler.FieldByName(Campos[x].Nome).DataType of
        ftFloat:
          TFloatField(Ler.FieldByName(Campos[x].Nome)).DisplayFormat := Campos[x].Mascara;
        ftCurrency:
          TCurrencyField(Ler.FieldByName(Campos[x].Nome)).DisplayFormat := Campos[x].Mascara;
        ftBCD:
          TBCDField(Ler.FieldByName(Campos[x].Nome)).DisplayFormat := Campos[x].Mascara;
        ftDate:
          TDateField(Ler.FieldByName(Campos[x].Nome)).DisplayFormat := Campos[x].Mascara;
        ftTime:
          TTimeField(Ler.FieldByName(Campos[x].Nome)).DisplayFormat := Campos[x].Mascara;
        ftDateTime:
          TDateTimeField(Ler.FieldByName(Campos[x].Nome)).DisplayFormat := Campos[x].Mascara;
        ftTimeStamp:
          TDateTimeField(Ler.FieldByName(Campos[x].Nome)).DisplayFormat := Campos[x].Mascara;
        ftFMTBcd:
          TFMTBCDField(Ler.FieldByName(Campos[x].Nome)).DisplayFormat := Campos[x].Mascara;
        ftSingle:
          TSingleField(Ler.FieldByName(Campos[x].Nome)).DisplayFormat := Campos[x].Mascara;
      end;
      Ler.FieldByName(Campos[x].Nome).EditMask := Campos[x].Mascara;
    end;
  end;
end;

procedure TPdr_Consulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #32 then
  begin
    ExecutarConsulta() ;

    if Trim(edTexto.Text) = '' then
      edTexto.Text := '' ;
  end;

  if (Key = #13) and (Ler.Active) then // enter ou double click
  begin
    MontaRetorno() ;
    Close ;
    Exit ;
  end;

  if (Key = #27) then
  begin
    Retorno.Clear ;
    Close ;
  end;
end;

procedure TPdr_Consulta.MontaRetorno;
var
  x: integer;
begin
  Retorno.Clear;
  for x := 0 to High(Campos) do
  begin
    if Campos[x].Retorno then
      Retorno.Values[Campos[x].Nome] := Ler.FieldByName(Campos[x].Nome).AsString;
  end;
end;

procedure TPdr_Consulta.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  edTexto.SetFocus;
end;

end.

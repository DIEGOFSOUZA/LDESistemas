unit UFrm_PDVCrediario;  //HEight 366 - 149

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.ActnList,

  UPdr_Child,
  UEDPesquisa,

  Data.DB,
  Datasnap.DBClient,

  ACBrUtil,
  DateUtils ;

type
  TFrm_PDVCrediario = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    btnGravar: TButton;
    btnCancelar: TButton;
    edpCondPagto: TEdPesquisa;
    pnlDias: TPanel;
    edtDT1: TEdit;
    lblDT1: TLabel;
    lblTitulo: TLabel;
    lblDT2: TLabel;
    edtDT2: TEdit;
    lblDT3: TLabel;
    edtDT3: TEdit;
    lblDT4: TLabel;
    edtDT4: TEdit;
    lblDT5: TLabel;
    edtDT5: TEdit;
    lblDT6: TLabel;
    edtDT6: TEdit;
    lblDT7: TLabel;
    edtDT7: TEdit;
    lblDT8: TLabel;
    edtDT8: TEdit;
    lblDT9: TLabel;
    edtDT9: TEdit;
    lblDT10: TLabel;
    edtDT10: TEdit;
    lblDT11: TLabel;
    edtDT11: TEdit;
    lblDT12: TLabel;
    edtDT12: TEdit;
    lblDT13: TLabel;
    edtDT13: TEdit;
    lblDT14: TLabel;
    edtDT14: TEdit;
    lblDT15: TLabel;
    edtDT15: TEdit;
    chkPecentual: TCheckBox;
    btnCalcular: TButton;
    lblTitEndEntrega: TLabel;
    actlst1: TActionList;
    actCalcular: TAction;
    actOk: TAction;
    actCancel: TAction;
    cdsParcelas: TClientDataSet;
    cdsParcelasVENCTO: TDateField;
    cdsParcelasVALOR: TCurrencyField;
    procedure edpCondPagtoPesquisa(Sender: TObject; var Retorno: string);
    procedure actCancelExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCalcularExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    fValorTotal: Currency;
    procedure setValorTotal(const Value: Currency);

    procedure Ocultar() ;
    procedure Executar() ;
  public
    { Public declarations }
    aRetorno : string ;
    aIdCrediario : Integer ;
    aVlParcelas : Currency ;
    aVlAcrescimo : Currency ;

    property ValorTotal : Currency read fValorTotal write setValorTotal ;
  end;

var
  Frm_PDVCrediario: TFrm_PDVCrediario;

implementation

uses
  UDM, UConsulta, u_Mensagem;

{$R *.dfm}

procedure TFrm_PDVCrediario.actCalcularExecute(Sender: TObject);
begin
  inherited;
  Executar ;
end;

procedure TFrm_PDVCrediario.actCancelExecute(Sender: TObject);
begin
  inherited;
  aRetorno := 'cancelar' ;
  Close ;
end;

procedure TFrm_PDVCrediario.actOkExecute(Sender: TObject);
begin
  inherited;
  aIdCrediario := StrToIntDef(edpCondPagto.Campo.Text,0) ;
  aRetorno := 'sucesso' ;
  Close ;
end;

procedure TFrm_PDVCrediario.edpCondPagtoPesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := IntToStr(Consulta.CondPagto) ;
end;

procedure TFrm_PDVCrediario.Executar;
const SQL = 'select a.COND1,a.COND2,a.COND2,a.COND3,a.COND4,a.COND5,'+
            'a.COND6,a.COND7,a.COND8,a.COND9,a.COND10,a.COND11,'+
            'a.COND12,a.COND13,a.COND14,a.COND15,a.PERCENT_ACRESCIMO '+
            'from CONDPAGTO a '+
            'where a.CODIGO = %s' ;
var
  tmp : TClientDataSet ;
  I, aCont: Integer;
  aValor : Currency ;
begin
  if edpCondPagto.Campo.Text = EmptyStr then
  begin
    edpCondPagto.Campo.SetFocus ;
    TMensagem.Atencao('Informe a Condição desejada.') ;
    Exit;
  end;

  Ocultar ;
  pnlRodape.Visible := True ;
  Height := 366 ;

  aCont := 0 ;
  cdsParcelas.Close ;
  cdsParcelas.FieldDefs.Clear ;
  cdsParcelas.CreateDataSet ;
  try
    tmp := TClientDataSet.Create(nil);
    tmp.Data := DM.LerDataSet(Format(SQL, [edpCondPagto.Campo.Text]));

    if tmp.IsEmpty then
    begin
      TMensagem.Atencao('Condição de Pagamento não encontrada');
      Exit;
    end;

    for I := 1 to 15 do
    begin
      if ((tmp.FieldByName('cond' + IntToStr(I)).IsNull) or
         (tmp.FieldByName('cond' + IntToStr(I)).AsFloat < 1)) then
        Break;
      Inc(aCont);
    end;

    if ( (chkPecentual.Checked) and (tmp.FieldByName('percent_acrescimo').AsFloat > 0) ) then
    begin
      aVlAcrescimo := ( (ValorTotal * tmp.FieldByName('percent_acrescimo').AsFloat) / 100 ) ;
      aValor       := ValorTotal + aVlAcrescimo ;
    end
    else
      aValor := ValorTotal ;

    aVlParcelas :=  (aValor / aCont) ;

    for I := 1 to aCont do
    begin
      (FindComponent('lblDT'+IntToStr(i)) as Tlabel).Caption := FormatDateBr( IncDay(Date,tmp.FieldByName('cond'+IntToStr(i)).AsInteger),'dd/mm/yy' );
      (FindComponent('edtDT'+IntToStr(i)) as TEdit).Text := 'R$ '+FormatCurr('#,##0.00',aVlParcelas) ;

      (FindComponent('lblDT'+IntToStr(i)) as Tlabel).Visible := True ;
      (FindComponent('edtDT'+IntToStr(i)) as TEdit).Visible  := True ;

      cdsParcelas.Append ;
      cdsParcelasVENCTO.AsDateTime := IncDay(Date,tmp.FieldByName('cond'+IntToStr(i)).AsInteger) ;
      cdsParcelasVALOR.AsCurrency := aVlParcelas ;
      cdsParcelas.Post ;
    end;

  finally
    FreeAndNil(tmp);
  end;
end;

procedure TFrm_PDVCrediario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = Vk_Escape) then
  begin
    aRetorno := 'cancel' ;
    Close ;
  end;
end;

procedure TFrm_PDVCrediario.Ocultar;
var
  i: Integer;
begin
  for I := 1 to 15 do
  begin
    (FindComponent('lblDT'+IntToStr(i)) as Tlabel).Visible := False ;
    (FindComponent('edtDT'+IntToStr(i)) as TEdit).Visible  := False ;
  end;

end;

procedure TFrm_PDVCrediario.setValorTotal(const Value: Currency);
begin
  fValorTotal := Value;
end;

end.

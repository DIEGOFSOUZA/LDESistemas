unit uFrm_NFEnt_AltDupl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.Buttons, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.ComCtrls,U_DataCorrida;

type
  TFrm_NFEnt_AltDupl = class(TPdr_Child)
    actlst1: TActionList;
    actCancelar: TAction;
    actSalvar: TAction;
    pnlFundo0: TPanel;
    pnlRodape: TPanel;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    pnlSalvar: TPanel;
    btnSalvar: TSpeedButton;
    pnlDados: TPanel;
    Label9: TLabel;
    dtpVencimento: TDateTimePicker;
    edtVlTotal: TEdit;
    Label10: TLabel;
    lblTitulo: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    procedure actCancelarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure edtVlTotalKeyPress(Sender: TObject; var Key: Char);
  private
    FValor: Currency;
    FVencto: TDate;
    FRetorno: string;
    FForma: string;
    FDup: string;
    FID: integer;
    procedure setVencto(const Value: TDate);
    procedure setValor(const Value: Currency);
    procedure setRetorno(const Value: string);
    procedure setForma(const Value: string);
    procedure AtualizarDupl();
    procedure setDup(const Value: string);
    procedure setID(const Value: integer);

    function ValidaValor(aValor: string): Boolean;
  public
    property
      Retorno: string read FRetorno write setRetorno;
    property
      Forma: string read FForma write setForma;
    property
      Vencto: TDate read FVencto write setVencto;
    property
      Valor: Currency read FValor write setValor;
    property
      ID: integer read FID write setID;
    property
      Dup: string read FDup write setDup;

  end;

var
  Frm_NFEnt_AltDupl: TFrm_NFEnt_AltDupl;

implementation

uses
  UFuncoes, UDM, u_Mensagem;

{$R *.dfm}

{ TFrm_NFEnt_AltDupl }

procedure TFrm_NFEnt_AltDupl.actCancelarExecute(Sender: TObject);
begin
  inherited;
  Retorno := 'cancel';
  Close;
end;

procedure TFrm_NFEnt_AltDupl.actSalvarExecute(Sender: TObject);
begin
  inherited;
  if (not ValidaValor(edtVlTotal.Text)) then
  begin
    TMensagem.Atencao('Valor R$ inválido');
    edtVlTotal.SetFocus;
    Abort;
  end;

  if (not ValidaData( DateToStr(dtpVencimento.Date),False)) then
  begin
    TMensagem.Atencao('Data inválida');
    dtpVencimento.SetFocus;
    Abort;
  end;

  try
    AtualizarDupl();
    Retorno := 'sucesso';
    Close;
  except
    TMensagem.Erro('Não foi possivel atualizar a Duplicata.');
  end;

end;

procedure TFrm_NFEnt_AltDupl.AtualizarDupl();
var
  lSQL: string;
begin
  lSQL := 'UPDATE NOTA_ENTRADA_PAGAR a '+
          'SET '+
          'a.VDUP = '+ValorFormatadoFirebird(edtVlTotal.Text)+','+
          'a.DVENC = '+QuotedStr( FormatDateTime('dd.mm.yyyy',dtpVencimento.date) )+
          'WHERE '+
          'a.ID_NOTAENTRADA = '+ID.ToString+
          ' AND a.NDUP = '+QuotedStr(Dup);
  DM.ExecutarSQL(DM.BancoDados,lSQL);
end;

procedure TFrm_NFEnt_AltDupl.edtVlTotalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', #8, ',', #13]) then
    Key := #0;
end;

procedure TFrm_NFEnt_AltDupl.setDup(const Value: string);
begin
  FDup := Value;
end;

procedure TFrm_NFEnt_AltDupl.setForma(const Value: string);
begin
  FForma := Value;
  Edit1.Text := Value;
end;

procedure TFrm_NFEnt_AltDupl.setID(const Value: integer);
begin
  FID := Value;
end;

procedure TFrm_NFEnt_AltDupl.setRetorno(const Value: string);
begin
  FRetorno := Value;
end;

procedure TFrm_NFEnt_AltDupl.setVencto(const Value: TDate);
begin
  FVencto := Value;
  dtpVencimento.Date := FVencto;
end;

function TFrm_NFEnt_AltDupl.ValidaValor(aValor: string): Boolean;
var
  lValue: Currency;
begin
  if (not TryStrToCurr(StringReplace(aValor, '.', '', [rfReplaceAll]), lValue)) then
  begin
    Result := False;
    Valor := 0;
  end
  else
  begin
    Result := True;
    Valor := lValue;
  end;
end;

procedure TFrm_NFEnt_AltDupl.setValor(const Value: Currency);
begin
  FValor := Value;
  edtVlTotal.Text := FormatCurr('#,##0.00',Value);
end;

end.

unit UFrm_Desconto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Primeiro, Vcl.StdCtrls, System.Math,
  Vcl.ExtCtrls;

type
  TFrm_Desconto = class(TPdr_Primeiro)
    lblTitulo: TLabel;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblSemDesc: TLabel;
    lblComDesc: TLabel;
    edtPerc: TEdit;
    edtVal: TEdit;
    btnok: TButton;
    btnCancel: TButton;
    procedure edtPercKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure edtValKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno : string ;
    ValSemDesc, ValComDesc, ValDesc : Extended ;
    function Resultado (sTipo : string) : Extended ;
  end;

var
  Frm_Desconto: TFrm_Desconto;

implementation



{$R *.dfm}

procedure TFrm_Desconto.btnCancelClick(Sender: TObject);
begin
  inherited;
  Retorno := 'voltar' ;
  Close ;
end;

procedure TFrm_Desconto.btnokClick(Sender: TObject);
begin
  inherited;
  if (StrToFloat(edtPerc.Text) > 0 ) or
     (StrToFloat(edtVal.Text) > 0 ) then
  begin
    Retorno := 'sucesso' ;
    Close ;
  end
  else
  begin
    MessageDlg('Informe o percentual ou valor de Desconto a ser aplicado.',mtError,[mbOK],0) ;
    edtPerc.SetFocus;
  end;
end;

procedure TFrm_Desconto.edtPercKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8,#13]) then key := #0 ;
  edtVal.Text := '0,00' ;

  if Key = #13 then
  begin
    if StrToFloat(edtPerc.Text) > 0 then
    begin
      ValComDesc         := Roundto( Resultado('P'), -1 ) ;
      ValDesc            := ValSemDesc - ValComDesc ;
      lblComDesc.Caption := FormatFloat('#,##0.00',ValComDesc) ;
    end;
  end;
end;

procedure TFrm_Desconto.edtValKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',',',#8,#13]) then key := #0 ;
  edtPerc.Text := '0,00' ;

  if Key = #13 then
  begin
    if StrToFloat(edtVal.Text) > 0 then
    begin
      ValComDesc         := Resultado('V') ;
      ValDesc            := ValSemDesc - ValComDesc ;
      lblComDesc.Caption := FormatFloat('#,##0.00',ValComDesc) ;
    end;
  end;
end;

function TFrm_Desconto.Resultado(sTipo: string): Extended;
begin
  if sTipo = 'P' then //Percentual
  begin
    Result := ValSemDesc - ( (ValSemDesc * StrToFloat(edtPerc.Text)) /100 );
  end
  else
  begin
    Result := ValSemDesc - StrToFloat(edtVal.Text) ;
  end;
end;

end.

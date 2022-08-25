unit UFrm_Desconto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Primeiro, Vcl.StdCtrls, System.Math,
  Vcl.ExtCtrls,UDM;

type
  TFrm_Desconto = class(TPdr_Primeiro)
    lblTitulo: TLabel;
    pnl1: TPanel;
    pnlDireita: TPanel;
    btnCancel: TButton;
    btnok: TButton;
    pnlCentro: TPanel;
    pnlCentro1: TPanel;
    pnlDireita1: TPanel;
    lblPercMax: TLabel;
    lblVlMax: TLabel;
    lblTitDesMax: TLabel;
    pnlEdits: TPanel;
    edtPerc: TEdit;
    pnlTopo: TPanel;
    Label1: TLabel;
    lblSemDesc: TLabel;
    pnlRodape: TPanel;
    Label2: TLabel;
    lblComDesc: TLabel;
    cbbTipoDesc: TComboBox;
    procedure edtPercKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
  private
    procedure AplicaDesc;
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
  if (StrToFloat(edtPerc.Text) > 0) then
  begin
    AplicaDesc;
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
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0;

  if Key = #13 then
  begin
    AplicaDesc;
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
    Result := ValSemDesc - StrToFloat(edtPerc.Text) ;
  end;
end;

procedure TFrm_Desconto.AplicaDesc;
begin
  if StrToFloat(edtPerc.Text) > 0 then
  begin
    if cbbTipoDesc.ItemIndex = 0 then
      ValComDesc := Roundto(Resultado('P'), -2)
    else
      ValComDesc := Resultado('V');
    ValDesc := ValSemDesc - ValComDesc;
    lblComDesc.Caption := FormatFloat('#,##0.00', ValComDesc);
  end;
end;

end.

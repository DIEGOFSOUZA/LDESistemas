unit UFrm_BaixaDuplicata;

interface

//heigth 166 / 68

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrm_baixaDuplicata = class(TPdr_Child)
    pnl1: TPanel;
    btnIntegral: TButton;
    btnParcial: TButton;
    pnl2: TPanel;
    pnl3: TPanel;
    lblVlIntegral: TLabel;
    Label2: TLabel;
    edtValBaixa: TEdit;
    Label1: TLabel;
    cbbFormaPagto: TComboBox;
    procedure edtValBaixaKeyPress(Sender: TObject; var Key: Char);
    procedure btnIntegralClick(Sender: TObject);
    procedure btnParcialClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    cValorIntegral : Currency ;
    cValorBaixa : Currency ;
    aSetButton : string ;
    aFormaPagto : string ;
  end;

var
  Frm_baixaDuplicata: TFrm_baixaDuplicata;

implementation

{$R *.dfm}

{ TFrm_baixaDuplicata }

procedure TFrm_baixaDuplicata.btnIntegralClick(Sender: TObject);
begin
  inherited;
  aSetButton := 'integral';
  aFormaPagto :=  cbbFormaPagto.Text ;
  Close;
end;

procedure TFrm_baixaDuplicata.btnParcialClick(Sender: TObject);
begin
  inherited;
  aSetButton := 'parcial';
  aFormaPagto :=  cbbFormaPagto.Text ;
  Height :=  166 ;
  edtValBaixa.SetFocus ;
end;

procedure TFrm_baixaDuplicata.edtValBaixaKeyPress(Sender: TObject;
  var Key: Char);
var
  f: Double;
begin
  inherited;
  if Key = #13 then
  begin
    if TryStrToFloat(edtValBaixa.Text, f) then
    begin
      if (f < 0.01) or (f > cValorIntegral) then
        ShowMessage(edtValBaixa.Text + ' não é um valor R$ válido!')
      else
      begin
        cValorBaixa := f;
        aFormaPagto :=  cbbFormaPagto.Text ;
        Close;
      end;
    end
    else
      ShowMessage(edtValBaixa.Text + ' não é um valor R$ válido!');
  end;

  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TFrm_baixaDuplicata.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = Vk_Escape then
  begin
    aSetButton := '';
    aFormaPagto := '';
    Close;
  end;
end;

end.

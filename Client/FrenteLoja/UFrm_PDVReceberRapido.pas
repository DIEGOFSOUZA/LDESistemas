unit UFrm_PDVReceberRapido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  TFrm_PDVReceberRapido = class(TForm)
    pnlFundo: TPanel;
    pnlRodape: TPanel;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    imgDinheiro: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtTotal: TEdit;
    edtRecebido: TEdit;
    edtTroco: TEdit;
    pnlNFCe: TPanel;
    pnlConfirma: TPanel;
    actlst1: TActionList;
    actConfirma: TAction;
    imgCartao: TImage;
    chkImprimir: TCheckBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actConfirmaExecute(Sender: TObject);
    procedure edtRecebidoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure setValRecebido() ;
  public
    { Public declarations }
    vlCompra : Currency ;
    cVlRecebido: Currency;
    aRetorno : string ;
    bImprimir : Boolean ;
  end;

var
  Frm_PDVReceberRapido: TFrm_PDVReceberRapido;

implementation

uses
  u_Mensagem;

{$R *.dfm}

procedure TFrm_PDVReceberRapido.actConfirmaExecute(Sender: TObject);
begin
  setValRecebido;
  if cVlRecebido < vlCompra then
  begin
    TMensagem.Informacao('Valor Recebido é menor que o Total da Venda.');
    edtRecebido.SelectAll;
    Abort;
  end
  else
  begin
    bImprimir := chkImprimir.Checked;
    aRetorno := 'sucesso';
    Close;
  end;
end;

procedure TFrm_PDVReceberRapido.edtRecebidoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
//    cVlRecebido := 0 ;
    setValRecebido ;
  end ;
end;

procedure TFrm_PDVReceberRapido.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Escape then
  begin
    aRetorno := '';
    Close;
  end;
end;

procedure TFrm_PDVReceberRapido.FormShow(Sender: TObject);
begin
  edtRecebido.Text := '0,00' ;
  edtTroco.Text := '0,00' ;
  edtTotal.Text := FormatCurr('#,##0.00',vlCompra) ;
  edtRecebido.SelectAll ;
  edtRecebido.SetFocus ;
end;


procedure TFrm_PDVReceberRapido.setValRecebido;
begin
  if TryStrToCurr(edtRecebido.Text, cVlRecebido) then
  begin
    edtRecebido.Text := FormatCurr('#,##0.00', cVlRecebido);
    if cVlRecebido < vlCompra then
    begin
      edtTroco.Text := FormatCurr('#,##0.00', 0);
      aRetorno := 'erro';
      edtRecebido.SelectAll;
      edtRecebido.SetFocus;
      TMensagem.Atencao('Valor Recebido é menor que o Total da Venda.');
      Abort;
    end
    else
    begin
      edtTroco.Text := FormatCurr('#,##0.00', cVlRecebido - vlCompra);
    end;
  end
  else
  begin
    aRetorno := 'erro';
    TMensagem.Erro('Valor inválido');
  end;
  edtRecebido.SelectAll;
  edtRecebido.SetFocus;
end;

end.

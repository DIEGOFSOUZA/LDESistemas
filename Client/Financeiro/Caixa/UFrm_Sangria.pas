unit UFrm_Sangria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFrm_Sangria = class(TPdr_Child)
    pnlRodape: TPanel;
    imgSalvar: TImage;
    imgCancelar: TImage;
    lblTitulo: TLabel;
    rgFormaPagto: TRadioGroup;
    rgOperacao: TRadioGroup;
    Label1: TLabel;
    edtValor: TEdit;
    Label2: TLabel;
    mmo1: TMemo;
    lblSalvar: TLabel;
    lblCancelar: TLabel;
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure imgSalvarClick(Sender: TObject);
    procedure imgCancelarClick(Sender: TObject);
    procedure edtValorExit(Sender: TObject);
  private
    { Private declarations }
    procedure Cancelar() ;
    procedure Salvar() ;
  public
    { Public declarations }
    iCaixa : Integer ;
    bAtualizar : Boolean ;
  end;

var
  Frm_Sangria: TFrm_Sangria;

implementation

uses
  UDM, UFuncoes;

{$R *.dfm}

{ TFrm_Sangria }

procedure TFrm_Sangria.Cancelar;
begin
  bAtualizar := False ;
  Close ;
end;

procedure TFrm_Sangria.edtValorExit(Sender: TObject);
begin
  inherited;
  edtValor.Text := FormatFloat('#,##0.00',StrToFloatDef(edtValor.Text,0));
end;

procedure TFrm_Sangria.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TFrm_Sangria.imgCancelarClick(Sender: TObject);
begin
  inherited;
  Cancelar();
end;

procedure TFrm_Sangria.imgSalvarClick(Sender: TObject);
begin
  inherited;
  Salvar() ;
end;

procedure TFrm_Sangria.Salvar;
var
  fValor: Double;
  lFormata: TFormataValor;
begin
  lFormata := ValidaFormataCurrency(StringReplace( edtValor.Text, '.','',[rfReplaceAll]) );
  if lFormata.Retorno = 'erro' then
  begin
    edtValor.SetFocus;
    Exit;
  end
  else
    fValor := lFormata.vlFloat;

  if (rgOperacao.ItemIndex = 0) then
    fValor := fValor *  - 1;

  if not DM.SMCadastroClient.setCaixa(DM.BancoDados, 'ENT/SAIDA', iCaixa, DM.User, rgFormaPagto.Items[rgFormaPagto.ItemIndex], fValor, EmptyStr, mmo1.Lines.Text) then
  begin
    MessageDlg('Erro: Gravação não efetuada.', mtError, [mbAbort], 0);
  end
  else
  begin
    bAtualizar := True;
    Close;
  end;
end;

end.

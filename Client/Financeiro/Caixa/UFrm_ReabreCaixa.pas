unit UFrm_ReabreCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrm_ReabreCaixa = class(TPdr_Child)
    lblTitulo: TLabel;
    Label1: TLabel;
    edtValor: TEdit;
    Label2: TLabel;
    mmo1: TMemo;
    pnlRodape: TPanel;
    imgSalvar: TImage;
    imgCancelar: TImage;
    lblSalvar: TLabel;
    lblCancelar: TLabel;
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure imgSalvarClick(Sender: TObject);
    procedure imgCancelarClick(Sender: TObject);
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
  Frm_ReabreCaixa: TFrm_ReabreCaixa;

implementation

uses
  UDM, u_Mensagem;

{$R *.dfm}

{ TFrm_ReabreCaixa }

procedure TFrm_ReabreCaixa.Cancelar;
begin
  bAtualizar := False ;
  Close ;
end;

procedure TFrm_ReabreCaixa.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TFrm_ReabreCaixa.imgCancelarClick(Sender: TObject);
begin
  inherited;
  Cancelar() ;
end;

procedure TFrm_ReabreCaixa.imgSalvarClick(Sender: TObject);
begin
  inherited;
  Salvar() ;
end;

procedure TFrm_ReabreCaixa.Salvar;
var
  fValor: Double;
begin
  if not TryStrToFloat(edtValor.Text, fValor) then
  begin
    TMensagem.Erro('Valor inválido.');
    edtValor.SetFocus;
    Exit;
  end;

  if not DM.SMCadastroClient.setCaixa(DM.BancoDados, 'REABERTURA', iCaixa,
       DM.Usuario.login, 'DINHEIRO', fValor, mmo1.Lines.Text, EmptyStr) then
  begin
    TMensagem.Erro('Erro: Gravação não efetuada.');
  end
  else
  begin
    bAtualizar := True;
    Close;
  end;
end;


end.

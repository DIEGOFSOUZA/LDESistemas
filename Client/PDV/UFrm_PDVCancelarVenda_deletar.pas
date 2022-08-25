unit UFrm_PDVCancelarVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.Actions, Vcl.ActnList;

type
  TFrm_PDVCancelarVenda = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlRodape: TPanel;
    Label1: TLabel;
    edtVenda: TEdit;
    Label2: TLabel;
    mmo1: TMemo;
    btnGravar: TButton;
    actlst1: TActionList;
    actLocalizar: TAction;
    procedure btnGravarClick(Sender: TObject);
    procedure mmo1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure actLocalizarExecute(Sender: TObject);
  private
    { Private declarations }
    function Validar() : Boolean ;
  public
    { Public declarations }
  end;

var
  Frm_PDVCancelarVenda: TFrm_PDVCancelarVenda;

implementation

uses
  UDM, UConsulta;

{$R *.dfm}

procedure TFrm_PDVCancelarVenda.actLocalizarExecute(Sender: TObject);
var
  aRet: TRetornoVenda;
begin
  inherited;
  aRet := Consulta.Venda;
  if aRet.ID > 0 then
    edtVenda.Text := IntToStr(aRet.ID);
  edtVenda.SetFocus;
end;

procedure TFrm_PDVCancelarVenda.btnGravarClick(Sender: TObject);
begin
  inherited;
  if not Validar then
    Exit;

  if MessageDlg('Confirma o cancelamento da Venda: ' + edtVenda.Text + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if DM.SMCadastroClient.setCancelarVenda(DM.BancoDados, StrToInt(edtVenda.Text), '0', mmo1.Lines.Text, DM.UsuarioDataHora) then
      MessageDlg('Sucesso: Venda Cancelada.', mtInformation, [mbOK], 0);
  end;
end;

procedure TFrm_PDVCancelarVenda.FormShow(Sender: TObject);
begin
  inherited;
  edtVenda.SetFocus ;
end;

procedure TFrm_PDVCancelarVenda.mmo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := AnsiUpperCase( Key )[1] ;
end;

function TFrm_PDVCancelarVenda.Validar: Boolean;
const
  SQL = 'select coalesce(a.STATUS,''N'') status '+
        'from PDV_MASTER a '+
        'where a.TIPO = ''0'' '+
        'and a.ID = %s'    ;
var
  aRetorno: string;
begin
  Result := True ;

  if ((edtVenda.Text = EmptyStr) or (StrToInt(edtVenda.Text) < 1)) then
  begin
    Result := False ;
    MessageDlg('Informe a venda a ser cancelada',mtError,[mbOK],0) ;
    edtVenda.SetFocus ;
    Exit ;
  end;

  aRetorno := DM.GetString(Format(SQL,[edtVenda.Text]),'status') ;

  if (aRetorno = 'CANCELADA') then
  begin
    Result := False ;
    MessageDlg('Venda já esta cancelada.',mtError,[mbOK],0) ;
    Exit ;
  end;

   if aRetorno = EmptyStr then
  begin
    Result := False ;
    MessageDlg('Venda não encontrada.',mtError,[mbOK],0) ;
    Exit ;
  end;
end;

end.

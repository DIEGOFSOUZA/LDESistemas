unit UFrm_CaixaAbertura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Data.DB, Datasnap.DBClient,
  Vcl.Imaging.pngimage;

type
  TFrm_CaixaAbertura = class(TPdr_Child)
    lblTitulo: TLabel;
    pnlDados: TPanel;
    pnlRodape: TPanel;
    btnOk: TButton;
    Label1: TLabel;
    edtUsuario: TEdit;
    Label2: TLabel;
    edtDataHora: TEdit;
    Label3: TLabel;
    edtFundoCaixa: TEdit;
    temp: TClientDataSet;
    Label4: TLabel;
    mmo1: TMemo;
    Label5: TLabel;
    imgImportaSaldoAnterior: TImage;
    lblImportaSaldoAnterior: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtFundoCaixaKeyPress(Sender: TObject; var Key: Char);
    procedure imgImportaSaldoAnteriorClick(Sender: TObject);
  private
    { Private declarations }
    procedure ValidaCaixaAberto() ;
    function VoltaSaldoCaixaAnterior():Currency ;
  public
    { Public declarations }
  end;

var
  Frm_CaixaAbertura: TFrm_CaixaAbertura;

implementation

uses
  UDM, UFuncoes;

{$R *.dfm}

procedure TFrm_CaixaAbertura.btnOkClick(Sender: TObject);
var
  fValor: Double;
  lFormata: TFormataValor;
begin
  inherited;
  lFormata := ValidaFormataCurrency(StringReplace(edtFundoCaixa.Text, '.', '', [rfReplaceAll]));
  if lFormata.Retorno = 'erro' then
  begin
    edtFundoCaixa.SetFocus;
    Exit;
  end
  else
    fValor := lFormata.vlFloat;

  //Abre o caixa do Dia
  if DM.SMCadastroClient.setCaixa(DM.BancoDados, 'ABERTURA', 0, DM.Usuario.login, 'DINHEIRO', fValor, mmo1.Lines.Text, EmptyStr) then
  begin
    MessageDlg('Abertura de Caixa efetuada com sucesso!', mtInformation, [mbOK], 0);
    ValidaCaixaAberto();
  end;


  //parametros - ID,Usuario,Data e hora,FormaPagto(Dinheiro,Cartao,etc),Valor,
  //             Obs(ABERTURA DE CAIXA,VENDAS DIA)  
end;

procedure TFrm_CaixaAbertura.edtFundoCaixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TFrm_CaixaAbertura.FormCreate(Sender: TObject);
begin
  inherited;
  edtUsuario.Text := DM.Usuario.login ;
  edtDataHora.Text := FormatDateTime('dd/mm/yyyy | hh:mm:ss',Now);
end;

procedure TFrm_CaixaAbertura.FormShow(Sender: TObject);
begin
  inherited;
  //verifica se caixa ja foi aberto
  ValidaCaixaAberto() ;
end;

procedure TFrm_CaixaAbertura.imgImportaSaldoAnteriorClick(Sender: TObject);
var
  lSaldoAnterior: Currency;
begin
  inherited;
  lSaldoAnterior := VoltaSaldoCaixaAnterior ;
  if lSaldoAnterior > 0 then
  begin
    edtFundoCaixa.Text := FormatFloat('#,##0.00',lSaldoAnterior) ;
    MessageDlg('Saldo de Caixa anterior no valor de R$ '+FormatCurr('#,##0.00',lSaldoAnterior)+' importado com sucesso.'+#13+#10+
              'Por favor, confirme a abertura de caixa clicando no botão Abrir.',mtInformation,[mbOK],0);
  end;
end;

procedure TFrm_CaixaAbertura.ValidaCaixaAberto;
const
  SQL = 'select a.ID ID,a.ABERTO_FECHADO status,'+
        'b.DATA_HORA, b.USUARIO,b.VALOR saldoInicial '+
        'from CAIXA a '+
        'left outer join CAIXA_ENT_SAI b on (b.ID_CAIXA = a.ID) '+
        'where a.ID = %s';
//        'WHERE cast(b.DATA_HORA as date) = %s '+
//        'group by 2,3,4,5';


begin
  temp.Close;
  temp.Data := DM.LerDataSet(Format(SQL,[DM.GetString('select max(id) id from CAIXA','id')])) ;
//  [QuotedStr(FormatDateTime('dd.mm.yyyy', Date))]));

//  if not temp.IsEmpty then
//  begin
    temp.First;
    if temp.FieldByName('status').AsString = 'A' then
    begin
      edtUsuario.Text := temp.FieldByName('USUARIO').AsString;
      edtDataHora.Text := temp.FieldByName('DATA_HORA').AsString;
      edtFundoCaixa.Text := FormatCurr('#,##0.00', temp.FieldByName('saldoInicial').AsCurrency);
      edtFundoCaixa.ReadOnly := True;
      mmo1.ReadOnly := True;

      Label4.Caption := 'Caixa ABERTO';
      Label4.Visible := True;
      btnOk.Enabled := False;
      imgImportaSaldoAnterior.Visible := False ;
      lblImportaSaldoAnterior.Visible := False ;
    end
    else
    begin
      imgImportaSaldoAnterior.Visible := True ;
      lblImportaSaldoAnterior.Visible := True ;
    end;
//  end;
end;

function TFrm_CaixaAbertura.VoltaSaldoCaixaAnterior: Currency;
const                                   //+r.VL_CHEQUE
  SQL = 'SELECT coalesce(((r.VL_DINHEIRO) - r.VL_RETIRADO),0) valor '+
        'FROM CAIXA_APURACAO_VALORES r '+
        'where r.ID_CAIXA = (select max(id) from CAIXA a)';

begin
  Result := 0;
  try
    DM.dsConsulta.Close;
    DM.dsConsulta.Data := DM.LerDataSet(SQL);

    if not DM.dsConsulta.IsEmpty then
    begin
      Result := DM.dsConsulta.FieldByName('valor').AsFloat;
    end;
  except
    on e: Exception do
    begin
      MessageDlg('Erro ao buscar saldo. Erro: ' + e.Message, mtError, [mbOK], 0);
    end;

  end;
end;

end.

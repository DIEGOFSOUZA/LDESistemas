unit UFrm_Caixa_InformaValores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrm_Caixa_InformaValores = class(TPdr_Child)
    lblTitulo: TLabel;
    pnlRodape: TPanel;
    imgSalvar: TImage;
    imgCancelar: TImage;
    lblSalvar: TLabel;
    lblCancelar: TLabel;
    pnl1: TPanel;
    Label1: TLabel;
    edtDinheiro: TEdit;
    Label2: TLabel;
    edtCheque: TEdit;
    Label3: TLabel;
    edtCCredito: TEdit;
    Label4: TLabel;
    edtCDebito: TEdit;
    lblVlRetirado: TLabel;
    edtVlRetirado: TEdit;
    Label5: TLabel;
    mmo1: TMemo;
    lblRestante: TLabel;
    Label6: TLabel;
    edtVlRetiradoCheque: TEdit;
    pnlSalvar: TPanel;
    pnlCancel: TPanel;
    Label7: TLabel;
    edtCPix: TEdit;
    procedure edtDinheiroKeyPress(Sender: TObject; var Key: Char);
    procedure imgCancelarClick(Sender: TObject);
    procedure imgSalvarClick(Sender: TObject);
    procedure mmo1Change(Sender: TObject);
    procedure edtDinheiroExit(Sender: TObject);
    procedure edtChequeExit(Sender: TObject);
    procedure edtCCreditoExit(Sender: TObject);
    procedure edtCDebitoExit(Sender: TObject);
    procedure edtVlRetiradoExit(Sender: TObject);
    procedure edtCPixExit(Sender: TObject);
  private
    { Private declarations }
    procedure Gravar() ;
    procedure Cancelar() ;
    function FormataValor(pValor: String): String;
  public
    { Public declarations }
    idCaixa,idAbertCaixa : string ;
  end;

var
  Frm_Caixa_InformaValores: TFrm_Caixa_InformaValores;

implementation

uses
  UDM;

{$R *.dfm}

{ TFrm_Caixa_InformaValores }

procedure TFrm_Caixa_InformaValores.Cancelar;
begin
  Close ;
end;

procedure TFrm_Caixa_InformaValores.edtCCreditoExit(Sender: TObject);
begin
  inherited;
  edtCCredito.Text := FormataValor(edtCCredito.Text) ;
end;

procedure TFrm_Caixa_InformaValores.edtCDebitoExit(Sender: TObject);
begin
  inherited;
  edtCDebito.Text := FormataValor(edtCDebito.Text) ;
end;

procedure TFrm_Caixa_InformaValores.edtChequeExit(Sender: TObject);
begin
  inherited;
  edtCheque.Text := FormataValor(edtCheque.Text) ;
end;

procedure TFrm_Caixa_InformaValores.edtCPixExit(Sender: TObject);
begin
  inherited;
  edtCPix.Text := FormataValor(edtCPix.Text) ;
end;

procedure TFrm_Caixa_InformaValores.edtDinheiroExit(Sender: TObject);
begin
  inherited;
  edtDinheiro.Text := FormataValor(edtDinheiro.Text) ;
end;

procedure TFrm_Caixa_InformaValores.edtDinheiroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

procedure TFrm_Caixa_InformaValores.edtVlRetiradoExit(Sender: TObject);
begin
  inherited;
  edtVlRetirado.Text := FormataValor(edtVlRetirado.Text) ;
end;

function TFrm_Caixa_InformaValores.FormataValor(pValor: String): String;
begin
  Result := FormatFloat('##0.00',StrToFloatDef(pValor,0)) ;
end;

procedure TFrm_Caixa_InformaValores.Gravar;
var
  txt: string;
begin
  txt := 'INSERT INTO CAIXA_APURACAO_VALORES '+
         '(ID_CAIXA, ID_CAIXA_ABERT_FECH, VL_DINHEIRO,'+
         'VL_CHEQUE, VL_CCREDITO, VL_CDEBITO, VL_PIX, Vl_RETIRADO,'+
         'Vl_RETIRADOCHEQUE, OBS) '+
         'VALUES ( '+
         idCaixa+','+
         idAbertCaixa+','+  {ID Abertura Caixa}
         StringReplace(edtDinheiro.Text,',','.',[rfReplaceAll]) +','+   //dinheiro
         StringReplace(edtCheque.Text,',','.',[rfReplaceAll])+','+  //cheque
         StringReplace(edtCCredito.Text,',','.',[rfReplaceAll])+','+   //c credito
         StringReplace(edtCDebito.Text,',','.',[rfReplaceAll])+','+   //c debito
         StringReplace(edtCPix.Text,',','.',[rfReplaceAll])+','+   //c debito
         StringReplace(edtVlRetirado.Text,',','.',[rfReplaceAll])+','+   //reirado dinheiro
         StringReplace(edtVlRetiradoCheque.Text,',','.',[rfReplaceAll])+','+   //reirado cheque
         QuotedStr(mmo1.Lines.Text) +
         ')';
  try
    DM.ExecutarSQL(DM.BancoDados, txt);
    MessageDlg('Valores lançados com sucesso!', mtInformation, [mbOK], 0);
    Close;
  except
    on e: Exception do
    begin
      MessageDlg('Erro: ' + e.Message + #13#10 + 'Tente novamente', mtError, [mbAbort], 0);
    end;
  end;
end;

procedure TFrm_Caixa_InformaValores.imgCancelarClick(Sender: TObject);
begin
  inherited;
  Cancelar() ;
end;

procedure TFrm_Caixa_InformaValores.imgSalvarClick(Sender: TObject);
begin
  inherited;
  Gravar() ;
end;

procedure TFrm_Caixa_InformaValores.mmo1Change(Sender: TObject);
begin
  inherited;
  lblRestante.Caption := 'Caracteres restantes: ' + IntToStr(250 - Length(mmo1.Text));
end;

end.

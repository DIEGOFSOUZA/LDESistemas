unit UFrm_PagtoOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, UEDPesquisa;

type
  TFrm_PagtoOrcamento = class(TPdr_Child)
    pnlFundo: TPanel;
    lbl1: TLabel;
    pnlTotPagar: TPanel;
    pnlPagamento: TPanel;
    pnlAcao: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlBtnBaixar: TPanel;
    btnBaixar: TSpeedButton;
    imgBaixar: TImage;
    pnlCancelar: TPanel;
    btnCancelar: TSpeedButton;
    imgCancelar: TImage;
    Label3: TLabel;
    cbbFPagto: TComboBox;
    EdPesquisa1: TEdPesquisa;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure cbbFPagtoChange(Sender: TObject);
    procedure EdPesquisa1Pesquisa(Sender: TObject; var Retorno: string);
  private
    FGetRetorno: string;
    FCondPagto: Integer;
    FFormaPagto: string;
    procedure SetCondPagto(const Value: Integer);
    procedure SetFormaPagto(const Value: string);
    procedure SetRetorno(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property Retorno : string  read FGetRetorno write SetRetorno;
    property FormaPgto:string  read FFormaPagto write SetFormaPagto;
    property CondPagto:Integer read FCondPagto write SetCondPagto;
  end;

var
  Frm_PagtoOrcamento: TFrm_PagtoOrcamento;

implementation

uses
  u_Mensagem, UConsulta, UDM;

{$R *.dfm}

{ TFrm_PagtoOrcamento }

procedure TFrm_PagtoOrcamento.btnBaixarClick(Sender: TObject);
begin
  inherited;
  case cbbFPagto.ItemIndex of
    0:
      begin
        FormaPgto := 'vista';
        CondPagto := -1;
      end;
    1:
      begin
        if (EdPesquisa1.Campo.Text = '') then
        begin
          TMensagem.Atencao('Informe o parcelamento.');
          EdPesquisa1.Campo.SetFocus;
          Abort;
        end;
        FormaPgto := 'prazo';
        CondPagto := StrToInt(EdPesquisa1.Campo.Text);
      end;
  end;


  Retorno := 'ok';
  Close;
end;

procedure TFrm_PagtoOrcamento.btnCancelarClick(Sender: TObject);
begin
  inherited;
  Retorno := 'cancel';
  Close;
end;

procedure TFrm_PagtoOrcamento.cbbFPagtoChange(Sender: TObject);
begin
  inherited;
  EdPesquisa1.Enabled := cbbFPagto.ItemIndex = 1;
end;

procedure TFrm_PagtoOrcamento.EdPesquisa1Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.CondPagto.ToString;
end;

procedure TFrm_PagtoOrcamento.SetCondPagto(const Value: Integer);
begin
  FCondPagto := Value;
end;

procedure TFrm_PagtoOrcamento.SetFormaPagto(const Value: string);
begin
  FFormaPagto := Value;
end;

procedure TFrm_PagtoOrcamento.SetRetorno(const Value: string);
begin
  FGetRetorno := Value;
end;

end.

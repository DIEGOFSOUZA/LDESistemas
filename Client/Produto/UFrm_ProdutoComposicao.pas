unit UFrm_ProdutoComposicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.ExtCtrls, Vcl.StdCtrls,
  UEDPesquisa;

type
  TFrm_ProdutoComposicao = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlMatPrima: TPanel;
    pnlRodape: TPanel;
    btnGravar: TButton;
    btnCancelar: TButton;
    edp1: TEdPesquisa;
    lbl1: TLabel;
    edt1: TEdit;
    lblUnidade: TLabel;
    pnlFornecedor: TPanel;
    edp2: TEdPesquisa;
    Label1: TLabel;
    Label2: TLabel;
    edtRefFornecedor: TEdit;
    edtPreco: TEdit;
    procedure edp1Pesquisa(Sender: TObject; var Retorno: string);
    procedure edt1Enter(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure edp2Pesquisa(Sender: TObject; var Retorno: string);
  private
    { Private declarations }
  public
    { Public declarations }
    aRetorno : string ;
    aCodMatPrima,aCodFornecedor : Integer;
    aRefFornecedor : string ;
    aQtde : Extended ;
    aPrecoFornecedor : Currency ;
  end;

var
  Frm_ProdutoComposicao: TFrm_ProdutoComposicao;

implementation

uses
  UConsulta, UDM;

{$R *.dfm}

procedure TFrm_ProdutoComposicao.btnCancelarClick(Sender: TObject);
begin
  inherited;
  aRetorno := 'cancel' ;
  Close ;
end;

procedure TFrm_ProdutoComposicao.btnGravarClick(Sender: TObject);
var
  aValor: Extended;
begin
  inherited;
  if pnlMatPrima.Visible then   //Insere Mat. Prima
  begin
    if edp1.Campo.Text = '' then
    begin
      MessageDlg('informe a Matéria-Prima.', mtInformation, [mbOK], 0);
      edp1.Campo.SetFocus;
      Exit;
    end;

    if edt1.Text = EmptyStr then
    begin
      MessageDlg('Informe a quantidade de Materia-Prima a utilizar', mtInformation, [mbOK], 0);
      edt1.SetFocus;
      Exit;
    end;

    if TryStrToFloat(edt1.Text, aValor) then
      if aValor > 0 then
      begin
        aRetorno := 'sucesso';
        aQtde := aValor;
        aCodMatPrima := StrToInt(edp1.Campo.Text);
        Close;
        Exit;
      end;

    MessageDlg('Valor inválido', mtError, [mbOK], 0);
    edt1.SetFocus;
  end;

  if pnlFornecedor.Visible then  //Insere Fornecedores
  begin
    if edp2.Campo.Text = '' then
    begin
      MessageDlg('informe o Fornecedor.', mtInformation, [mbOK], 0);
      edp1.Campo.SetFocus;
      Exit;
    end;

    if edtPreco.Text = EmptyStr then
    begin
      MessageDlg('Informe o Preço de Custo da Matéria-Prima', mtInformation, [mbOK], 0);
      edtPreco.SetFocus;
      Exit;
    end;

    if TryStrToFloat(edtPreco.Text, aValor) then
      if aValor > 0 then
      begin
        aRetorno := 'sucesso';
        aPrecoFornecedor := aValor;
        aCodFornecedor := StrToInt(edp2.Campo.Text);
        aRefFornecedor := edtRefFornecedor.Text ;
        Close;
        Exit;
      end;

    MessageDlg('Valor inválido', mtError, [mbOK], 0);
    edtPreco.SetFocus;

  end;

end;

procedure TFrm_ProdutoComposicao.edp1Pesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoProduto;
begin
  inherited;
  aRet := Consulta.Produto('''MP'',''A''','Consulta de Produtos/Matéria-Prima');
  if aRet.iCodigo > 0 then
    Retorno := IntToStr(aRet.iCodigo);
end;


procedure TFrm_ProdutoComposicao.edp2Pesquisa(Sender: TObject;
  var Retorno: string);
begin
  inherited;
  Retorno := Consulta.Fornecedor.ToString;
end;



procedure TFrm_ProdutoComposicao.edt1Enter(Sender: TObject);
const
     SQL = 'select coalesce(b.SIGLA,'''') unidade '+
           'from PRODUTO a left outer join UNIDADE b on(b.CODIGO = a.COD_UNIDADE) '+
           'where a.CODIGO = %s' ;
begin
  inherited;
  if edp1.Campo.Text <> EmptyStr then
  begin
    lblUnidade.Caption := DM.GetString(Format(SQL,[Edp1.Campo.Text]),'unidade') ;
    lblUnidade.Visible := True ;
  end;
end;

procedure TFrm_ProdutoComposicao.edt1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8, #13]) then
    Key := #0; //apenas numero e virgula
end;

end.

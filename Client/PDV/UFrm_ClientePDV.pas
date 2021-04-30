{Height 594 - Cadastrar Cliente
 Height 96 - Consultar Cliente}
unit UFrm_ClientePDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UEDPesquisa, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Data.DB, Datasnap.DBClient;

type
  TFrm_ClientePDV = class(TForm)
    pnlFundo: TPanel;
    pnlConsulta: TPanel;
    edpCliente: TEdPesquisa;
    pnlCadastro: TPanel;
    lblTitulo: TLabel;
    Label1: TLabel;
    cbbPessoa: TComboBox;
    lblCPFCNPJ: TLabel;
    edtCpfCnpj: TEdit;
    edtRGInsc: TEdit;
    lblRgInsc: TLabel;
    lblDtNasc: TLabel;
    edtDtNasc: TEdit;
    rgSexo: TRadioGroup;
    lblNomeRazao: TLabel;
    edtNomeRazao: TEdit;
    grpEndereco: TGroupBox;
    grpContato: TGroupBox;
    lblCep: TLabel;
    edtCep: TEdit;
    lblLogradouro: TLabel;
    edtLogradouro: TEdit;
    edtNumero: TEdit;
    lblNumero: TLabel;
    lblComplemento: TLabel;
    edtComplemento: TEdit;
    edtBairro: TEdit;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblUF: TLabel;
    cbbUF: TComboBox;
    lblFone: TLabel;
    edtFoneDDD: TEdit;
    edtFone: TEdit;
    lblCelular: TLabel;
    edtCelularDDD: TEdit;
    edtCelular: TEdit;
    lblEmail: TLabel;
    edtEmail: TEdit;
    imgConfirma: TImage;
    imgAdd: TImage;
    pnlRodape: TPanel;
    btnGravar: TButton;
    btnCancelar: TButton;
    cdsCliente: TClientDataSet;
    cdsClienteCODIGO: TIntegerField;
    cdsClientePESSOA: TStringField;
    cdsClienteCPF_CNPJ: TStringField;
    cdsClienteRG_INSC: TStringField;
    cdsClienteNOME_RAZAO: TStringField;
    cdsClienteFANTASIA: TStringField;
    cdsClienteDATA_NASC: TStringField;
    cdsClienteSEXO: TStringField;
    cdsClienteEST_CIVIL: TStringField;
    cdsClienteCEP: TStringField;
    cdsClienteENDERECO: TStringField;
    cdsClienteNUMERO: TStringField;
    cdsClienteCOMPLEMENTO: TStringField;
    cdsClienteBAIRRO: TStringField;
    cdsClienteCIDADE: TStringField;
    cdsClienteUF: TStringField;
    cdsClienteINSC_MUNICIPAL: TStringField;
    cdsClienteDDD_FONE: TStringField;
    cdsClienteTELEFONE1: TStringField;
    cdsClienteTELEFONE2: TStringField;
    cdsClienteDDD_CEL: TStringField;
    cdsClienteCEL: TStringField;
    cdsClienteEMAIL: TStringField;
    cdsClienteSITE: TStringField;
    cdsClienteCOD_RAMOATIVIDADE: TIntegerField;
    cdsClienteCOD_REPRESENTANTE: TIntegerField;
    cdsClientePROFISSAO: TStringField;
    cdsClienteDT_CADASTRO: TDateField;
    edpProduto: TEdPesquisa;
    cbbCidades: TComboBox;
    procedure imgConfirmaClick(Sender: TObject);
    procedure edpClientePesquisa(Sender: TObject; var Retorno: string);
    procedure imgAddClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cbbPessoaChange(Sender: TObject);
    procedure edtCpfCnpjExit(Sender: TObject);
    procedure edtRGInscExit(Sender: TObject);
    procedure edtDtNascExit(Sender: TObject);
    procedure edtCepExit(Sender: TObject);
    procedure edpClienteedtCampoKeyPress(Sender: TObject; var Key: Char);
    procedure edpProdutoPesquisa(Sender: TObject; var Retorno: string);
    procedure edpProdutoedtCampoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function ValidaCamposObrigatorios() : Boolean ;
    procedure CarregaCidades() ;
  public
    { Public declarations }
    aRetCodCliente : integer ;
    aRetCodProduto : integer ;
  end;

var
  Frm_ClientePDV: TFrm_ClientePDV;

implementation

uses
  UDM, UConsulta, UFuncoes, u_Mensagem;

{$R *.dfm}

procedure TFrm_ClientePDV.btnCancelarClick(Sender: TObject);
begin
  Height := 96 ;
  pnlRodape.Visible := False ;
  edpCliente.Campo.SetFocus
end;

procedure TFrm_ClientePDV.btnGravarClick(Sender: TObject);
begin
  if not ValidaCamposObrigatorios then
  begin
    TMensagem.Atencao('Informar os campos obrigatórios assinalados com "*" ') ;
    Abort ;
  end;
  {Carrego cdsCliente}
  cdsCliente.Close ;
  cdsCliente.CreateDataSet ;

  cdsCliente.Append ;
  cdsClienteCODIGO.AsInteger := 0 ;
  if cbbPessoa.ItemIndex = 0 then
  begin
    cdsClientePESSOA.AsString := 'F' ;
    cdsClienteDATA_NASC.AsString := MaskData(edtDtNasc.Text,'99.99.9999') ;
    cdsClienteSEXO.AsString := rgSexo.Items[rgSexo.ItemIndex] ;
  end
  else
  begin
    cdsClientePESSOA.AsString := 'J' ;
    cdsClienteDATA_NASC.Clear ;
    cdsClienteSEXO.Clear ;
  end;
  cdsClienteCPF_CNPJ.AsString := edtCpfCnpj.Text ;
  cdsClienteRG_INSC.AsString  := edtRGInsc.Text ;
  cdsClienteNOME_RAZAO.AsString := edtNomeRazao.Text ;
  cdsClienteCEP.AsString := edtCep.Text ;
  cdsClienteENDERECO.AsString := edtLogradouro.Text ;
  cdsClienteNUMERO.AsString := edtNumero.Text ;
  cdsClienteCOMPLEMENTO.AsString := edtComplemento.Text ;
  cdsClienteBAIRRO.AsString := edtBairro.Text ;
  cdsClienteCIDADE.AsString := cbbCidades.Text ;
  cdsClienteUF.AsString := cbbUF.Text ;
  cdsClienteDDD_FONE.AsString := edtFoneDDD.Text ;
  cdsClienteTELEFONE1.AsString := edtFone.Text ;
  cdsClienteDDD_CEL.AsString := edtCelularDDD.Text ;
  cdsClienteCEL.AsString := edtCelular.Text ;
  cdsClienteEMAIL.AsString := edtEmail.Text ;
  cdsClienteDT_CADASTRO.AsDateTime := Date ;

  cdsCliente.Post ;
//  cdsCliente.SaveToFile('d:\cds\cliente.cds',dfBinary);

  {Gravar novo Cliente e Retornar codigo Cliente}
  try
    aRetCodCliente := DM.SMCadastroClient.setClientePDV(DM.BancoDados,cdsClienteCPF_CNPJ.AsString,cdsCliente.Data) ;
    Close ;
  except
    TMensagem.Erro('Erro: Não foi possivel cadastrar o novo Cliente.') ;
  end;
end;

procedure TFrm_ClientePDV.CarregaCidades;
var
  tmp: TClientDataSet;
begin
  try
    tmp := TClientDataSet.Create(nil);
    tmp.Data := DM.LerDataSet('SELECT a.NOME FROM CIDADES a order by 1');

    tmp.DisableControls;
    tmp.First;
    while not tmp.Eof do
    begin
      cbbCidades.Items.Add(tmp.FieldByName('nome').AsString);
      tmp.Next;
    end;
    tmp.EnableControls;
  finally
    FreeAndNil(tmp);
  end;
end;

procedure TFrm_ClientePDV.cbbPessoaChange(Sender: TObject);
begin
  case cbbPessoa.ItemIndex of
    0:  //Fisica
      begin
        lblCPFCNPJ.Caption := 'CPF *' ;
        lblRgInsc.Caption := 'RG' ;
        edtDtNasc.Enabled := True ;
        rgSexo.Enabled := True ;
        lblNomeRazao.Caption := 'NOME *' ;
      end;
    1:  //Juridica
      begin
        lblCPFCNPJ.Caption := 'CNPJ *' ;
        lblRgInsc.Caption := 'INSC. EST.' ;
        edtDtNasc.Enabled := False ;
        rgSexo.Enabled := False ;
        lblNomeRazao.Caption := 'RAZÃO SOCIAL *' ;
      end;
  end;
end;

procedure TFrm_ClientePDV.edpClienteedtCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then //Enter
  begin
    if edpCliente.Campo.Text <> EmptyStr then
      imgConfirma.OnClick(Self) ;
  end;
end;

procedure TFrm_ClientePDV.edpClientePesquisa(Sender: TObject;
  var Retorno: string);
begin
  Retorno := IntToStr(Consulta.Cliente) ;
end;

procedure TFrm_ClientePDV.edpProdutoedtCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then //Enter
  begin
    if edpProduto.Campo.Text <> EmptyStr then
      imgConfirma.OnClick(Self) ;
  end;
end;

procedure TFrm_ClientePDV.edpProdutoPesquisa(Sender: TObject;
  var Retorno: string);
var
  aRet: TRetornoProduto;
begin
  aRet := Consulta.Produto('''PA'',''A''', 'Consulta de Produtos/Matéria-Prima');
  if aRet.iCodigo > 0 then
  begin
    Retorno := IntToStr(aRet.iCodigo);
  end;
end;

procedure TFrm_ClientePDV.edtCepExit(Sender: TObject);
begin
  if edtCep.Text <> EmptyStr then
    edtCep.Text := MaskCEP(edtCep.Text);
end;

procedure TFrm_ClientePDV.edtCpfCnpjExit(Sender: TObject);
begin
  if edtCpfCnpj.Text <> EmptyStr then
    edtCpfCnpj.Text := MaskCpfCnpj(edtCpfCnpj.Text);
end;

procedure TFrm_ClientePDV.edtDtNascExit(Sender: TObject);
begin
  if edtDtNasc.Text <> EmptyStr then
    edtDtNasc.Text := MaskData(edtDtNasc.Text,'99/99/9999') ;
end;

procedure TFrm_ClientePDV.edtRGInscExit(Sender: TObject);
begin
  if edtRGInsc.Text <> EmptyStr then
    edtRGInsc.Text := MaskRgIE(edtRGInsc.Text) ;
end;

procedure TFrm_ClientePDV.FormShow(Sender: TObject);
begin
  keybd_event(VK_F3, 0, 0, 0);
end;

procedure TFrm_ClientePDV.imgAddClick(Sender: TObject);
begin
  CarregaCidades ;
  Height := 594 ;
  pnlRodape.Visible := True ;
  cbbPessoa.SetFocus ;
end;

procedure TFrm_ClientePDV.imgConfirmaClick(Sender: TObject);
begin
  if edpCliente.Campo.Text = EmptyStr then
    aRetCodCliente := -1 ;

  aRetCodCliente := StrToIntDef(edpCliente.Campo.Text,-1) ;
  aRetCodProduto := StrToIntDef(edpProduto.Campo.Text,-1) ;

  Close ;
end;

function TFrm_ClientePDV.ValidaCamposObrigatorios: Boolean;
begin
  Result := True ;


  if cbbPessoa.Text = EmptyStr then
  begin
    Result := False ;
    Exit ;
  end;

  if edtCpfCnpj.Text = EmptyStr then
  begin
    Result := False ;
    Exit ;
  end;

  if edtNomeRazao.Text = EmptyStr then
  begin
    Result := False ;
    Exit ;
  end;

  if edtCep.Text = EmptyStr then
  begin
    Result := False ;
    Exit ;
  end;

  if edtLogradouro.Text = EmptyStr then
  begin
    Result := False ;
    Exit ;
  end;

  if cbbUF.Text = EmptyStr then
  begin
    Result := False ;
    Exit ;
  end;

end;

end.

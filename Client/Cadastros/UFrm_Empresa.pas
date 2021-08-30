unit UFrm_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Cad, System.Actions, Vcl.ActnList,
  Data.DB, Datasnap.DBClient, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, UDBPesquisa, Vcl.ExtDlgs,
  Vcl.Menus, Vcl.Imaging.pngimage,Vcl.Imaging.jpeg,System.DateUtils;

const
  aSenha = '8Zm6$knF';

type
  TFrm_Empresa = class(TPdr_Cad)
    Dialog: TOpenPictureDialog;
    cdsCODIGO: TIntegerField;
    cdsRAZAO: TStringField;
    cdsFANTASIA: TStringField;
    cdsCNPJ: TStringField;
    cdsINSC: TStringField;
    cdsINSC_MUN: TStringField;
    cdsCNAE: TStringField;
    cdsCEP: TStringField;
    cdsUF: TStringField;
    cdsCIDADE: TStringField;
    cdsENDERECO: TStringField;
    cdsCOMPLEMENTO: TStringField;
    cdsNUMERO: TStringField;
    cdsBAIRRO: TStringField;
    cdsFONE: TStringField;
    cdsFONE2: TStringField;
    cdsCEL: TStringField;
    cdsEMAIL: TStringField;
    cdsREGIME_TRIBUT: TStringField;
    cdsLOGOMARCA: TBlobField;
    cdsSITUACAO: TStringField;
    cdsCLIENTE_LDE: TStringField;
    cdsENT_CEP: TStringField;
    cdsENT_CIDADE: TStringField;
    cdsENT_ENDERECO: TStringField;
    cdsENT_NUMERO: TStringField;
    cdsENT_BAIRRO: TStringField;
    cdsENT_CPL: TStringField;
    cdsFAT_CEP: TStringField;
    cdsFAT_CIDADE: TStringField;
    cdsFAT_ENDERECO: TStringField;
    cdsFAT_NUMERO: TStringField;
    cdsFAT_BAIRRO: TStringField;
    cdsFAT_CPL: TStringField;
    cdsENT_UF: TStringField;
    cdsFAT_UF: TStringField;
    pnlHeader: TPanel;
    pnlHeaderRight: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit8: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    pnlLogo: TPanel;
    imgLogoTipo: TImage;
    pnlLogoRight: TPanel;
    pnlDetail: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    actUploadLogoMarca: TAction;
    actExcLogoMarca: TAction;
    pnlLogoMarcaRight: TPanel;
    imgUpload: TImage;
    imgExcLogoMarca: TImage;
    lbl2: TLabel;
    pgcEnderecos: TPageControl;
    tsFat: TTabSheet;
    tsEnt: TTabSheet;
    tsCorresp: TTabSheet;
    pnlEndFat: TPanel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    pnlEndEnt: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    pnlEndCorresp: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    pnlCNPJ: TPanel;
    Label32: TLabel;
    DBEdit26: TDBEdit;
    lblSituacao: TLabel;
    pnlImgStatus: TPanel;
    imgStatusCNPJ: TImage;
    actLiberarSistema: TAction;
    cdsLOGOTIPO: TBlobField;
    btnGerarCripto: TSpeedButton;
    actVisualizaVencimento: TAction;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure cdsAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure LoadImageFromField(Image: TImage; ImageField: TBlobField);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure actUploadLogoMarcaExecute(Sender: TObject);
    procedure actExcLogoMarcaExecute(Sender: TObject);
    procedure actLiberarSistemaExecute(Sender: TObject);
    procedure Panel4DblClick(Sender: TObject);
    procedure actVisualizaVencimentoExecute(Sender: TObject);
  private
    function ExisteCadEmpresa(): Boolean;
    procedure MontaSql(pCodigo : Integer) ;
    function Validar() : Boolean ;

    //imagem
    procedure RefreshImage(Field: TField; Img: TImage);
  public
    { Public declarations }
    procedure Novo() ; override ;
    procedure Gravar() ; override ;
    procedure Excluir() ; override ;
    procedure localizar() ; override ;
  end;

var
  Frm_Empresa: TFrm_Empresa;

implementation

{$R *.dfm}

uses
  UConsulta, UDM, UConsultaCNPJ, UMakeReadWrite, u_Mensagem, UCriptografia,
  UFrm_VoltaSenha, UFuncoes;

procedure TFrm_Empresa.actExcLogoMarcaExecute(Sender: TObject);
begin
  inherited;
  Editar;
  cds.FieldByName('LOGOMARCA').Clear;
  Image1.Picture := nil;
end;

procedure TFrm_Empresa.actLiberarSistemaExecute(Sender: TObject);
var
  lCliente, lChave: string;
begin
  inherited;
  if cds.IsEmpty then
    Abort;

  if (VoltaSenha() <> aSenha) then
    Exit;

  lChave := Criptografia.CodificarString(cds.FieldByName('CNPJ').AsString,'');
  lCliente := Criptografia.CodificarString(cds.FieldByName('CNPJ').AsString+'|'+
                                           FormatDateTime('dd/mm/yyyy',IncMonth(Date,1)),lChave);
  Editar;
  cds.FieldByName('CLIENTE_LDE').AsString := lCliente;
  Gravar;
  TMensagem.Informacao('Autorização concedida com sucesso!'); //libera para mais 30 dias
end;

procedure TFrm_Empresa.actUploadLogoMarcaExecute(Sender: TObject);
begin
  inherited;
//  if Dialog.Execute then
//    Image1.Picture.LoadFromFile(Dialog.FileName);
  Editar ;
  if Dialog.Execute then
  begin
    // Mostra a imagem no Image.
    Image1.Picture.LoadFromFile(Dialog.FileName);
    // Pega extensão da imagem.
//    cdsImagemTIPO.AsString := ExtractFileExt(Dialog.FileName);
    // Atribui imagem ao campo blob da tabela.
//    cdsLOGOMARCA.LoadFromFile(Dialog.FileName);
     TBlobField(cds.FieldByName('LOGOMARCA')).LoadFromFile(
          Dialog.FileName);
  end;
end;

procedure TFrm_Empresa.actVisualizaVencimentoExecute(Sender: TObject);
begin
  inherited;
  TMensagem.Informacao('CLIENTE_LDE: '+Criptografia.DecodificarString(
                                              cds.FieldByName('CLIENTE_LDE').AsString,
                                              Criptografia.CodificarString(cds.FieldByName('CNPJ').AsString,'')));
end;

procedure TFrm_Empresa.cdsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsCODIGO.AsInteger := 0 ;
  cdsREGIME_TRIBUT.AsString := 'Simples Nacional' ;
end;

procedure TFrm_Empresa.dsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
//  LoadImageFromField(Image1, cdsLOGOMARCA);
end;

procedure TFrm_Empresa.Excluir;
begin
  inherited;

end;

function TFrm_Empresa.ExisteCadEmpresa: Boolean;
const
  SQL = 'SELECT FIRST 1 e.CODIGO FROM EMPRESA e '+
        'ORDER BY e.CODIGO';
begin
  Result := False;
  try
    DM.dsConsulta.Close;
    DM.dsConsulta.Data := DM.LerDataSet(SQL);

    if (not DM.dsConsulta.IsEmpty) then
      Result := True;
  except

  end;
end;

procedure TFrm_Empresa.FormCreate(Sender: TObject);
begin
  inherited;
  cds.Close ;
  cds.CreateDataSet ;
  if ExisteCadEmpresa then
    MontaSql(1);
//  PageControl1.TabIndex := 0 ;
end;

procedure TFrm_Empresa.FormShow(Sender: TObject);
begin
  inherited;

//  if DM.User = 'A' then
//  if cds.IsEmpty then
//  begin
//    pnlAdicionar.Visible      := True ;
//    //SpbtnExcluir.Visible   := True ;
//    //SpbtnLocalizar.Visible := True ;
//  end
//  else
//  begin
//    pnlAdicionar.Visible      := False ;
//    pnlExcluir.Visible   := False ;
//    pnlLocalizar.Visible := False ;
//  end;
end;

procedure TFrm_Empresa.Gravar;
var
  mRetorno: OleVariant;
begin
  if not Validar then
    Exit;

  inherited;
  if cds.ChangeCount > 0 then
  begin
    mRetorno := DM.SMCadastroClient.setEmpresa(DM.BancoDados, cdsCODIGO.AsInteger, cds.Delta);
    cds.Close;
    cds.Data := mRetorno;
  end;
end;

procedure TFrm_Empresa.Label1Click(Sender: TObject);
var
  tmp: TFrm_ConsultaCNPJ;
begin
  tmp := TFrm_ConsultaCNPJ.CreateChild(nil);
  try
    tmp.ShowModal;

//    Result := tmp.Autorizacao ;
  finally
    FreeAndNil(tmp);
  end;
end;

procedure TFrm_Empresa.LoadImageFromField(Image: TImage;
  ImageField: TBlobField);
var
  MemStrm:    TMemoryStream;
  Jpg:        TJPEGImage;
begin
  if ImageField.IsNull then
  begin
    Image.Picture.Assign(nil);
    Exit;
  end; //if
  Jpg := TJPEGImage.Create;
  try
    MemStrm := TMemoryStream.Create;
    try
      ImageField.SaveToStream(MemStrm);
      MemStrm.Seek(0,soFromBeginning);
      with Jpg do begin
        PixelFormat := jf24Bit;
        Scale := jsFullSize;
        Grayscale := False;
        Performance := jpBestQuality;
        ProgressiveDisplay := True;
        ProgressiveEncoding := True;
        LoadFromStream(MemStrm);
      end; //with
      Image.Picture.Assign(Jpg)
    finally
      MemStrm.Free;
    end; //try
  finally
    Jpg.Free;
  end; //try
end;

procedure TFrm_Empresa.localizar;
begin
  inherited;
  MontaSql(Consulta.Empresa);
end;

procedure TFrm_Empresa.MontaSql(pCodigo: Integer);
begin
  if pCodigo = 0 then
    Exit;

  cds.Close;
  cds.Data := DM.SMCadastroClient.getEmpresa(DM.BancoDados, pCodigo);

  if cds.IsEmpty then
  begin
    pnlAdicionar.Visible := True;
  end
  else
  begin
    pnlAdicionar.Visible := False;
    pnlExcluir.Visible := False;
    pnlLocalizar.Visible := False;
    RefreshImage(cds.FieldByName('LOGOMARCA'),Image1);
  end;
  //  PageControl1.TabIndex := 0 ;
end;

procedure TFrm_Empresa.Novo;
begin
  inherited;
  DBEdit8.SetFocus ;
end;

procedure TFrm_Empresa.Panel4DblClick(Sender: TObject);
begin
  inherited;
  actVisualizaVencimento.Execute;
end;

procedure TFrm_Empresa.RefreshImage(Field: TField; Img: TImage);
var
  vPNG   : TPNGImage;
  vStream : TMemoryStream;
begin
  { Verifica se o campo esta vázio. }
  if not Field.IsNull then
  begin

    { Cria objeto do tipo TJPEG, e objeto do tipo MemoryStream}
    vPNG   := TPngImage.Create;
    vStream := TMemoryStream.Create;

    { Trata o campo como do tipo BLOB e salva o seu conteudo na memória. }
    TBlobField(Field).SaveToStream(vStream);

    { Ajusta a posicao inicial de leitura da memória }
    vStream.Position := 0;

    { Carrega da memoria os dados, para uma estrutura do tipo TJPEG
      (A partir da posicao 0)}
    vPNG.LoadFromStream(vStream);

    { Exibe o jpg no Timage. }
    Img.Picture.Assign(vPNG);

    { Libera a memoria utilizada pelos componentes de conversão }
    vPNG.Free;
    vStream.Free;
  end;
end;

procedure TFrm_Empresa.SpeedButton1Click(Sender: TObject);
begin
  inherited;
//  if Dialog.Execute then
//    Image1.Picture.LoadFromFile(Dialog.FileName);
  Editar ;
  if Dialog.Execute then
  begin
    // Mostra a imagem no Image.
    Image1.Picture.LoadFromFile(Dialog.FileName);
    // Pega extensão da imagem.
//    cdsImagemTIPO.AsString := ExtractFileExt(Dialog.FileName);
    // Atribui imagem ao campo blob da tabela.
    cdsLOGOMARCA.LoadFromFile(Dialog.FileName);
  end;
end;

function TFrm_Empresa.Validar: Boolean;
begin
  Result := True ;
  if Trim(DBEdit18.Text) = '' then
  begin
   Result := False ;
   DBEdit18.SetFocus ;
   TMensagem.Atencao('Informe a Razão Social.');
//   PageControl1.TabIndex := 0 ;
   Exit ;
  end;

  if Trim(DBEdit23.Text) = '' then
  begin
    Result := False;
//    PageControl1.TabIndex := 0;
    DBEdit23.SetFocus;
    TMensagem.Atencao('Informe um E-mail válido');
    Exit;
  end;

end;

end.

unit UConsultaCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child,
  ACBrConsultaCNPJ, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Imaging.jpeg;

type
  TEmpresa = record
    Razao : string ;
    Fantasia : string ;
    Endereco : string ;
    Numero     : string ;
    Complemento     : string ;
    Bairro     : string ;
    Cidade : string ;
    UF   : string ;
    CEP : string ;
    CNAE : string ;
  end ;

type
  TFrm_ConsultaCNPJ = class(TPdr_Child)
    Panel1: TPanel;
    Label1: TLabel;
    Label14: TLabel;
    ButBuscar: TBitBtn;
    EditCaptcha: TEdit;
    EditCNPJ: TMaskEdit;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    ckRemoverEspacosDuplos: TCheckBox;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    Timer1: TTimer;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditCaptchaKeyPress(Sender: TObject; var Key: Char);
    procedure ButBuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Empresa : TEmpresa ;
    function RetornaEmpresa(): TEmpresa ;
  end;

var
  Frm_ConsultaCNPJ: TFrm_ConsultaCNPJ;

implementation

{$R *.dfm}

procedure TFrm_ConsultaCNPJ.ButBuscarClick(Sender: TObject);
begin
  inherited;
  RetornaEmpresa() ;
end;

procedure TFrm_ConsultaCNPJ.EditCaptchaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    ButBuscarClick(ButBuscar);
end;

procedure TFrm_ConsultaCNPJ.FormShow(Sender: TObject);
begin
  inherited;
  Timer1.Enabled:= True;
end;

procedure TFrm_ConsultaCNPJ.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  Jpg: TJPEGImage;
begin
  Stream:= TMemoryStream.Create;
  Jpg:= TJPEGImage.Create;
  try
    ACBrConsultaCNPJ1.Captcha(Stream);
    Jpg.LoadFromStream(Stream);
    Image1.Picture.Assign(Jpg);

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
    Jpg.Free;
  end;
end;

function TFrm_ConsultaCNPJ.RetornaEmpresa: TEmpresa;
var
  I: Integer;
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCNPJ1.Consulta(
      EditCNPJ.Text,
      EditCaptcha.Text,
      ckRemoverEspacosDuplos.Checked
    ) then
    begin
//      EditTipo.Text        := ACBrConsultaCNPJ1.EmpresaTipo;
      Result.Razao := ACBrConsultaCNPJ1.RazaoSocial;
//      EditAbertura.Text    := DateToStr( ACBrConsultaCNPJ1.Abertura );
      Result.Fantasia    := ACBrConsultaCNPJ1.Fantasia;
      Result.Endereco    := ACBrConsultaCNPJ1.Endereco;
      Result.Numero      := ACBrConsultaCNPJ1.Numero;
      Result.Complemento := ACBrConsultaCNPJ1.Complemento;
      Result.Bairro      := ACBrConsultaCNPJ1.Bairro;
//      EditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      Result.Cidade      := ACBrConsultaCNPJ1.Cidade;
      Result.UF          := ACBrConsultaCNPJ1.UF;
      Result.CEP         := ACBrConsultaCNPJ1.CEP;
//      EditSituacao.Text    := ACBrConsultaCNPJ1.Situacao;
      Result.CNAE       := ACBrConsultaCNPJ1.CNAE1;

//      ListCNAE2.Clear;
//      for I := 0 to ACBrConsultaCNPJ1.CNAE2.Count - 1 do
//        ListCNAE2.Items.Add(ACBrConsultaCNPJ1.CNAE2[I]);
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
  end;
end;

procedure TFrm_ConsultaCNPJ.Timer1Timer(Sender: TObject);
begin
  inherited;
  Timer1.Enabled:= False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCNPJ.SetFocus;
end;

end.

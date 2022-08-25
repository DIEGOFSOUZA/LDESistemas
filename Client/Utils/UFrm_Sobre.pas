unit UFrm_Sobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Child, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrm_Sobre = class(TPdr_Child)
    pnlFundo: TPanel;
    pnlimage: TPanel;
    imgEmpresa: TImage;
    pnlVersao: TPanel;
    pnlOk: TPanel;
    pnlbtn: TPanel;
    btnOk: TSpeedButton;
    Label1: TLabel;
    lblVersaoSistema: TLabel;
    Label2: TLabel;
    lblVersaoBD: TLabel;
    lblTitulo: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function GetBuildInfo(Prog: string): string;

  public
    { Public declarations }
  end;

var
  Frm_Sobre: TFrm_Sobre;

implementation

uses
  UDM;

{$R *.dfm}

procedure TFrm_Sobre.btnOkClick(Sender: TObject);
begin
  inherited;
  Close();
end;


procedure TFrm_Sobre.FormShow(Sender: TObject);
begin
  inherited;
//  lblVersaoSistema.Caption := GetBuildInfo(ParamStr(0));
  with DM.SistemaVersao do
  begin
    lblVersaoSistema.Caption := SistemaRelease + '.' + SistemaBuild;
    lblVersaoBD.Caption := BDRelease + '.' + BDBuild;
  end;
end;

function TFrm_Sobre.GetBuildInfo(Prog: string): string;
var
 VerInfoSize: DWORD;
 VerInfo: Pointer;
 VerValueSize: DWORD;
 VerValue: PVSFixedFileInfo;
 Dummy: DWORD;
 V1, V2, V3, V4: Word;
begin
 try
   VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
   GetMem(VerInfo, VerInfoSize);
   GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
   VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
   with (VerValue^) do
   begin
     V1 := dwFileVersionMS shr 16;
     V2 := dwFileVersionMS and $FFFF;
     V3 := dwFileVersionLS shr 16;
     V4 := dwFileVersionLS and $FFFF;
   end;
   FreeMem(VerInfo, VerInfoSize);
   Result := Format('%d.%d.%d.%d', [v1, v2, v3, v4]);
 except
   Result := '1.0.0';
 end;
end;

end.

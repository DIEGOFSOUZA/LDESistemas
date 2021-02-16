unit UFrm_AtualizacaoSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.DateUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPdr_Segundo, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, Vcl.Samples.Gauges ;

type
  TFrm_AtualizacaoSistema = class(TPdr_Segundo)
    IdFTP1: TIdFTP;
    pnlFundo: TPanel;
    imgLogoMarca: TImage;
    pnlAtualiza: TPanel;
    Gauge1: TGauge;
    lblAtualiza: TLabel;
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdFTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure FormCreate(Sender: TObject);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
  private
    { Private declarations }
    TamanhoArquivo : Int64 ;
    fPort: integer;
    fPassword: string;
    fHost: string;
    fUsername: string;
    fPassive: boolean;
    function ConectarServidor() : boolean ;
    function VoltaDataHoraArquivoLocal(pNomeArquivo : string) : TDateTime ;
    //function VoltaDataHoraArquivoRemoto(pNomeArquivo : string) : TDateTime ;
    function ConverterDataHora(pDataHora : string) : TDateTime ;
    procedure GravarDataHoraArqLocal(pNomeArquivo : string; pDataHora : TDateTime) ;
  public
    { Public declarations }
    function Download(pNomeArquivo, pDestino : string) : boolean ;

    //....... configuração FTP .............
    property Host : string read fHost write fHost ;
    property Port : integer read fPort write fPort ;
    property Username : string read fUsername write fUsername ;
    property Password : string read fPassword write fPassword ;
    property Passive : boolean read fPassive write fPassive ;
  end;

var
  Frm_AtualizacaoSistema: TFrm_AtualizacaoSistema;

implementation

{$R *.dfm}

{ TFrm_AtualizacaoSistema }

function TFrm_AtualizacaoSistema.ConectarServidor: boolean;
begin
  Result := False ;
  IdFTP1.Disconnect();

  IdFTP1.Host     := fHost ;
  IdFTP1.Port     := fPort ;
  IdFTP1.Username := fUsername ;
  IdFTP1.Password := fPassword ;
  IdFTP1.Passive  := fPassive ; { usa modo ativo }

  try
    IdFTP1.ConnectTimeout := 5000 ;
    IdFTP1.Connect ;
    Result := IdFTP1.Connected ;
  except on E: Exception do
    begin
      //Exception.Create(E.Message);
    end;
  end;
end;

function TFrm_AtualizacaoSistema.ConverterDataHora(
  pDataHora: string): TDateTime;
var dt : string ;
begin
  // yyyymmddhhnnss
  //..... data .....
  dt := Copy(pDataHora,7,2) + '/' +
        Copy(pDataHora,5,2) + '/' +
        Copy(pDataHora,1,4) + ' ' ;

  //..... hora .....
  dt := dt + Copy(pDataHora,9,2) + ':' +
             Copy(pDataHora,11,2) + ':' +
             Copy(pDataHora,13,2) ;

  Result := StrToDateTime( dt ) ;
end;

function TFrm_AtualizacaoSistema.Download(pNomeArquivo, pDestino : string) : boolean ;
var
  ListaArquivo, Aux: TStringList;
  mDataHoraLocal, mDataHoraRemoto: string;
  mSetDataHoraRemoto: TDateTime;
begin
  Result := True ;

  if (pNomeArquivo = '') or (pDestino = '') then
    Exit ;

  if not ConectarServidor() then
    Exit ;

  Aux := TStringList.Create ;
  ListaArquivo := TStringList.Create ;
  ListaArquivo.Clear ;
  try
    IdFTP1.List(ListaArquivo,pNomeArquivo+'*',True) ;

    if ListaArquivo.Count > 0 then
    begin
      Aux.Delimiter := ';' ;
      Aux.DelimitedText := ListaArquivo.Strings[0] ;
      TamanhoArquivo := StrToInt64( Aux.Values['size'] ) ;
      Gauge1.MaxValue := TamanhoArquivo ;

      //mSetDataHoraRemoto := VoltaDataHoraArquivoRemoto(pNomeArquivo) ;
      mSetDataHoraRemoto := ConverterDataHora( Aux.Values['modify'] ) ;
      mDataHoraRemoto := FormatDateTime('dd/mm/yyyy hh:nn',mSetDataHoraRemoto ) ;

      //......checar data e hora do arquivo local......
      if FileExists(pDestino) then
      begin
        mDataHoraLocal  := FormatDateTime('dd/mm/yyyy hh:nn',VoltaDataHoraArquivoLocal(pDestino) ) ;
        if mDataHoraLocal = mDataHoraRemoto then
          Exit ;
      end;

      Width := 383;
      Position := poScreenCenter;
      pnlAtualiza.Visible := True;

      UpDate ;

      IdFTP1.Get(pNomeArquivo,pDestino,True,False);
      Result := False ;

      //.... sincronizar data e hora .....
      GravarDataHoraArqLocal(pDestino,mSetDataHoraRemoto) ;
    end;
  finally
    IdFTP1.Disconnect ;
    FreeAndNil(ListaArquivo);
    FreeAndNil(Aux);
  end;
end;

procedure TFrm_AtualizacaoSistema.FormCreate(Sender: TObject);
begin
  inherited;
  TamanhoArquivo := 0 ;

  //... configuração FTP ..........
  fPort     := 6061 ;
  fPassword := '' ;
  fHost     := '' ;
  fUsername := '' ;
  fPassive  := True ;
end;

procedure TFrm_AtualizacaoSistema.GravarDataHoraArqLocal(pNomeArquivo: string;
  pDataHora: TDateTime);
var
F: integer;
begin
  F := FileOpen(pNomeArquivo, fmOpenWrite or fmShareDenyNone);
  try
    if F > 0 then
       FileSetDate(F, DateTimeToFileDate(pDataHora)) ;
  finally
    FileClose(F);
  end;
end;

procedure TFrm_AtualizacaoSistema.IdFTP1Work(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  inherited;
  Gauge1.Progress := AWorkCount ;
  //Application.ProcessMessages ;
end;

procedure TFrm_AtualizacaoSistema.IdFTP1WorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  inherited;
  Gauge1.Progress := 0 ;
  pnlAtualiza.Visible := True ;
end;

procedure TFrm_AtualizacaoSistema.IdFTP1WorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  inherited;
  Gauge1.Progress := Gauge1.MaxValue ;
  pnlAtualiza.Visible := False ;
end;

function TFrm_AtualizacaoSistema.VoltaDataHoraArquivoLocal(
  pNomeArquivo: string): TDateTime;
begin
  Result := FileDateToDateTime( System.SysUtils.FileAge(pNomeArquivo) ) ;
end;

{
function TFrm_AtualizacaoSistema.VoltaDataHoraArquivoRemoto(
  pNomeArquivo: string): TDateTime;
begin
  Result := IdFTP1.FileDate(pNomeArquivo,False) ;
end;
}

end.

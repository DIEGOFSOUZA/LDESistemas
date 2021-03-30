unit uPrincipal;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
     IPPeerServer,
     System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
     Vcl.StdCtrls, Vcl.ExtCtrls, UServidorStartStop, Vcl.Buttons, Vcl.AppEvnts;

type
  TFrm_Principal = class(TForm)
    pnlPortas: TPanel;
    pnlRodape: TPanel;
    btnStart: TButton;
    btnStop: TButton;
    Label1: TLabel;
    edtTCPIP: TEdit;
    Label2: TLabel;
    edtHTTP: TEdit;
    lblTitulo: TLabel;
    Label3: TLabel;
    pnlIPs: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    btnAtualizar: TBitBtn;
    MostraIP: TMemo;
    pnlFundo: TPanel;
    TrayIcon1: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
   Servidor : TServidorStartStop ;
   procedure LerPortas() ;
   procedure GravarPortas() ;

   function GetHandleOnTaskBar: THandle;
   procedure Minimizar() ;
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses uSM, UServerDM;

procedure TFrm_Principal.ApplicationEvents1Minimize(Sender: TObject);
begin
  Hide();
  WindowState := wsMinimized;
  TrayIcon1.Visible := True;
  TrayIcon1.Animate := True;
  TrayIcon1.ShowBalloonHint;
end;

procedure TFrm_Principal.btnAtualizarClick(Sender: TObject);
begin
  MostraIP.Lines.Clear ;
  MostraIP.Lines.AddStrings( Servidor.getConexaoAtivas );
  Label4.Caption := FormatFloat('#,##0.',MostraIP.Lines.Count ) ;
end;

procedure TFrm_Principal.btnStartClick(Sender: TObject);
begin
  //SC.DSServer1.Start ;
  GravarPortas() ;
  Servidor.Start ;
  btnStart.Enabled     := False ;
  btnStop.Enabled      := True ;
  btnAtualizar.Enabled := True ;
  edtTCPIP.Enabled     := False ;
  edtHTTP.Enabled      := False ;
  btnAtualizar.Click ;
//  Minimizar() ;
end;

procedure TFrm_Principal.btnStopClick(Sender: TObject);
begin
  Servidor.Stop ;
  btnStart.Enabled     := True ;
  btnStop.Enabled      := False ;
  btnAtualizar.Enabled := False ;
  edtTCPIP.Enabled     := True ;
  edtHTTP.Enabled      := True ;

  MostraIP.Lines.Clear ;
  Label4.Caption := FormatFloat('#,##0.',MostraIP.Lines.Count ) ;;
end;

procedure TFrm_Principal.FormActivate(Sender: TObject);
begin
  btnStart.Click;
end;

procedure TFrm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  if Application.MessageBox('Você deseja encerrar a aplicação?', 'Atenção.', MB_ICONQUESTION + MB_YESNO) = mrYes then
//  begin
//    if btnStart.Enabled then
//      Servidor.Stop;
//    Application.Terminate;
//  end;
end;

procedure TFrm_Principal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := btnStart.Enabled;
  if CanClose then
    CanClose := Application.MessageBox('Você deseja encerrar a aplicação?', 'Atenção.', MB_ICONQUESTION + MB_YESNO) = mrYes
  else
    Application.MessageBox('Necessário parar a aplicação', 'Atenção.', MB_ICONEXCLAMATION+MB_OK);
end;

procedure TFrm_Principal.FormCreate(Sender: TObject);
begin
  Servidor := TServidorStartStop.Create ;
  LerPortas() ;
end;

function TFrm_Principal.GetHandleOnTaskBar: THandle;
begin
  {$IFDEF COMPILER11_UP}
  if Application.MainFormOnTaskBar and Assigned(Application.MainForm) then
    Result := Application.MainForm.Handle
  else    {$ENDIF COMPILER11_UP}
    Result := Application.Handle;
end;

procedure TFrm_Principal.GravarPortas;
var
  Aux: TStringList;
begin
  Aux := TStringList.Create;
  try
    Aux.Values['TcpIp'] := edtTCPIP.Text;
    Aux.Values['Http'] := edtHTTP.Text;
    Aux.SaveToFile(ArquivoPorta);
  finally
    FreeAndNil(Aux);
  end;
end;

procedure TFrm_Principal.LerPortas;
var
  Aux: TStringList;
begin
  Aux := TStringList.Create;
  try
    Aux.LoadFromFile(ArquivoPorta);
    edtTCPIP.Text := Aux.Values['TcpIp'];
    edtHTTP.Text := Aux.Values['Http'];

    if edtTCPIP.Text = '' then
      edtTCPIP.Text := '311';

    if edtHTTP.Text = '' then
      edtHTTP.Text := '3969';
  finally
    FreeAndNil(Aux);
  end;
end;

procedure TFrm_Principal.Minimizar;
begin
  TrayIcon1.Visible := True;
  Application.ShowMainForm := False;
  Application.Minimize;
  ShowWindow(GetHandleOnTaskBar, SW_HIDE);
end;

procedure TFrm_Principal.TrayIcon1DblClick(Sender: TObject);
begin
  TrayIcon1.Visible := False;
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;

//initialization
//  ReportMemoryLeaksOnShutdown := True;

end.


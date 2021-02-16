unit UServidorStartStop;

interface

uses
  System.Classes, System.SysUtils, USC, Datasnap.DSCommonServer,
  Datasnap.DSTCPServerTransport, IdTCPConnection, System.Generics.Collections;

const
  ArquivoPorta = 'PORTAS.CONF';

type
  TPortas = record
    TcpIp: string;
    Http: string;
  end;

  TConexoesTCP = record
    Channel: TDSTCPChannel;
    Data: TDate;
    Hora: string;
  end;

type
  TServidorStartStop = class
  private
    FConnections: TObjectDictionary<TIdTCPConnection, TConexoesTCP>;
    ServerContainer1: TSC;
    Portas: TPortas;
    procedure LerPortas;
    procedure CMServerTransportConnectEvent(Event: TDSTCPConnectEventObject);
    procedure CMServerTransportDisconnectEvent(Event: TDSTCPDisconnectEventObject);
  public
    constructor Create;
    procedure Start;
    procedure Stop;
    function getConexaoAtivas: TStrings;
  end;

implementation

{ TServidorStartStop }

procedure TServidorStartStop.CMServerTransportConnectEvent(Event: TDSTCPConnectEventObject);
var
  tmp: TConexoesTCP;
begin
  if FConnections = nil then
    Exit;

  //This is called when a TCP conneciton is established. The connection and its corresponding
  //channel are added to the FConnections dictionary (the connection as the key) and then the
  //Connection list box is updated.
  System.TMonitor.Enter(FConnections);
  try
    tmp.Data := Date;
    tmp.Hora := FormatDateTime('hh:nn:ss', Now);
    tmp.Channel := Event.Channel;
    FConnections.Add(TIdTCPConnection(Event.Connection), tmp);
  finally
    System.TMonitor.Exit(FConnections);
  end;

  //Update the connection list to include the new connection and its channel.
  //AddConnectionToList(TIdTCPConnection(Event.Connection), Event.Channel);
  //If keep-alive is in use, then enable Keep-alive for this new connection.
  //if useKeepAliveCheck.Checked and (KAIdleMS.Text <> EmptyStr)then
  Event.Channel.EnableKeepAlive(10000); // em mile segundos

end;

procedure TServidorStartStop.CMServerTransportDisconnectEvent(Event: TDSTCPDisconnectEventObject);
var
  Index: Integer;
begin
  if (FConnections = nil) or (Event.Connection = nil) then
    Exit;

  //This is called when a TCP connection is closed, for whatever reason.
  System.TMonitor.Enter(FConnections);
  try
    FConnections.Remove(TIdTCPConnection(Event.Connection));

    {
    TThread.Synchronize(nil, procedure
      begin
        //update the connection list box, removing the connection that was just closed
        Index := ConnectionsList.Items.IndexOfObject(Event.Connection);
        if Index > -1 then
        begin
          ConnectionsList.Items.Delete(Index);

          if ConnectionsList.SelCount = 0 then
            SessionIdList.ClearSelection;
        end;
      end);
     }
  finally
    System.TMonitor.Exit(FConnections);
  end;
end;

constructor TServidorStartStop.Create;
begin
  inherited Create;

  FConnections := nil;
  ServerContainer1 := nil;

  Portas.TcpIp := '211';
  Portas.Http := '8080';
end;

function TServidorStartStop.getConexaoAtivas: TStrings;
var
  mChannel: TConexoesTCP;
begin
  Result := TStringList.Create;
  System.TMonitor.Enter(FConnections);
  try
    for mChannel in FConnections.Values do
      Result.Add(mChannel.Channel.ChannelInfo.ClientInfo.IpAddress + ':' +
        mChannel.Channel.ChannelInfo.ClientInfo.ClientPort + '  (' + FormatDateTime('dd/mm/yy', mChannel.Data) + ' ' +
         mChannel.Hora + ')');
  finally
    System.TMonitor.Exit(FConnections);
  end;
end;

procedure TServidorStartStop.LerPortas;
var
  Aux: TStringList;
  Arq: string;
begin
  Arq := ExtractFilePath(ParamStr(0)) + ArquivoPorta;
  if FileExists(Arq) then
  begin
    Aux := TStringList.Create;
    try
      Aux.LoadFromFile(Arq);
      Portas.TcpIp := Trim(Aux.Values['TcpIp']);
      Portas.Http := Trim(Aux.Values['Http']);
    finally
      FreeAndNil(Aux);
    end;
  end
  else
  begin
    Portas.TcpIp := '211';
    Portas.Http := '8080';
  end;
end;

procedure TServidorStartStop.Start;
begin
  LerPortas();
  ServerContainer1 := TSC.Create(nil);
  ServerContainer1.DSTCPServerTransport1.Port := StrToIntDef(Portas.TcpIp, 211);
  ServerContainer1.DSHTTPService1.SetHttpPort(StrToIntDef(Portas.Http, 3969));
  ServerContainer1.DSServer1.Start;
  ServerContainer1.DSHTTPService1.Start;

  FConnections := TObjectDictionary<TIdTCPConnection, TConexoesTCP>.Create;
  ServerContainer1.DSTCPServerTransport1.OnConnect := CMServerTransportConnectEvent;
  ServerContainer1.DSTCPServerTransport1.OnDisconnect := CMServerTransportDisconnectEvent;

end;

procedure TServidorStartStop.Stop;
begin
  ServerContainer1.DSHTTPService1.CloseConnections;
  ServerContainer1.DSHTTPService1.Stop;
  ServerContainer1.DSServer1.Stop;

  ServerContainer1.DSTCPServerTransport1.OnConnect := nil;
  ServerContainer1.DSTCPServerTransport1.OnDisconnect := nil;

  FreeAndNil(ServerContainer1);
  FreeAndNil(FConnections);
end;

end.


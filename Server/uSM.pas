unit uSM;

interface

uses System.SysUtils, System.Classes, System.Json,
     Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
     FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
     FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
     FireDAC.Phys, FireDAC.Phys.FB, Data.DB, FireDAC.Comp.Client,
     FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
     Datasnap.Provider, FireDAC.Comp.DataSet, Datasnap.DBClient,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  TSM = class(TDSServerModule)
    Conexao: TFDConnection;
    DSPLer1: TDataSetProvider;
    SQL1: TFDQuery;
    TranLeitura: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDTransaction1: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
    function LerDataSet(const BD, Txt : string ) : OleVariant ;
    function Executar(const BD, Txt : string ) : integer ;
    function TestaCominicacao : string ;
  end;

implementation


{$R *.dfm}

uses System.StrUtils, UDM;

function TSM.Executar(const BD, Txt: string): integer;
var DM : TDM ;
begin
  DM := TDM.Create(BD);
  try
    Result := DM.Executar( Txt ) ;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSM.LerDataSet(const BD, Txt: string): OleVariant;
var
  DM: TDM;
begin
  DM := TDM.Create(BD);
  try
    try
      Result := DM.LerDataSet(Txt);
    except
      on E: Exception do
        raise Exception.Create('Servidor Aplicativo: ' + #10 + #13 + E.Message);
    end;
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

function TSM.TestaCominicacao: string;
begin
  Result := 'ok' ;
end;

end.


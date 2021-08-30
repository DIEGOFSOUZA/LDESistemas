unit uDM_SaveInCloud;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.DBClient, Datasnap.Provider,
  FireDAC.Comp.DataSet;

type
  TDM_SaveInCloud = class(TDataModule)
    conSaveInCloud: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    TranLeitura: TFDTransaction;
    SQLLer: TFDQuery;
    DSPLer: TDataSetProvider;
    Ler: TClientDataSet;
    TranGravar: TFDTransaction;
    SQLGravar: TFDQuery;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(); reintroduce ;
    procedure FecharConexao() ;
    function GetSQL(aSQL: string): OleVariant;
  end;

var
  DM_SaveInCloud: TDM_SaveInCloud;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM_SaveInCloud }

constructor TDM_SaveInCloud.Create;
begin
  inherited Create(nil);
//  conSaveInCloud.Params.Values['Server'] := 'env-8388274.jelastic.saveincloud.net';
//  conSaveInCloud.Params.Values['Database'] := Banco;
//  conSaveInCloud.Params.Values['Protocol'] := Protocolo;
//  conSaveInCloud.Params.Values['Port'] := '12503';
//  conSaveInCloud.Params.Values['User_Name'] := 'SYSDBA';
//  conSaveInCloud.Params.Values['Password'] := '12c5NpzjWqhKtzEVTOV2';
  try
    conSaveInCloud.Connected := True;
  except
    on E: Exception do
      raise Exception.Create(e.Message);
  end;
end;

procedure TDM_SaveInCloud.DataModuleDestroy(Sender: TObject);
begin
  conSaveInCloud.Close;
end;

procedure TDM_SaveInCloud.FecharConexao;
begin
  conSaveInCloud.Close;
end;

function TDM_SaveInCloud.GetSQL(aSQL: string): OleVariant;
begin
  Ler.Close;
  try
    if not TranLeitura.Active then
      TranLeitura.StartTransaction;
    SQLLer.SQL.Clear;
    SQLLer.SQL.Text := aSQL;
    //SQLLer.SQL.SaveToFile('c:\apagar\t.txt');
    Ler.Open;
    Result := Ler.Data;
    Ler.Close;
    TranLeitura.Commit;
  except
    on e: Exception do
    begin
      if TranLeitura.Active then
        TranLeitura.Commit;
      raise Exception.Create(e.Message);
    end;
  end;
end;

end.

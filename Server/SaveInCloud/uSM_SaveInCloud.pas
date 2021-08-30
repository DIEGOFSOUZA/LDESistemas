unit uSM_SaveInCloud;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSProviderDataModuleAdapter,
  Datasnap.DBClient;

type
  TSM_SaveInCloud = class(TDSServerModule)
  private
    { Private declarations }
  public
    function ClienteLiberado(aCpfCnpj: string): Boolean;
  end;

var
  SM_SaveInCloud: TSM_SaveInCloud;

implementation

uses
  uDM_SaveInCloud;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TSM_SaveInCloud }

function TSM_SaveInCloud.ClienteLiberado(aCpfCnpj: string): Boolean;
const
  SQL = 'select c.liberado from cliente c ' + 'where c.cpf_cnpj = %s';
var
  DM: TDM_SaveInCloud;
  lData: TClientDataSet;
begin
  Result := False;
  DM := TDM_SaveInCloud.Create();
  lData := TClientDataSet.Create(nil);
  try
    try
      lData.Data := DM.GetSQL(Format(SQL, [QuotedStr(aCpfCnpj)]));
      if (lData.FieldByName('liberado').AsInteger = 1) then
        Result := True;
    except
      Result := False;
    end;
  finally
    FreeAndNil(lData);
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

end.


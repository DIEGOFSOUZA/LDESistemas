unit uSM;

interface

uses
  System.SysUtils, System.Classes, System.Json, Datasnap.DSServer,
  Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider,
  FireDAC.Comp.DataSet, Datasnap.DBClient, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  FireDAC.Phys.IBWrapper, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script, UServerDM, uDM_SaveInCloud;
type
  TSM = class(TDSServerModule)
    Conexao: TFDConnection;
    DSPLer1: TDataSetProvider;
    SQL1: TFDQuery;
    TranLeitura: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDTransaction1: TFDTransaction;
    FDScript1: TFDScript;
    cdsAuxiliar: TClientDataSet;
  private
    function ExisteAtualizacao(aCpfCnpj: string): Boolean;
    function CriarBKP(): Boolean;
    function SetBancoManutencao(aValue: Integer): Boolean;
    function AtualizaBanco(aIdScript: Integer): Boolean;
  public
    Dados: TServerDM;
    DadosCloud: TDM_SaveInCloud;

    var
      VLocalBD, VCloudBD: Integer;

    function LerDataSet(const BD, Txt : string ) : OleVariant ;
    function Executar(const BD, Txt : string ) : integer ;
    function TestaCominicacao : string ;
    function UpdateBaseDados(const aBanco: string; aCPFCNPJ:string): Integer;
  end;

implementation


{$R *.dfm}

uses
  System.StrUtils;

function TSM.Executar(const BD, Txt: string): integer;
var DM : TServerDM ;
begin
  DM := TServerDM.Create(BD);
  try
    Result := DM.Executar( Txt ) ;
  finally
    DM.FecharConexao() ;
    FreeAndNil(DM);
  end;
end;

function TSM.LerDataSet(const BD, Txt: string): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
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

function TSM.SetBancoManutencao(aValue: Integer): Boolean;
const
  SQL = 'update control c set c.em_manutencao = %s';
begin
  try
    Dados.Executar(Format(SQL, [aValue.ToString]));
    Result := True;
  except
    Result := False;
  end;
end;

function TSM.ExisteAtualizacao(aCpfCnpj: string): Boolean;
const
  SQL_VLocal = 'select coalesce(c.db_versao,0) id from control c';
  SQL_VCloud = 'select coalesce(c.id_script_maximo,0) id from cliente c '+
               'where c.cpf_cnpj = %s;';
begin
  Result := False;

  try
    cdsAuxiliar.Close;
    cdsAuxiliar.Data := DadosCloud.GetSQL(Format(SQL_VCloud, [QuotedStr(aCpfCnpj)]));
    if not cdsAuxiliar.IsEmpty then
      VCloudBD := cdsAuxiliar.FieldByName('id').AsInteger
    else
      Exit;

    cdsAuxiliar.Close;
    cdsAuxiliar.Data := Dados.LerDataSet(SQL_VLocal);
    if not cdsAuxiliar.IsEmpty then
      VLocalBD := cdsAuxiliar.FieldByName('id').AsInteger
    else
      Exit;

    if (VLocalBD < VCloudBD) then
      Result := True;
  except

  end;
end;

function TSM.AtualizaBanco(aIdScript: Integer): Boolean;
const
  SQL = 'select p.script_ddl ddl, p.script_dml dml '+
        'from pro_get_script(%s)p';
begin
  cdsAuxiliar.Close;
  cdsAuxiliar.Data := Dados.LerDataSet(Format(SQL, [aIdScript.ToString]));

  if not cdsAuxiliar.IsEmpty then
  begin
    FDScript1.Connection := Dados.Conexao;
    try
      with FDScript1.SQLScripts do
      begin
        Clear;
        with Add do
        begin
          Name := 'root';
          SQL.Add('@ddl');  // explicitly call 'first' script
          SQL.Add('@dml'); // explicitly call 'second' script
        end;
        with Add do
        begin
          Name := 'ddl';
          if not cdsAuxiliar.FieldByName('ddl').IsNull then
            SQL.Add(cdsAuxiliar.FieldByName('ddl').AsString);
        end;
        with Add do
        begin
          Name := 'dml';
          if not cdsAuxiliar.FieldByName('dml').IsNull then
            SQL.Add(cdsAuxiliar.FieldByName('dml').AsString);
        end;
      end;
      FDScript1.ValidateAll;
      FDScript1.ExecuteAll;
//      with FDScript1 do
//      begin
//        SQLScripts.Clear;
//        SQLScripts.Add;
//
//        if not cdsAuxiliar.FieldByName('ddl').IsNull then
//        begin
//          with SQLScripts[0].SQL do
//          begin
//            Add(cdsAuxiliar.FieldByName('ddl').AsString);
//          end;
//          ValidateAll;
//          ExecuteAll;
//        end;
//
//        SQLScripts.Clear;
//        SQLScripts.Add;
//        if not cdsAuxiliar.FieldByName('dml').IsNull then
//        begin
//           with SQLScripts[1].SQL do
//          begin
//            Add(cdsAuxiliar.FieldByName('dml').AsString);
//          end;
//          ValidateAll;
//          ExecuteAll;
//        end;
//      end;
    except
      Result := False;
    end;
  end;
end;

function TSM.CriarBKP: Boolean;
var
  lFDBkp: TFDFBNBackup;
  lFDDriver : TFDPhysFBDriverLink;
begin
  lFDDriver := TFDPhysFBDriverLink.Create(nil);
  lFDBkp := TFDFBNBackup.Create(nil);
  try
    with lFDBkp do
    begin
      DriverLink := lFDDriver;
      UserName := 'SYSDBA';
      Password := 'masterkey';
      Host := '127.0.0.1';
      Protocol := ipTCPIP;
      Database := 'takano';
      BackupFile := 'C:\Executaveis\LDE\Client\Win32\Debug\bkp\banco\takano.fbk';
      Level := 0;
      Backup;
    end;
  finally
    FreeAndNil(lFDBkp);
    FreeAndNil(lFDDriver);
  end;
end;

function TSM.UpdateBaseDados(const aBanco: string; aCPFCNPJ: string): Integer;
var
  i: Integer;
begin
  // 0 - Atualizacao nao efetuada
  // 1 - Banco já esta atualizado
  // 2 - Atualizaçao executada com sucesso.
  Result := 0;
  Dados := TServerDM.Create(aBanco);
  DadosCloud := TDM_SaveInCloud.Create;
  try
    if (not ExisteAtualizacao(aCPFCNPJ)) then
    begin
      Result := 1;
      Exit;
    end;

    try
      CriarBKP ;
      SetBancoManutencao(1);
      for I := VLocalBD+1 to VCloudBD do
      begin
        AtualizaBanco(i);
      end;
      Result := 2;
    except

    end;
  finally
    Dados.FecharConexao;
    DadosCloud.FecharConexao;
    FreeAndNil(DadosCloud);
    FreeAndNil(Dados);
  end;
end;

end.


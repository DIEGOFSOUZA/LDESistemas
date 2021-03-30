unit uServerDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  MidasLib, FireDAC.Phys.FBDef, System.Variants ;

type
  TCampoValor = record
    Campo : string ;
    Valor : string ;
  end ;

type
  TServerDM = class(TDataModule)
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    Conexao: TFDConnection;
    TranLeitura: TFDTransaction;
    TranGravacao: TFDTransaction;
    SQLLer: TFDQuery;
    Gravar: TFDQuery;
    DSPLer: TDataSetProvider;
    Ler: TClientDataSet;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    fBancoDados: string;
    procedure MontaInsert(Tabela, pCampos : string) ;
    procedure MontaUpDate(Tabela, pCampos : string; pChavePrimaria : TStrings) ;
    procedure MontaDelete(Tabela : string; pChavePrimaria : TStrings) ;
    function CampoModificado(pCampo : TField) : boolean ;
  public
    { Public declarations }
    constructor Create(pBancoDados: string); reintroduce ;
    function LerDataSet(pSQL : string) : OleVariant ;
    function LerDataSetInteger(pSQL, pCampoRetorno : string) : integer ;
    function LerDataSetFloat(pSQL, pCampoRetorno : string) : Double ;
    function LerDataSetString(pSQL, pCampoRetorno : string) : string ;
    function ExecuteDirect(pSQL : string) : integer ;
    function Executar(pSQL : string) : integer ;

    function TesteDataBase: Boolean;

    procedure StartTransaction ;
    procedure Commit ;
    procedure Rollback ;

    procedure GravarTabelaSimples(pAutoTransacao : boolean;
                                  Tabela, pCampos : string;
                                  pDados: OleVariant;
                                  pValorChave, pPreencherCampo : Array of TCampoValor;
                                  pUsarChavePKinterna : boolean) ;

    procedure FecharConexao() ;

  end;

var
  ServerDM: TServerDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

function TServerDM.CampoModificado(pCampo: TField): boolean;
begin
  if pCampo.NewValue = Null then
    Result := pCampo.OldValue <> Null
  else
    begin
      Result := pCampo.OldValue = Null;
      if not Result then
        Result := pCampo.OldValue <> pCampo.NewValue;
    end;

  Result := not Result ;
  {
  if not b then
    txt := 'Campo alterado'
  else
    txt := 'Campo não alterado' ;
    }
end;

procedure TServerDM.Commit;
begin
  if TranGravacao.Active then
    TranGravacao.Commit ;
end;

constructor TServerDM.Create(pBancoDados: string);
var
  Servidor, Banco, Protocolo, Porta: string;
  mPos: integer;
begin
  inherited Create(nil);
  fBancoDados := pBancoDados;
  Protocolo := 'TCPIP';
  Porta := '3060'; //FB 2.5 = 3050  FB 3 = 3060
  mPos := Pos(':', pBancoDados);
  if mPos > 0 then
  begin
    Servidor := Copy(pBancoDados, 1, mPos - 1);
    Banco := Copy(pBancoDados, mPos + 1, Length(pBancoDados));
  end
  else
  begin
    Servidor := '127.0.0.1';
    Banco := pBancoDados;
  end;

  Conexao.Params.Values['Database'] := Banco;
  Conexao.Params.Values['Server'] := Servidor;
  Conexao.Params.Values['Protocol'] := Protocolo;
  Conexao.Params.Values['Port'] := Porta;
  try
    Conexao.Connected := True;
  except
    on E: Exception do
      raise Exception.Create(e.Message);
  end;
end;

procedure TServerDM.DataModuleDestroy(Sender: TObject);
begin
     Conexao.Close ;
end;

function TServerDM.Executar(pSQL: string): integer;
begin
  try
    if not TranGravacao.Active then
      TranGravacao.StartTransaction ;
    Gravar.SQL.Clear ;
    Gravar.SQL.Text := pSQL ;
    //SQLLer.SQL.SaveToFile('c:\apagar\t.txt');
    Gravar.ExecSQL ;
    Result := Gravar.RowsAffected ;
    TranGravacao.Commit ;
  except on e : Exception do
    begin
      if TranGravacao.Active then
         TranGravacao.Rollback ;
      raise Exception.Create(e.Message);
    end;
  end;
end;

function TServerDM.ExecuteDirect(pSQL: string): integer;
begin

  Result := Conexao.ExecSQL(pSQL) ;
end;

procedure TServerDM.FecharConexao;
begin
  Conexao.Close ;
end;

function TServerDM.LerDataSet(pSQL: string): OleVariant;
begin
  Ler.Close ;
  try
    if not TranLeitura.Active then
      TranLeitura.StartTransaction ;
    SQLLer.SQL.Clear ;
    SQLLer.SQL.Text := pSQL ;
    //SQLLer.SQL.SaveToFile('c:\apagar\t.txt');
    Ler.Open ;
    Result := Ler.Data ;
    Ler.Close ;
    TranLeitura.Commit ;
  except on e : Exception do
    begin
      if TranLeitura.Active then
        TranLeitura.Commit ;
      raise Exception.Create(e.Message);
    end;
  end;
end;

function TServerDM.LerDataSetFloat(pSQL, pCampoRetorno: string): Double;
begin
  Ler.Close ;
  try
    if not TranLeitura.Active then
      TranLeitura.StartTransaction ;
    SQLLer.SQL.Clear ;
    SQLLer.SQL.Text := pSQL ;
    Ler.Open ;
    Result := Ler.FieldByName(pCampoRetorno).AsFloat ;
    Ler.Close ;
    TranLeitura.Commit ;
  except on e : Exception do
    begin
      if TranLeitura.Active then
        TranLeitura.Commit ;
      raise Exception.Create(e.Message);
    end;
  end;
end;

function TServerDM.LerDataSetInteger(pSQL, pCampoRetorno: string): integer;
begin
  Ler.Close ;
  try
    if not TranLeitura.Active then
      TranLeitura.StartTransaction ;
    SQLLer.SQL.Clear ;
    SQLLer.SQL.Text := pSQL ;
    Ler.Open ;
    Result := Ler.FieldByName(pCampoRetorno).AsInteger ;
    Ler.Close ;
    TranLeitura.Commit ;
  except on e : Exception do
    begin
      if TranLeitura.Active then
        TranLeitura.Commit ;
      raise Exception.Create(e.Message);
    end;
  end;
end;

function TServerDM.LerDataSetString(pSQL, pCampoRetorno: string): string;
begin
  Ler.Close ;
  try
    if not TranLeitura.Active then
      TranLeitura.StartTransaction ;
    SQLLer.SQL.Clear ;
    SQLLer.SQL.Text := pSQL ;
    Ler.Open ;
    Result := Ler.FieldByName(pCampoRetorno).AsString ;
    Ler.Close ;
    TranLeitura.Commit ;
  except on e : Exception do
    begin
      if TranLeitura.Active then
        TranLeitura.Commit ;
      raise Exception.Create(e.Message);
    end;
  end;
end;

procedure TServerDM.GravarTabelaSimples(pAutoTransacao : boolean; Tabela, pCampos : string;
  pDados: OleVariant; pValorChave, pPreencherCampo : Array of TCampoValor;
  pUsarChavePKinterna : boolean) ;
var Aux : TClientDataSet ;
    Campos, ChavePrimaria : TStringList ;
    ContaChave : integer ;

  procedure PreencheCampo(VerificaAlteracao : boolean; pPreencherCampo : Array of TCampoValor ) ;
  var x : integer ;
      cp : string ;
  begin
    for x := 0 to Campos.Count -1 do
    begin
      cp := Campos.Strings[x] ;

      if Aux.Fields.FindField(cp) = nil then
        Continue ;

      if not VerificaAlteracao then
        begin
          Gravar.ParamByName(cp).DataType := Aux.FieldByName(cp).DataType ;
          Gravar.ParamByName(cp).Value := Aux.FieldByName(cp).Value ;
        end
      else
        begin
          if Aux.FieldByName(cp).IsBlob then
            begin
              if not Aux.FieldByName(cp).IsNull then
              begin
                Gravar.ParamByName(cp).DataType := Aux.FieldByName(cp).DataType ;
                Gravar.ParamByName(cp).Value := Aux.FieldByName(cp).Value ;
              end;
            end
          else
            begin
              if CampoModificado(Aux.FieldByName(cp)) then
              begin
                Gravar.ParamByName(cp).DataType := Aux.FieldByName(cp).DataType ;
                Gravar.ParamByName(cp).Value := Aux.FieldByName(cp).Value ;
              end;
            end;
        end;
    end;
    for x := 0 to Length(pPreencherCampo)-1 do
      Gravar.ParamByName(pPreencherCampo[x].Campo).AsString := pPreencherCampo[x].Valor ;
  end;

  procedure PreencheChavePrimaria() ;
  var x : integer ;
  begin
    for x := 0 to ChavePrimaria.Count -1 do
    begin
      Gravar.ParamByName('pk_' +ChavePrimaria.Strings[x]).Value :=
                    Aux.FieldByName(ChavePrimaria.Strings[x]).Value ;
    end;
  end;

begin
  Campos        := TStringList.Create ;
  ChavePrimaria := TStringList.Create ;
  Aux           := TClientDataSet.Create(nil);
  try
    Aux.Data := pDados ;

    Campos.Delimiter := ',' ;
    Campos.DelimitedText := pCampos ;

    for ContaChave := 0 to Length(pValorChave)-1 do
       ChavePrimaria.Add( pValorChave[ContaChave].Campo ) ;

    try
      if pAutoTransacao then
        if not TranGravacao.Active then
          StartTransaction ;

      while not Aux.Eof do
      begin

        case Aux.UpdateStatus of
          usUnmodified:
                       begin
                          MontaUpDate(Tabela,pCampos,ChavePrimaria);
                          PreencheCampo(False,[]) ;
                          PreencheChavePrimaria() ;
                          Aux.Next ;
                          Continue ;
                       end ;
            usModified:
                       begin
                          PreencheCampo(True,pPreencherCampo) ;
                       end ;

            usInserted:
                       begin
                          MontaInsert(Tabela,pCampos);
                          PreencheCampo(False,pPreencherCampo) ;
                          if pUsarChavePKinterna then
                          begin
                            for ContaChave := 0 to Length(pValorChave)-1 do
                              Gravar.ParamByName(pValorChave[ContaChave].Campo).AsString :=
                                  pValorChave[ContaChave].Valor ;
                          end ;
                       end ;

             usDeleted:
                      begin // proteção contra exclusão da tabela inteira
                        if ChavePrimaria.Count = 0 then
                          raise Exception.Create('Erro na exclusão... não foi achado o registro a excluir ('+Tabela+')');
                        MontaDelete(Tabela,ChavePrimaria);
                        PreencheChavePrimaria() ;
                      end ;
        end ;
        Gravar.ExecSQL ;
        Aux.Next ;
      end;
      if pAutoTransacao then
        Commit ;

    except on E: Exception do
      begin
        if pAutoTransacao then
          Rollback ;
        raise Exception.Create(e.Message);
      end;
    end;

  finally
    FreeAndNil(Aux);
    FreeAndNil(Campos);
    FreeAndNil(ChavePrimaria);
  end;
end;

procedure TServerDM.MontaInsert(Tabela, pCampos: string);
begin
  Gravar.SQL.Clear ;
  Gravar.SQL.Add('insert into ' + Tabela) ;
  Gravar.SQL.Add('(' + pCampos + ')' ) ;
  Gravar.SQL.Add('values (:' +
       StringReplace(pCampos,',',',:',[rfReplaceAll]) + ')' ) ;
end;

procedure TServerDM.MontaUpDate(Tabela, pCampos : string; pChavePrimaria : TStrings);
var mSet, tmp : string ;
    x : integer ;
begin
  tmp := '' ;
  mSet := 'set ' ;
  Gravar.SQL.Clear;
  Gravar.SQL.Add('update ' + Tabela) ;

  //............. campos .......................
  for x := 1 to Length(pCampos) do
  begin
    if pCampos[x] = ',' then
      begin
        Gravar.SQL.Add(mSet + tmp + ' = :' + tmp) ;
        mSet := ', ' ;
        tmp := '' ;
      end
    else
      tmp := tmp + pCampos[x] ;
  end;
  if tmp <> '' then
    Gravar.SQL.Add(mSet + tmp + ' = :' + tmp) ;

  //............. chaves .......................
  mSet := 'where ' ;
  for x := 0 to pChavePrimaria.Count -1 do
  begin
    Gravar.SQL.Add(mSet + pChavePrimaria.Strings[x] + ' = :pk_' + pChavePrimaria.Strings[x] ) ;
    mSet := 'and ' ;
  end;
end;

procedure TServerDM.Rollback;
begin
  if TranGravacao.Active then
    TranGravacao.Rollback ;
end;

procedure TServerDM.StartTransaction;
begin
  if not TranGravacao.Active then
    TranGravacao.StartTransaction ;
end;

function TServerDM.TesteDataBase: Boolean;
begin
  Result := True;
  Conexao.Connected := False;
  try
    Conexao.Connected := True;
    Conexao.Connected := False;
  except
    on E: Exception do
    begin
      Result := False;
      raise Exception.Create(E.Message);
    end;
  end;
end;

procedure TServerDM.MontaDelete(Tabela : string; pChavePrimaria: TStrings);
var mWhere, tmp : string ;
    x : integer ;
begin
  tmp := '' ;
  mWhere := 'where ' ;
  Gravar.SQL.Clear;
  Gravar.SQL.Add('delete from ' + Tabela) ;

  //............. chaves .......................
  mWhere := 'where ' ;
  for x := 0 to pChavePrimaria.Count -1 do
  begin
    Gravar.SQL.Add(mWhere + pChavePrimaria.Strings[x] + ' = :pk_' + pChavePrimaria.Strings[x]) ;
    mWhere := 'and ' ;
  end;
end;

end.

unit uFields;

interface

const
    SQL_Fields = 'with Campos as( '+
                 'SELECT a.RDB$FIELD_NAME NOME_DO_CAMPO '+
                 'FROM RDB$RELATION_FIELDS a '+
                 'left join RDB$FIELDS b on (b.RDB$FIELD_NAME = a.RDB$FIELD_SOURCE) '+
                 'WHERE a.RDB$RELATION_NAME = %s '+ {Tabela}
                 'and b.RDB$COMPUTED_SOURCE is null '+ {Ignora Campo calculado}
                 'ORDER BY RDB$FIELD_POSITION '+
                 ') '+
                 'select list(trim(nome_do_campo),'','') nome_campo '+
                 'from campos' ;


type
  TFields = class
  private
  public
    function GetString(const BD, Txt, campoRetorno: string): string;
  end;

implementation

uses
  uServerDM, System.SysUtils;


{ TFields }

function TFields.GetString(const BD, Txt, campoRetorno: string): string;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    Result := DM.LerDataSetString(Txt, campoRetorno);
  finally
    DM.FecharConexao();
    FreeAndNil(DM);
  end;
end;

end.

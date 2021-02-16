unit UPadraoExecutaConsultaSQL;

interface

uses System.Classes ;

type
  TProcedureExecutarSQL = procedure (Sender : TObject; const pSQL : string;
                      var pRetorno : OleVariant) of object ;

type
  TExecutaSQL = class(TComponent)
  private
    fExecutarSQL: TProcedureExecutarSQL;
  public
    constructor Create(AOwner: TComponent); override;
    function ExecutaSQL(pSQL : string) : OleVariant ;
  published
    property OnExecutaSQL : TProcedureExecutarSQL read fExecutarSQL write fExecutarSQL ;
  end ;


procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TrinysComponente', [TExecutaSQL]);
end;

{ TExecutaSQL }

constructor TExecutaSQL.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fExecutarSQL := nil ;
end;

function TExecutaSQL.ExecutaSQL(pSQL: string): OleVariant;
var mRetorno : OleVariant ;
begin
  Result := '' ;
  if Assigned(fExecutarSQL) then
  begin
    fExecutarSQL(Self,pSQL,mRetorno) ;
    Result := mRetorno ;
  end;
end;

end.

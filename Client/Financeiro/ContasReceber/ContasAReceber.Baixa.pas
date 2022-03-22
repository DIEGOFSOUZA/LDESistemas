unit ContasAReceber.Baixa;

interface

uses
  ContasAReceber.Intefaces;

type
  TContasAReceberBaixa = class(TInterfacedObject, iContasAReceber)
  private

  public
    constructor Create();
    destructor Destroy; override;
    class function New(): iContasAReceber;
    function GetDuplicata(aDuplicata: Integer): iContasAReceber;
    function SetBaixa: iContasAReceber;
  end;

implementation

{ TContasAReceberBaixa }

constructor TContasAReceberBaixa.Create;
begin

end;

destructor TContasAReceberBaixa.Destroy;
begin

  inherited;
end;

function TContasAReceberBaixa.GetDuplicata(aDuplicata:Integer): iContasAReceber;
begin
  Result := Self;

end;

class function TContasAReceberBaixa.New: iContasAReceber;
begin
  Result := Self.Create;
end;

function TContasAReceberBaixa.SetBaixa: iContasAReceber;
begin

end;

end.

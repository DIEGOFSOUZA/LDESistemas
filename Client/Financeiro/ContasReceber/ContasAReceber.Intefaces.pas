unit ContasAReceber.Intefaces;

interface

type
  iContasAReceber = interface
  ['{CEB9F861-83F7-43F9-B8B9-4F2A0576CDE0}']
    function GetDuplicata(aDuplicata: Integer): iContasAReceber;
    function SetBaixa: iContasAReceber;
  end;

implementation

end.

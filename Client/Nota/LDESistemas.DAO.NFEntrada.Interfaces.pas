unit LDESistemas.DAO.NFEntrada.Interfaces;

interface

uses
  Data.DB, Vcl.Forms, System.JSON;

type
  iDAOInterface = interface
    ['{65C7A856-E232-4C3A-B378-1EF8633EA92A}']
    function Post: iDAOInterface; overload;
    function AddParam(aKey: string; aValue: Variant): iDAOInterface;
    function Lote(aValue: string): iDAOInterface;
    function DtProducao(aValue: String): iDAOInterface;
    function DtValidade(aValue: String): iDAOInterface;
    function IdNota(aValue: Integer): iDAOInterface;
    function IdProduto(aValue: Integer): iDAOInterface;
    function Qtde(aValue: Extended): iDAOInterface;
  end;


implementation

end.


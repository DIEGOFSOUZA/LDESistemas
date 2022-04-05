unit LDESistemas.DAO.NFEntrada.Interfaces;

interface

uses
  Data.DB, Vcl.Forms, System.JSON;

type
  iDAOInterface = interface
    ['{65C7A856-E232-4C3A-B378-1EF8633EA92A}']
    function Get : iDAOInterface;
    function Insert: iDAOInterface;
    function Update: iDAOInterface;
    function AddParam(aKey: string; aValue: Variant): iDAOInterface;
    function DataSet ( aValue : TDataSource ) : iDAOInterface;
    function Lote(aValue: string): iDAOInterface;
    function DtProducao : String; overload;
    function DtProducao(aValue: String): iDAOInterface; overload;
    function DtValidade : String; overload;
    function DtValidade(aValue: String): iDAOInterface; overload;
    function IdNota(aValue: Integer): iDAOInterface;
    function IdProduto(aValue: Integer): iDAOInterface;
    function ID(aValue: Integer): iDAOInterface;
    function Qtde(aValue: Extended): iDAOInterface;
  end;


implementation

end.


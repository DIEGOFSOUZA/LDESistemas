unit LDESistemas.DAO.NFEntradaItem;

interface

uses
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  LDESistemas.DAO.NFEntrada.Interfaces, Vcl.Forms, System.Generics.Collections;

type
  TDAONFEntradaItem = class(TInterfacedObject, iDAOInterface)
  private
    FDMemTable: TFDMemTable;
    FParamList: TDictionary<string, Variant>;
    FLOTE: string;
    FDTPRODUCAO: TDate;
    FDTVALIDADE: TDate;
    FIDNOTA: Integer;
    FIDPRODUTO: Integer;
    FQTDE: Extended;
    procedure Inserir();
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iDAOInterface;
    function Post: iDAOInterface; overload;
    function AddParam(aKey: string; aValue: Variant): iDAOInterface;
    function Lote(aValue: string): iDAOInterface;
    function DtProducao(aValue: string): iDAOInterface;
    function DtValidade(aValue: string): iDAOInterface;
    function IdNota(aValue: Integer): iDAOInterface;
    function IdProduto(aValue: Integer): iDAOInterface;
    function Qtde(aValue: Extended): iDAOInterface;
  end;

implementation

uses
  System.SysUtils, UDM;

{ TDAONFEntradaItem }

function TDAONFEntradaItem.AddParam(aKey: string; aValue: Variant): iDAOInterface;
begin
  Result := Self;
  FParamList.Add(aKey, aValue);
end;

constructor TDAONFEntradaItem.Create;
begin
  FDMemTable := TFDMemTable.Create(nil);
  FParamList := TDictionary<string, Variant>.Create;
end;

destructor TDAONFEntradaItem.Destroy;
begin
  FDMemTable.Free;
  FParamList.Free;
  inherited;
end;

function TDAONFEntradaItem.DtProducao(aValue: string): iDAOInterface;
begin
  Result := Self;
  if (aValue <> '') then
    FDTPRODUCAO := StrToDate(aValue);
end;

function TDAONFEntradaItem.DtValidade(aValue: string): iDAOInterface;
begin
  Result := Self;
  if (aValue <> '') then
    FDTVALIDADE := StrToDate(aValue);
end;

function TDAONFEntradaItem.IdNota(aValue: Integer): iDAOInterface;
begin
  Result := Self;
  FIDNOTA := aValue;
end;

function TDAONFEntradaItem.IdProduto(aValue: Integer): iDAOInterface;
begin
  Result := Self;
  FIDPRODUTO := aValue;
end;

procedure TDAONFEntradaItem.Inserir;
var
  SQL: string;
begin
  SQL := 'insert into FABRICANTE_LOTE (ID_NF, ID_PRODUTO, LOTE, DT_PRODUCAO, DT_VALIDADE, QTDE, QTDE_DISPONIVEL) '+
         'values ('+
         FIDNOTA.ToString+','+
         FIDPRODUTO.ToString+','+
         QuotedStr(FLOTE)+','+
         QuotedStr(FormatDateTime('dd.mm.yyyy',FDTPRODUCAO))+','+
         QuotedStr(FormatDateTime('dd.mm.yyyy',FDTVALIDADE))+','+
         FloatToStr(FQTDE)+','+
         FloatToStr(FQTDE)+
         ')';
  try
    DM.ExecutarSQL(DM.BancoDados,SQL);
  except
    raise Exception.Create('Não foi possivel inserir o lote do Fornecedor.'+sLineBreak+
                           'Tente novamente.');
  end;
end;

function TDAONFEntradaItem.Lote(aValue: string): iDAOInterface;
begin
  Result := Self;
  FLOTE := aValue;
end;

function TDAONFEntradaItem.Qtde(aValue: Extended): iDAOInterface;
begin
  Result := Self;
  FQTDE := aValue;
end;

class function TDAONFEntradaItem.New: iDAOInterface;
begin
  Result := Self.Create;
end;

function TDAONFEntradaItem.Post: iDAOInterface;
var
  lValue: string;
begin
  Result := Self;

  if (FLOTE <> '') then
  begin
    //Existe registro
    Inserir;
    //Atualizar
  end;
end;



end.


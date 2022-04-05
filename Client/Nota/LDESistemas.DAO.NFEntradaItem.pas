unit LDESistemas.DAO.NFEntradaItem;

interface

uses
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  LDESistemas.DAO.NFEntrada.Interfaces, Vcl.Forms, System.Generics.Collections,
  System.StrUtils, Datasnap.DBClient;

type
  TDAONFEntradaItem = class(TInterfacedObject, iDAOInterface)
  private
    FClientDataSet: TClientDataSet;
    FDataSet : TDataSource;
    FParamList: TDictionary<string, Variant>;
    FLOTE: string;
    FDTPRODUCAO: string;
    FDTVALIDADE: string;
    FIDNOTA: Integer;
    FIDPRODUTO: Integer;
    FQTDE: Extended;
    FID : Integer;
    procedure Inserir();
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iDAOInterface;
    function Get : iDAOInterface;
    function Insert: iDAOInterface;
    function Update: iDAOInterface;
    function AddParam(aKey: string; aValue: Variant): iDAOInterface;
    function DataSet ( aValue : TDataSource ) : iDAOInterface;
    function Lote(aValue: string): iDAOInterface;
    function DtProducao : String; overload;
    function DtProducao(aValue: string): iDAOInterface; overload;
    function DtValidade : String; overload;
    function DtValidade(aValue: string): iDAOInterface; overload;
    function IdNota(aValue: Integer): iDAOInterface;
    function IdProduto(aValue: Integer): iDAOInterface;
    function Qtde(aValue: Extended): iDAOInterface;
    function ID(aValue: Integer): iDAOInterface;
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
  FClientDataSet := TClientDataSet.Create(nil);
  FParamList := TDictionary<string, Variant>.Create;
end;

function TDAONFEntradaItem.DataSet(aValue: TDataSource): iDAOInterface;
begin
  Result := Self;
  FDataSet := aValue;
  FDataSet.DataSet := FClientDataSet;
end;

destructor TDAONFEntradaItem.Destroy;
begin
  FClientDataSet.Free;
  FParamList.Free;
  inherited;
end;

function TDAONFEntradaItem.DtProducao(aValue: string): iDAOInterface;
var
  lData: TDateTime;
begin
  Result := Self;

  if not TryStrToDate(aValue, lData) then
    FDTPRODUCAO := 'null'
  else
    FDTPRODUCAO := FormatDateTime('dd.mm.yyyy', lData);
end;

function TDAONFEntradaItem.DtProducao: String;
begin
  Result := FDTPRODUCAO;
end;

function TDAONFEntradaItem.DtValidade: String;
begin
  Result := FDTVALIDADE;
end;

function TDAONFEntradaItem.DtValidade(aValue: string): iDAOInterface;
var
  lData: TDateTime;
begin
  Result := Self;

  if not TryStrToDate(aValue, lData) then
    FDTVALIDADE := 'null'
  else
    FDTVALIDADE := FormatDateTime('dd.mm.yyyy', lData);
end;

function TDAONFEntradaItem.Get: iDAOInterface;
const
  SQL = 'select l.ID,l.lote,l.dt_producao,l.dt_validade '+
        'from FABRICANTE_LOTE l '+
        'where l.id_nf = %s and '+
        'l.id_produto = %s';
begin
  Result := Self;
  try
    FClientDataSet.Data := DM.LerDataSet(Format(SQL,[FIDNOTA.ToString,FIDPRODUTO.ToString]));
  except
    on ex: exception do
      raise Exception.Create('Erro ao Consultar Lote: ' + ex.Message);
  end;
end;

function TDAONFEntradaItem.Id(aValue: Integer): iDAOInterface;
begin
  Result := Self;
  FID := aValue;
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
         IfThen(FLOTE <> 'null',QuotedStr(FLOTE),FLOTE)+','+
         IfThen(FDTPRODUCAO <> 'null',QuotedStr(FDTPRODUCAO),FDTPRODUCAO)+','+
         IfThen(FDTVALIDADE <> 'null',QuotedStr(FDTVALIDADE),FDTVALIDADE)+','+
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

function TDAONFEntradaItem.Insert: iDAOInterface;
var
  SQL: string;
begin
  SQL := 'insert into FABRICANTE_LOTE (ID_NF, ID_PRODUTO, LOTE, DT_PRODUCAO, DT_VALIDADE, QTDE, QTDE_DISPONIVEL) '+
         'values ('+
         FIDNOTA.ToString+','+
         FIDPRODUTO.ToString+','+
         IfThen(FLOTE <> 'null',QuotedStr(FLOTE),FLOTE)+','+
         IfThen(FDTPRODUCAO <> 'null',QuotedStr(FDTPRODUCAO),FDTPRODUCAO)+','+
         IfThen(FDTVALIDADE <> 'null',QuotedStr(FDTVALIDADE),FDTVALIDADE)+','+
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

function TDAONFEntradaItem.Update: iDAOInterface;
var
  SQL: string;
begin
  SQL := 'update FABRICANTE_LOTE '+
         'set LOTE = '+QuotedStr(FLOTE)+','+
         '    DT_PRODUCAO = '+IfThen(FDTPRODUCAO <> 'null',QuotedStr(FDTPRODUCAO),FDTPRODUCAO)+','+
         '    DT_VALIDADE = '+IfThen(FDTVALIDADE <> 'null',QuotedStr(FDTVALIDADE),FDTVALIDADE)+
//         '    QTDE = '+FQTDE.ToString+
//         '    QTDE_DISPONIVEL = '+FQTDE.ToString+
         ' where (ID = '+FID.ToString+')';
  try
    DM.ExecutarSQL(DM.BancoDados,SQL);
  except
    raise Exception.Create('Não foi possivel atualizar o lote do Fornecedor.'+sLineBreak+
                           'Tente novamente.');
  end;

end;

end.


unit USMProduto;

interface

uses
  System.SysUtils, System.Classes, USM0, FireDAC.Stan.Intf, FireDAC.Comp.Client,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, Datasnap.DBClient, Datasnap.Provider;

type
  TSMProduto = class(TSM0)
    fdqryProduto: TFDQuery;
    fdqryProdutoComposicao: TFDQuery;
    fdqryProdutoFornecedor: TFDQuery;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    fdqryProdutoCODIGO: TIntegerField;
    fdqryProdutoNOME: TStringField;
    fdqryProdutoPRECO_VENDA: TCurrencyField;
    fdqryProdutoCOD_UNIDADE: TIntegerField;
    fdqryProdutoQTDE_ESTOQUE: TFMTBCDField;
    fdqryProdutoPRECO_CUSTO: TCurrencyField;
    fdqryProdutoESTIMA_PRODUCAO: TFMTBCDField;
    fdqryProdutoPESO_BRUTO: TFMTBCDField;
    fdqryProdutoPESO_LIQUIDO: TFMTBCDField;
    fdqryProdutoEAN_CODBARRA: TStringField;
    fdqryProdutoCOD_GRUPO: TIntegerField;
    fdqryProdutoCOD_SUBGRUPO: TIntegerField;
    fdqryProdutoDESCRICAO: TStringField;
    fdqryProdutoTIPO_PRODUTO: TStringField;
    fdqryProdutoQTDE_MINIMA: TFMTBCDField;
    fdqryProdutoCONV_UNIDADE: TIntegerField;
    fdqryProdutoCONV_QTDE: TFMTBCDField;
    fdqryProdutoCONV_PRECO: TCurrencyField;
    fdqryProdutoDT_CADASTRO: TDateField;
    fdqryProdutoDESC_MAXIMO: TFMTBCDField;
    fdqryProdutoPRECO_ATACADO: TFMTBCDField;
    fdqryProdutoQTDE_MIN_ATACADO: TFMTBCDField;
    fdqryProdutoSITUACAO: TStringField;
    fdqryProdutoFISCAL_TIPO: TStringField;
    fdqryProdutoFISCAL_ORIGEM: TStringField;
    fdqryProdutoFISCAL_NCM: TIntegerField;
    fdqryProdutoFISCAL_CEST: TIntegerField;
    fdqryProdutoComposicaoID_PRODUTO: TIntegerField;
    fdqryProdutoComposicaoID_MATPRIMA: TIntegerField;
    fdqryProdutoComposicaoQTDE: TFMTBCDField;
    fdqryProdutoComposicaoCUSTO_UNIT: TFMTBCDField;
    fdqryProdutoComposicaoCUSTO_TOTAL: TFMTBCDField;
    fdqryProdutoDESCRI_UNIDADE: TStringField;
    fdqryProdutoCONV_DESCRIUNIDADE: TStringField;
    fdqryProdutoGRUPO: TStringField;
    fdqryProdutoSUBGRUPO: TStringField;
    fdqryProdutoNCM: TStringField;
    fdqryProdutoCEST: TStringField;
    fdqryProdutoComposicaoNOME: TStringField;
    fdqryProdutoComposicaoSIGLA: TStringField;
    fdqryProdutoFornecedorID_FORNECEDOR: TIntegerField;
    fdqryProdutoFornecedorID_PRODUTO: TIntegerField;
    fdqryProdutoFornecedorPRECO: TFMTBCDField;
    fdqryProdutoFornecedorREFERENCIA_FORNEC: TStringField;
    fdqryProdutoFornecedorRAZAO_NOME: TStringField;
    fdqryProdutoULTIMA_ALTERACAO: TStringField;
    fdqryPrecoVendaHist: TFDQuery;
    fdqryPrecoVendaHistUSUARIO: TStringField;
    fdqryPrecoVendaHistPRECO_NOVO: TFMTBCDField;
    fdqryPrecoVendaHistDATA: TDateField;
    fdqryPrecoVendaHistDT_FIM: TDateField;
    fdqryPrecoVendaHistID_PROD: TIntegerField;
    fdqryPrecoCustoHist: TFDQuery;
    fdqryPrecoCustoHistID_PROD: TIntegerField;
    fdqryPrecoCustoHistPRECO_NOVO: TFMTBCDField;
    fdqryPrecoCustoHistDATA: TDateField;
    fdqryPrecoCustoHistDATA_FIM: TDateField;
    fdqryPrecoCustoHistUSUARIO: TStringField;
    fdqryProdutoCALC_CUSTO_COMPOSICAO: TStringField;
  private
    { Private declarations }
  public
    function setProduto(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
    function getProduto(const BD: string; pID: integer): OleVariant;
  end;

var
  SMProduto: TSMProduto;

implementation

uses
  uServerDM;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TSMProduto }

function TSMProduto.getProduto(const BD: string; pID: integer): OleVariant;
var
  DM: TServerDM;
  lID: Integer;
begin
  lID := pID;
  DM := TServerDM.Create(BD);
  try
    fdqryProduto.Connection := DM.Conexao;
    fdqryProdutoComposicao.Connection := DM.Conexao;
    fdqryProdutoFornecedor.Connection := DM.Conexao;
    fdqryPrecoVendaHist.Connection := DM.Conexao;
    fdqryPrecoCustoHist.Connection := DM.Conexao;
    TranGravacao.Connection := DM.Conexao;
    TranGravacao.StartTransaction;

    if (lID = 0) then
      lID := DM.LerDataSetInteger('select max(codigo) id from PRODUTO', 'id');

    if ((lID > 0) or (lID = -1))then
    begin
      fdqryProduto.ParamByName('codigo').AsInteger := lId;

      cdsProduto.close;
      cdsProduto.Open;
      Result := cdsProduto.Data;
    end
    else
      raise Exception.Create('Documento não encontrado.');

  finally
    if TranGravacao.Active then
      TranGravacao.Commit;
    cdsProduto.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TSMProduto.setProduto(const BD: string; pID: integer;
  const Dados: OleVariant): OleVariant;
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    fdqryProduto.Connection := DM.Conexao;
    fdqryProdutoComposicao.Connection := DM.Conexao;
    fdqryProdutoFornecedor.Connection := DM.Conexao;
    TranGravacao.Connection := DM.Conexao;
    TranGravacao.StartTransaction;

    try
      cdsProduto.Data := Dados;
      cdsProduto.ApplyUpdates(0);
      TranGravacao.Commit;
      Result := getProduto(BD, pID);
    except
      on e: Exception do
      begin
        TranGravacao.Rollback;
        raise Exception.Create(e.Message);
      end;

    end;
  finally
    cdsProduto.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

end.

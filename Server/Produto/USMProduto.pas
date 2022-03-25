unit USMProduto;

interface

uses
  System.SysUtils, System.Classes, USM0, FireDAC.Stan.Intf, FireDAC.Comp.Client,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, Datasnap.DBClient, Datasnap.Provider, uServerDM,
  System.Variants;

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
    fdqryServico: TFDQuery;
    fdqryServicoCODIGO: TIntegerField;
    fdqryServicoNOME: TStringField;
    fdqryServicoPRECO_VENDA: TCurrencyField;
    fdqryServicoCOD_UNIDADE: TIntegerField;
    fdqryServicoPRECO_CUSTO: TCurrencyField;
    fdqryServicoSITUACAO: TStringField;
    fdqryServicoSIGLA: TStringField;
    dspServico: TDataSetProvider;
    cdsServico: TClientDataSet;
  private
    function InsertServico(aDM: TServerDM; aDados: OleVariant): integer;
  public
    function setProduto(const BD: string; pID: integer; const Dados: OleVariant): OleVariant;
    function getProduto(const BD: string; pID: integer): OleVariant;
    function setServico(const BD: string; aDados: OleVariant; aID: integer): OleVariant;
    function getServico(const BD: string; aID: integer): OleVariant;
  end;

var
  SMProduto: TSMProduto;

implementation

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

function TSMProduto.getServico(const BD: string; aID: integer): OleVariant;
const
  SQL = 'select P.CODIGO, P.NOME, P.PRECO_VENDA, P.COD_UNIDADE,'+
        'P.PRECO_CUSTO, P.SITUACAO, U.SIGLA, P.ULTIMA_ALTERACAO ' +
        'from PRODUTO P ' +
        'left join UNIDADE U on (U.CODIGO = P.COD_UNIDADE) ' +
        'where P.CODIGO = %s';
var
  DM: TServerDM;
begin
  DM := TServerDM.Create(BD);
  try
    Result := DM.LerDataSet(Format(SQL, [aID.ToString]));
  finally
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

function TSMProduto.InsertServico(aDM: TServerDM; aDados: OleVariant): integer;
const
  INS_SERVICO = 'insert into PRODUTO ( NOME, PRECO_VENDA, COD_UNIDADE, PRECO_CUSTO, TIPO_PRODUTO, DT_CADASTRO, ULTIMA_ALTERACAO, CALC_CUSTO_COMPOSICAO) '+
                'values (:NOME, :PRECO_VENDA, :COD_UNIDADE, :PRECO_CUSTO, :TIPO_PRODUTO, :DT_CADASTRO, :ULTIMA_ALTERACAO, :CALC_CUSTO_COMPOSICAO) '+
                'returning CODIGO '+
                '{into :CODIGO}';
begin
  Result := -1;
  try
    cdsServico.Data := aDados;
    aDM.Gravar.SQL.Clear;
    aDM.Gravar.SQL.Add(INS_SERVICO);
    aDM.Gravar.ParamByName('NOME').AsString := cdsServico.FieldByName('NOME').AsString;
    aDM.Gravar.ParamByName('PRECO_VENDA').AsCurrency := cdsServico.FieldByName('PRECO_VENDA').AsCurrency;
    aDM.Gravar.ParamByName('COD_UNIDADE').AsInteger := cdsServico.FieldByName('COD_UNIDADE').AsInteger;
    aDM.Gravar.ParamByName('PRECO_CUSTO').AsCurrency := cdsServico.FieldByName('PRECO_CUSTO').AsCurrency;
    aDM.Gravar.ParamByName('TIPO_PRODUTO').AsString := 'S';
    aDM.Gravar.ParamByName('DT_CADASTRO').AsDate := Now;
    aDM.Gravar.ParamByName('ULTIMA_ALTERACAO').AsString := cdsServico.FieldByName('ULTIMA_ALTERACAO').AsString;
    aDM.Gravar.ParamByName('CALC_CUSTO_COMPOSICAO').AsString := 'N';
    aDM.Gravar.ExecSQL;
    Result := aDM.Gravar.Params[8].Value;
  except
    Result := -1;
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

function TSMProduto.setServico(const BD: string; aDados: OleVariant; aID: integer): OleVariant;
var
  DM: TServerDM;
  lId: Integer;
begin
  DM := TServerDM.Create(BD);
  try
    if (aID = 0) then
      lId := InsertServico(DM, aDados)
    else
    begin
      lId := aID;
      fdqryServico.Connection := DM.Conexao;
      TranGravacao.Connection := DM.Conexao;
      TranGravacao.StartTransaction;
      try
        cdsServico.Data := aDados;
        cdsServico.ApplyUpdates(0);
        TranGravacao.Commit;
      except
        on e: Exception do
        begin
          TranGravacao.Rollback;
          raise Exception.Create(e.Message);
        end;
      end;
    end;
    Result := getServico(BD,lId);
  finally
    cdsServico.Close;
    DM.FecharConexao;
    FreeAndNil(DM);
  end;
end;

end.

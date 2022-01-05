inherited SMProduto: TSMProduto
  OldCreateOrder = True
  Height = 331
  Width = 369
  object fdqryProduto: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = TranGravacao
    SQL.Strings = (
      
        'select A.*, U.NOME DESCRI_UNIDADE, X.NOME CONV_DESCRIUNIDADE, G.' +
        'DESCRI GRUPO, S.DESCRI SUBGRUPO, N.DESCRICAO NCM,'
      '       C.DESCRICAO CEST'
      'from PRODUTO A'
      'left outer join UNIDADE U on (U.CODIGO = A.COD_UNIDADE)'
      'left outer join UNIDADE X on (X.CODIGO = A.CONV_UNIDADE)'
      'left outer join GRUPO_PROD G on (G.CODIGO = A.COD_GRUPO)'
      'left outer join SUBGRUPO_PROD S on (S.CODIGO = A.COD_SUBGRUPO)'
      'left outer join NCM N on (N.ID = A.FISCAL_NCM)'
      'left outer join CEST C on (C.ID = A.FISCAL_CEST)'
      'where a.CODIGO = :CODIGO')
    Left = 56
    Top = 16
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryProdutoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object fdqryProdutoPRECO_VENDA: TCurrencyField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Required = True
    end
    object fdqryProdutoCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Origin = 'COD_UNIDADE'
    end
    object fdqryProdutoQTDE_ESTOQUE: TFMTBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'QTDE_ESTOQUE'
      Precision = 18
      Size = 3
    end
    object fdqryProdutoPRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
    end
    object fdqryProdutoESTIMA_PRODUCAO: TFMTBCDField
      FieldName = 'ESTIMA_PRODUCAO'
      Origin = 'ESTIMA_PRODUCAO'
      Precision = 18
      Size = 3
    end
    object fdqryProdutoPESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
      Precision = 18
      Size = 3
    end
    object fdqryProdutoPESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
      Precision = 18
      Size = 3
    end
    object fdqryProdutoEAN_CODBARRA: TStringField
      FieldName = 'EAN_CODBARRA'
      Origin = 'EAN_CODBARRA'
      Size = 13
    end
    object fdqryProdutoCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = 'COD_GRUPO'
    end
    object fdqryProdutoCOD_SUBGRUPO: TIntegerField
      FieldName = 'COD_SUBGRUPO'
      Origin = 'COD_SUBGRUPO'
    end
    object fdqryProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object fdqryProdutoTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object fdqryProdutoQTDE_MINIMA: TFMTBCDField
      FieldName = 'QTDE_MINIMA'
      Origin = 'QTDE_MINIMA'
      Precision = 18
      Size = 3
    end
    object fdqryProdutoCONV_UNIDADE: TIntegerField
      FieldName = 'CONV_UNIDADE'
      Origin = 'CONV_UNIDADE'
    end
    object fdqryProdutoCONV_QTDE: TFMTBCDField
      FieldName = 'CONV_QTDE'
      Origin = 'CONV_QTDE'
      Precision = 18
      Size = 3
    end
    object fdqryProdutoCONV_PRECO: TCurrencyField
      FieldName = 'CONV_PRECO'
      Origin = 'CONV_PRECO'
    end
    object fdqryProdutoDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
    end
    object fdqryProdutoDESC_MAXIMO: TFMTBCDField
      FieldName = 'DESC_MAXIMO'
      Origin = 'DESC_MAXIMO'
      Precision = 18
      Size = 3
    end
    object fdqryProdutoPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      Origin = 'PRECO_ATACADO'
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqryProdutoQTDE_MIN_ATACADO: TFMTBCDField
      FieldName = 'QTDE_MIN_ATACADO'
      Origin = 'QTDE_MIN_ATACADO'
      Precision = 18
      Size = 3
    end
    object fdqryProdutoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 10
    end
    object fdqryProdutoFISCAL_TIPO: TStringField
      FieldName = 'FISCAL_TIPO'
      Origin = 'FISCAL_TIPO'
      Size = 30
    end
    object fdqryProdutoFISCAL_ORIGEM: TStringField
      FieldName = 'FISCAL_ORIGEM'
      Origin = 'FISCAL_ORIGEM'
      Size = 200
    end
    object fdqryProdutoFISCAL_NCM: TIntegerField
      FieldName = 'FISCAL_NCM'
      Origin = 'FISCAL_NCM'
    end
    object fdqryProdutoFISCAL_CEST: TIntegerField
      FieldName = 'FISCAL_CEST'
      Origin = 'FISCAL_CEST'
    end
    object fdqryProdutoULTIMA_ALTERACAO: TStringField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = 'ULTIMA_ALTERACAO'
      Size = 200
    end
    object fdqryProdutoCALC_CUSTO_COMPOSICAO: TStringField
      FieldName = 'CALC_CUSTO_COMPOSICAO'
      Origin = 'CALC_CUSTO_COMPOSICAO'
      FixedChar = True
      Size = 1
    end
    object fdqryProdutoDESCRI_UNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRI_UNIDADE'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 30
    end
    object fdqryProdutoCONV_DESCRIUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONV_DESCRIUNIDADE'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 30
    end
    object fdqryProdutoGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'DESCRI'
      ProviderFlags = []
      Size = 45
    end
    object fdqryProdutoSUBGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUBGRUPO'
      Origin = 'DESCRI'
      ProviderFlags = []
      Size = 45
    end
    object fdqryProdutoNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 500
    end
    object fdqryProdutoCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      Size = 500
    end
  end
  object fdqryProdutoComposicao: TFDQuery
    MasterSource = dsProduto
    MasterFields = 'CODIGO'
    DetailFields = 'ID_PRODUTO'
    Connection = ServerDM.Conexao
    Transaction = TranGravacao
    SQL.Strings = (
      'select a.*,b.nome,coalesce(d.sigla,c.sigla)sigla'
      'from produto_composicao a'
      'left join produto b on (b.codigo=a.id_matprima)'
      'left join unidade c on (c.codigo=b.cod_unidade)'
      'left join unidade d on (d.codigo=b.conv_unidade)'
      'where a.id_produto = :codigo')
    Left = 56
    Top = 72
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryProdutoComposicaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryProdutoComposicaoID_MATPRIMA: TIntegerField
      FieldName = 'ID_MATPRIMA'
      Origin = 'ID_MATPRIMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryProdutoComposicaoQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 5
    end
    object fdqryProdutoComposicaoCUSTO_UNIT: TFMTBCDField
      FieldName = 'CUSTO_UNIT'
      Origin = 'CUSTO_UNIT'
      Precision = 18
      Size = 2
    end
    object fdqryProdutoComposicaoCUSTO_TOTAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL'
      Origin = 'CUSTO_TOTAL'
      Precision = 18
      Size = 2
    end
    object fdqryProdutoComposicaoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object fdqryProdutoComposicaoSIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
  end
  object fdqryProdutoFornecedor: TFDQuery
    MasterSource = dsProduto
    MasterFields = 'CODIGO'
    DetailFields = 'ID_PRODUTO'
    Connection = ServerDM.Conexao
    Transaction = TranGravacao
    SQL.Strings = (
      
        'select A.ID_FORNECEDOR, A.ID_PRODUTO, A.PRECO, A.REFERENCIA_FORN' +
        'EC, B.RAZAO_NOME'
      'from PRODUTO_FORNECEDOR A'
      'left join FABRICANTE B on (B.CODIGO = A.ID_FORNECEDOR)'
      'where A.ID_PRODUTO = :ID_PRODUTO ')
    Left = 56
    Top = 128
    ParamData = <
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryProdutoFornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryProdutoFornecedorID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryProdutoFornecedorPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
    object fdqryProdutoFornecedorREFERENCIA_FORNEC: TStringField
      FieldName = 'REFERENCIA_FORNEC'
      Origin = 'REFERENCIA_FORNEC'
      Size = 50
    end
    object fdqryProdutoFornecedorRAZAO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_NOME'
      Origin = 'RAZAO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = fdqryProduto
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 112
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspProduto'
    StoreDefs = True
    Left = 176
    Top = 176
  end
  object dsProduto: TDataSource
    DataSet = fdqryProduto
    Left = 176
    Top = 240
  end
  object fdqryPrecoVendaHist: TFDQuery
    MasterSource = dsProduto
    MasterFields = 'CODIGO'
    DetailFields = 'ID_PROD'
    Connection = ServerDM.Conexao
    Transaction = TranGravacao
    SQL.Strings = (
      'select a.ID_PROD,a.usuario, a.preco_novo, a.data, a.dt_fim'
      'from PRECOVENDA_HISTORICO a'
      'where a.ID_PROD = :CODIGO'
      'order by a.id desc'
      '')
    Left = 56
    Top = 192
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryPrecoVendaHistID_PROD: TIntegerField
      FieldName = 'ID_PROD'
      Origin = 'ID_PROD'
      Required = True
    end
    object fdqryPrecoVendaHistUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object fdqryPrecoVendaHistPRECO_NOVO: TFMTBCDField
      FieldName = 'PRECO_NOVO'
      Origin = 'PRECO_NOVO'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdqryPrecoVendaHistDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object fdqryPrecoVendaHistDT_FIM: TDateField
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
  end
  object fdqryPrecoCustoHist: TFDQuery
    MasterSource = dsProduto
    MasterFields = 'CODIGO'
    DetailFields = 'ID_PROD'
    Connection = ServerDM.Conexao
    Transaction = TranGravacao
    SQL.Strings = (
      
        'select D.ID_PROD, D.PRECO_NOVO, data, D.DATA_FIM, coalesce(d.usu' +
        'ario,substring(D.log from 43 for char_length(D.log))) usuario'
      
        'from (select A.ID_PROD, A.USUARIO, A.PRECO_NOVO, A.data, A.DATA_' +
        'FIM,'
      
        '             cast(replace(B.log, ascii_char(13) || ascii_char(10' +
        '), '#39#39') as varchar(500)) log'
      '      from PRECOCUSTO_HISTORICO A'
      '      left join NOTA_ENTRADA B on (B.ID = A.ID_NFENTRADA)'
      '      where A.ID_PROD = :CODIGO'
      '      order by A.ID desc) D  ')
    Left = 54
    Top = 256
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryPrecoCustoHistID_PROD: TIntegerField
      FieldName = 'ID_PROD'
      Origin = 'ID_PROD'
      Required = True
    end
    object fdqryPrecoCustoHistPRECO_NOVO: TFMTBCDField
      FieldName = 'PRECO_NOVO'
      Origin = 'PRECO_NOVO'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdqryPrecoCustoHistDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object fdqryPrecoCustoHistDATA_FIM: TDateField
      FieldName = 'DATA_FIM'
      Origin = 'DATA_FIM'
    end
    object fdqryPrecoCustoHistUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
  end
  object fdqryServico: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = TranGravacao
    SQL.Strings = (
      
        'select P.CODIGO, P.NOME, P.PRECO_VENDA, P.COD_UNIDADE, P.PRECO_C' +
        'USTO, P.SITUACAO, U.SIGLA'
      'from PRODUTO P'
      'left join UNIDADE U on (U.CODIGO = P.COD_UNIDADE)'
      'where P.CODIGO = :ID  ')
    Left = 272
    Top = 56
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryServicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryServicoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object fdqryServicoPRECO_VENDA: TCurrencyField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Required = True
    end
    object fdqryServicoCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Origin = 'COD_UNIDADE'
    end
    object fdqryServicoPRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
    end
    object fdqryServicoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 10
    end
    object fdqryServicoSIGLA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
  end
  object dspServico: TDataSetProvider
    DataSet = fdqryServico
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 272
    Top = 112
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspServico'
    StoreDefs = True
    Left = 272
    Top = 176
  end
end

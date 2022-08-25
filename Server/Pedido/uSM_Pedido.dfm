object SM_Pedido: TSM_Pedido
  OldCreateOrder = False
  Height = 370
  Width = 636
  object TranGravar: TFDTransaction
    Connection = ServerDM.Conexao
    Left = 64
    Top = 34
  end
  object cdsLER: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 40
  end
  object Pedido_Venda: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = TranGravar
    SQL.Strings = (
      'select p.*,c.nome_razao cliente, r.nome vendedor'
      'from PEDIDO_VENDA p'
      'left join cliente c on (c.codigo=p.id_cliente)'
      'left join representante r on (r.codigo=p.id_vendedor)'
      'where p.ID = :ID')
    Left = 64
    Top = 96
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object Pedido_VendaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Pedido_VendaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      Required = True
    end
    object Pedido_VendaENTRADA: TSQLTimeStampField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Required = True
    end
    object Pedido_VendaENTREGA: TDateField
      FieldName = 'ENTREGA'
      Origin = 'ENTREGA'
    end
    object Pedido_VendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object Pedido_VendaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object Pedido_VendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 500
    end
    object Pedido_VendaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 40
    end
    object Pedido_VendaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 50
    end
    object Pedido_VendaCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'NOME_RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Pedido_VendaVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object Pedido_VendaGERAR_ORDEM_PRODUCAO: TIntegerField
      FieldName = 'GERAR_ORDEM_PRODUCAO'
      Origin = 'GERAR_ORDEM_PRODUCAO'
    end
  end
  object dspPedido_Venda: TDataSetProvider
    DataSet = Pedido_Venda
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 64
    Top = 152
  end
  object cdsPedidoVenda: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspPedido_Venda'
    StoreDefs = True
    Left = 64
    Top = 216
  end
  object PedidoVenda_Itens: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = TranGravar
    SQL.Strings = (
      
        'select pi.ID_PEDIDO, pi.ORDEM, pi.ID_PRODUTO, pi.VUNIT, pi.QTDE,' +
        ' pi.UNIDADE, '
      
        'pi.QTDE_A_BAIXAR, pi.QTDE_BAIXADA, pi.VDESC, pi.SUBTOTAL, pi.TOT' +
        'AL, p.NOME PRODUTO,'
      'pi.NOVO_PRODSERVICO'
      'from PEDIDO_VENDA_ITEM pi'
      'left join produto p on (p.codigo=pi.id_produto)'
      'where 1=2')
    Left = 176
    Top = 104
    object PedidoVenda_ItensID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PedidoVenda_ItensORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PedidoVenda_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object PedidoVenda_ItensVUNIT: TFMTBCDField
      FieldName = 'VUNIT'
      Origin = 'VUNIT'
      Required = True
      Precision = 18
      Size = 2
    end
    object PedidoVenda_ItensQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
    end
    object PedidoVenda_ItensQTDE_A_BAIXAR: TBCDField
      FieldName = 'QTDE_A_BAIXAR'
      Origin = 'QTDE_A_BAIXAR'
      Required = True
      Precision = 18
    end
    object PedidoVenda_ItensQTDE_BAIXADA: TBCDField
      FieldName = 'QTDE_BAIXADA'
      Origin = 'QTDE_BAIXADA'
      Required = True
      Precision = 18
    end
    object PedidoVenda_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 10
    end
    object PedidoVenda_ItensVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Origin = 'VDESC'
      Precision = 18
      Size = 2
    end
    object PedidoVenda_ItensSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object PedidoVenda_ItensTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object PedidoVenda_ItensPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object PedidoVenda_ItensNOVO_PRODSERVICO: TIntegerField
      FieldName = 'NOVO_PRODSERVICO'
      Origin = 'NOVO_PRODSERVICO'
      Required = True
    end
  end
  object dspPedidoVenda_Itens: TDataSetProvider
    DataSet = PedidoVenda_Itens
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 176
    Top = 152
  end
  object cdsPedidoVenda_Itens: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspPedidoVenda_Itens'
    StoreDefs = True
    Left = 176
    Top = 216
  end
  object Receber: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = TranGravar
    SQL.Strings = (
      'select ID_TABELA_MASTER, NDUP, VDUP, DVENC, TIPO, DESCRI'
      'from CONTAS_A_RECEBER  '
      'where 1=2')
    Left = 272
    Top = 104
    object ReceberTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ReceberID_TABELA_MASTER: TIntegerField
      FieldName = 'ID_TABELA_MASTER'
      Origin = 'ID_TABELA_MASTER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ReceberNDUP: TIntegerField
      FieldName = 'NDUP'
      Origin = 'NDUP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ReceberVDUP: TFMTBCDField
      FieldName = 'VDUP'
      Origin = 'VDUP'
      Required = True
      Precision = 18
      Size = 2
    end
    object ReceberDVENC: TDateField
      FieldName = 'DVENC'
      Origin = 'DVENC'
      Required = True
    end
    object ReceberDESCRI: TStringField
      FieldName = 'DESCRI'
      Origin = 'DESCRI'
      Size = 150
    end
  end
  object dspReceber: TDataSetProvider
    DataSet = Receber
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 272
    Top = 152
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspReceber'
    StoreDefs = True
    Left = 272
    Top = 216
  end
  object Pedido_Venda_IMG: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = TranGravar
    SQL.Strings = (
      'select ID_PEDIDO, SEQUENCIA, PATH_IMAGEM'
      'from PEDIDO_VENDA_IMG'
      'where 1=2  ')
    Left = 352
    Top = 103
    object Pedido_Venda_IMGID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Pedido_Venda_IMGSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = 'SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Pedido_Venda_IMGPATH_IMAGEM: TStringField
      FieldName = 'PATH_IMAGEM'
      Origin = 'PATH_IMAGEM'
      Size = 5000
    end
  end
  object dspIMG: TDataSetProvider
    DataSet = Pedido_Venda_IMG
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 352
    Top = 151
  end
  object cdsIMG: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspIMG'
    StoreDefs = True
    Left = 352
    Top = 215
  end
  object Produto: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = TranGravar
    SQL.Strings = (
      
        'select CODIGO, NOME, PRECO_VENDA, COD_UNIDADE, PRECO_CUSTO, ULTI' +
        'MA_ALTERACAO,'
      'cast('#39#39' as varchar(10))unidade'
      'from PRODUTO  '
      'where 1=2')
    Left = 464
    Top = 104
    object ProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ProdutoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object ProdutoPRECO_VENDA: TCurrencyField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Required = True
    end
    object ProdutoCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Origin = 'COD_UNIDADE'
    end
    object ProdutoPRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
    end
    object ProdutoULTIMA_ALTERACAO: TStringField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = 'ULTIMA_ALTERACAO'
      Size = 200
    end
    object ProdutoUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = Produto
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 152
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspProduto'
    StoreDefs = True
    Left = 464
    Top = 216
  end
  object Produto_Composicao: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = TranGravar
    SQL.Strings = (
      
        'select pc.ID_PRODUTO, pc.ID_MATPRIMA, pc.QTDE, pc.CUSTO_UNIT, pc' +
        '.CUSTO_TOTAL,'
      'p.nome material,coalesce(u2.sigla,u.sigla)UND'
      'from PRODUTO_COMPOSICAO pc'
      'left join produto p on (p.codigo = pc.id_matprima)'
      'left join unidade u on (u.codigo=p.cod_unidade)'
      'left join unidade u2 on (u2.codigo=p.conv_unidade)'
      'where 1=2')
    Left = 552
    Top = 105
    object Produto_ComposicaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Produto_ComposicaoID_MATPRIMA: TIntegerField
      FieldName = 'ID_MATPRIMA'
      Origin = 'ID_MATPRIMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Produto_ComposicaoQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 5
    end
    object Produto_ComposicaoCUSTO_UNIT: TFMTBCDField
      FieldName = 'CUSTO_UNIT'
      Origin = 'CUSTO_UNIT'
      Precision = 18
      Size = 2
    end
    object Produto_ComposicaoCUSTO_TOTAL: TFMTBCDField
      FieldName = 'CUSTO_TOTAL'
      Origin = 'CUSTO_TOTAL'
      Precision = 18
      Size = 2
    end
    object Produto_ComposicaoMATERIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MATERIAL'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Produto_ComposicaoUND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UND'
      Origin = 'UND'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
  end
  object dspProdComposicao: TDataSetProvider
    DataSet = Produto_Composicao
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 552
    Top = 153
  end
  object cdsProdComposicao: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspProdComposicao'
    StoreDefs = True
    Left = 552
    Top = 217
  end
end

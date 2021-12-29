object SM_Pedido: TSM_Pedido
  OldCreateOrder = False
  Height = 370
  Width = 443
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
      'pi.QTDE_BAIXA, pi.VDESC, pi.SUBTOTAL, pi.TOTAL, p.NOME PRODUTO'
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
    object PedidoVenda_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 10
    end
    object PedidoVenda_ItensQTDE_BAIXA: TBCDField
      FieldName = 'QTDE_BAIXA'
      Origin = 'QTDE_BAIXA'
      Required = True
      Precision = 18
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
      'select ID_TABELA_MASTER, NDUP, VDUP, DVENC, TIPO'
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
end

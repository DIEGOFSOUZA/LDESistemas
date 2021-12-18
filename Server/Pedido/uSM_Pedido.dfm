object SM_Pedido: TSM_Pedido
  OldCreateOrder = False
  Height = 203
  Width = 443
  object fdqryPedVenda: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = TranGravar
    SQL.Strings = (
      
        'SELECT a.*,b.nome representante,c.nome_razao cliente from PEDIDO' +
        '_VENDA a'
      'left outer join REPRESENTANTE b on (b.codigo = a.ID_VENDEDOR)'
      'left outer join CLIENTE c on (c.codigo = a.ID_CLIENTE)'
      'where a.ID_PEDVENDA = :ID_PEDVENDA')
    Left = 56
    Top = 24
    ParamData = <
      item
        Name = 'ID_PEDVENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryPedVendaID_PEDVENDA: TIntegerField
      FieldName = 'ID_PEDVENDA'
      Origin = 'ID_PEDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryPedVendaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
    object fdqryPedVendaDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object fdqryPedVendaDT_ENTRADA: TDateField
      FieldName = 'DT_ENTRADA'
      Origin = 'DT_ENTRADA'
    end
    object fdqryPedVendaDT_ENTREGA: TDateField
      FieldName = 'DT_ENTREGA'
      Origin = 'DT_ENTREGA'
    end
    object fdqryPedVendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdqryPedVendaCLI_CPFCNPJ: TStringField
      FieldName = 'CLI_CPFCNPJ'
      Origin = 'CLI_CPFCNPJ'
    end
    object fdqryPedVendaCLI_RGINSC: TStringField
      FieldName = 'CLI_RGINSC'
      Origin = 'CLI_RGINSC'
      Size = 30
    end
    object fdqryPedVendaCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Origin = 'CLI_EMAIL'
      Size = 70
    end
    object fdqryPedVendaCLI_TELEFONE: TStringField
      FieldName = 'CLI_TELEFONE'
      Origin = 'CLI_TELEFONE'
      Size = 15
    end
    object fdqryPedVendaCLI_F_CEP: TStringField
      FieldName = 'CLI_F_CEP'
      Origin = 'CLI_F_CEP'
      Size = 10
    end
    object fdqryPedVendaCLI_F_END: TStringField
      FieldName = 'CLI_F_END'
      Origin = 'CLI_F_END'
      Size = 45
    end
    object fdqryPedVendaCLI_F_NUM: TStringField
      FieldName = 'CLI_F_NUM'
      Origin = 'CLI_F_NUM'
      Size = 10
    end
    object fdqryPedVendaCLI_F_COMPL: TStringField
      FieldName = 'CLI_F_COMPL'
      Origin = 'CLI_F_COMPL'
      Size = 30
    end
    object fdqryPedVendaCLI_F_BAIRRO: TStringField
      FieldName = 'CLI_F_BAIRRO'
      Origin = 'CLI_F_BAIRRO'
      Size = 30
    end
    object fdqryPedVendaCLI_E_CEP: TStringField
      FieldName = 'CLI_E_CEP'
      Origin = 'CLI_E_CEP'
      Size = 10
    end
    object fdqryPedVendaCLI_E_END: TStringField
      FieldName = 'CLI_E_END'
      Origin = 'CLI_E_END'
      Size = 45
    end
    object fdqryPedVendaCLI_E_NUM: TStringField
      FieldName = 'CLI_E_NUM'
      Origin = 'CLI_E_NUM'
      Size = 10
    end
    object fdqryPedVendaCLI_E_COMPL: TStringField
      FieldName = 'CLI_E_COMPL'
      Origin = 'CLI_E_COMPL'
      Size = 30
    end
    object fdqryPedVendaCLI_E_BAIRRO: TStringField
      FieldName = 'CLI_E_BAIRRO'
      Origin = 'CLI_E_BAIRRO'
      Size = 30
    end
    object fdqryPedVendaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object fdqryPedVendaVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Origin = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object fdqryPedVendaVL_FRETE: TFMTBCDField
      FieldName = 'VL_FRETE'
      Origin = 'VL_FRETE'
      Precision = 18
      Size = 2
    end
    object fdqryPedVendaVL_O_CUSTOS: TFMTBCDField
      FieldName = 'VL_O_CUSTOS'
      Origin = 'VL_O_CUSTOS'
      Precision = 18
      Size = 2
    end
    object fdqryPedVendaVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object fdqryPedVendaREPRESENTANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REPRESENTANTE'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 45
    end
    object fdqryPedVendaCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'NOME_RAZAO'
      ProviderFlags = []
      Size = 100
    end
  end
  object fdqryPedVendaItem: TFDQuery
    MasterSource = sPedVenda
    MasterFields = 'ID_PEDVENDA'
    Connection = ServerDM.Conexao
    Transaction = TranGravar
    SQL.Strings = (
      
        'select a.*,b.nome produto,c.sigla unidade from PEDIDO_VENDAITENS' +
        ' a'
      'left outer join PRODUTO b on (b.codigo = a.ID_PROD)'
      'left outer join UNIDADE c on (c.codigo = a.ID_UNIDADE)'
      'where a.ID_PEDVENDA = :ID_PEDVENDA')
    Left = 56
    Top = 82
    ParamData = <
      item
        Name = 'ID_PEDVENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryPedVendaItemID_PEDVENDA: TIntegerField
      FieldName = 'ID_PEDVENDA'
      Origin = 'ID_PEDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryPedVendaItemORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
    end
    object fdqryPedVendaItemID_PROD: TIntegerField
      FieldName = 'ID_PROD'
      Origin = 'ID_PROD'
    end
    object fdqryPedVendaItemID_UNIDADE: TIntegerField
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
    end
    object fdqryPedVendaItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 3
    end
    object fdqryPedVendaItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object fdqryPedVendaItemVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Origin = 'VL_UNITARIO'
      Precision = 18
      Size = 2
    end
    object fdqryPedVendaItemVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      Origin = 'VL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object fdqryPedVendaItemVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Origin = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object fdqryPedVendaItemPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 100
    end
    object fdqryPedVendaItemUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'SIGLA'
      ProviderFlags = []
      Size = 10
    end
  end
  object fdqryPedVendaPagar: TFDQuery
    MasterSource = sPedVenda
    MasterFields = 'ID_PEDVENDA'
    Connection = ServerDM.Conexao
    Transaction = TranGravar
    SQL.Strings = (
      
        'select a.*, cast(c.DESCRI||'#39'('#39'||b.descri||'#39')'#39' as varchar(100)) p' +
        'agto from PEDIDO_VENDAPAGAR a'
      'left outer join PAGTO_PARCELAMENTO b on (b.ID = a.ID_CONDPAGTO)'
      
        'left outer join PAGTO_FORMA c on (c.ID_PAGTOFORMA = b.ID_PAGTOFO' +
        'RMA)'
      'where a.ID_PEDVENDA = :ID_PEDVENDA')
    Left = 56
    Top = 132
    ParamData = <
      item
        Name = 'ID_PEDVENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryPedVendaPagarID_PEDVENDA: TIntegerField
      FieldName = 'ID_PEDVENDA'
      Origin = 'ID_PEDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryPedVendaPagarORDEM: TStringField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object fdqryPedVendaPagarDT_VENC: TDateField
      FieldName = 'DT_VENC'
      Origin = 'DT_VENC'
    end
    object fdqryPedVendaPagarID_CONDPAGTO: TIntegerField
      FieldName = 'ID_CONDPAGTO'
      Origin = 'ID_CONDPAGTO'
    end
    object fdqryPedVendaPagarOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 100
    end
    object fdqryPedVendaPagarVL_PARCELA: TFMTBCDField
      FieldName = 'VL_PARCELA'
      Origin = 'VL_PARCELA'
      Precision = 18
      Size = 2
    end
    object fdqryPedVendaPagarVL_PAGO: TFMTBCDField
      FieldName = 'VL_PAGO'
      Origin = 'VL_PAGO'
      Precision = 18
      Size = 2
    end
    object fdqryPedVendaPagarDTIME_BAIXA: TSQLTimeStampField
      FieldName = 'DTIME_BAIXA'
      Origin = 'DTIME_BAIXA'
    end
    object fdqryPedVendaPagarUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 30
    end
    object fdqryPedVendaPagarPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAGTO'
      Origin = 'PAGTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object dspPedVenda: TDataSetProvider
    DataSet = fdqryPedVenda
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 162
    Top = 25
  end
  object dsPedVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedVenda'
    Left = 162
    Top = 81
  end
  object sPedVenda: TDataSource
    DataSet = fdqryPedVenda
    Left = 159
    Top = 131
  end
  object TranGravar: TFDTransaction
    Connection = ServerDM.Conexao
    Left = 240
    Top = 26
  end
  object cdsLER: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 96
  end
end

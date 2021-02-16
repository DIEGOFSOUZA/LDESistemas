object SM_Financeiro: TSM_Financeiro
  OldCreateOrder = False
  Height = 273
  Width = 427
  object TranGravar: TFDTransaction
    Connection = DM.Conexao
    Left = 224
    Top = 16
  end
  object fdqryForma: TFDQuery
    Connection = DM.Conexao
    Transaction = TranGravar
    SQL.Strings = (
      'SELECT a.* FROM PAGTO_FORMA a'
      'where a.ID_PAGTOFORMA = :ID_PAGTOFORMA')
    Left = 40
    Top = 16
    ParamData = <
      item
        Name = 'ID_PAGTOFORMA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryFormaID_PAGTOFORMA: TIntegerField
      FieldName = 'ID_PAGTOFORMA'
      Origin = 'ID_PAGTOFORMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryFormaDESCRI: TStringField
      FieldName = 'DESCRI'
      Origin = 'DESCRI'
      Size = 50
    end
    object fdqryFormaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object fdqryFormaUSO_PDV: TStringField
      FieldName = 'USO_PDV'
      Origin = 'USO_PDV'
      FixedChar = True
      Size = 1
    end
  end
  object fdqryParcelamento: TFDQuery
    MasterSource = sFormaPagto
    MasterFields = 'ID_PAGTOFORMA'
    Connection = DM.Conexao
    Transaction = TranGravar
    SQL.Strings = (
      'SELECT a.* FROM PAGTO_PARCELAMENTO a'
      'where a.ID_PAGTOFORMA = :ID_PAGTOFORMA')
    Left = 40
    Top = 73
    ParamData = <
      item
        Name = 'ID_PAGTOFORMA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryParcelamentoID_PAGTOFORMA: TIntegerField
      FieldName = 'ID_PAGTOFORMA'
      Origin = 'ID_PAGTOFORMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryParcelamentoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryParcelamentoDESCRI: TStringField
      FieldName = 'DESCRI'
      Origin = 'DESCRI'
      Size = 50
    end
    object fdqryParcelamentoNUM_PARCELAS: TIntegerField
      FieldName = 'NUM_PARCELAS'
      Origin = 'NUM_PARCELAS'
    end
    object fdqryParcelamentoINTV_PARCELAS: TIntegerField
      FieldName = 'INTV_PARCELAS'
      Origin = 'INTV_PARCELAS'
    end
    object fdqryParcelamentoPRIMEIRA_PARC: TIntegerField
      FieldName = 'PRIMEIRA_PARC'
      Origin = 'PRIMEIRA_PARC'
    end
    object fdqryParcelamentoACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 18
      Size = 3
    end
    object fdqryParcelamentoUSO_COMPRAS: TStringField
      FieldName = 'USO_COMPRAS'
      Origin = 'USO_COMPRAS'
      FixedChar = True
      Size = 1
    end
    object fdqryParcelamentoUSO_VENDAS: TStringField
      FieldName = 'USO_VENDAS'
      Origin = 'USO_VENDAS'
      FixedChar = True
      Size = 1
    end
  end
  object dspFormaPagto: TDataSetProvider
    DataSet = fdqryForma
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 136
    Top = 16
  end
  object dsFormaPagto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFormaPagto'
    Left = 136
    Top = 72
  end
  object sFormaPagto: TDataSource
    DataSet = fdqryForma
    Left = 136
    Top = 120
  end
end

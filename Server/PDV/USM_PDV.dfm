object smPDV: TsmPDV
  OldCreateOrder = False
  Height = 247
  Width = 313
  object fdqryOrcamento: TFDQuery
    Connection = DM.Conexao
    Transaction = TranOrcamento
    SQL.Strings = (
      'SELECT a.* from ORCAMENTO a'
      'where a.ID = :ID')
    Left = 32
    Top = 8
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryOrcamentoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object fdqryOrcamentoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      Required = True
    end
    object fdqryOrcamentoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object fdqryOrcamentoID_FORMAPAGTO: TIntegerField
      FieldName = 'ID_FORMAPAGTO'
      Origin = 'ID_FORMAPAGTO'
    end
    object fdqryOrcamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object fdqryOrcamentoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object fdqryOrcamentoDT_VALIDADE: TDateField
      FieldName = 'DT_VALIDADE'
      Origin = 'DT_VALIDADE'
    end
  end
  object fdqryOrItem: TFDQuery
    MasterSource = sOrcamento
    MasterFields = 'ID'
    Connection = DM.Conexao
    Transaction = TranOrcamento
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs]
    SQL.Strings = (
      'select a.* from ORCAMENTO_ITEM a'
      'where a.ID_ORCAMENTO = :ID')
    Left = 32
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryOrItemID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
      Origin = 'ID_ORCAMENTO'
      Required = True
    end
    object fdqryOrItemORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      Required = True
    end
    object fdqryOrItemID_PROD: TIntegerField
      FieldName = 'ID_PROD'
      Origin = 'ID_PROD'
      Required = True
    end
    object fdqryOrItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 3
    end
    object fdqryOrItemVUNIT: TFMTBCDField
      FieldName = 'VUNIT'
      Origin = 'VUNIT'
      Precision = 18
      Size = 2
    end
    object fdqryOrItemVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Origin = 'VDESC'
      Precision = 18
      Size = 2
    end
    object fdqryOrItemUNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Size = 10
    end
    object fdqryOrItemQTDE_BAIXA: TFMTBCDField
      FieldName = 'QTDE_BAIXA'
      Origin = 'QTDE_BAIXA'
      Precision = 18
      Size = 3
    end
  end
  object fdqryOrPagar: TFDQuery
    MasterSource = sOrcamento
    MasterFields = 'ID'
    Connection = DM.Conexao
    Transaction = TranOrcamento
    SQL.Strings = (
      'select a.* from ORCAMENTO_PAGTO a'
      'where a.ID_ORCAMENTO = :ID')
    Left = 32
    Top = 120
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryOrPagarID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
      Origin = 'ID_ORCAMENTO'
      Required = True
    end
    object fdqryOrPagarPARCELA: TStringField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      Required = True
      Size = 5
    end
    object fdqryOrPagarVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object fdqryOrPagarVENCTO: TDateField
      FieldName = 'VENCTO'
      Origin = 'VENCTO'
    end
  end
  object dspOrcamento: TDataSetProvider
    DataSet = fdqryOrcamento
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 8
  end
  object dsOrcamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamento'
    Left = 120
    Top = 64
  end
  object sOrcamento: TDataSource
    DataSet = fdqryOrcamento
    Left = 120
    Top = 120
  end
  object TranOrcamento: TFDTransaction
    Connection = DM.Conexao
    Left = 224
    Top = 8
  end
end

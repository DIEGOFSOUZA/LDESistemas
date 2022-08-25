object SMProducao: TSMProducao
  OldCreateOrder = False
  Height = 259
  Width = 331
  object FDTranGravar: TFDTransaction
    Connection = ServerDM.Conexao
    Left = 32
    Top = 8
  end
  object fdqryLote: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = FDTranGravar
    SQL.Strings = (
      'SELECT l.*'
      'FROM LOTE l '
      'where l.ID = :ID')
    Left = 40
    Top = 80
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryLoteID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryLoteLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Required = True
    end
    object fdqryLoteEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      Required = True
    end
    object fdqryLoteVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object fdqryLoteENTREGA: TDateField
      FieldName = 'ENTREGA'
      Origin = 'ENTREGA'
    end
    object fdqryLoteESTIMATIVA_PRONTO: TSQLTimeStampField
      FieldName = 'ESTIMATIVA_PRONTO'
      Origin = 'ESTIMATIVA_PRONTO'
    end
    object fdqryLoteOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 100
    end
    object fdqryLoteSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object fdqryLoteGERA_MATPRIMA: TStringField
      FieldName = 'GERA_MATPRIMA'
      Origin = 'GERA_MATPRIMA'
      FixedChar = True
      Size = 1
    end
    object fdqryLoteUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object fdqryLoteLOTE_ACERTO: TStringField
      FieldName = 'LOTE_ACERTO'
      Origin = 'LOTE_ACERTO'
      FixedChar = True
      Size = 1
    end
    object fdqryLoteAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      Origin = 'AUTORIZACAO'
      Size = 50
    end
  end
  object fdqryLoteItens: TFDQuery
    FieldOptions.UpdatePersistent = True
    MasterSource = sProducao
    MasterFields = 'LOTE'
    DetailFields = 'ID_LOTE'
    Connection = ServerDM.Conexao
    Transaction = FDTranGravar
    SQL.Strings = (
      'SELECT li.*'
      'FROM LOTE_ITENS li '
      'where li.ID_LOTE = :LOTE')
    Left = 40
    Top = 144
    ParamData = <
      item
        Name = 'LOTE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
    object fdqryLoteItensID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryLoteItensID_LOTE: TStringField
      FieldName = 'ID_LOTE'
      Origin = 'ID_LOTE'
      Required = True
    end
    object fdqryLoteItensCODPRO: TIntegerField
      FieldName = 'CODPRO'
      Origin = 'CODPRO'
      Required = True
    end
    object fdqryLoteItensQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 3
    end
    object fdqryLoteItensQTDE_FECHADA: TFMTBCDField
      FieldName = 'QTDE_FECHADA'
      Origin = 'QTDE_FECHADA'
      Required = True
      Precision = 18
      Size = 3
    end
    object fdqryLoteItensCOD_UM: TIntegerField
      FieldName = 'COD_UM'
      Origin = 'COD_UM'
    end
    object fdqryLoteItensENTSAI: TStringField
      FieldName = 'ENTSAI'
      Origin = 'ENTSAI'
      Size = 15
    end
    object fdqryLoteItensDESCRI_ITEM: TStringField
      FieldName = 'DESCRI_ITEM'
      Origin = 'DESCRI_ITEM'
      Size = 100
    end
  end
  object dspProducao: TDataSetProvider
    DataSet = fdqryLote
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 80
  end
  object dsProducao: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspProducao'
    StoreDefs = True
    Left = 112
    Top = 144
  end
  object sProducao: TDataSource
    DataSet = fdqryLote
    Left = 112
    Top = 200
  end
end

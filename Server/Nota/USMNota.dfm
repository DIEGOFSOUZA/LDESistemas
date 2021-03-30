object SMNota: TSMNota
  OldCreateOrder = False
  Height = 236
  Width = 300
  object fdqryEntrada: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = TranGravacao
    SQL.Strings = (
      'SELECT a.*'
      'FROM NOTA_ENTRADA a'
      'where a.ID = :ID'
      '')
    Left = 42
    Top = 8
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryEntradaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryEntradaCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Origin = 'CODFOR'
    end
    object fdqryEntradaID_CONDPAGTO: TIntegerField
      FieldName = 'ID_CONDPAGTO'
      Origin = 'ID_CONDPAGTO'
    end
    object fdqryEntradaID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
      Origin = 'ID_HISTORICO'
    end
    object fdqryEntradaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object fdqryEntradaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object fdqryEntradaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      Required = True
    end
    object fdqryEntradaENTRADA: TDateField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Required = True
    end
    object fdqryEntradaBASEICMS: TCurrencyField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
    end
    object fdqryEntradaVALORICMS: TCurrencyField
      FieldName = 'VALORICMS'
      Origin = 'VALORICMS'
    end
    object fdqryEntradaTOTPRODUTO: TCurrencyField
      FieldName = 'TOTPRODUTO'
      Origin = 'TOTPRODUTO'
    end
    object fdqryEntradaFRETE: TCurrencyField
      FieldName = 'FRETE'
      Origin = 'FRETE'
    end
    object fdqryEntradaSEGURO: TCurrencyField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
    end
    object fdqryEntradaOUTRAS: TCurrencyField
      FieldName = 'OUTRAS'
      Origin = 'OUTRAS'
    end
    object fdqryEntradaVALORIPI: TCurrencyField
      FieldName = 'VALORIPI'
      Origin = 'VALORIPI'
    end
    object fdqryEntradaTOTNOTA: TCurrencyField
      FieldName = 'TOTNOTA'
      Origin = 'TOTNOTA'
    end
    object fdqryEntradaOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object fdqryEntradaDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object fdqryEntradaN_NF: TIntegerField
      FieldName = 'N_NF'
      Origin = 'N_NF'
    end
    object fdqryEntradaCNF: TIntegerField
      FieldName = 'CNF'
      Origin = 'CNF'
    end
    object fdqryEntradaINDPAG: TIntegerField
      FieldName = 'INDPAG'
      Origin = 'INDPAG'
    end
    object fdqryEntradaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object fdqryEntradaSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
    end
    object fdqryEntradaDSAIENT: TDateField
      FieldName = 'DSAIENT'
      Origin = 'DSAIENT'
    end
    object fdqryEntradaHSAIENT: TTimeField
      FieldName = 'HSAIENT'
      Origin = 'HSAIENT'
    end
    object fdqryEntradaTPNF: TStringField
      FieldName = 'TPNF'
      Origin = 'TPNF'
      FixedChar = True
      Size = 1
    end
    object fdqryEntradaFINNFE: TIntegerField
      FieldName = 'FINNFE'
      Origin = 'FINNFE'
    end
    object fdqryEntradaVBCST: TFMTBCDField
      FieldName = 'VBCST'
      Origin = 'VBCST'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Origin = 'VDESC'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaVII: TFMTBCDField
      FieldName = 'VII'
      Origin = 'VII'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaVPIS: TFMTBCDField
      FieldName = 'VPIS'
      Origin = 'VPIS'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaVCOFINS: TFMTBCDField
      FieldName = 'VCOFINS'
      Origin = 'VCOFINS'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaMODFRETE: TStringField
      FieldName = 'MODFRETE'
      Origin = 'MODFRETE'
      Size = 50
    end
    object fdqryEntradaINFCPL: TStringField
      FieldName = 'INFCPL'
      Origin = 'INFCPL'
      Size = 60
    end
    object fdqryEntradaQVOL: TIntegerField
      FieldName = 'QVOL'
      Origin = 'QVOL'
    end
    object fdqryEntradaESP: TStringField
      FieldName = 'ESP'
      Origin = 'ESP'
      Size = 60
    end
    object fdqryEntradaMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 60
    end
    object fdqryEntradaNVOL: TStringField
      FieldName = 'NVOL'
      Origin = 'NVOL'
      Size = 60
    end
    object fdqryEntradaPESOL: TFMTBCDField
      FieldName = 'PESOL'
      Origin = 'PESOL'
      Precision = 18
      Size = 3
    end
    object fdqryEntradaPESOB: TFMTBCDField
      FieldName = 'PESOB'
      Origin = 'PESOB'
      Precision = 18
      Size = 3
    end
    object fdqryEntradaUFEMBARQ: TStringField
      FieldName = 'UFEMBARQ'
      Origin = 'UFEMBARQ'
      FixedChar = True
      Size = 2
    end
    object fdqryEntradaXLOCEMBARQ: TStringField
      FieldName = 'XLOCEMBARQ'
      Origin = 'XLOCEMBARQ'
      Size = 60
    end
    object fdqryEntradaADICINFCPL: TMemoField
      FieldName = 'ADICINFCPL'
      Origin = 'ADICINFCPL'
      BlobType = ftMemo
    end
    object fdqryEntradaADICINFADFISCO: TMemoField
      FieldName = 'ADICINFADFISCO'
      Origin = 'ADICINFADFISCO'
      BlobType = ftMemo
    end
    object fdqryEntradaVST: TFMTBCDField
      FieldName = 'VST'
      Origin = 'VST'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaCOMPRA_XNCOMPRA: TStringField
      FieldName = 'COMPRA_XNCOMPRA'
      Origin = 'COMPRA_XNCOMPRA'
      Size = 22
    end
    object fdqryEntradaCOMPRA_XPED: TStringField
      FieldName = 'COMPRA_XPED'
      Origin = 'COMPRA_XPED'
      Size = 60
    end
    object fdqryEntradaCOMPRA_XCONT: TStringField
      FieldName = 'COMPRA_XCONT'
      Origin = 'COMPRA_XCONT'
      Size = 60
    end
    object fdqryEntradaISSQN_VSERV: TFMTBCDField
      FieldName = 'ISSQN_VSERV'
      Origin = 'ISSQN_VSERV'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaISSQN_VBC: TFMTBCDField
      FieldName = 'ISSQN_VBC'
      Origin = 'ISSQN_VBC'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaISSQN_VISS: TFMTBCDField
      FieldName = 'ISSQN_VISS'
      Origin = 'ISSQN_VISS'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaISSQN_VPIS: TFMTBCDField
      FieldName = 'ISSQN_VPIS'
      Origin = 'ISSQN_VPIS'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaISSQN_VCOFINS: TFMTBCDField
      FieldName = 'ISSQN_VCOFINS'
      Origin = 'ISSQN_VCOFINS'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaIMPORTADA: TStringField
      FieldName = 'IMPORTADA'
      Origin = 'IMPORTADA'
      FixedChar = True
      Size = 1
    end
    object fdqryEntradaCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 100
    end
    object fdqryEntradaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Origin = 'TIPO_NOTA'
      Size = 10
    end
    object fdqryEntradaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object fdqryEntradaDT_ENTREGA: TDateField
      FieldName = 'DT_ENTREGA'
      Origin = 'DT_ENTREGA'
    end
    object fdqryEntradaNAT_OPERACAO: TStringField
      FieldName = 'NAT_OPERACAO'
      Origin = 'NAT_OPERACAO'
      Size = 50
    end
    object fdqryEntradaTOT_IPI: TFMTBCDField
      FieldName = 'TOT_IPI'
      Origin = 'TOT_IPI'
      Precision = 18
      Size = 2
    end
    object fdqryEntradaTR_PLACA: TStringField
      FieldName = 'TR_PLACA'
      Origin = 'TR_PLACA'
    end
    object fdqryEntradaTR_PLACAUF: TStringField
      FieldName = 'TR_PLACAUF'
      Origin = 'TR_PLACAUF'
      FixedChar = True
      Size = 2
    end
    object fdqryEntradaTR_RAZAO: TStringField
      FieldName = 'TR_RAZAO'
      Origin = 'TR_RAZAO'
      Size = 100
    end
    object fdqryEntradaTR_CPFCNPJ: TStringField
      FieldName = 'TR_CPFCNPJ'
      Origin = 'TR_CPFCNPJ'
    end
    object fdqryEntradaTR_INSC: TStringField
      FieldName = 'TR_INSC'
      Origin = 'TR_INSC'
      Size = 30
    end
    object fdqryEntradaTR_CEP: TStringField
      FieldName = 'TR_CEP'
      Origin = 'TR_CEP'
    end
    object fdqryEntradaTR_ENDERECO: TStringField
      FieldName = 'TR_ENDERECO'
      Origin = 'TR_ENDERECO'
      Size = 100
    end
    object fdqryEntradaLOG: TMemoField
      FieldName = 'LOG'
      Origin = '"LOG"'
      BlobType = ftMemo
    end
    object fdqryEntradaTR_ANTT: TStringField
      FieldName = 'TR_ANTT'
      Origin = 'TR_ANTT'
      Size = 30
    end
    object fdqryEntradaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 60
    end
    object fdqryEntradaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
      Size = 60
    end
  end
  object dsEntrada: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspEntrada'
    StoreDefs = True
    Left = 128
    Top = 73
  end
  object sEntrada: TDataSource
    DataSet = fdqryEntrada
    Left = 128
    Top = 129
  end
  object dspEntrada: TDataSetProvider
    DataSet = fdqryEntrada
    Options = [poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 128
    Top = 11
  end
  object fdqryEntrada_Item: TFDQuery
    FieldOptions.UpdatePersistent = True
    MasterSource = sEntrada
    MasterFields = 'ID'
    DetailFields = 'ID_NOTAENTRADA'
    Connection = ServerDM.Conexao
    Transaction = TranGravacao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs]
    FormatOptions.AssignedValues = [fvMaxBcdPrecision]
    FormatOptions.MaxBcdPrecision = 20
    SQL.Strings = (
      'select a.*'
      'from NOTA_ENTRADA_ITENS a'
      'where a.ID_NOTAENTRADA = :ID')
    Left = 40
    Top = 74
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryEntrada_ItemID_NOTAENTRADA: TIntegerField
      FieldName = 'ID_NOTAENTRADA'
      Origin = 'ID_NOTAENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryEntrada_ItemORDEM: TSmallintField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryEntrada_ItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object fdqryEntrada_ItemNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object fdqryEntrada_ItemST: TStringField
      FieldName = 'ST'
      Origin = 'ST'
      Size = 3
    end
    object fdqryEntrada_ItemQTRIB: TBCDField
      FieldName = 'QTRIB'
      Origin = 'QTRIB'
      Precision = 18
    end
    object fdqryEntrada_ItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object fdqryEntrada_ItemUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Origin = 'UNIDADE_TRIB'
      FixedChar = True
      Size = 10
    end
    object fdqryEntrada_ItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 9
      Size = 5
    end
    object fdqryEntrada_ItemVALORDESCONTO: TBCDField
      FieldName = 'VALORDESCONTO'
      Origin = 'VALORDESCONTO'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemVALORFRETE: TBCDField
      FieldName = 'VALORFRETE'
      Origin = 'VALORFRETE'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemVALOROUTRAS: TBCDField
      FieldName = 'VALOROUTRAS'
      Origin = 'VALOROUTRAS'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemXPED: TStringField
      FieldName = 'XPED'
      Origin = 'XPED'
      Size = 15
    end
    object fdqryEntrada_ItemCPROD: TStringField
      FieldName = 'CPROD'
      Origin = 'CPROD'
      Size = 60
    end
    object fdqryEntrada_ItemCEAN: TStringField
      FieldName = 'CEAN'
      Origin = 'CEAN'
      Size = 60
    end
    object fdqryEntrada_ItemCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object fdqryEntrada_ItemVALORSEGURO: TBCDField
      FieldName = 'VALORSEGURO'
      Origin = 'VALORSEGURO'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemVALORACESSORIAS: TBCDField
      FieldName = 'VALORACESSORIAS'
      Origin = 'VALORACESSORIAS'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemIPI_BC: TBCDField
      FieldName = 'IPI_BC'
      Origin = 'IPI_BC'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemIPI_VALOR: TBCDField
      FieldName = 'IPI_VALOR'
      Origin = 'IPI_VALOR'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemIPI_ST: TBCDField
      FieldName = 'IPI_ST'
      Origin = 'IPI_ST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemIPI_STVAL: TBCDField
      FieldName = 'IPI_STVAL'
      Origin = 'IPI_STVAL'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemIPI_ALIQ: TCurrencyField
      FieldName = 'IPI_ALIQ'
      Origin = 'IPI_ALIQ'
    end
    object fdqryEntrada_ItemIPI_CST: TStringField
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
      Size = 2
    end
    object fdqryEntrada_ItemPIS_BC: TBCDField
      FieldName = 'PIS_BC'
      Origin = 'PIS_BC'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemPIS_VALOR: TBCDField
      FieldName = 'PIS_VALOR'
      Origin = 'PIS_VALOR'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemPIS_ST: TBCDField
      FieldName = 'PIS_ST'
      Origin = 'PIS_ST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemPIS_ALIQST: TCurrencyField
      FieldName = 'PIS_ALIQST'
      Origin = 'PIS_ALIQST'
    end
    object fdqryEntrada_ItemPIS_STVAL: TBCDField
      FieldName = 'PIS_STVAL'
      Origin = 'PIS_STVAL'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemPIS_ALIQ: TCurrencyField
      FieldName = 'PIS_ALIQ'
      Origin = 'PIS_ALIQ'
    end
    object fdqryEntrada_ItemPIS_CST: TStringField
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      Size = 2
    end
    object fdqryEntrada_ItemCOFINS_BC: TBCDField
      FieldName = 'COFINS_BC'
      Origin = 'COFINS_BC'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemCOFINS_VALOR: TBCDField
      FieldName = 'COFINS_VALOR'
      Origin = 'COFINS_VALOR'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemCOFINS_ST: TBCDField
      FieldName = 'COFINS_ST'
      Origin = 'COFINS_ST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemCOFINS_ALIQST: TCurrencyField
      FieldName = 'COFINS_ALIQST'
      Origin = 'COFINS_ALIQST'
    end
    object fdqryEntrada_ItemCOFINS_STVAL: TBCDField
      FieldName = 'COFINS_STVAL'
      Origin = 'COFINS_STVAL'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemCOFINS_ALIQ: TCurrencyField
      FieldName = 'COFINS_ALIQ'
      Origin = 'COFINS_ALIQ'
    end
    object fdqryEntrada_ItemCOFINS_CST: TStringField
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
      Size = 2
    end
    object fdqryEntrada_ItemII_VBC: TBCDField
      FieldName = 'II_VBC'
      Origin = 'II_VBC'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemII_VDESPADU: TBCDField
      FieldName = 'II_VDESPADU'
      Origin = 'II_VDESPADU'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemII_VII: TBCDField
      FieldName = 'II_VII'
      Origin = 'II_VII'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemII_VIOF: TBCDField
      FieldName = 'II_VIOF'
      Origin = 'II_VIOF'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemDI_NDI: TStringField
      FieldName = 'DI_NDI'
      Origin = 'DI_NDI'
    end
    object fdqryEntrada_ItemDI_DATA: TDateField
      FieldName = 'DI_DATA'
      Origin = 'DI_DATA'
    end
    object fdqryEntrada_ItemDI_LOCDESEMBARC: TStringField
      FieldName = 'DI_LOCDESEMBARC'
      Origin = 'DI_LOCDESEMBARC'
      Size = 60
    end
    object fdqryEntrada_ItemDI_UFDESEMBARC: TStringField
      FieldName = 'DI_UFDESEMBARC'
      Origin = 'DI_UFDESEMBARC'
      Size = 2
    end
    object fdqryEntrada_ItemDI_DATADESEMBARC: TDateField
      FieldName = 'DI_DATADESEMBARC'
      Origin = 'DI_DATADESEMBARC'
    end
    object fdqryEntrada_ItemDI_CODEXPORTADOR: TIntegerField
      FieldName = 'DI_CODEXPORTADOR'
      Origin = 'DI_CODEXPORTADOR'
    end
    object fdqryEntrada_ItemVUNTRIB: TFMTBCDField
      FieldName = 'VUNTRIB'
      Origin = 'VUNTRIB'
      Precision = 18
      Size = 10
    end
    object fdqryEntrada_ItemN_DRAW: TIntegerField
      FieldName = 'N_DRAW'
      Origin = 'N_DRAW'
    end
    object fdqryEntrada_ItemN_RE: TIntegerField
      FieldName = 'N_RE'
      Origin = 'N_RE'
    end
    object fdqryEntrada_ItemQEXPORT: TBCDField
      FieldName = 'QEXPORT'
      Origin = 'QEXPORT'
      Precision = 18
      Size = 3
    end
    object fdqryEntrada_ItemCHNFE: TStringField
      FieldName = 'CHNFE'
      Origin = 'CHNFE'
      Size = 50
    end
    object fdqryEntrada_ItemICMS_CST: TStringField
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      Size = 100
    end
    object fdqryEntrada_ItemICMS_BC: TBCDField
      FieldName = 'ICMS_BC'
      Origin = 'ICMS_BC'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_PREDBC: TCurrencyField
      FieldName = 'ICMS_PREDBC'
      Origin = 'ICMS_PREDBC'
    end
    object fdqryEntrada_ItemICMS_ALIQ: TCurrencyField
      FieldName = 'ICMS_ALIQ'
      Origin = 'ICMS_ALIQ'
    end
    object fdqryEntrada_ItemICMS_VALOR: TBCDField
      FieldName = 'ICMS_VALOR'
      Origin = 'ICMS_VALOR'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_ORIGEM: TStringField
      FieldName = 'ICMS_ORIGEM'
      Origin = 'ICMS_ORIGEM'
      Size = 50
    end
    object fdqryEntrada_ItemICMS_PREDBCST: TCurrencyField
      FieldName = 'ICMS_PREDBCST'
      Origin = 'ICMS_PREDBCST'
    end
    object fdqryEntrada_ItemICMS_VALORBCST: TBCDField
      FieldName = 'ICMS_VALORBCST'
      Origin = 'ICMS_VALORBCST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_ALIQST: TCurrencyField
      FieldName = 'ICMS_ALIQST'
      Origin = 'ICMS_ALIQST'
    end
    object fdqryEntrada_ItemICMS_VALORST: TBCDField
      FieldName = 'ICMS_VALORST'
      Origin = 'ICMS_VALORST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_CSOSN: TStringField
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
      Size = 5
    end
    object fdqryEntrada_ItemICMS_VBCUFDEST: TBCDField
      FieldName = 'ICMS_VBCUFDEST'
      Origin = 'ICMS_VBCUFDEST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_PFCPUFDEST: TCurrencyField
      FieldName = 'ICMS_PFCPUFDEST'
      Origin = 'ICMS_PFCPUFDEST'
    end
    object fdqryEntrada_ItemICMS_PICMSUFDEST: TCurrencyField
      FieldName = 'ICMS_PICMSUFDEST'
      Origin = 'ICMS_PICMSUFDEST'
    end
    object fdqryEntrada_ItemICMS_PICMSINTER: TCurrencyField
      FieldName = 'ICMS_PICMSINTER'
      Origin = 'ICMS_PICMSINTER'
    end
    object fdqryEntrada_ItemICMS_PICMSINTERPART: TCurrencyField
      FieldName = 'ICMS_PICMSINTERPART'
      Origin = 'ICMS_PICMSINTERPART'
    end
    object fdqryEntrada_ItemICMS_VFCPUFDEST: TBCDField
      FieldName = 'ICMS_VFCPUFDEST'
      Origin = 'ICMS_VFCPUFDEST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_VICMSUFDEST: TBCDField
      FieldName = 'ICMS_VICMSUFDEST'
      Origin = 'ICMS_VICMSUFDEST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_VICMSUFREMET: TBCDField
      FieldName = 'ICMS_VICMSUFREMET'
      Origin = 'ICMS_VICMSUFREMET'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_MODBC: TStringField
      FieldName = 'ICMS_MODBC'
      Origin = 'ICMS_MODBC'
      FixedChar = True
      Size = 1
    end
    object fdqryEntrada_ItemICMS_MODBCST: TStringField
      FieldName = 'ICMS_MODBCST'
      Origin = 'ICMS_MODBCST'
      FixedChar = True
      Size = 1
    end
    object fdqryEntrada_ItemICMS_UFST: TStringField
      FieldName = 'ICMS_UFST'
      Origin = 'ICMS_UFST'
      FixedChar = True
      Size = 2
    end
    object fdqryEntrada_ItemICMS_PBCOP: TBCDField
      FieldName = 'ICMS_PBCOP'
      Origin = 'ICMS_PBCOP'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_VBCSTRET: TBCDField
      FieldName = 'ICMS_VBCSTRET'
      Origin = 'ICMS_VBCSTRET'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_VICMSSTRET: TBCDField
      FieldName = 'ICMS_VICMSSTRET'
      Origin = 'ICMS_VICMSSTRET'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_MOTDESICMS: TStringField
      FieldName = 'ICMS_MOTDESICMS'
      Origin = 'ICMS_MOTDESICMS'
      FixedChar = True
      Size = 2
    end
    object fdqryEntrada_ItemICMS_PCREDSN: TCurrencyField
      FieldName = 'ICMS_PCREDSN'
      Origin = 'ICMS_PCREDSN'
    end
    object fdqryEntrada_ItemICMS_VCREDICMSSN: TBCDField
      FieldName = 'ICMS_VCREDICMSSN'
      Origin = 'ICMS_VCREDICMSSN'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_VBCSTDEST: TBCDField
      FieldName = 'ICMS_VBCSTDEST'
      Origin = 'ICMS_VBCSTDEST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_VICMSSTDEST: TBCDField
      FieldName = 'ICMS_VICMSSTDEST'
      Origin = 'ICMS_VICMSSTDEST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_VICMSDESON: TBCDField
      FieldName = 'ICMS_VICMSDESON'
      Origin = 'ICMS_VICMSDESON'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_VICMSOP: TBCDField
      FieldName = 'ICMS_VICMSOP'
      Origin = 'ICMS_VICMSOP'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_PDIF: TCurrencyField
      FieldName = 'ICMS_PDIF'
      Origin = 'ICMS_PDIF'
    end
    object fdqryEntrada_ItemICMS_VICMSDIF: TBCDField
      FieldName = 'ICMS_VICMSDIF'
      Origin = 'ICMS_VICMSDIF'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_VBCFCP: TBCDField
      FieldName = 'ICMS_VBCFCP'
      Origin = 'ICMS_VBCFCP'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_PFCP: TCurrencyField
      FieldName = 'ICMS_PFCP'
      Origin = 'ICMS_PFCP'
    end
    object fdqryEntrada_ItemICMS_VFCP: TBCDField
      FieldName = 'ICMS_VFCP'
      Origin = 'ICMS_VFCP'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_VBCFCPST: TBCDField
      FieldName = 'ICMS_VBCFCPST'
      Origin = 'ICMS_VBCFCPST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_PFCPST: TCurrencyField
      FieldName = 'ICMS_PFCPST'
      Origin = 'ICMS_PFCPST'
    end
    object fdqryEntrada_ItemICMS_VFCPST: TBCDField
      FieldName = 'ICMS_VFCPST'
      Origin = 'ICMS_VFCPST'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_VBCFCPSTRET: TBCDField
      FieldName = 'ICMS_VBCFCPSTRET'
      Origin = 'ICMS_VBCFCPSTRET'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_PFCPSTRET: TCurrencyField
      FieldName = 'ICMS_PFCPSTRET'
      Origin = 'ICMS_PFCPSTRET'
    end
    object fdqryEntrada_ItemICMS_VFCPSTRET: TBCDField
      FieldName = 'ICMS_VFCPSTRET'
      Origin = 'ICMS_VFCPSTRET'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_PREDBCEFET: TCurrencyField
      FieldName = 'ICMS_PREDBCEFET'
      Origin = 'ICMS_PREDBCEFET'
    end
    object fdqryEntrada_ItemICMS_VBCEFET: TBCDField
      FieldName = 'ICMS_VBCEFET'
      Origin = 'ICMS_VBCEFET'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemICMS_PST: TCurrencyField
      FieldName = 'ICMS_PST'
      Origin = 'ICMS_PST'
    end
    object fdqryEntrada_ItemICMS_PICMSEFET: TCurrencyField
      FieldName = 'ICMS_PICMSEFET'
      Origin = 'ICMS_PICMSEFET'
    end
    object fdqryEntrada_ItemICMS_VICMSEFET: TBCDField
      FieldName = 'ICMS_VICMSEFET'
      Origin = 'ICMS_VICMSEFET'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemDESCPROMOCIONAL: TCurrencyField
      FieldName = 'DESCPROMOCIONAL'
      Origin = 'DESCPROMOCIONAL'
    end
    object fdqryEntrada_ItemDESCNORMAL: TCurrencyField
      FieldName = 'DESCNORMAL'
      Origin = 'DESCNORMAL'
    end
    object fdqryEntrada_ItemPROD_ESPECIF: TStringField
      FieldName = 'PROD_ESPECIF'
      Origin = 'PROD_ESPECIF'
    end
    object fdqryEntrada_ItemCOMB_PRODANP: TStringField
      FieldName = 'COMB_PRODANP'
      Origin = 'COMB_PRODANP'
      Size = 9
    end
    object fdqryEntrada_ItemCOMB_CODIF: TStringField
      FieldName = 'COMB_CODIF'
      Origin = 'COMB_CODIF'
      Size = 21
    end
    object fdqryEntrada_ItemCOMB_QTEMP: TBCDField
      FieldName = 'COMB_QTEMP'
      Origin = 'COMB_QTEMP'
      Precision = 18
    end
    object fdqryEntrada_ItemCOMB_UFCONS: TStringField
      FieldName = 'COMB_UFCONS'
      Origin = 'COMB_UFCONS'
      FixedChar = True
      Size = 2
    end
    object fdqryEntrada_ItemCOMB_CIDE_QBCPROD: TBCDField
      FieldName = 'COMB_CIDE_QBCPROD'
      Origin = 'COMB_CIDE_QBCPROD'
      Precision = 18
    end
    object fdqryEntrada_ItemCOMB_CIDE_ALIQPROD: TBCDField
      FieldName = 'COMB_CIDE_ALIQPROD'
      Origin = 'COMB_CIDE_ALIQPROD'
      Precision = 18
    end
    object fdqryEntrada_ItemCOMB_CIDE_VCIDE: TBCDField
      FieldName = 'COMB_CIDE_VCIDE'
      Origin = 'COMB_CIDE_VCIDE'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
      Origin = 'ID_HISTORICO'
    end
    object fdqryEntrada_ItemPRODUTO_SERVICO: TStringField
      FieldName = 'PRODUTO_SERVICO'
      Origin = 'PRODUTO_SERVICO'
      Size = 50
    end
    object fdqryEntrada_ItemQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object fdqryEntrada_ItemSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_ItemQTDE_INFORMADA: TBCDField
      FieldName = 'QTDE_INFORMADA'
      Origin = 'QTDE_INFORMADA'
      Precision = 18
      Size = 3
    end
    object fdqryEntrada_ItemUNITARIO: TFMTBCDField
      FieldName = 'UNITARIO'
      Origin = 'UNITARIO'
      Precision = 18
      Size = 10
    end
    object fdqryEntrada_ItemPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 10
    end
    object fdqryEntrada_ItemQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
    end
  end
  object fdqryEntrada_Pagar: TFDQuery
    FieldOptions.UpdatePersistent = True
    MasterSource = sEntrada
    MasterFields = 'ID'
    DetailFields = 'ID_NOTAENTRADA'
    Connection = ServerDM.Conexao
    Transaction = TranGravacao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs]
    FormatOptions.AssignedValues = [fvMaxBcdPrecision]
    FormatOptions.MaxBcdPrecision = 20
    SQL.Strings = (
      'SELECT r.*'
      'FROM NOTA_ENTRADA_PAGAR r'
      'where r.ID_NOTAENTRADA = :ID')
    Left = 40
    Top = 130
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqryEntrada_PagarID_NOTAENTRADA: TIntegerField
      FieldName = 'ID_NOTAENTRADA'
      Origin = 'ID_NOTAENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryEntrada_PagarNFAT: TIntegerField
      FieldName = 'NFAT'
      Origin = 'NFAT'
    end
    object fdqryEntrada_PagarVDESC: TBCDField
      FieldName = 'VDESC'
      Origin = 'VDESC'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_PagarVJUROS: TBCDField
      FieldName = 'VJUROS'
      Origin = 'VJUROS'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_PagarVDUP: TBCDField
      FieldName = 'VDUP'
      Origin = 'VDUP'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_PagarNDUP: TIntegerField
      FieldName = 'NDUP'
      Origin = 'NDUP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqryEntrada_PagarDVENC: TDateField
      FieldName = 'DVENC'
      Origin = 'DVENC'
      Required = True
    end
    object fdqryEntrada_PagarINDPAG: TStringField
      FieldName = 'INDPAG'
      Origin = 'INDPAG'
      Size = 10
    end
    object fdqryEntrada_PagarTPAG: TStringField
      FieldName = 'TPAG'
      Origin = 'TPAG'
      Size = 10
    end
    object fdqryEntrada_PagarBAIXA_DATA: TDateField
      FieldName = 'BAIXA_DATA'
      Origin = 'BAIXA_DATA'
    end
    object fdqryEntrada_PagarBAIXA_VALOR: TBCDField
      FieldName = 'BAIXA_VALOR'
      Origin = 'BAIXA_VALOR'
      Precision = 18
      Size = 2
    end
    object fdqryEntrada_PagarBAIXA_USUARIO: TStringField
      FieldName = 'BAIXA_USUARIO'
      Origin = 'BAIXA_USUARIO'
    end
    object fdqryEntrada_PagarID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
      Origin = 'ID_HISTORICO'
    end
    object fdqryEntrada_PagarID_CONTA: TStringField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
      FixedChar = True
      Size = 5
    end
    object fdqryEntrada_PagarID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = 'ID_CAIXA'
    end
    object fdqryEntrada_PagarCHEQUE_NUMERO: TIntegerField
      FieldName = 'CHEQUE_NUMERO'
      Origin = 'CHEQUE_NUMERO'
    end
    object fdqryEntrada_PagarID_PAGTO: TIntegerField
      FieldName = 'ID_PAGTO'
      Origin = 'ID_PAGTO'
    end
    object fdqryEntrada_PagarFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'FORMA'
      Size = 50
    end
  end
  object TranGravacao: TFDTransaction
    Connection = ServerDM.Conexao
    Left = 208
    Top = 10
  end
end

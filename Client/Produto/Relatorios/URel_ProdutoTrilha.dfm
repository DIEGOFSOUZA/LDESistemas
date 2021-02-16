inherited Rel_ProdutoTrilha: TRel_ProdutoTrilha
  Caption = 'Rel_ProdutoTrilha'
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Left = 54
    Top = 8
    DataSource = dsTrilha
    ExplicitLeft = 54
    ExplicitTop = 8
    object RLBand2: TRLBand
      Left = 38
      Top = 84
      Width = 718
      Height = 79
      BandType = btColumnHeader
      BeforePrint = RLBand2BeforePrint
      object Label2: TLabel
        Left = 3
        Top = 6
        Width = 215
        Height = 17
        Caption = 'Dados do Produto / Mat'#233'ria-Prima'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
      end
      object rlblDescricao: TRLLabel
        Left = 79
        Top = 29
        Width = 74
        Height = 17
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblTipoProduto: TRLLabel
        Left = 79
        Top = 56
        Width = 161
        Height = 17
        AutoSize = False
        Caption = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblCodBarras: TRLLabel
        Left = 353
        Top = 56
        Width = 126
        Height = 17
        AutoSize = False
        Caption = 'COD. BARRAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEstoqMinimo: TRLLabel
        Left = 631
        Top = 56
        Width = 84
        Height = 17
        Caption = 'EST. M'#205'NIMO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 3
        Top = 29
        Width = 72
        Height = 17
        Caption = 'DESCRI'#199#194'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 44
        Top = 56
        Width = 31
        Height = 17
        Caption = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 267
        Top = 56
        Width = 84
        Height = 17
        Caption = 'COD. BARRAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 514
        Top = 56
        Width = 115
        Height = 17
        Caption = 'ESTOQUE MINIMO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 604
        Top = 29
        Width = 31
        Height = 17
        Caption = 'U.M.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object rlblUM: TRLLabel
        Left = 637
        Top = 29
        Width = 78
        Height = 17
        AutoSize = False
        Caption = 'KG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 163
      Width = 718
      Height = 37
      BandType = btColumnHeader
      Color = cl3DLight
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 19
        Top = 2
        Width = 64
        Height = 17
        AutoSize = False
        Caption = 'ENTRADA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 89
        Top = 2
        Width = 69
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'VENDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 164
        Top = 19
        Width = 108
        Height = 17
        AutoSize = False
        Caption = 'IDENTIFICA'#199#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 277
        Top = 2
        Width = 85
        Height = 17
        Alignment = taCenter
        Caption = 'DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 368
        Top = 19
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'QTDE.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 452
        Top = 19
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'SALDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 540
        Top = 19
        Width = 172
        Height = 17
        AutoSize = False
        Caption = 'USU'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 19
        Top = 19
        Width = 63
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'SAIDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 89
        Top = 19
        Width = 69
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'LOTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 277
        Top = 19
        Width = 85
        Height = 17
        Alignment = taCenter
        Caption = 'MOVIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 200
      Width = 718
      Height = 23
      BeforePrint = RLBand4BeforePrint
      object RLDBText1: TRLDBText
        Left = 19
        Top = 1
        Width = 63
        Height = 17
        Alignment = taCenter
        AutoSize = False
        DataField = 'ENTSAI'
        DataSource = dsTrilha
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 89
        Top = 1
        Width = 69
        Height = 17
        Alignment = taCenter
        AutoSize = False
        DataField = 'TIPO_MOVIMENTO'
        DataSource = dsTrilha
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 161
        Top = 1
        Width = 110
        Height = 17
        AutoSize = False
        DataField = 'LOTE'
        DataSource = dsTrilha
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 277
        Top = 1
        Width = 85
        Height = 17
        Alignment = taCenter
        AutoSize = False
        DataField = 'DTMOVTO'
        DataSource = dsTrilha
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 368
        Top = 1
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTDE_FECHADA'
        DataSource = dsTrilha
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 540
        Top = 1
        Width = 172
        Height = 17
        AutoSize = False
        DataField = 'USUARIO'
        DataSource = dsTrilha
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rlblSaldo: TRLLabel
        Left = 452
        Top = 1
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 223
      Width = 718
      Height = 78
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand5BeforePrint
      object Label1: TLabel
        Left = 7
        Top = 8
        Width = 69
        Height = 17
        Caption = 'ENTRADAS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label3: TLabel
        Left = 29
        Top = 27
        Width = 48
        Height = 17
        Caption = 'SA'#205'DAS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object Label4: TLabel
        Left = 32
        Top = 56
        Width = 44
        Height = 17
        Caption = 'SALDO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlblEntrada: TLabel
        Left = 79
        Top = 8
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlblSaida: TLabel
        Left = 79
        Top = 27
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlblSaldoTotal: TLabel
        Left = 79
        Top = 56
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw1: TRLDraw
        Left = 7
        Top = 44
        Width = 152
        Height = 13
        DrawKind = dkLine
      end
    end
  end
  inherited RLPDFFilter1: TRLPDFFilter
    Left = 24
    Top = 80
  end
  object cdsTrilha: TClientDataSet
    Aggregates = <>
    CommandText = 'SELECT p.*'#13#10'FROM PRO_MOVIMENTOPRODUTO(1) p'
    FieldDefs = <
      item
        Name = 'ENTSAI'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTDE'
        DataType = ftFMTBcd
        Precision = 18
        Size = 3
      end
      item
        Name = 'QTDE_FECHADA'
        DataType = ftFMTBcd
        Precision = 18
        Size = 3
      end
      item
        Name = 'DTMOVTO'
        DataType = ftDate
      end
      item
        Name = 'LOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPO_MOVIMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRI'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TIPO_PRODUTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODBARRA'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'ESTOQUE_MINIMO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 3
      end
      item
        Name = 'SIGLA_UM'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'DTMOVTO_DECRESCENTE'
        Fields = 'dtmovto'
        Options = [ixDescending]
      end>
    IndexName = 'DTMOVTO_DECRESCENTE'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    StoreDefs = True
    Left = 32
    Top = 7
    object cdsTrilhaENTSAI: TStringField
      FieldName = 'ENTSAI'
      FixedChar = True
      Size = 1
    end
    object cdsTrilhaDTMOVTO: TDateField
      FieldName = 'DTMOVTO'
    end
    object cdsTrilhaLOTE: TStringField
      FieldName = 'LOTE'
    end
    object cdsTrilhaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 100
    end
    object cdsTrilhaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTrilhaDESCRI: TStringField
      FieldName = 'DESCRI'
      Size = 100
    end
    object cdsTrilhaTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 3
    end
    object cdsTrilhaCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object cdsTrilhaTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
    end
    object cdsTrilhaSIGLA_UM: TStringField
      FieldName = 'SIGLA_UM'
      Size = 10
    end
    object cdsTrilhaQTDE: TFMTBCDField
      FieldName = 'QTDE'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsTrilhaQTDE_FECHADA: TFMTBCDField
      FieldName = 'QTDE_FECHADA'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsTrilhaESTOQUE_MINIMO: TFMTBCDField
      FieldName = 'ESTOQUE_MINIMO'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
  end
  object dsTrilha: TDataSource
    DataSet = cdsTrilha
    Left = 96
    Top = 13
  end
end

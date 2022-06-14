inherited Rel_Rastr_Insumo: TRel_Rastr_Insumo
  Width = 1128
  BorderStyle = bsNone
  Caption = 'Rel_Rastr_Insumo'
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  ExplicitWidth = 1128
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Left = 8
    Top = 220
    Width = 1123
    Height = 794
    DataSource = sLer
    PageSetup.Orientation = poLandscape
    ExplicitLeft = 8
    ExplicitTop = 220
    ExplicitWidth = 1123
    ExplicitHeight = 794
    inherited rlbndTitulo: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited rlblTitRelatorio: TRLLabel
        Width = 1047
        ExplicitWidth = 1047
      end
    end
    inherited rlbndDadosEmpresa: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited rlblEmpresaRazao: TRLLabel
        Left = 544
        ExplicitLeft = 544
      end
      inherited rlblEmpresaCNPJ: TRLLabel
        Left = 544
        ExplicitLeft = 544
      end
      inherited rlblEmpresaLog: TRLLabel
        Left = 544
        ExplicitLeft = 544
      end
      inherited rlblEmpresaCep: TRLLabel
        Left = 544
        ExplicitLeft = 544
      end
      inherited rlblEmpresaFone: TRLLabel
        Left = 544
        ExplicitLeft = 544
      end
    end
    object rlbndTit: TRLBand
      Left = 38
      Top = 154
      Width = 1047
      Height = 58
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Color = cl3DLight
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 3
        Top = 6
        Width = 531
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'FORNECEDOR - DADOS INSUMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLMemo1: TRLMemo
        Left = 3
        Top = 24
        Width = 84
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          ''
          'LOTE')
        ParentFont = False
        Transparent = False
      end
      object RLMemo2: TRLMemo
        Left = 89
        Top = 24
        Width = 85
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'DATA DE'
          'FABRICA'#199#195'O')
        ParentFont = False
        Transparent = False
      end
      object RLMemo3: TRLMemo
        Left = 176
        Top = 24
        Width = 85
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'DATA DE'
          'VALIDADE')
        ParentFont = False
        Transparent = False
      end
      object RLMemo4: TRLMemo
        Left = 441
        Top = 24
        Width = 94
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'QUANTIDADE'
          'UTILIZADA')
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 541
        Top = 6
        Width = 503
        Height = 18
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Caption = 'ORDEM DE PRODU'#199#194'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLMemo5: TRLMemo
        Left = 541
        Top = 24
        Width = 75
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'N'#186' DA '
          'ORDEM')
        ParentFont = False
        Transparent = False
      end
      object RLMemo6: TRLMemo
        Left = 704
        Top = 24
        Width = 250
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          ''
          'PRODUTO')
        ParentFont = False
        Transparent = False
      end
      object RLMemo7: TRLMemo
        Left = 959
        Top = 24
        Width = 85
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          'QUANTIDADE'
          'PRODUZIDA')
        ParentFont = False
        Transparent = False
      end
      object RLMemo8: TRLMemo
        Left = 620
        Top = 24
        Width = 80
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          ''
          'LOTE')
        ParentFont = False
        Transparent = False
      end
      object RLMemo9: TRLMemo
        Left = 263
        Top = 24
        Width = 175
        Height = 32
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Lines.Strings = (
          ''
          'INSUMO')
        ParentFont = False
        Transparent = False
      end
    end
    object rlbndDetail: TRLBand
      Left = 38
      Top = 212
      Width = 1047
      Height = 23
      object RLDBText1: TRLDBText
        Left = 3
        Top = 1
        Width = 84
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'LOTE'
        DataSource = sLer
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 89
        Top = 1
        Width = 85
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'DT_FABRICACAO'
        DataSource = sLer
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 176
        Top = 1
        Width = 85
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'DT_VALIDADE'
        DataSource = sLer
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 441
        Top = 1
        Width = 93
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTDE_UTILIZADA'
        DataSource = sLer
        Text = ''
        BeforePrint = RLDBText4BeforePrint
      end
      object RLDBText5: TRLDBText
        Left = 541
        Top = 1
        Width = 75
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'ID_LOTE_PRODUCAO'
        DataSource = sLer
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 705
        Top = 1
        Width = 250
        Height = 16
        AutoSize = False
        DataField = 'ID_PRODUTO'
        DataSource = sLer
        Text = ''
        BeforePrint = RLDBText6BeforePrint
      end
      object RLDBText7: TRLDBText
        Left = 959
        Top = 1
        Width = 85
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTDE_PRODUZIDA'
        DataSource = sLer
        Text = ''
        BeforePrint = RLDBText7BeforePrint
      end
      object RLDBText8: TRLDBText
        Left = 620
        Top = 1
        Width = 80
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'LOTE_PRODUCAO'
        DataSource = sLer
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 263
        Top = 1
        Width = 175
        Height = 16
        AutoSize = False
        DataField = 'ID_MATPRIMA'
        DataSource = sLer
        Text = ''
        BeforePrint = RLDBText9BeforePrint
      end
    end
  end
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 185
    BevelOuter = bvNone
    TabOrder = 0
    object pnlButtons: TPanel
      Left = 625
      Top = 22
      Width = 104
      Height = 163
      Align = alRight
      TabOrder = 2
      object btnGerarRelatorio: TButton
        Left = 2
        Top = 61
        Width = 100
        Height = 40
        Action = actGerarRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        WordWrap = True
      end
    end
    object pnlTitulo: TPanel
      Left = 0
      Top = 0
      Width = 729
      Height = 22
      Align = alTop
      Caption = 'pnlTitulo'
      TabOrder = 0
      object lblTitulo: TLabel
        Left = 1
        Top = 1
        Width = 697
        Height = 20
        Align = alClient
        AutoSize = False
        Caption = '         TITULO'
        Color = 7024384
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitWidth = 20
        ExplicitHeight = 740
      end
      object imgFechar: TImage
        Left = 698
        Top = 1
        Width = 30
        Height = 20
        Align = alRight
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          001908020000004B8B123400000006624B474400FF00FF00FFA0BDA793000000
          CC4944415478DA6364D0CF66A012601CC466B5E5FA15C739B3B1329367C4AFDF
          7FBB17EEA999B21964D6CFD313255D2ADF7DFC865F4F438617889CB10D4D5C88
          9FEBD9EE360EB3029059FF2F4C6134C821683F2EB3800062C248372BD1DF62C9
          D6D3BFFFFCA582596B7B53806444F97C88711499C5CAC2BCBA27F9CF9F7F11E5
          F3FEFCFD479A5957D6566B2B4B622ACDEB5C3D79F9C18173171A58D59DCCCCC4
          489DF08AF6325DB5EB1C75E2110D8C9A05358B9AE5574B8E6F69BC0B25E56AD7
          82DDB553B70CE6BA835A6601007F1FF0243E9942B90000000049454E44AE4260
          82}
        Stretch = True
        OnClick = actSairExecute
        ExplicitLeft = 1110
        ExplicitTop = -3
        ExplicitHeight = 38
      end
    end
    object pnlClient: TPanel
      Left = 0
      Top = 22
      Width = 625
      Height = 163
      Align = alClient
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = -4
      ExplicitTop = 27
      object Label2: TLabel
        Left = 16
        Top = 33
        Width = 126
        Height = 17
        Caption = 'FORNECEDOR - LOTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtLote: TEdit
        Left = 147
        Top = 30
        Width = 121
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object edpesProduto: TEdPesquisa
        Left = 84
        Top = 64
        Width = 395
        Height = 25
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'PRODUTO'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'NOME'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edpesProdutoPesquisa
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 60
        Titulo.Height = 17
        Titulo.Caption = 'PRODUTO'
        Mostrar.Left = 144
        Mostrar.Top = 0
        Mostrar.Width = 250
        Mostrar.Height = 25
        Mostrar.TabStop = False
        Mostrar.Font.Charset = ANSI_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -13
        Mostrar.Font.Name = 'Segoe UI Semibold'
        Mostrar.Font.Style = [fsBold]
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 62
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 25
        Campo.CharCase = ecUpperCase
        Campo.TabOrder = 0
        TabOrder = 1
        TabStop = True
      end
    end
    object pnlRodape: TPanel
      Left = 0
      Top = 185
      Width = 729
      Height = 0
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
    end
  end
  object actlst1: TActionList
    Left = 536
    Top = 48
    object actGerarRelatorio: TAction
      Caption = 'GERAR RELAT'#211'RIO'
      OnExecute = actGerarRelatorioExecute
    end
    object actSair: TAction
      Caption = 'SAIR'
      OnExecute = actSairExecute
    end
  end
  object cdsLer: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select FL.LOTE, FL.DT_PRODUCAO DT_FABRICACAO, FL.DT_VALIDADE, '#13#10 +
      'LM.ID_MATPRIMA, P1.NOME INSUMO, LMF.QTDE QTDE_UTILIZADA, '#13#10'L.ID ' +
      'ID_LOTE_PRODUCAO, P.CODIGO ID_PRODUTO,'#13#10'       P.NOME PRODUTO, L' +
      'I.QTDE QTDE_PRODUZIDA,LI.LOTE LOTE_PRODUCAO,'#13#10'       (select coa' +
      'lesce(PU.UND_FRACIONADA_SIGLA, PU.UND_SIGLA)'#13#10'        from PRO_G' +
      'ET_UNIDADE(P.CODIGO) PU) UNIDADE,u.sigla unidade_insumo'#13#10'from lo' +
      'te_itens li'#13#10'left join lote l on (l.id = LI.id_lote)'#13#10'left join ' +
      'PRODUTO P on (P.CODIGO = LI.CODPRO)'#13#10'left join LOTE_MATPRIMA LM ' +
      'on (LM.ID_LOTE_ITEM = LI.ID)'#13#10'left join PRODUTO P1 on (P1.CODIGO' +
      ' = LM.ID_MATPRIMA)'#13#10'left join LOTE_MATPRIMA_FABRICANTE LMF on (L' +
      'MF.ID_LOTEMATPRIMA = LM.ID)'#13#10'left join FABRICANTE_LOTE FL on (FL' +
      '.ID = LMF.ID_LOTEFABRICANTE)'#13#10'left join UNIDADE U on (U.CODIGO =' +
      ' P1.CONV_UNIDADE)'#13#10'where 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    Left = 464
    Top = 304
    object cdsLerLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object cdsLerDT_FABRICACAO: TDateField
      FieldName = 'DT_FABRICACAO'
    end
    object cdsLerDT_VALIDADE: TDateField
      FieldName = 'DT_VALIDADE'
    end
    object cdsLerQTDE_UTILIZADA: TBCDField
      FieldName = 'QTDE_UTILIZADA'
      DisplayFormat = '#,##0.000'
      Precision = 18
    end
    object cdsLerID_LOTE_PRODUCAO: TIntegerField
      FieldName = 'ID_LOTE_PRODUCAO'
      DisplayFormat = '000000'
    end
    object cdsLerID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsLerPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object cdsLerQTDE_PRODUZIDA: TFMTBCDField
      FieldName = 'QTDE_PRODUZIDA'
      Required = True
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsLerUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object cdsLerID_MATPRIMA: TIntegerField
      FieldName = 'ID_MATPRIMA'
    end
    object cdsLerINSUMO: TStringField
      FieldName = 'INSUMO'
      Size = 100
    end
    object cdsLerLOTE_PRODUCAO: TStringField
      FieldName = 'LOTE_PRODUCAO'
      Size = 50
    end
    object cdsLerUNIDADE_INSUMO: TStringField
      FieldName = 'UNIDADE_INSUMO'
      Size = 10
    end
  end
  object sLer: TDataSource
    DataSet = cdsLer
    Left = 504
    Top = 312
  end
end

inherited FrmProducaoPesquisa: TFrmProducaoPesquisa
  Caption = 'FrmProducaoPesquisa'
  ClientHeight = 588
  ClientWidth = 1056
  Visible = False
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 1056
  ExplicitHeight = 588
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 1056
    ExplicitWidth = 1056
    inherited lblTitulo: TLabel
      Width = 1021
      Caption = 'ORDEM DE PRODU'#199#195'O - CONSULTA'
      ExplicitWidth = 1021
    end
    inherited pnlBotaoSair: TPanel
      Left = 1026
      ExplicitLeft = 1026
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 30
    Width = 1056
    Height = 558
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object pnlBotoes: TPanel
      Left = 0
      Top = 508
      Width = 1056
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      Color = 14803681
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 2
      object pnlIncluir: TPanel
        Left = 816
        Top = 5
        Width = 235
        Height = 40
        Align = alRight
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 0
        object btnIncluir: TSpeedButton
          Left = 0
          Top = 0
          Width = 235
          Height = 40
          Cursor = crHandPoint
          Align = alClient
          Caption = 'INCLUIR NOVA PRODU'#199#195'O'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnIncluirClick
          ExplicitLeft = 80
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object pnlCenter: TPanel
      Left = 0
      Top = 103
      Width = 1056
      Height = 405
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Right = 5
      TabOrder = 1
      object pnlGrid: TPanel
        Left = 5
        Top = 0
        Width = 1046
        Height = 405
        Align = alClient
        BevelOuter = bvNone
        Color = 14803681
        TabOrder = 0
        object dbgrdLotes: TDBGrid
          Left = 0
          Top = 0
          Width = 1046
          Height = 405
          Align = alClient
          DataSource = dsLote
          DrawingStyle = gdsGradient
          GradientEndColor = 13864803
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          PopupMenu = pm1
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDblClick = dbgrdLotesDblClick
          OnKeyPress = dbgrdLotesKeyPress
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INICIO'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CUSTO'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -16
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
      end
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1056
      Height = 103
      Align = alTop
      BevelOuter = bvNone
      Color = 14803681
      ParentBackground = False
      TabOrder = 0
      object pnlPeriodo: TPanel
        Left = 40
        Top = 15
        Width = 377
        Height = 73
        Color = 14803681
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 44
          Top = 23
          Width = 19
          Height = 25
          AutoSize = False
          Caption = 'DE:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label2: TLabel
          Left = 172
          Top = 23
          Width = 25
          Height = 25
          AutoSize = False
          Caption = 'AT'#201
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object pngspdbtnBuscar: TPngSpeedButton
          Left = 309
          Top = 23
          Width = 25
          Height = 25
          Cursor = crHandPoint
          Flat = True
          OnClick = pngspdbtnBuscarClick
          PngImage.Data = {
            89504E470D0A1A0A0000000D4948445200000019000000190806000000C4E985
            6300000006624B474400FF00FF00FFA0BDA793000001ED4944415478DABD96CF
            2B445114C7CF20D960C16A061BD9FB9D0D52434AF995953F4089248D1F251985
            5008E55FB0A0C98FEC90666CFC8AA5B223242CD831CDF03DBD739BDB9899376F
            669A539FC5BCF7E67EEE3DF7BE739E8DD2103693FB19A01E748006600705E003
            3C032FD8033E104C44D20216E4996D70041EC13B2804C5A019F488605C9E894B
            920596412B1893999A4527580287C00502B1242CF0489A7AC19785D4E7812D11
            74E9A270C91A28953D08C43BBA1699601FDC83E14812DE830D50637105E1910F
            AE403FC91E2909A7E712CCC84C920D4ED734A80441256904AB723115C1E3DE80
            21E0551216BC81798B83F1119F88726F4A52E752124ED500B8B028F92523C5EE
            08F7EAC03AA8559217500E5E1390702C4658915D26EF50926F900B7E220C106F
            348153ED773619A7344749B80E55C98A1259895BD2A687039C83A2B4EEC90A19
            9575CEA2C41D45C0F1EF747119E792526151122D78DC5B30087C36ED22A76C16
            ECA640C2E57F928C7D0EEAB5CB09364135255FBBAE411F38512BD083DFFC324A
            AE0A1F803B30A2E72EFC21EE27DC57B89F7C5A5C01F7133FE8A618FD4489B833
            B691D1523D2683DB64507EEBB9828F924967D4C3297F64E90E19BDE181423DBE
            84423DDE2F133A8E360BB359F2D74A3B19C7DC2102163D51E86BE58C62942133
            494AE20FC81B6D1A1CD8A15A0000000049454E44AE426082}
        end
        object dtp1: TDateTimePicker
          Left = 67
          Top = 23
          Width = 101
          Height = 25
          Date = 44543.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.267153611108369700
          Color = 14803681
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object dtp2: TDateTimePicker
          Left = 201
          Top = 23
          Width = 101
          Height = 25
          Date = 44543.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.267153611108369700
          Color = 14803681
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  inherited actlst1: TActionList
    Left = 936
    Top = 88
    object actProduzirLote: TAction
      Caption = 'PRODUZIR LOTE'
      OnExecute = actProduzirLoteExecute
    end
  end
  object dsLote: TDataSource
    DataSet = cdsLote
    Left = 496
    Top = 280
  end
  object cdsLote: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'INICIO'
        DataType = ftDate
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CUSTO'
        DataType = ftCurrency
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 432
    Top = 280
    object cdsLoteID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'PRODU'#199#195'O'
      FieldName = 'ID'
      DisplayFormat = '0000'
    end
    object cdsLoteINICIO: TDateField
      Alignment = taCenter
      FieldName = 'INICIO'
    end
    object cdsLoteUSUARIO: TStringField
      DisplayLabel = 'RESPONS'#193'VEL'
      FieldName = 'USUARIO'
      Size = 50
    end
    object cdsLoteCUSTO: TCurrencyField
      DisplayWidth = 15
      FieldName = 'CUSTO'
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsLoteSTATUS: TStringField
      Alignment = taCenter
      FieldName = 'STATUS'
    end
  end
  object pm1: TPopupMenu
    Left = 560
    Top = 280
    object PRODUZIRLOTE1: TMenuItem
      Action = actProduzirLote
    end
  end
end
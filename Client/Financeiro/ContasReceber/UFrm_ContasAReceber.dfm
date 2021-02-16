inherited Frm_ContasAReceber: TFrm_ContasAReceber
  BorderStyle = bsNone
  Caption = 'Contas a receber'
  ClientHeight = 665
  ClientWidth = 1024
  OnCreate = FormCreate
  ExplicitWidth = 1024
  ExplicitHeight = 665
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 1024
    Height = 30
    Align = alTop
    AutoSize = False
    Caption = '         Contas a receber'
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
    ExplicitTop = -5
  end
  object imgFechar: TImage
    Left = 978
    Top = -2
    Width = 30
    Height = 30
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
      003008060000005702F98700000006624B474400FF00FF00FFA0BDA793000004
      934944415478DAED99DB531B5518C0BF4D5251C1B1436E240DFD271CA7624829
      B66A29975AED051F7D619CF6A9A3338E42A08586521E9C8E0F9DD1FFC2870EC5
      D2429190422FDA566DB576464D60ACF6822561905C3EBF6FC30672D9DD9C649C
      2C331C76CE9E3D3967F7F73BB73D3B48B0C1835469804D814A036C0A541AE07F
      13887574B622485F52721B220220E7AE9D31E75A3ED2990039E7AC7C8DFA99FC
      ECFA11CAEEAA0D8E8C0809443BDE0FD3C9535178F9906F1EB64E8F6E1715C00A
      B77CBAFE6A5D6B68B420ABAAC0627B271A059E236BE81B4181B64E340A3C5FDB
      AE5E141538824681E7B46D4654A0F5081A059E23DBCC98A8C061340ABCDC03B3
      8202CFF61DC662E0E39882E564122C92099E97A4A2E0B97C82EA55519D2D5447
      0F9E7FB35DBB242A7008F5E0FF4DA520EAB283FD68172C9C1F01D3D42C549BCD
      9AF0B1441CD0F73A6C6DDF0B7F9D3D072FCEFF09552069C2739EFDFA65418196
      43A8D7F2CFEAEC507FF60C58ACB580D4AAF3FD430013D3B2841A3C3437C2B693
      9F814465E28F1EC31F1F1E879AB987D413A00ACFA1048183A835E61709E6E540
      2FD434BC9AA9C312732787409A0866491482CF3C672A040B1FF9A1DA645285E7
      B4FDC6B8A0C0DE83A835619769F8C41B5E21A0EE2CA0B4C46990C68399E1A406
      CF65C39F9E00CB95903C1FD4E065819B136202FFBCFD1E666E9003AF5C2F2512
      90F2ED00F7891C30929B1F1806BC38918669F28267A03BAFCC5CDF20A446C7A9
      F5CD9AF07CE52849A088A5324A12E87B2DBF7559A2FF0CA456E265C3F3D9F1DD
      154181B7DECDEA01AD757E29493DD14812FDD9A09042793729F1F82E035E16F8
      7EB204018197942CE16BC89758174A85E70BC72D5181370F60B1F0CA3926F744
      03D407FC00EB5A5DB9CF5C6FA024788E1CB7BE151710DD1EC82F299EB0A77AB2
      868D329CC27D01C00B24603609C173D2795B506061CF3B6B7340047E407B0845
      7A0749E2B2BCEE170BCF91F3CE54090265C233A0C405722671C44F4369E4D2EA
      CB4E1F9ED3CE3B414181DDFBB12C7865C2AEAC40FD605FDE6F911E96184BF784
      0E3C1FCE1F4405DED88F65C3D384E507E02E2FD49F2E20D13D0049EE09791BA1
      0ECF3D59F7E3B4A840076AC1CB5B625AFB3D819EBCED41C47F0A706C32B3DAC4
      124980DD3BA927FC79657FFFB8072CE353B42335A9C2F375DD4F213181A7CD1D
      A806CF519496CCADC3FDF092778726BCB2DAF01B5BDAD3443DD19BBD999B0CC2
      E3639F408DD9A40ACFA10481765483E710A721B0E876C0F6739FC3169B55135E
      596D628AC4507A38C5FF7E04BF7D700CAAC3F36091BF090AC3CB3D70F7AAA0C0
      AE76548357C6EB322661C9E504C7F1A3F0F4EBF3E96F019D97549444A1D90BB5
      07DAE0E1F017F002C13FA7032F0BDC9B111568432DF8D58F05EA09FE32A34F4A
      FA496F4BACAC365C3E9E44A83249BA2DAFD473090B34B561417858F7109DCFC0
      42F07AAB0DA8D473FD3C2B2AD08A4681E784EB174181273B5BD128F0720FDCBF
      2628E0DBB7B617AA303CFFB9EF5F2F41C020F07CB87F1515686C41A3C073DAFD
      E086B040981EE231023C4561F7839B62FFE078E26D69414C7D4537F1541A9EA2
      2E12B82024B051C2A640A5C3A640A5C38617F80F04235D9A7C15BC8800000000
      49454E44AE426082}
    Stretch = True
    OnClick = imgFecharClick
  end
  object pnlFundo: TPanel
    Left = 0
    Top = 30
    Width = 926
    Height = 635
    Align = alClient
    TabOrder = 0
    object pnlRodape: TPanel
      Left = 1
      Top = 593
      Width = 924
      Height = 41
      Align = alBottom
      BorderStyle = bsSingle
      Color = 16764573
      ParentBackground = False
      TabOrder = 1
      object Label4: TLabel
        Left = 197
        Top = 9
        Width = 61
        Height = 17
        Caption = 'A VENCER'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 15
        Top = 9
        Width = 62
        Height = 17
        Caption = 'VENCIDAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 378
        Top = 9
        Width = 72
        Height = 17
        Caption = 'PENDENTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 570
        Top = 10
        Width = 63
        Height = 17
        Caption = 'BAIXADAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 753
        Top = 10
        Width = 36
        Height = 17
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblVencidas: TLabel
        Left = 83
        Top = 9
        Width = 110
        Height = 17
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblaVencer: TLabel
        Left = 265
        Top = 10
        Width = 110
        Height = 17
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPendente: TLabel
        Left = 457
        Top = 9
        Width = 110
        Height = 17
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBaixadas: TLabel
        Left = 638
        Top = 10
        Width = 110
        Height = 17
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotal: TLabel
        Left = 795
        Top = 10
        Width = 110
        Height = 17
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlFiltro: TPanel
      Left = 1
      Top = 1
      Width = 924
      Height = 128
      Align = alTop
      TabOrder = 0
      object Label9: TLabel
        Left = 712
        Top = 112
        Width = 203
        Height = 13
        Caption = 'N'#227'o existe duplicatas usando este filtro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object rgSituacao: TRadioGroup
        Left = 4
        Top = 17
        Width = 185
        Height = 105
        Caption = 'Situa'#231#227'o duplicata'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Pendente'
          'Com baixa'
          'Tudo')
        ParentFont = False
        TabOrder = 0
      end
      object rgPesquisar: TRadioGroup
        Left = 195
        Top = 17
        Width = 185
        Height = 105
        Caption = 'Filtro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Data Vencimento'
          'Data de emiss'#227'o'
          'Data de baixa'
          'Cliente'
          'N'#186' documento')
        ParentFont = False
        TabOrder = 1
        OnClick = rgPesquisarClick
      end
      object nbFiltros: TNotebook
        Left = 406
        Top = 33
        Width = 399
        Height = 64
        TabOrder = 2
        object TPage
          Left = 0
          Top = 0
          Caption = 'VenctoEmissao'
          object Label1: TLabel
            Left = 51
            Top = 24
            Width = 81
            Height = 17
            Caption = 'PERIODO DE: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 237
            Top = 24
            Width = 8
            Height = 17
            Caption = 'A'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object dtp1: TDateTimePicker
            Left = 138
            Top = 20
            Width = 95
            Height = 25
            Date = 43810.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.425332060192886300
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object dtp2: TDateTimePicker
            Left = 249
            Top = 20
            Width = 95
            Height = 25
            Date = 43810.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.425332060192886300
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'Cliente'
          object edpCliente: TEdPesquisa
            Left = 8
            Top = 17
            Width = 374
            Height = 30
            PermitirBranco = Sim
            ConsultaTabela.Tabela = 'CLIENTE'
            ConsultaTabela.Pesquisa = 'codigo'
            ConsultaTabela.Mostrar = 'nome_razao'
            ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
            OnPesquisa = edpClientePesquisa
            Titulo.Left = 0
            Titulo.Top = 3
            Titulo.Width = 39
            Titulo.Height = 17
            Titulo.Caption = 'Cliente'
            Titulo.Font.Charset = ANSI_CHARSET
            Titulo.Font.Color = clWindowText
            Titulo.Font.Height = -13
            Titulo.Font.Name = 'Segoe UI'
            Titulo.Font.Style = []
            Titulo.ParentFont = False
            Mostrar.Left = 123
            Mostrar.Top = 0
            Mostrar.Width = 250
            Mostrar.Height = 25
            Mostrar.TabStop = False
            Mostrar.Font.Charset = ANSI_CHARSET
            Mostrar.Font.Color = clBlue
            Mostrar.Font.Height = -13
            Mostrar.Font.Name = 'Segoe UI'
            Mostrar.Font.Style = []
            Mostrar.ParentFont = False
            Mostrar.ReadOnly = True
            Mostrar.TabOrder = 1
            Campo.Left = 41
            Campo.Top = 0
            Campo.Width = 57
            Campo.Height = 25
            Campo.CharCase = ecUpperCase
            Campo.Font.Charset = ANSI_CHARSET
            Campo.Font.Color = clWindowText
            Campo.Font.Height = -13
            Campo.Font.Name = 'Segoe UI'
            Campo.Font.Style = []
            Campo.ParentFont = False
            Campo.TabOrder = 0
            TabOrder = 0
            TabStop = True
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'Doc'
          object Label3: TLabel
            Left = 80
            Top = 23
            Width = 112
            Height = 17
            Caption = 'N'#186' VENDA / DOC. :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object edtDoc: TEdit
            Left = 198
            Top = 20
            Width = 121
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 0
            Text = '0'
          end
        end
      end
    end
    object dbgrd1: TDBGrid
      Left = 1
      Top = 129
      Width = 924
      Height = 464
      Align = alClient
      DataSource = dsGrid
      DrawingStyle = gdsGradient
      GradientEndColor = 13864803
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrd1DrawColumnCell
      OnTitleClick = dbgrd1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORDEM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DT_VENC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO_BAIXA'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Visible = True
        end>
    end
  end
  object pnlAcoes: TPanel
    Left = 926
    Top = 30
    Width = 98
    Height = 635
    Align = alRight
    BorderStyle = bsSingle
    TabOrder = 1
    object spbtnBaixarDup: TSpeedButton
      Left = 10
      Top = 145
      Width = 78
      Height = 88
      Action = actBaixaDuplicata
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      Layout = blGlyphBottom
      ParentFont = False
    end
    object btnAlteraVencto: TSpeedButton
      Left = 6
      Top = 273
      Width = 78
      Height = 88
      Action = actAlteraVencto
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      Layout = blGlyphBottom
      ParentFont = False
    end
    object spbtnFiltrar: TSpeedButton
      Left = 6
      Top = 16
      Width = 78
      Height = 88
      Action = actFiltrar
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      Layout = blGlyphBottom
      ParentFont = False
    end
    object spbtnSair: TSpeedButton
      Left = 6
      Top = 517
      Width = 78
      Height = 68
      Action = actSair
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      Layout = blGlyphBottom
      ParentFont = False
    end
    object btnImprimir: TSpeedButton
      Left = 6
      Top = 385
      Width = 78
      Height = 88
      Action = actImprimir
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold, fsItalic]
      Layout = blGlyphBottom
      ParentFont = False
    end
  end
  object actlstMain: TActionList
    Images = DM.il2
    Left = 806
    Top = 231
    object actBaixaDuplicata: TAction
      Caption = 'Baixar '#13#10'duplicata'#13#10'(F5)'
      ImageIndex = 10
      ShortCut = 116
      OnExecute = actBaixaDuplicataExecute
    end
    object actAlteraVencto: TAction
      Caption = 'Alterar'#13#10'vencto.(F7)'
      ImageIndex = 13
      ShortCut = 118
      OnExecute = actAlteraVenctoExecute
    end
    object actFiltrar: TAction
      Caption = 'Localizar '#13#10'duplicata(F2)'
      ImageIndex = 12
      ShortCut = 113
      OnExecute = actFiltrarExecute
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 9
      OnExecute = actSairExecute
    end
    object actImprimir: TAction
      Caption = 'Imprimir'#13#10'duplicatas'
      ImageIndex = 8
      OnExecute = actImprimirExecute
    end
  end
  object cdsGrid: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT a.ID, a.TIPO, a.ORDEM, a.DT_VENC, '#13#10'cast(a.VALOR as doubl' +
      'e precision)valor, '#13#10'a.DT_BAIXA, a.USUARIO_BAIXA,'#13#10'c.NOME_RAZAO ' +
      'cliente,a.USUARIO_EMISSAO,b.emissao'#13#10'FROM PDV_MASTER b '#13#10'left ou' +
      'ter join PDV_RECEBER a on (a.TIPO = b.TIPO and a.ID = b.ID)'#13#10'lef' +
      't outer join CLIENTE c on (c.CODIGO = b.ID_CLIENTE)'#13#10'where 1 = 2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 77
    Top = 236
    object cdsGridID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' Venda'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGridTIPO: TStringField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 1
    end
    object cdsGridORDEM: TStringField
      Alignment = taCenter
      DisplayLabel = 'Parcela'
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      Size = 5
    end
    object cdsGridDT_VENC: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data vencto.'
      FieldName = 'DT_VENC'
      Origin = 'DT_VENC'
    end
    object cdsGridDT_BAIXA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data da baixa'
      FieldName = 'DT_BAIXA'
      Origin = 'DT_BAIXA'
    end
    object cdsGridUSUARIO_BAIXA: TStringField
      DisplayLabel = 'Baixada por'
      FieldName = 'USUARIO_BAIXA'
      Origin = 'USUARIO_BAIXA'
      Size = 50
    end
    object cdsGridCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 100
    end
    object cdsGridUSUARIO_EMISSAO: TStringField
      FieldName = 'USUARIO_EMISSAO'
      Origin = 'USUARIO_EMISSAO'
      Size = 50
    end
    object cdsGridVALOR: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,##0.00'
    end
    object cdsGridEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
  end
  object dsGrid: TDataSource
    DataSet = cdsGrid
    Left = 78
    Top = 293
  end
end

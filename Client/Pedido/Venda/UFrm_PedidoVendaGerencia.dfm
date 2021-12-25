inherited Frm_PedidoVendaGerencia: TFrm_PedidoVendaGerencia
  Caption = 'Frm_PedidoVendaGerencia'
  ClientHeight = 593
  ClientWidth = 1092
  OnCreate = FormCreate
  ExplicitWidth = 1092
  ExplicitHeight = 593
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 1092
    ExplicitWidth = 1092
    inherited lblTitulo: TLabel
      Width = 1067
      Caption = '         GERENCIAMENTO DE PEDIDOS'
      ExplicitWidth = 1067
    end
    inherited pnlBotaoSair: TPanel
      Left = 1067
      ExplicitLeft = 1067
      ExplicitTop = 0
      ExplicitHeight = 30
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 30
    Width = 1092
    Height = 563
    Align = alClient
    BevelOuter = bvNone
    Color = 14803681
    ParentBackground = False
    TabOrder = 1
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1092
      Height = 73
      Align = alTop
      TabOrder = 0
      object nbPesquisa: TNotebook
        Left = 265
        Top = 1
        Width = 399
        Height = 71
        Align = alLeft
        Color = clWhite
        PageIndex = 2
        ParentColor = False
        TabOrder = 1
        object TPage
          Left = 0
          Top = 0
          Caption = 'emissao'
          object Label1: TLabel
            Left = 70
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
            Left = 198
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
          object dtp1: TDateTimePicker
            Left = 93
            Top = 23
            Width = 101
            Height = 25
            Date = 44543.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.267153611108369700
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object dtp2: TDateTimePicker
            Left = 227
            Top = 23
            Width = 101
            Height = 25
            Date = 44543.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.267153611108369700
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'cliente'
          object edpesCliente: TEdPesquisa
            Left = 11
            Top = 25
            Width = 376
            Height = 21
            PermitirBranco = Sim
            ConsultaTabela.Tabela = 'CLIENTE'
            ConsultaTabela.Pesquisa = 'CODIGO'
            ConsultaTabela.Mostrar = 'NOME_RAZAO'
            ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
            OnPesquisa = edpesClientePesquisa
            Titulo.Left = 0
            Titulo.Top = 3
            Titulo.Width = 41
            Titulo.Height = 13
            Titulo.Caption = 'CLIENTE'
            Mostrar.Left = 125
            Mostrar.Top = 0
            Mostrar.Width = 250
            Mostrar.Height = 21
            Mostrar.TabStop = False
            Mostrar.Font.Charset = DEFAULT_CHARSET
            Mostrar.Font.Color = clBlue
            Mostrar.Font.Height = -11
            Mostrar.Font.Name = 'Tahoma'
            Mostrar.Font.Style = []
            Mostrar.ParentFont = False
            Mostrar.ReadOnly = True
            Mostrar.TabOrder = 1
            Campo.Left = 43
            Campo.Top = 0
            Campo.Width = 57
            Campo.Height = 21
            Campo.CharCase = ecUpperCase
            Campo.TabOrder = 0
            TabOrder = 0
            TabStop = True
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'vendedor'
          object edpesVendedor: TEdPesquisa
            Left = 5
            Top = 25
            Width = 389
            Height = 21
            PermitirBranco = Sim
            ConsultaTabela.Tabela = 'REPRESENTANTE'
            ConsultaTabela.Pesquisa = 'CODIGO'
            ConsultaTabela.Mostrar = 'NOME'
            ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
            OnPesquisa = edpesVendedorPesquisa
            Titulo.Left = 0
            Titulo.Top = 3
            Titulo.Width = 54
            Titulo.Height = 13
            Titulo.Caption = 'VENDEDOR'
            Mostrar.Left = 138
            Mostrar.Top = 0
            Mostrar.Width = 250
            Mostrar.Height = 21
            Mostrar.TabStop = False
            Mostrar.Font.Charset = DEFAULT_CHARSET
            Mostrar.Font.Color = clBlue
            Mostrar.Font.Height = -11
            Mostrar.Font.Name = 'Tahoma'
            Mostrar.Font.Style = []
            Mostrar.ParentFont = False
            Mostrar.ReadOnly = True
            Mostrar.TabOrder = 1
            Campo.Left = 56
            Campo.Top = 0
            Campo.Width = 57
            Campo.Height = 21
            Campo.CharCase = ecUpperCase
            Campo.TabOrder = 0
            TabOrder = 0
            TabStop = True
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'status'
          object rgStatus: TRadioGroup
            Left = 0
            Top = 0
            Width = 399
            Height = 71
            Align = alClient
            Columns = 2
            Items.Strings = (
              'DIGITADO'
              'APROVADO'
              'PRODU'#199#195'O'
              'CONCLU'#205'DO')
            TabOrder = 0
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'numero'
          object Label3: TLabel
            Left = 73
            Top = 26
            Width = 128
            Height = 17
            Caption = 'N'#218'MERO DO PEDIDO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object edtNumPed: TEdit
            Left = 205
            Top = 23
            Width = 121
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            NumbersOnly = True
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object pnlConsDup: TPanel
        Left = 689
        Top = 21
        Width = 148
        Height = 32
        Cursor = crHandPoint
        BevelOuter = bvNone
        Caption = 'pnlAddMovimentacao'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 2
        OnClick = actPesquisarExecute
        object imgConsDup: TImage
          Left = 3
          Top = 0
          Width = 32
          Height = 32
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
            00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
            774944415478DAD597BB4F54411487E712B14323C4C4824E312AAFC2C6C25E68
            A032418C411E85FC07BC4551B0B520343C241A1F34C698A0C65213EC0CC20209
            D8D158F02C01B37E27F7981D6F76D999752F1B6EF2CBD93377CE996F1E776636
            30057E826301904C264F602EA3722D5A47CB41101CC40A40C315981ED488CE44
            5E6FA277681890B5BC02D0B0940FA05E549C25C73E1A428F0049FE378036FE1C
            DDB68A13DADB55F52FEAA85CB1EA484C8B2F443A80FB984175B7D13D34134DAC
            A04D680C9DD6E201EA0DE50CA0732EBD2DD6C6AF933071580262AA305F15624F
            4685989FB9024C61EEAADB44A2372E4988BB8579A9EE2471EDDE0024915EFF32
            E16A975E57BBCEA74EC7A209D7C4063AE7FA89DA00359879751F93A0CFB5171A
            3F8CE956B786F8055F807ACCACBAAD2478E609D0869950B78EF84FBE0075980F
            EAB69160CA1340E67D5CDD7AE23FFA02D85320BB5BAF27C008A64BDD5AE27FF8
            02C87E2F8BB0142DA12ACF45280B57CE8B2D7496D8DF5E009A6812D3AA6E3349
            5E3902C8AEF942DD09E23A5C472E0A70417B2F9FE48E0937A2C52C8D5763BE98
            70239273A1929855E3F8A4DB8AFB310FD515884EF43AC356DC8C464D6A2BEEA1
            DE886BE39900A46C1ADDB18A6554DEA315F52FA10613CEB9FD48E3DF510290A5
            9C002C08F90A64344E66C921C32E075889496D44BBE80610DF7202B040CE9BD4
            85A42CF25A56FB5BF444E69CBA37F93D63BD7782F0B992C9B0CB95ACC88457B2
            84FDA95147CE813974CA0722AF975220AE623E9B7FAF6F8742E4FD56EC0B11CB
            B5DC0722B6FF05AE10B1FE3101E21A468EE5E8C294DD723D76800C233148E30F
            8E6404D2403CB51B3F32008528FF3BEC0501C8F4141CE00F8253F821C29AFC90
            0000000049454E44AE426082}
          Stretch = True
          OnClick = actPesquisarExecute
        end
        object lblConsDup: TLabel
          Left = 41
          Top = 7
          Width = 89
          Height = 15
          Caption = '(F2) PESQUISAR'
          Color = 7237230
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          OnClick = actPesquisarExecute
        end
      end
      object rgTipoPesquisa: TRadioGroup
        Left = 1
        Top = 1
        Width = 264
        Height = 71
        Align = alLeft
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'EMISS'#195'O'
          'CLIENTE'
          'VENDEDOR'
          'STATUS'
          'N'#218'MERO')
        TabOrder = 0
        OnClick = rgTipoPesquisaClick
      end
    end
    object pnlRight: TPanel
      Left = 907
      Top = 73
      Width = 185
      Height = 490
      Align = alRight
      TabOrder = 2
      object pnlAdicionar: TPanel
        Left = 19
        Top = 21
        Width = 148
        Height = 32
        BevelOuter = bvNone
        Caption = 'pnlAddMovimentacao'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        object imgAdicionar: TImage
          Left = 0
          Top = 0
          Width = 32
          Height = 32
          Align = alLeft
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
            00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
            A74944415478DAED97CF6F4D4114C7E74AFD68E22996B4C4425BB1204A6261A3
            F58844D0446C4558F91121D587B0533FDAB4A4B1D5F803FCAA9568BBC102A5EC
            28128BAA255A0D22E2F97CCDBCE4E5A5D33BF7F555379DE493B3B867CEF9CECC
            B977CE8DCC348F68464012E76C365B83D90D69580A55EED1107C841EB81B45D1
            DB920A20F17ACC65A80F8CDB071984BC98940012CFC65C8143CEF733DC817B30
            E856AD5109B5B0D3EDD0624D876B700221BF130B20F922CC2DD80CDFA103DA08
            361A237A01A65989A1DCEDC61EE67D0D16E0567EDF6DF9B0564580E781DB9F8B
            B106D30DCBE121A489F12B5480B6EEB0B1C5B591899F9224CF8BB304F3D4D823
            EA24CEB15801AEE09EC10FD8C4A497C524CF8BB70EF318E6C206E20DC409E873
            5B7F1EE77393499E17B30573067A8999F60A70EFF91B63AB7D4540C165FF0561
            C4F855603E800ABB1AF7773E01A73017E13A4E0703561624C0F97661F64333EE
            6D3E01FA926D31B6EABB4B2CA011731B7A70DFEA13A04FE84A81D3FB120BC81D
            EF20EEB53E01DF30F32185D3982F61DC184F10531557F1C7789CF20950D1A5A6
            4880BE902330CAE30A9F007DDFABA126E4464B7804DAF6D73A06DC57F904FC8F
            227C80FB369F005D22BA76BB703A5062013730FBA009F7769F80E9FD1039E75E
            4C03B4E078366E652183981730A70BB7DF27A00ED30F3F8DBD8C0682B2F893EB
            727B0473A08E78AF2614E02675628E1ADBF1E83A1E2E32B9FAC627C65EC75789
            73BCD0C727A0CCD8864447A1E48D4CEE4F987CADB10DC932D0B16E1FAF359BA8
            255B88B9E944A837506FD84A909198C42AB80C68B5F38CED94F7266AC90A7642
            AFCC1198055FDCAA84DE96FCA6541F1735A5BB8CADF63FA0A33C5954535A2064
            35E612EC083C016D7926A48093FE98E8A6CCFD9854B9956B0C39723F26B13769
            5102A662CC08F80BC360343082ABAC1A0000000049454E44AE426082}
          Stretch = True
          OnClick = actNovoPedidoExecute
          ExplicitLeft = 3
        end
        object lblAdicionar: TLabel
          Left = 32
          Top = 0
          Width = 116
          Height = 32
          Align = alClient
          Alignment = taCenter
          Caption = 'NOVO PEDIDO'
          Color = 7237230
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          OnClick = actNovoPedidoExecute
          ExplicitWidth = 82
          ExplicitHeight = 15
        end
      end
      object pnlAvancaStatus: TPanel
        Left = 19
        Top = 85
        Width = 148
        Height = 32
        BevelOuter = bvNone
        Caption = 'pnlAddMovimentacao'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        object imgAvancaStatus: TImage
          Left = 0
          Top = 0
          Width = 32
          Height = 32
          Align = alLeft
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
            00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000003
            014944415478DAED976D688E5118C7AF5B794B9BB762C968CA66294A5E43EC85
            2F62E483AF9449B10F56CC52141259229314291F9597CD27B631B5E2C3C4272F
            5BF9603C96A23C3445F3F85DDDE769B77BF7B95F3CCFF265A7FEFDEFE73ED7B9
            AEFF7D9D739D731E47FE737346052431CE6432E5500DA806B30DB4BD3778005A
            1DC7799D5701045E0E9D061531FDB683C30879969300028F832E825A63FB19DC
            01F7C01BF3D56232A1D9D90CB681A93A1C348146840C261640F0E926D85A3060
            9C35E1EC5B84E829D021500FC6839B8CD9914880F9F27613FC1DA8C1C98B98E9
            CFFA5805DD00BB18DBC5EF229EB7F37C298E802BD01E137C25833E2609EEF133
            86B1BF4DF0476001A8E35DB35500C62BA027E007589DF4CB03FC79836B7554E0
            B33F4C4027B40E1CC7F0D848061F26C0D4F94B71577B49D482FB97E0BC879C8C
            4D4023740A5CC5A83687E033A10EB050DC72ADC45F8AF79B789ECFF3799B005D
            F955E2AEFAD63C7FF9229EBBC1637E6FB00950B5A5A00CA39E00E7FBA05BFE79
            8C0A6EFA4AA0B7A08F77736C02D2500128F4CF3F7DFBC5DD15031753D482A37F
            A2B81BDA00EF27450928C0E8BBAF6F06F4D0CC6B8F09900A9B73DFF842E82B48
            D337396A0A4A31EA0D48F1301160302AB819AB9979A5D9A1BFDC2620BB08B762
            D412739E4542EADC334E0FA9DBA00D9B8D36010DE21EBBD730DA2D96E6CB8484
            7DB967CC75682738885D934D40364DBA11CDC3301DE2B0C8881013BC3FC456E7
            5C2B609AF82A2C682BD6F4AE0727303C2A21CD6442B0FB146177123A023AB0AD
            F6F60509D0DBCF53710FA3350C782E3934FC2D81BAC004B0CC7F4BB21DC797A1
            BDA04FDCE3381515C8E26796F99862D08C9F3ABF8D4DC058E8BEB865F641DCAA
            E84E187C31A49534D764A00A1F3F6309300E74C168D9E8D1AC3BD83970366C61
            9A71BAE168351D00BAFB758A7B13FA12641F7529D54C5C30D3A1B6EAE4AEB897
            52AD7BEFA5542B688B664B862EA57AFDAA27F82F5B8CB8D7F2A5D01950197306
            74676CC8F95A1E20A44C86FE9814CBDF7F4C74C1B68196A093342F0246A28D0A
            F803DAFC6630DCBC2F6F0000000049454E44AE426082}
          Stretch = True
          OnClick = actAvancaStatusExecute
          ExplicitLeft = 3
        end
        object lblAvancaStatus: TLabel
          Left = 32
          Top = 0
          Width = 116
          Height = 32
          Align = alClient
          Alignment = taCenter
          Caption = 'AVAN'#199'AR STATUS'
          Color = 7237230
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          OnClick = actAvancaStatusExecute
          ExplicitWidth = 100
          ExplicitHeight = 15
        end
      end
    end
    object pnlClient: TPanel
      Left = 0
      Top = 73
      Width = 907
      Height = 490
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnlRodape: TPanel
        Left = 0
        Top = 464
        Width = 907
        Height = 26
        Align = alBottom
        TabOrder = 2
      end
      object dbgrdPedidos: TDBGrid
        Left = 0
        Top = 0
        Width = 907
        Height = 464
        Align = alClient
        DataSource = dsPedidos
        DrawingStyle = gdsGradient
        GradientEndColor = 13864803
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnCellClick = dbgrdPedidosCellClick
        OnDrawColumnCell = dbgrdPedidosDrawColumnCell
        OnKeyPress = dbgrdPedidosKeyPress
        OnTitleClick = dbgrdPedidosTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'SELECAO'
            Title.Caption = ' '
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PEDIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMISSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTREGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VENDEDOR'
            Width = 220
            Visible = True
          end>
      end
      object chkSelTudo: TCheckBox
        Left = 7
        Top = 0
        Width = 15
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
    end
  end
  inherited actlst1: TActionList
    Left = 456
    Top = 312
    object actNovoPedido: TAction
      Caption = 'actNovoPedido'
      OnExecute = actNovoPedidoExecute
    end
    object actAvancaStatus: TAction
      Caption = 'actAvancaStatus'
      OnExecute = actAvancaStatusExecute
    end
    object actPesquisar: TAction
      Caption = 'actPesquisar'
      ShortCut = 113
      OnExecute = actPesquisarExecute
    end
  end
  object cdsPedidos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'SELECAO'
        DataType = ftInteger
      end
      item
        Name = 'ID_PEDIDO'
        DataType = ftInteger
      end
      item
        Name = 'EMISSAO'
        DataType = ftDate
      end
      item
        Name = 'ENTREGA'
        DataType = ftDate
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VENDEDOR'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'VALOR'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 536
    Top = 280
    object cdsPedidosSELECAO: TIntegerField
      FieldName = 'SELECAO'
    end
    object cdsPedidosID_PEDIDO: TIntegerField
      DisplayLabel = 'PEDIDO'
      FieldName = 'ID_PEDIDO'
    end
    object cdsPedidosEMISSAO: TDateField
      DisplayLabel = 'EMISS'#195'O'
      FieldName = 'EMISSAO'
    end
    object cdsPedidosENTREGA: TDateField
      FieldName = 'ENTREGA'
    end
    object cdsPedidosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsPedidosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 50
    end
    object cdsPedidosVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 45
    end
    object cdsPedidosVALOR: TCurrencyField
      FieldName = 'VALOR'
      DisplayFormat = 'R$ #,##0.00'
    end
  end
  object dsPedidos: TDataSource
    DataSet = cdsPedidos
    Left = 536
    Top = 344
  end
end

inherited Frm_ContasPagar: TFrm_ContasPagar
  BorderStyle = bsNone
  Caption = 'Frm_ContasPagar'
  ClientHeight = 518
  ClientWidth = 1140
  OnCreate = FormCreate
  ExplicitWidth = 1140
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 1140
    Height = 30
    Align = alTop
    AutoSize = False
    Caption = '         Contas a Pagar'
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
    ExplicitTop = -6
    ExplicitWidth = 585
  end
  object imgFechar: TImage
    Left = 1097
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
    Width = 1140
    Height = 488
    Align = alClient
    TabOrder = 0
    object pnlPesquisa: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 486
      Align = alLeft
      BorderStyle = bsSingle
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 179
        Height = 25
        Align = alTop
        AutoSize = False
        Caption = '   Filtros'
        Color = 10114859
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitLeft = -1
        ExplicitTop = 3
      end
      object pnlConsDup: TPanel
        Left = 5
        Top = 435
        Width = 172
        Height = 32
        BevelOuter = bvNone
        Caption = 'pnlAddMovimentacao'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
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
          Left = 37
          Top = 7
          Width = 131
          Height = 15
          Caption = '(F2)Consultar duplicatas'
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
      object pnlPeriodo: TPanel
        Left = 6
        Top = 40
        Width = 170
        Height = 118
        Color = 13337441
        ParentBackground = False
        TabOrder = 1
        object lblPeriodo: TLabel
          Left = 22
          Top = 1
          Width = 48
          Height = 17
          Caption = 'Per'#237'odo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dtp2: TDateTimePicker
          Left = 35
          Top = 83
          Width = 101
          Height = 22
          Date = 43983.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.267153611108369700
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Visible = False
        end
        object dtp1: TDateTimePicker
          Left = 35
          Top = 54
          Width = 101
          Height = 22
          Date = 43983.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.267153611108369700
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Visible = False
        end
        object chkPeriodo: TCheckBox
          Left = 1
          Top = 1
          Width = 168
          Height = 17
          Align = alTop
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          OnClick = chkPeriodoClick
        end
        object cbbPeriodo: TComboBox
          Left = 23
          Top = 23
          Width = 125
          Height = 22
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
          Text = 'Vencimento'
          Visible = False
          Items.Strings = (
            'Vencimento'
            'Emiss'#227'o'
            'Baixa')
        end
      end
      object pnlFornecedor: TPanel
        Left = 6
        Top = 162
        Width = 170
        Height = 64
        Color = 13337441
        ParentBackground = False
        TabOrder = 2
        object lblFornecedor: TLabel
          Left = 22
          Top = 1
          Width = 69
          Height = 17
          Caption = 'Fornecedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object chkFornecedor: TCheckBox
          Left = 1
          Top = 1
          Width = 168
          Height = 17
          Align = alTop
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          OnClick = chkFornecedorClick
        end
        object edpFornecedor: TEdPesquisa
          Left = 8
          Top = 30
          Width = 154
          Height = 26
          PermitirBranco = Sim
          ConsultaTabela.Tabela = 'FABRICANTE'
          ConsultaTabela.Pesquisa = 'codigo'
          ConsultaTabela.Mostrar = 'razao_nome'
          ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
          OnPesquisa = edpFornecedorPesquisa
          Titulo.Left = 0
          Titulo.Top = 3
          Titulo.Width = 69
          Titulo.Height = 17
          Titulo.Caption = 'Fornecedor'
          Titulo.Font.Charset = ANSI_CHARSET
          Titulo.Font.Color = clWhite
          Titulo.Font.Height = -13
          Titulo.Font.Name = 'Segoe UI'
          Titulo.Font.Style = [fsBold]
          Titulo.ParentFont = False
          Mostrar.Left = 153
          Mostrar.Top = 0
          Mostrar.Width = 0
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
          Campo.Left = 71
          Campo.Top = 0
          Campo.Width = 57
          Campo.Height = 25
          Campo.CharCase = ecUpperCase
          Campo.Font.Charset = ANSI_CHARSET
          Campo.Font.Color = clWindowText
          Campo.Font.Height = -13
          Campo.Font.Name = 'Segoe UI Semibold'
          Campo.Font.Style = [fsBold]
          Campo.ParentFont = False
          Campo.TabOrder = 0
          TabOrder = 1
          TabStop = True
        end
      end
      object pnlNF: TPanel
        Left = 6
        Top = 230
        Width = 170
        Height = 64
        Color = 13337441
        ParentBackground = False
        TabOrder = 3
        object lblNF: TLabel
          Left = 22
          Top = 1
          Width = 68
          Height = 17
          Caption = 'Nota Fiscal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblnNF: TLabel
          Left = 28
          Top = 26
          Width = 50
          Height = 17
          Caption = 'N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object chkNF: TCheckBox
          Left = 1
          Top = 1
          Width = 168
          Height = 17
          Align = alTop
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          OnClick = chkNFClick
        end
        object edtNF: TEdit
          Left = 84
          Top = 25
          Width = 57
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
          Text = '000'
          Visible = False
        end
      end
      object pnlTipo: TPanel
        Left = 6
        Top = 298
        Width = 170
        Height = 125
        Color = 13337441
        ParentBackground = False
        TabOrder = 4
        object lblTipo: TLabel
          Left = 22
          Top = 1
          Width = 52
          Height = 17
          Caption = 'Situa'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rgTipo: TRadioGroup
          Left = 10
          Top = 24
          Width = 150
          Height = 89
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Pendentes'
            'Pagas'
            'Todas')
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object pnlOperacoes: TPanel
      Left = 954
      Top = 1
      Width = 185
      Height = 486
      Align = alRight
      BorderStyle = bsSingle
      TabOrder = 1
      object pnl0: TPanel
        Left = 1
        Top = 1
        Width = 179
        Height = 239
        Align = alTop
        BorderStyle = bsSingle
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 173
          Height = 25
          Align = alTop
          AutoSize = False
          Caption = '   Opera'#231#245'es'
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitLeft = 2
          ExplicitTop = 9
        end
        object pnlBaixaDup: TPanel
          Left = 8
          Top = 40
          Width = 160
          Height = 32
          BevelOuter = bvNone
          Caption = 'pnlAddMovimentacao'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          OnClick = actBaixarExecute
          object imgBaixaDup: TImage
            Left = 12
            Top = 0
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
              E74944415478DAEDD4C10DC2300C05D07809600424A6A02B3006300D740C46A0
              AC010C80103BA0F00F39446D9AC6C10E0752C9B27AA8FF8B1595CC8F1FAA800A
              F82B80B57681B621A2B638C0855F504BD41E88633100C2E76867D40A75433500
              3C8A0062E1EA80A97055404AB81A20355C05C009170770C3450139E10300866C
              D14EF8F0C90CF77F3257D43A75067943766807EE806FC2FB80195AE756787783
              A22BCC5D7B10C04548840F00A908A9F020600A21193E0A1843A0DE92E1518043
              F46FB83199B73D0B10D884913A7932C0DB44E75E1B8993B300DE260CC25F52E1
              2C80D6530115F00129DE9F214F71DC5E0000000049454E44AE426082}
            Stretch = True
            OnClick = actBaixarExecute
          end
          object lblBaixaDup: TLabel
            Left = 48
            Top = 7
            Width = 102
            Height = 17
            Caption = 'Baixar/Restaurar'
            Color = 7237230
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
            OnClick = actBaixarExecute
          end
        end
        object pnlExDup: TPanel
          Left = 8
          Top = 102
          Width = 160
          Height = 32
          BevelOuter = bvNone
          Caption = 'pnlAddMovimentacao'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 1
          OnClick = actExcluirExecute
          object imgExDup: TImage
            Left = 11
            Top = 0
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
              A44944415478DA63641860C038EA8021E780FFFFFF4B00A97D40AC8926751D88
              9D1819195F50C501408BFE53D5A740404D07A0F8164FA890EF006447E0D24C08
              10A37FD40143CB0194F2471D30EA8051078C3A60D401143B805430EA006A38E0
              29909202621BA0194749B4DC06481D06E2A740BD32E43AA01D485590E37B24D0
              06744035B90E6003528D401C070D09520028F41682F4031DF08B2C07D0038C3A
              60C01D00000CE73E30020C91510000000049454E44AE426082}
            Stretch = True
            OnClick = actExcluirExecute
          end
          object lblExDup: TLabel
            Left = 47
            Top = 7
            Width = 102
            Height = 17
            Caption = 'Excluir duplicata'
            Color = 7237230
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
            OnClick = actExcluirExecute
          end
        end
        object pnlAddDoc: TPanel
          Left = 8
          Top = 164
          Width = 160
          Height = 32
          BevelOuter = bvNone
          Caption = 'pnlAddMovimentacao'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 2
          OnClick = actIncluirSimplesExecute
          object imglAddDoc: TImage
            Left = 2
            Top = 0
            Width = 32
            Height = 32
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
            OnClick = actIncluirSimplesExecute
          end
          object lbllAddDoc: TLabel
            Left = 38
            Top = 7
            Width = 113
            Height = 17
            Caption = 'Incluir documento'
            Color = 7237230
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
            OnClick = actIncluirSimplesExecute
          end
        end
      end
      object pnlXML: TPanel
        Left = 1
        Top = 240
        Width = 179
        Height = 104
        Align = alTop
        BorderStyle = bsSingle
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label3: TLabel
          Left = 1
          Top = 1
          Width = 173
          Height = 25
          Align = alTop
          AutoSize = False
          Caption = '   Importa'#231#227'o XML'
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitLeft = 2
          ExplicitTop = 9
        end
        object pnlImpXML: TPanel
          Left = 8
          Top = 48
          Width = 160
          Height = 32
          BevelOuter = bvNone
          Caption = 'pnlAddMovimentacao'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object imgImpXML: TImage
            Left = 7
            Top = 0
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
              AC4944415478DAED96510A80200C86F3989DA4577BEB301D31A8052665CA369D
              A9E10F82E6F6EFC321A686C2521DA05A801D94640CBAFB5CEBF6004289547580
              0EF0D52D58618C506383B409E60B12AF21769604E040D8E22480D81604201EC5
              B30278205EC5B303181F6D7CB46F3F3B00A62C00A15CDF773180D8C72BF91ABA
              AF5E7180734D69819D6300DC16B0E3A50DB9FA1F40F1168803A04748FCF974F7
              EB07E04ABC05CD0270551CE000531907F8D608F5FD0000000049454E44AE4260
              82}
            Stretch = True
          end
          object lblImpXML: TLabel
            Left = 43
            Top = 7
            Width = 110
            Height = 17
            Caption = 'Importar N. Fiscal'
            Color = 7237230
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
        end
      end
      object pnlRelatorio: TPanel
        Left = 1
        Top = 344
        Width = 179
        Height = 137
        Align = alClient
        BorderStyle = bsSingle
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Label4: TLabel
          Left = 1
          Top = 1
          Width = 173
          Height = 25
          Align = alTop
          AutoSize = False
          Caption = '   Relat'#243'rios'
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitLeft = 2
          ExplicitTop = 9
        end
        object pnlRel1: TPanel
          Left = 8
          Top = 40
          Width = 160
          Height = 32
          BevelOuter = bvNone
          Caption = 'pnlAddMovimentacao'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          OnClick = actRel1Execute
          object imgRel1: TImage
            Left = 11
            Top = 0
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000001
              EC4944415478DAED974B2844511880CF552C4459587894B2A1A448290B2CC402
              291B0A4948796CB0404C29C942A29035CA86422479E595C7DA8E2CA42CC502E5
              D5F8FEEE9D9AA6317371EE5870EBEB9F3973FEFF7C73EFB9F79C6BA85F3E0CDF
              06B7DB5D4FA8FE66BD7368370CE3ED270283843A98FBE2E0D950000BF207EC4A
              7C26904F81FCAF8C4E5E07A1CFAAB9635742B74093322FDF36EC4115755E432A
              405E1A9F33ED4A3822607DB725E198805D09DD02CD90E3F353162CC3BAF23331
              750B8C06E9D64DDD61A70492082901BA88DC0A755D8E08D8103C201CFC0BFC0B
              FC69817DC2E16F0A8413A2A87B171201EA44136AA110E2E1168E6186DA378E0A
              50A398300D61B00135B009E910033DD49F7044C01A7C1564805E6B8C47A90947
              D00503E0927541AB8075DA2F618EFC4EAB2DD22340DBA1D5D64A18870CDD0252
              B81F92C97F0A2020E39EC2996E8145C23DB90D5E6D1E815238F1EA2ECB77AD6E
              01B9C6DBE4F67BB545101E20DC4FCAB36E8135C215B96D3EED32FBE37CBA9741
              856E0199F572FA53C97F0FD2572ED7BB6E8144C28532B75E9301FAE52973A35A
              A4F3D54C8E31A8841165EE9067FDD4CF252C29737BD6A8FBE5744B1E2ED49087
              CD903267FD3C5C432C9440B9329F922DF47D31BE3950D00309793F905B4DD682
              0465AE0572974C31F0AEA7DF079ED65D8BF25E04770000000049454E44AE4260
              82}
            Stretch = True
            OnClick = actRel1Execute
          end
          object lblRel1: TLabel
            Left = 47
            Top = 7
            Width = 56
            Height = 17
            Caption = 'Relat'#243'rio'
            Color = 7237230
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
            OnClick = actRel1Execute
          end
        end
      end
    end
    object pnlFundo2: TPanel
      Left = 186
      Top = 1
      Width = 768
      Height = 486
      Align = alClient
      TabOrder = 2
      object pnlRodape: TPanel
        Left = 1
        Top = 456
        Width = 766
        Height = 29
        Align = alBottom
        BorderStyle = bsSingle
        TabOrder = 0
      end
      object pnlRegistros: TPanel
        Left = 1
        Top = 1
        Width = 766
        Height = 455
        Align = alClient
        BorderStyle = bsSingle
        TabOrder = 1
        object dbgrdParcela: TDBGrid
          Left = 1
          Top = 49
          Width = 760
          Height = 401
          Align = alBottom
          DataSource = sPagar
          DrawingStyle = gdsGradient
          GradientEndColor = 13864803
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = dbgrdParcelaDrawColumnCell
          OnDblClick = actEditarNotaExecute
          OnTitleClick = dbgrdParcelaTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'BAIXADA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'N_NF'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMISSAO'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NDUP'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FORNECEDOR'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DVENC'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VDUP'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Segoe UI Semibold'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end>
        end
      end
    end
  end
  object actlstMain: TActionList
    Left = 687
    Top = 212
    object actPesquisar: TAction
      Caption = 'Buscar'
      ImageIndex = 0
      ShortCut = 113
      OnExecute = actPesquisarExecute
    end
    object actImportar: TAction
      Caption = 'Importar XML'
      ImageIndex = 3
      OnExecute = actImportarExecute
    end
    object actExcluir: TAction
      Caption = 'Excluir'
      ImageIndex = 2
      OnExecute = actExcluirExecute
    end
    object actBaixar: TAction
      Caption = ' Baixar'
      ImageIndex = 1
      OnExecute = actBaixarExecute
    end
    object actRel1: TAction
      Caption = 'Relat'#243'rio 1'
      ImageIndex = 4
      OnExecute = actRel1Execute
    end
    object actIncluirSimples: TAction
      Caption = 'actIncluirSimples'
      OnExecute = actIncluirSimplesExecute
    end
    object actEditarNota: TAction
      Caption = 'actEditarNota'
      OnExecute = actEditarNotaExecute
    end
  end
  object dsPagar: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select a.ID ID_NOTA,a.EMISSAO,a.N_NF,'#13#10'b.RAZAO_NOME fornecedor,'#13 +
      #10'c.NDUP,c.DVENC,c.VDUP,c.BAIXA_DATA,c.BAIXA_VALOR,'#13#10'c.BAIXA_USUA' +
      'RIO,c.ID_HISTORICO ID_HISTORICODUP,c.ID_CONTA,'#13#10'c.ID_CAIXA,cast(' +
      #39#39' as char(1)) baixada,'#13#10'c.VDESC,c.VJUROS,c.CHEQUE_NUMERO,d.DT_C' +
      'OMPENSA'#13#10'from NOTA_ENTRADA a'#13#10'left outer join FABRICANTE b on (b' +
      '.CODIGO = a.CODFOR)'#13#10'left outer join NOTA_ENTRADA_PAGAR c on (c.' +
      'ID_NOTAENTRADA = a.ID)'#13#10'left outer join CHEQUE d on (d.id_banco ' +
      '= c.id_conta and d.num_cheque = c.cheque_numero)'#13#10'WHERE'#13#10'    1 =' +
      ' 2'
    FieldDefs = <
      item
        Name = 'ID_NOTA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'EMISSAO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'N_NF'
        DataType = ftInteger
      end
      item
        Name = 'FORNECEDOR'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NDUP'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'DVENC'
        Attributes = [faReadonly]
        DataType = ftDate
      end
      item
        Name = 'VDUP'
        Attributes = [faReadonly]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'BAIXA_DATA'
        Attributes = [faReadonly]
        DataType = ftDate
      end
      item
        Name = 'BAIXA_VALOR'
        Attributes = [faReadonly]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'BAIXA_USUARIO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_HISTORICODUP'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'ID_CONTA'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ID_CAIXA'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'BAIXADA'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VDESC'
        Attributes = [faReadonly]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VJUROS'
        Attributes = [faReadonly]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CHEQUE_NUMERO'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'DT_COMPENSA'
        Attributes = [faReadonly]
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'IndexVenc'
        Fields = 'dvenc'
      end>
    IndexName = 'IndexVenc'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    StoreDefs = True
    Left = 619
    Top = 209
    object dsPagarBAIXADA: TStringField
      Alignment = taCenter
      DisplayLabel = 'Com baixa'
      FieldName = 'BAIXADA'
      Origin = 'BAIXADA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object dsPagarN_NF: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'N'#186' N.F.'
      DisplayWidth = 10
      FieldName = 'N_NF'
      Origin = 'N_NF'
      DisplayFormat = '000'
    end
    object dsPagarEMISSAO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      Required = True
    end
    object dsPagarNDUP: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Duplicata'
      DisplayWidth = 10
      FieldName = 'NDUP'
      Origin = 'NDUP'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '000'
    end
    object dsPagarFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 30
      FieldName = 'FORNECEDOR'
      Origin = 'RAZAO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object dsPagarDVENC: TDateField
      Alignment = taCenter
      DisplayLabel = 'Vencimento'
      FieldName = 'DVENC'
      Origin = 'DVENC'
      ProviderFlags = []
      ReadOnly = True
    end
    object dsPagarVDUP: TFMTBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VDUP'
      Origin = 'VDUP'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object dsPagarID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Origin = 'ID'
      Required = True
    end
    object dsPagarBAIXA_DATA: TDateField
      FieldName = 'BAIXA_DATA'
      Origin = 'BAIXA_DATA'
      ProviderFlags = []
      ReadOnly = True
    end
    object dsPagarBAIXA_VALOR: TFMTBCDField
      FieldName = 'BAIXA_VALOR'
      Origin = 'BAIXA_VALOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object dsPagarBAIXA_USUARIO: TStringField
      FieldName = 'BAIXA_USUARIO'
      Origin = 'BAIXA_USUARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object dsPagarID_HISTORICODUP: TIntegerField
      FieldName = 'ID_HISTORICODUP'
      Origin = 'ID_HISTORICO'
      ProviderFlags = []
      ReadOnly = True
    end
    object dsPagarID_CONTA: TStringField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object dsPagarID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = 'ID_CAIXA'
      ProviderFlags = []
      ReadOnly = True
    end
    object dsPagarVDESC: TFMTBCDField
      FieldName = 'VDESC'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object dsPagarVJUROS: TFMTBCDField
      FieldName = 'VJUROS'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object dsPagarCHEQUE_NUMERO: TIntegerField
      FieldName = 'CHEQUE_NUMERO'
      ReadOnly = True
    end
    object dsPagarDT_COMPENSA: TDateField
      FieldName = 'DT_COMPENSA'
      ReadOnly = True
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 691
    Top = 278
  end
  object sPagar: TDataSource
    DataSet = dsPagar
    Left = 619
    Top = 272
  end
end

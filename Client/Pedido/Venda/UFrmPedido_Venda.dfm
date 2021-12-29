inherited FrmPedido_Venda: TFrmPedido_Venda
  Caption = 'FrmPedido_Venda'
  ClientHeight = 564
  ClientWidth = 871
  Visible = False
  ExplicitWidth = 871
  ExplicitHeight = 564
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 871
    ExplicitWidth = 871
    inherited lblTitulo: TLabel
      Width = 846
      Caption = '         PEDIDO'
      ExplicitWidth = 998
    end
    inherited pnlBotaoSair: TPanel
      Left = 846
      Visible = False
      ExplicitLeft = 846
      ExplicitTop = 0
      ExplicitHeight = 30
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 30
    Width = 871
    Height = 534
    Align = alClient
    BevelOuter = bvNone
    Color = 14803681
    ParentBackground = False
    TabOrder = 1
    object pnltop: TPanel
      Left = 0
      Top = 0
      Width = 871
      Height = 177
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 32
        Top = 11
        Width = 45
        Height = 17
        Caption = 'PEDIDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 161
        Top = 11
        Width = 59
        Height = 17
        Caption = 'EMISS'#195'O*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 290
        Top = 11
        Width = 61
        Height = 17
        Caption = 'ENTREGA*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 32
        Top = 60
        Width = 53
        Height = 17
        Caption = 'CLIENTE*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 32
        Top = 107
        Width = 73
        Height = 17
        Caption = 'VENDEDOR*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 442
        Top = 11
        Width = 80
        Height = 17
        Caption = 'OBSERVA'#199#194'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 30
        Width = 121
        Height = 25
        TabStop = False
        DataField = 'ID'
        DataSource = dsPEDIDO_VENDA
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 161
        Top = 30
        Width = 121
        Height = 25
        DataField = 'EMISSAO'
        DataSource = dsPEDIDO_VENDA
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 290
        Top = 30
        Width = 121
        Height = 25
        DataField = 'ENTREGA'
        DataSource = dsPEDIDO_VENDA
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object dbpsqsCliente: TDBPesquisa
        Left = 26
        Top = 79
        Width = 338
        Height = 25
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 3
        Titulo.Height = 13
        Titulo.Caption = ' '
        ConsultaTabela.Tabela = 'CLIENTE'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'NOME_RAZAO'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        Mostrar.Left = 87
        Mostrar.Top = 0
        Mostrar.Width = 250
        Mostrar.Height = 25
        Mostrar.TabStop = False
        Mostrar.DataField = 'CLIENTE'
        Mostrar.DataSource = dsPEDIDO_VENDA
        Mostrar.Font.Charset = ANSI_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -13
        Mostrar.Font.Name = 'Segoe UI Semibold'
        Mostrar.Font.Style = [fsBold]
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 5
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 25
        Campo.CharCase = ecUpperCase
        Campo.DataField = 'ID_CLIENTE'
        Campo.DataSource = dsPEDIDO_VENDA
        Campo.Font.Charset = ANSI_CHARSET
        Campo.Font.Color = clWindowText
        Campo.Font.Height = -13
        Campo.Font.Name = 'Segoe UI Semibold'
        Campo.Font.Style = [fsBold]
        Campo.ParentFont = False
        Campo.TabOrder = 0
        OnPesquisa = dbpsqsClientePesquisa
        TabOrder = 4
        TabStop = True
      end
      object dbpsqsVendedor: TDBPesquisa
        Left = 26
        Top = 126
        Width = 338
        Height = 25
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 3
        Titulo.Height = 13
        Titulo.Caption = ' '
        ConsultaTabela.Tabela = 'REPRESENTANTE'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'NOME'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        Mostrar.Left = 87
        Mostrar.Top = 0
        Mostrar.Width = 250
        Mostrar.Height = 25
        Mostrar.TabStop = False
        Mostrar.DataField = 'VENDEDOR'
        Mostrar.DataSource = dsPEDIDO_VENDA
        Mostrar.Font.Charset = ANSI_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -13
        Mostrar.Font.Name = 'Segoe UI Semibold'
        Mostrar.Font.Style = [fsBold]
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 5
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 25
        Campo.CharCase = ecUpperCase
        Campo.DataField = 'ID_VENDEDOR'
        Campo.DataSource = dsPEDIDO_VENDA
        Campo.Font.Charset = ANSI_CHARSET
        Campo.Font.Color = clWindowText
        Campo.Font.Height = -13
        Campo.Font.Name = 'Segoe UI Semibold'
        Campo.Font.Style = [fsBold]
        Campo.ParentFont = False
        Campo.TabOrder = 0
        OnPesquisa = dbpsqsVendedorPesquisa
        TabOrder = 5
        TabStop = True
      end
      object DBMemo1: TDBMemo
        Left = 442
        Top = 30
        Width = 351
        Height = 121
        DataField = 'OBSERVACAO'
        DataSource = dsPEDIDO_VENDA
        TabOrder = 3
      end
    end
    object pnlBotton: TPanel
      Left = 0
      Top = 480
      Width = 871
      Height = 54
      Align = alBottom
      TabOrder = 2
      object pnlGravar: TPanel
        Left = 747
        Top = 11
        Width = 120
        Height = 32
        BevelOuter = bvNone
        Caption = 'pnlAddMovimentacao'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        OnClick = actPedidoSalvarExecute
        object imgGravar: TImage
          Left = 3
          Top = 0
          Width = 32
          Height = 32
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
            00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
            174944415478DAED97CB4B5B411487E78A558A267455A81BB705138B5A68BB69
            C1C7A6FA1FB8B6A022818AF84F286AD4852DEEEC5EF001B574D345453751535F
            3B375ADA9D4622BEFD4E6684A1782F0977482864E0E3CC9D7366CEEFDEDC3973
            E3A91237AF2CA02CE0A1C15B9A83B5F7A0D5F3BCDFA51290978840014CF482C6
            1E1AB7C4FF8298B16DB8FF165BC053F80EF1A027115A40D05CBAF722724F82A1
            785105986B11F1C76F6EC102F26DF98AFF7F0484696501A10584AC8C67F0D8F4
            632CB95D6C0176BB81691862E9F38205F8FD24B81F61E6E13DC8C29FE08BD265
            589A14A06EF80055F00DBA58EEC29580714C020EA193B04D9FB826CC22D4C114
            7103A105E06AC06CC035BCF24B6EC5376356A1125EB8103082198424EE4440E2
            B7668D1FF4A7E8F6C3A40B0169A50F1BB9FB75AE6BE8F7C0849C4756F26533E5
            253C314F61C78580634C1422B84FB95E52FA659C815E90E43256638DD5C20964
            5D08C82ABDCFA3B833D6DD4A42D9191D76727D4ADF468C808CCB4FB2D72CBE66
            E6BFB3EE5AD9C98DFF0DE6A7926F04870272DBCA5AE35EC49C9DDCF8A418F5C1
            68E85A6FB6E1165C99A790B27CCF31FBFF246F51FA0594DC7157874D1223777F
            A474854BF9C449F205780663C47D7425A0DA2C2C2FDC057C56BA14A74D48A3D2
            A558B6A794ED1523F4D2D93F2344488D97A22405A6C2274C7EA6491896E432E0
            FCAF1942A428C9A1D30EF54A9F8007F0156649BC6BC7DF01EDA17E19974C6F32
            0000000049454E44AE426082}
          Stretch = True
          OnClick = actPedidoSalvarExecute
        end
        object lblGravar: TLabel
          Left = 48
          Top = 6
          Width = 56
          Height = 20
          Caption = 'SALVAR'
          Color = 7237230
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          OnClick = actPedidoSalvarExecute
        end
      end
      object pnlCancelar: TPanel
        Left = 611
        Top = 11
        Width = 100
        Height = 32
        BevelOuter = bvNone
        Caption = 'pnlAddMovimentacao'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        OnClick = actSairExecute
        object imgCancelar: TImage
          Left = 3
          Top = 0
          Width = 32
          Height = 32
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
            00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000003
            4C4944415478DAC5975F688E511CC7CF6B2BCD5B2BD6D62CDC0D0945AB2526BB
            70855912526643A499528AE9DD8ADE99E56621AD46B35D2D4D993F574AB45D2C
            1272C1B842FE8C29D2B860E6F3EBF93DDEE3D9FBEE799EED9153DF7E9DF3FB73
            BECFEF3CE777CE8999FFDC62618CC7C6C6B211ABC14A301FE4CA30F80A9E837E
            D0178BC57E464A808917228E800A30CBC7FC13B80E5A20F26C4A0498B8009104
            35203B4CB66892858BA011221F421360F2E5885E30C7A31A050FC0632081B340
            112806A5609AC7FE35D8088987810930F906443798610DBF04ADE012C13E4F90
            B12DA05E49B96D046CC3EF862F01FDF23ECFE467C151027C0B927B62886F427C
            AC398444993713318F6381A6D79BF65B9AC6EF410858F13623BA408E0EBD0225
            C4F99889403B624F86789325B109D163CDD5468CFDE308E8567B62527FBBA45D
            C6D64640A25997439AEC8EC5C418F412E840546B577EB845C62932BD532541EC
            38E20598AD431DF8EFFA43402BDC904915994318B4AA2E272212758833DA9562
            552815D325508EB86DA528DFDE6A5190204621E28D49D589727CEFB8041A11C7
            55710F45699A00519018304EB192D6805FD225D089A852453B8ABD19024C8904
            FEB2257768B7139F6A978004AD5045138AC40441A623AE807561497876432FF6
            95E9089C4251EF13685224F03B699C323D8E80BD045D2876064867E8E5C0E702
            62B776E54CA9710934204EA86200C50A3F02932181FD7D44897613D834A5DB86
            BF4011CAA12849602735C63DBEA5AD417FD72E44EF419E2AEB509E0B42202809
            6C0E234EAB6ED83885683453297E0B8A831EBF7E248C537C9E82B93AFE7729D6
            00DEC3A819A3634109F8909083E780F67F8025E30E230DD086D8E776C1760CBB
            439248B745ED769E98B56E27DD8544FED4793A24EB5785434F04999026A7AC5C
            4886D31250E765C6B992C5AD4CB480248E230109C4D5A7D61A16DF55C47864DB
            66BA94AE37CEA5346E0DBF03524A2F67DAA2F8CD344EA13968523F9C3BF956FC
            6E7A7D26BA964B26AE5ACBE136A913B24CF21292E355AEE972D1580AC427CB63
            2F69AFF47EB92F0125916F9C0A29F7C4B00F13F9DBA5F436DA6B1E8A80456481
            493DCDF27CCCE5B673CD384FB341BFD8611FA792DE32E33C4E8554AEAABE98D4
            E3B45F2A5CD098A108FC8BF61B47B27C30D4827D5A0000000049454E44AE4260
            82}
          Stretch = True
          OnClick = actSairExecute
        end
        object lblCancelar: TLabel
          Left = 35
          Top = 8
          Width = 59
          Height = 15
          Caption = 'CANCELAR'
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
          OnClick = actSairExecute
        end
      end
    end
    object pnlClient: TPanel
      Left = 0
      Top = 177
      Width = 871
      Height = 303
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnlClientCenter: TPanel
        Left = 0
        Top = 0
        Width = 871
        Height = 303
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object pgc1: TPageControl
          Left = 0
          Top = 0
          Width = 871
          Height = 303
          ActivePage = tsPagamento
          Align = alClient
          TabOrder = 0
          OnChanging = pgc1Changing
          object tsItem: TTabSheet
            Caption = '   PRODUTO   '
            object pnlProdutoFundo: TPanel
              Left = 0
              Top = 0
              Width = 863
              Height = 275
              Align = alClient
              Color = 14803681
              ParentBackground = False
              TabOrder = 0
              object lblTitContato: TLabel
                Left = 1
                Top = 1
                Width = 861
                Height = 20
                Align = alTop
                AutoSize = False
                Caption = '         PRODUTOS'
                Color = 10114859
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -15
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                Layout = tlCenter
                OnMouseMove = lblTituloMouseMove
                ExplicitLeft = 0
                ExplicitTop = -5
                ExplicitWidth = 862
              end
              object pnlProdutoTop: TPanel
                Left = 1
                Top = 21
                Width = 861
                Height = 52
                Align = alTop
                TabOrder = 0
                object pnlAdicionarItem: TPanel
                  Left = 10
                  Top = 11
                  Width = 100
                  Height = 32
                  BevelOuter = bvNone
                  Caption = 'pnlAddMovimentacao'
                  Color = 7024384
                  ParentBackground = False
                  ShowCaption = False
                  TabOrder = 0
                  object lblAdicionarItem: TLabel
                    Left = 0
                    Top = 0
                    Width = 100
                    Height = 32
                    Align = alClient
                    Alignment = taCenter
                    Caption = 'ADICIONAR'#13#10'PRODUTO'
                    Color = 7237230
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -12
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Transparent = True
                    Layout = tlCenter
                    OnClick = actItemAdicionarExecute
                    ExplicitWidth = 65
                    ExplicitHeight = 30
                  end
                end
                object pnlCriarItem: TPanel
                  Left = 122
                  Top = 11
                  Width = 100
                  Height = 32
                  BevelOuter = bvNone
                  Caption = 'pnlAddMovimentacao'
                  Color = 7024384
                  ParentBackground = False
                  ShowCaption = False
                  TabOrder = 1
                  object lblCriarItem: TLabel
                    Left = 0
                    Top = 0
                    Width = 100
                    Height = 32
                    Align = alClient
                    Alignment = taCenter
                    Caption = 'CRIAR'#13#10'PRODUTO'
                    Color = 7237230
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -12
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Transparent = True
                    Layout = tlCenter
                    OnClick = actItemCriarExecute
                    ExplicitWidth = 56
                    ExplicitHeight = 30
                  end
                end
              end
              object pnlProdutoBotton: TPanel
                Left = 1
                Top = 254
                Width = 861
                Height = 20
                Align = alBottom
                Color = 16764573
                ParentBackground = False
                TabOrder = 2
                object Label6: TLabel
                  Left = 568
                  Top = 2
                  Width = 87
                  Height = 17
                  Caption = 'SUBTOTAL (R$)'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object lblItensSubTotal: TLabel
                  Left = 657
                  Top = 2
                  Width = 120
                  Height = 17
                  AutoSize = False
                  Caption = '0,00'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
              end
              object pnlProdutoClient: TPanel
                Left = 1
                Top = 73
                Width = 861
                Height = 181
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object dbgrdItens: TDBGrid
                  Left = 0
                  Top = 0
                  Width = 861
                  Height = 181
                  Align = alClient
                  DataSource = dsItem
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
                  OnDrawColumnCell = dbgrdItensDrawColumnCell
                  Columns = <
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'ORDEM'
                      Title.Alignment = taCenter
                      Width = 50
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'PRODUTO'
                      Width = 260
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'QTDE'
                      Width = 90
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'UNIDADE'
                      Title.Alignment = taCenter
                      Width = 50
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'VUNIT'
                      Width = 90
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'VDESC'
                      Width = 90
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'TOTAL'
                      Visible = True
                    end>
                end
              end
            end
          end
          object tsPagamento: TTabSheet
            Caption = '   PAGAMENTO   '
            ImageIndex = 1
            object pnlPagtoFundo: TPanel
              Left = 0
              Top = 0
              Width = 863
              Height = 275
              Align = alClient
              Color = 14803681
              ParentBackground = False
              TabOrder = 0
              object pnlPagtoLeft: TPanel
                Left = 1
                Top = 1
                Width = 185
                Height = 273
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object pnlPagtoLeftTop: TPanel
                  Left = 0
                  Top = 0
                  Width = 185
                  Height = 54
                  Align = alTop
                  Color = 16764573
                  ParentBackground = False
                  TabOrder = 0
                  object Label7: TLabel
                    Left = 6
                    Top = 7
                    Width = 170
                    Height = 17
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'TOTAL A PAGAR (R$)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object lblPagtoTotPagar: TLabel
                    Left = 6
                    Top = 26
                    Width = 170
                    Height = 21
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '0,00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                end
                object pnlPagtoLeftBotton: TPanel
                  Left = 0
                  Top = 233
                  Width = 185
                  Height = 40
                  Align = alBottom
                  Color = 7024384
                  ParentBackground = False
                  TabOrder = 2
                  OnClick = actPagtoGerarDuplicatasExecute
                  object Label8: TLabel
                    Left = 2
                    Top = 10
                    Width = 144
                    Height = 20
                    Caption = 'GERAR DUPLICATAS'
                    Color = 7237230
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -15
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Transparent = True
                    Layout = tlCenter
                    OnClick = actPagtoGerarDuplicatasExecute
                  end
                  object imgPagtoGerarDup: TImage
                    Left = 152
                    Top = 1
                    Width = 32
                    Height = 38
                    Align = alRight
                    Center = True
                    Picture.Data = {
                      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
                      001908020000004B8B123400000006624B474400FF00FF00FFA0BDA793000000
                      CD4944415478DA6364D0CF66A0126024C62C31215E570B8DA5DB4E536A163F0F
                      E7D185455A4A1239EDABA7AD3A4491598C8C8C13CB427223EDFFFFFF9FDFB566
                      F2F28314F99148E388328B48E388358B18E348300B62DC84D2E0BC2807ACC691
                      66167EE348360B8F71E49885CB38C68E79BBC8300B625C7280A5B00037D03848
                      326604B2C8330B19FCFBF75F2BA885AAEE223BBCE0692DAF73CD9415E0F0222F
                      1E310D22C72C5C06916C161E8348330BBF41249845D02062CD22C620A2CC22D2
                      20A2CCA26679CF40C57A887800005CFCC982073A96160000000049454E44AE42
                      6082}
                    OnClick = actPagtoGerarDuplicatasExecute
                    ExplicitLeft = 11
                    ExplicitTop = 8
                    ExplicitHeight = 32
                  end
                end
                object pnlPagtoLeftClient: TPanel
                  Left = 0
                  Top = 54
                  Width = 185
                  Height = 179
                  Align = alClient
                  BevelOuter = bvNone
                  Color = 10198939
                  ParentBackground = False
                  TabOrder = 1
                  object Label9: TLabel
                    Left = 7
                    Top = 19
                    Width = 171
                    Height = 17
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'FORMA DE PAGAMENTO'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object lbl2: TLabel
                    Left = 7
                    Top = 67
                    Width = 171
                    Height = 17
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'PARCELAMENTO'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label10: TLabel
                    Left = 7
                    Top = 115
                    Width = 171
                    Height = 17
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'VALOR (R$)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object cbbPagtoForma: TComboBox
                    Left = 7
                    Top = 38
                    Width = 171
                    Height = 25
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    OnChange = cbbPagtoFormaChange
                    OnEnter = cbbPagtoFormaEnter
                  end
                  object cbbPagtoParcela: TComboBox
                    Left = 7
                    Top = 86
                    Width = 171
                    Height = 25
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                    OnChange = cbbPagtoParcelaChange
                    OnEnter = cbbPagtoParcelaEnter
                  end
                  object edtPagtoValor: TEdit
                    Left = 7
                    Top = 134
                    Width = 171
                    Height = 25
                    Alignment = taRightJustify
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                    Text = '0,00'
                    OnKeyPress = edtPagtoValorKeyPress
                  end
                end
              end
              object pnlPagtoClient: TPanel
                Left = 186
                Top = 1
                Width = 676
                Height = 273
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object pnlPagtoClientTop: TPanel
                  Left = 0
                  Top = 0
                  Width = 676
                  Height = 35
                  Align = alTop
                  TabOrder = 0
                  object lblTitPagto: TLabel
                    Left = 0
                    Top = 7
                    Width = 677
                    Height = 21
                    Alignment = taCenter
                    AutoSize = False
                    Caption = 'CART'#195'O DE CR'#201'DITO (ENTRADA + 03x SEM JUROS))'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                end
                object pnlPagtoClientCenter: TPanel
                  Left = 0
                  Top = 35
                  Width = 676
                  Height = 238
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 1
                  object pnlPagtoClientRight: TPanel
                    Left = 424
                    Top = 0
                    Width = 252
                    Height = 238
                    Align = alRight
                    BevelOuter = bvNone
                    TabOrder = 1
                    object pnlPagtoExcDup: TPanel
                      Left = 4
                      Top = 96
                      Width = 32
                      Height = 32
                      BevelOuter = bvNone
                      Caption = 'pnlAddMovimentacao'
                      Color = 7024384
                      ParentBackground = False
                      ShowCaption = False
                      TabOrder = 0
                      object imgPagtoExcDup: TImage
                        Left = 0
                        Top = 0
                        Width = 32
                        Height = 32
                        Hint = 'excluir duplicatas'
                        Align = alClient
                        ParentShowHint = False
                        Picture.Data = {
                          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
                          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
                          A44944415478DA63641860C038EA8021E780FFFFFF4B00A97D40AC8926751D88
                          9D1819195F50C501408BFE53D5A740404D07A0F8164FA890EF006447E0D24C08
                          10A37FD40143CB0194F2471D30EA8051078C3A60D401143B805430EA006A38E0
                          29909202621BA0194749B4DC06481D06E2A740BD32E43AA01D485590E37B24D0
                          06744035B90E6003528D401C070D09520028F41682F4031DF08B2C07D0038C3A
                          60C01D00000CE73E30020C91510000000049454E44AE426082}
                        ShowHint = True
                        Stretch = True
                        OnClick = actPagtoLimparExecute
                        ExplicitLeft = 2
                      end
                    end
                  end
                  object dbgrdPagto: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 424
                    Height = 238
                    Align = alClient
                    DataSource = dsContasAReceber
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
                    Columns = <
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'NDUP'
                        Title.Alignment = taCenter
                        Visible = True
                      end
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'DVENC'
                        Title.Alignment = taCenter
                        Width = 90
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'VDUP'
                        Visible = True
                      end>
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited actlst1: TActionList
    Left = 736
    Top = 88
    object actPedidoSalvar: TAction
      Caption = 'actPedidoSalvar'
      OnExecute = actPedidoSalvarExecute
    end
    object actPedidoCancelar: TAction
      Caption = 'actPedidoCancelar'
      OnExecute = actPedidoCancelarExecute
    end
    object actItemAdicionar: TAction
      Caption = 'actItemAdicionar'
      OnExecute = actItemAdicionarExecute
    end
    object actItemCriar: TAction
      Caption = 'actItemCriar'
      OnExecute = actItemCriarExecute
    end
    object actItemExcluir: TAction
      Caption = 'actItemExcluir'
      OnExecute = actItemExcluirExecute
    end
    object actPagtoGerarDuplicatas: TAction
      Caption = 'actPagtoGerarDuplicatas'
      OnExecute = actPagtoGerarDuplicatasExecute
    end
    object actPagtoLimpar: TAction
      Caption = 'actPagtoLimpar'
      OnExecute = actPagtoLimparExecute
    end
  end
  object cdsPEDIDO_VENDA_ITEM: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 
      'select pi.ID_PEDIDO, pi.ORDEM, pi.ID_PRODUTO, pi.VUNIT, pi.QTDE,' +
      ' pi.UNIDADE, '#13#10'pi.QTDE_BAIXA, pi.VDESC, pi.SUBTOTAL, pi.TOTAL, p' +
      '.NOME PRODUTO'#13#10'from PEDIDO_VENDA_ITEM pi'#13#10'left join produto p on' +
      ' (p.codigo=pi.id_produto)'#13#10'where 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    AfterInsert = cdsPEDIDO_VENDA_ITEMAfterInsert
    AfterDelete = cdsPEDIDO_VENDA_ITEMAfterInsert
    Left = 389
    Top = 368
    object cdsPEDIDO_VENDA_ITEMID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsPEDIDO_VENDA_ITEMORDEM: TIntegerField
      FieldName = 'ORDEM'
      Required = True
    end
    object cdsPEDIDO_VENDA_ITEMID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsPEDIDO_VENDA_ITEMVUNIT: TFMTBCDField
      DisplayLabel = 'UNIT'#193'RIO (R$)'
      FieldName = 'VUNIT'
      Required = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsPEDIDO_VENDA_ITEMQTDE: TBCDField
      DisplayLabel = 'QTDE.'
      FieldName = 'QTDE'
      Required = True
      DisplayFormat = '#,##0.000'
      Precision = 18
    end
    object cdsPEDIDO_VENDA_ITEMUNIDADE: TStringField
      DisplayLabel = 'UND'
      FieldName = 'UNIDADE'
      Required = True
      Size = 10
    end
    object cdsPEDIDO_VENDA_ITEMQTDE_BAIXA: TBCDField
      FieldName = 'QTDE_BAIXA'
      Required = True
      Precision = 18
    end
    object cdsPEDIDO_VENDA_ITEMVDESC: TFMTBCDField
      DisplayLabel = 'DESCONTO (R$)'
      FieldName = 'VDESC'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsPEDIDO_VENDA_ITEMSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsPEDIDO_VENDA_ITEMTOTAL: TFMTBCDField
      DisplayLabel = 'TOTAL (R$)'
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsPEDIDO_VENDA_ITEMPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 100
    end
    object cdsPEDIDO_VENDA_ITEMSUBTOTAL_GERAL: TAggregateField
      FieldName = 'SUBTOTAL_GERAL'
      Active = True
      DisplayName = ''
      Expression = 'sum(TOTAL)'
    end
  end
  object cdsCONTAS_A_RECEBER: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 
      'select ID_TABELA_MASTER, NDUP, VDUP, DVENC, TIPO'#13#10'from CONTAS_A_' +
      'RECEBER  '#13#10'where 1=2'
    FieldDefs = <
      item
        Name = 'ID_TABELA_MASTER'
        DataType = ftInteger
      end
      item
        Name = 'NDUP'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'VDUP'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'DVENC'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'TIPO'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    StoreDefs = True
    AfterInsert = cdsCONTAS_A_RECEBERAfterInsert
    Left = 389
    Top = 418
    object cdsCONTAS_A_RECEBERTIPO: TIntegerField
      FieldName = 'TIPO'
      Required = True
    end
    object cdsCONTAS_A_RECEBERID_TABELA_MASTER: TIntegerField
      FieldName = 'ID_TABELA_MASTER'
    end
    object cdsCONTAS_A_RECEBERNDUP: TIntegerField
      DisplayLabel = 'PARCELA'
      FieldName = 'NDUP'
      Required = True
      DisplayFormat = '00'
    end
    object cdsCONTAS_A_RECEBERVDUP: TFMTBCDField
      DisplayLabel = 'VALOR (R$)'
      FieldName = 'VDUP'
      Required = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsCONTAS_A_RECEBERDVENC: TDateField
      DisplayLabel = 'VENCIMENTO'
      FieldName = 'DVENC'
      Required = True
    end
    object cdsCONTAS_A_RECEBERTOT_PAGO: TAggregateField
      FieldName = 'TOT_PAGO'
      Active = True
      DisplayName = ''
      Expression = 'sum(vdup)'
    end
  end
  object cdsPEDIDO_VENDA: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select p.*,c.nome_razao cliente, r.nome vendedor'#13#10'from PEDIDO_VE' +
      'NDA p'#13#10'left join cliente c on (c.codigo=p.id_cliente)'#13#10'left join' +
      ' representante r on (r.codigo=p.id_vendedor)'#13#10'where 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    AfterInsert = cdsPEDIDO_VENDAAfterInsert
    Left = 393
    Top = 325
    object cdsPEDIDO_VENDAID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPEDIDO_VENDAEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object cdsPEDIDO_VENDAENTRADA: TSQLTimeStampField
      FieldName = 'ENTRADA'
      Required = True
    end
    object cdsPEDIDO_VENDAENTREGA: TDateField
      FieldName = 'ENTREGA'
    end
    object cdsPEDIDO_VENDAID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object cdsPEDIDO_VENDAID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPEDIDO_VENDAOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
    object cdsPEDIDO_VENDACLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsPEDIDO_VENDAVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 45
    end
    object cdsPEDIDO_VENDAUSUARIO: TStringField
      FieldName = 'USUARIO'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsPEDIDO_VENDA: TDataSource
    DataSet = cdsPEDIDO_VENDA
    Left = 504
    Top = 325
  end
  object dsItem: TDataSource
    DataSet = cdsPEDIDO_VENDA_ITEM
    Left = 502
    Top = 369
  end
  object dsContasAReceber: TDataSource
    DataSet = cdsCONTAS_A_RECEBER
    Left = 501
    Top = 418
  end
end

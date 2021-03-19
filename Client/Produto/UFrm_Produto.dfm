inherited Frm_Produto: TFrm_Produto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 650
  ClientWidth = 700
  OnKeyDown = FormKeyDown
  ExplicitWidth = 700
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 700
    Caption = '         CADASTRO DE PRODUTO'
    ExplicitWidth = 700
  end
  inherited pnlFundo0: TPanel
    Width = 700
    Height = 620
    ExplicitWidth = 700
    ExplicitHeight = 620
    inherited Panel1: TPanel
      Height = 618
      ExplicitHeight = 618
    end
    inherited pnlFundo1: TPanel
      Width = 617
      Height = 618
      Color = 14803681
      ParentColor = False
      ExplicitWidth = 617
      ExplicitHeight = 618
      inherited Panel4: TPanel
        Top = 597
        Width = 615
        TabOrder = 1
        ExplicitTop = 597
        ExplicitWidth = 615
      end
      object pnlFundo2: TPanel
        Left = 1
        Top = 1
        Width = 615
        Height = 596
        Align = alClient
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 613
          Height = 362
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object pnlPreco: TPanel
            Left = 1
            Top = 201
            Width = 611
            Height = 160
            Align = alClient
            BorderStyle = bsSingle
            Caption = 'pnlPreco'
            ShowCaption = False
            TabOrder = 1
            object lblTitPreco: TLabel
              Left = 1
              Top = 1
              Width = 605
              Height = 20
              Align = alTop
              AutoSize = False
              Caption = '  PRE'#199'OS'
              Color = 10114859
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
              OnMouseMove = lblTituloMouseMove
              ExplicitWidth = 587
            end
            object pnlPrecoCusto: TPanel
              Left = 1
              Top = 21
              Width = 96
              Height = 134
              Align = alLeft
              Caption = 'pnlPrecoCusto'
              ShowCaption = False
              TabOrder = 0
              object Label3: TLabel
                Left = 2
                Top = 16
                Width = 36
                Height = 15
                Caption = 'CUSTO'
                FocusControl = dbedtPRECO_CUSTO
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 2
                Top = 56
                Width = 79
                Height = 15
                Caption = #218'ltima compra'
                FocusControl = dbedtPRECO_CUSTO
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object dbedtPRECO_CUSTO: TDBEdit
                Left = 2
                Top = 32
                Width = 80
                Height = 23
                DataField = 'PRECO_CUSTO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
            object pnlPrecoCenter: TPanel
              Left = 97
              Top = 21
              Width = 509
              Height = 134
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlPrecoCenter'
              ShowCaption = False
              TabOrder = 1
              object pnlPVenda: TPanel
                Left = 0
                Top = 0
                Width = 509
                Height = 67
                Align = alTop
                BevelOuter = bvNone
                Caption = 'pnlPVenda'
                ShowCaption = False
                TabOrder = 0
                object Label15: TLabel
                  Left = 10
                  Top = 12
                  Width = 86
                  Height = 15
                  Caption = 'VENDA VAREJO*'
                  FocusControl = dbedtPRECO_VENDA
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                end
                object dbedtPRECO_VENDA: TDBEdit
                  Left = 11
                  Top = 32
                  Width = 93
                  Height = 23
                  DataField = 'PRECO_VENDA'
                  DataSource = ds
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object pnlLucro: TPanel
                  Left = 129
                  Top = 7
                  Width = 203
                  Height = 52
                  TabOrder = 1
                  Visible = False
                  object lblLucro: TLabel
                    Left = 1
                    Top = 1
                    Width = 85
                    Height = 50
                    Align = alLeft
                    Alignment = taCenter
                    AutoSize = False
                    Caption = '150,00%'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clGreen
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Layout = tlCenter
                    ExplicitTop = 2
                    ExplicitHeight = 48
                  end
                  object Label12: TLabel
                    Left = 92
                    Top = 9
                    Width = 109
                    Height = 15
                    Alignment = taCenter
                    Caption = 'MARGEM DE LUCRO'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label13: TLabel
                    Left = 92
                    Top = 28
                    Width = 109
                    Height = 11
                    Alignment = taCenter
                    AutoSize = False
                    Caption = 'APROXIMADA VAREJO'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -8
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                end
                object pnlDescMaximo: TPanel
                  Left = 368
                  Top = 0
                  Width = 123
                  Height = 67
                  Caption = 'pnlDescMaximo'
                  Enabled = False
                  ShowCaption = False
                  TabOrder = 0
                  object lblTitDesc: TLabel
                    Left = 1
                    Top = 1
                    Width = 121
                    Height = 28
                    Align = alTop
                    Alignment = taCenter
                    AutoSize = False
                    Caption = '% M'#225'ximo de '#13#10'Desconto na Venda'
                    Color = 10114859
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -11
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentColor = False
                    ParentFont = False
                    Transparent = False
                    WordWrap = True
                    OnMouseMove = lblTituloMouseMove
                    ExplicitWidth = 175
                  end
                  object DBEdit11: TDBEdit
                    Left = 27
                    Top = 36
                    Width = 70
                    Height = 23
                    TabStop = False
                    DataField = 'DESC_MAXIMO'
                    DataSource = ds
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                end
              end
              object pnlPAtac: TPanel
                Left = 0
                Top = 67
                Width = 509
                Height = 67
                Align = alClient
                BevelOuter = bvNone
                Caption = 'pnlPAtac'
                ShowCaption = False
                TabOrder = 1
                object Label16: TLabel
                  Left = 10
                  Top = 13
                  Width = 94
                  Height = 15
                  Caption = 'VENDA ATACADO'
                  FocusControl = dbedtPRECO_ATACADO
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                end
                object dbedtPRECO_ATACADO: TDBEdit
                  Left = 11
                  Top = 32
                  Width = 93
                  Height = 23
                  DataField = 'PRECO_ATACADO'
                  DataSource = ds
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object pnlLucroAtacado: TPanel
                  Left = 129
                  Top = 8
                  Width = 203
                  Height = 52
                  TabOrder = 1
                  Visible = False
                  object lblLucroAtacado: TLabel
                    Left = 1
                    Top = 1
                    Width = 85
                    Height = 50
                    Align = alLeft
                    Alignment = taCenter
                    AutoSize = False
                    Caption = '150,00%'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clGreen
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Layout = tlCenter
                    ExplicitTop = 2
                    ExplicitHeight = 48
                  end
                  object Label18: TLabel
                    Left = 92
                    Top = 9
                    Width = 109
                    Height = 15
                    Alignment = taCenter
                    Caption = 'MARGEM DE LUCRO'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label19: TLabel
                    Left = 92
                    Top = 28
                    Width = 109
                    Height = 11
                    Alignment = taCenter
                    AutoSize = False
                    Caption = 'APROXIMADA ATACADO'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -8
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                end
                object pnlQtdeMinAtac: TPanel
                  Left = 354
                  Top = 0
                  Width = 155
                  Height = 67
                  Align = alRight
                  BevelOuter = bvNone
                  Caption = 'pnlQtdeMinAtac'
                  ShowCaption = False
                  TabOrder = 0
                  TabStop = True
                  Visible = False
                  object Label2: TLabel
                    Left = 4
                    Top = 13
                    Width = 147
                    Height = 15
                    Caption = 'QTDE MINIMA P/ ATACADO'
                    FocusControl = dbedtQTDE_MIN_ATACADO
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object dbedtQTDE_MIN_ATACADO: TDBEdit
                    Left = 43
                    Top = 34
                    Width = 70
                    Height = 23
                    DataField = 'QTDE_MIN_ATACADO'
                    DataSource = ds
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                end
              end
            end
          end
          object pnlTopo: TPanel
            Left = 1
            Top = 1
            Width = 611
            Height = 200
            Align = alTop
            BevelOuter = bvNone
            Caption = 'pnlTopo'
            ParentBackground = False
            ParentColor = True
            ShowCaption = False
            TabOrder = 0
            object Label1: TLabel
              Left = 147
              Top = 7
              Width = 68
              Height = 15
              Caption = 'DESCRI'#199#195'O*'
              FocusControl = DBEdit1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 148
              Top = 110
              Width = 67
              Height = 15
              Caption = 'PESO BRUTO'
              FocusControl = DBEdit5
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 318
              Top = 110
              Width = 108
              Height = 15
              Caption = 'C'#211'DIGO DE BARRAS'
              FocusControl = DBEdit7
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object imgTrilha: TImage
              Left = 555
              Top = 12
              Width = 48
              Height = 48
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
                003008060000005702F987000000097048597300000B1300000B1301009A9C18
                000003D54944415478DAED98DB6B53491CC7E737B96CB3A69E865ABC3E28D82A
                14EAF6A122695AAB2012F192AA85B5B8EC83780103C5F5C1FF41500AD5075716
                5CBC8297A445B462AD6993AA6961D542D1A40B0AA2E2A5B4595BB69A9319BFA7
                362FEA1E53613309E40BC3FC7232A5DFCFE4777E732196E722D5060A00AA0D14
                00541B2800A8365000506DE0FF06A0D56EF72AC9F95AC40BD02C59F295427B41
                4274F7DCB9730FB19C31404343C33C914A9D60526ECE92E9AF4BCA769BAEEFBD
                158DBECA1800E617095DFF0B611906C4807F1EFD20DABF59F1CC9803AD0AFF6F
                07FA6578F4C69A4A5577DFBDFB3C1300AAF778AEA35F8FF607B75AFDA1506832
                1BC6BF32914598C863087701A4331C896C609FA5D31700AB6B6BBD92E81AC2C1
                91D1D19AA1A1A10F2ACCA7555959692F75B906105671C6BCA148A4D31400B3DF
                8AAE05CDDF1B891C57693EADBADA5A3F11B531A2D6DE70F8C0B700CEA26B4605
                58890A30A0DABCA1068FC723180BC3ECA59E48A4C9140063577029D7F5F6F51D
                6126E52BAB006EF74F82F3FB4645822F9F29402E6A4600126FFE44C99BE5CEE0
                D003D5C6670C30EA5B5C42CCFE18E15C0B59FCC5814739F1126704306DFE06C2
                95D38F0431FA550BC6CEE43CC08877E96CCB0FFCA6611E0FDEE2CD9D8364C27E
                04C54BCA5FB4F6E173390D30D658B11BF5E677980E61D6C701B0514AF61B113B
                8C01AFB5607CA10AE35854D7C0F4383C24D300139393CD4E87639BADA8A8A3AB
                AB2B310560A40F67F64D13A9F1CBB32CCE7300D82299ACE69C6C4227A7AB2376
                5B0500D62463EF53869DC12164C25198BD0A6FC5061B72634F4F387CF28B2A94
                F05504D300AEE0B0D24A04806674A7D9A7F5C8825F6004595D8AB8FF7D32B92E
                1A8DFE93D30086EAEAEA7662F6FF44C8A71FF56383B91E1BCC31E343CE0318AA
                AFAFDFCF843806905764B32D4F9BCF1B00436E5422BBDDFEF8F3AD7DDE00FC97
                F202007E28B1A5FCA0E474D315883F3405186B2CBFC8246D4709F5CCBE12EB53
                6DDE50626B458D14AC5F4A79D6D53EBCD31420E12B6F958C5AB088F9B5403C27
                F642C80A3F7E853662B2550B0E9B1F6830D88BC1D7F0CDA066B5D5D045B5474A
                D954694FE8C901E45115162FAF1688991F29A7F2CD578E433D4D1DEAB5920F7E
                3AF554C9A1FE59D3224771F2C73684BB60AC536B8F6FA06F1DEA0DBDDD58B1D0
                6A65F71196B14FD72A17F0670FF15E64E55A4508E980B31530F7339BBE56D175
                563DE76A3CA36B95298D6F5E3237C56D278C8A940DD3260A5A45729FB3E349E6
                175B6919E9F4AE71E92AC168AD14349F3859B3E1580AA913972F3993DDC581BF
                EFD1F75C2DE68B0A00AA550050AD02806A1500542BEF013E02BD20B1406C58C3
                2D0000000049454E44AE426082}
              OnClick = actTrilharExecute
            end
            object lblTrilhar: TLabel
              Left = 554
              Top = 5
              Width = 48
              Height = 15
              Caption = 'TRILHAR'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = actTrilharExecute
            end
            object Label8: TLabel
              Left = 148
              Top = 138
              Width = 67
              Height = 17
              Caption = 'ANOTA'#199#195'O'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object DBEdit1: TDBEdit
              Left = 218
              Top = 4
              Width = 333
              Height = 23
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = ds
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBPesquisa1: TDBPesquisa
              Left = 161
              Top = 31
              Width = 390
              Height = 22
              Titulo.Left = 0
              Titulo.Top = 3
              Titulo.Width = 55
              Titulo.Height = 15
              Titulo.Caption = 'UNIDADE*'
              Titulo.Font.Charset = ANSI_CHARSET
              Titulo.Font.Color = clWindowText
              Titulo.Font.Height = -12
              Titulo.Font.Name = 'Segoe UI'
              Titulo.Font.Style = []
              Titulo.ParentFont = False
              ConsultaTabela.Tabela = 'UNIDADE'
              ConsultaTabela.Pesquisa = 'codigo'
              ConsultaTabela.Mostrar = 'SIGLA'
              Mostrar.Left = 139
              Mostrar.Top = 0
              Mostrar.Width = 250
              Mostrar.Height = 21
              Mostrar.TabStop = False
              Mostrar.DataField = 'DESCRI_UNIDADE'
              Mostrar.DataSource = ds
              Mostrar.Font.Charset = DEFAULT_CHARSET
              Mostrar.Font.Color = clBlue
              Mostrar.Font.Height = -11
              Mostrar.Font.Name = 'Tahoma'
              Mostrar.Font.Style = []
              Mostrar.ParentFont = False
              Mostrar.ReadOnly = True
              Mostrar.TabOrder = 1
              Campo.Left = 57
              Campo.Top = 0
              Campo.Width = 57
              Campo.Height = 21
              Campo.CharCase = ecUpperCase
              Campo.DataField = 'COD_UNIDADE'
              Campo.DataSource = ds
              Campo.TabOrder = 0
              OnPesquisa = DBPesquisa1Pesquisa
              TabOrder = 2
              TabStop = True
            end
            object DBEdit5: TDBEdit
              Left = 218
              Top = 107
              Width = 95
              Height = 23
              DataField = 'PESO_BRUTO'
              DataSource = ds
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit7: TDBEdit
              Left = 429
              Top = 107
              Width = 122
              Height = 23
              DataField = 'EAN_CODBARRA'
              DataSource = ds
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object DBPesquisa5: TDBPesquisa
              Left = 173
              Top = 57
              Width = 378
              Height = 21
              Titulo.Left = 0
              Titulo.Top = 3
              Titulo.Width = 43
              Titulo.Height = 17
              Titulo.Caption = 'GRUPO'
              Titulo.Font.Charset = ANSI_CHARSET
              Titulo.Font.Color = clWindowText
              Titulo.Font.Height = -13
              Titulo.Font.Name = 'Segoe UI'
              Titulo.Font.Style = []
              Titulo.ParentFont = False
              ConsultaTabela.Tabela = 'GRUPO_PROD'
              ConsultaTabela.Pesquisa = 'codigo'
              ConsultaTabela.Mostrar = 'descri'
              Mostrar.Left = 127
              Mostrar.Top = 0
              Mostrar.Width = 250
              Mostrar.Height = 21
              Mostrar.TabStop = False
              Mostrar.DataField = 'GRUPO'
              Mostrar.DataSource = ds
              Mostrar.Font.Charset = DEFAULT_CHARSET
              Mostrar.Font.Color = clBlue
              Mostrar.Font.Height = -11
              Mostrar.Font.Name = 'Tahoma'
              Mostrar.Font.Style = []
              Mostrar.ParentFont = False
              Mostrar.ReadOnly = True
              Mostrar.TabOrder = 1
              Campo.Left = 45
              Campo.Top = 0
              Campo.Width = 57
              Campo.Height = 21
              Campo.CharCase = ecUpperCase
              Campo.DataField = 'COD_GRUPO'
              Campo.DataSource = ds
              Campo.TabOrder = 0
              OnPesquisa = DBPesquisa5Pesquisa
              TabOrder = 3
              TabStop = True
            end
            object DBPesquisa6: TDBPesquisa
              Left = 150
              Top = 82
              Width = 401
              Height = 21
              Titulo.Left = 0
              Titulo.Top = 3
              Titulo.Width = 66
              Titulo.Height = 17
              Titulo.Caption = 'SUBGRUPO'
              Titulo.Font.Charset = ANSI_CHARSET
              Titulo.Font.Color = clWindowText
              Titulo.Font.Height = -13
              Titulo.Font.Name = 'Segoe UI'
              Titulo.Font.Style = []
              Titulo.ParentFont = False
              ConsultaTabela.Tabela = 'SUBGRUPO_PROD'
              ConsultaTabela.Pesquisa = 'codigo'
              ConsultaTabela.Mostrar = 'descri'
              Mostrar.Left = 150
              Mostrar.Top = 0
              Mostrar.Width = 250
              Mostrar.Height = 21
              Mostrar.TabStop = False
              Mostrar.DataField = 'SUBGRUPO'
              Mostrar.DataSource = ds
              Mostrar.Font.Charset = DEFAULT_CHARSET
              Mostrar.Font.Color = clBlue
              Mostrar.Font.Height = -11
              Mostrar.Font.Name = 'Tahoma'
              Mostrar.Font.Style = []
              Mostrar.ParentFont = False
              Mostrar.ReadOnly = True
              Mostrar.TabOrder = 1
              Campo.Left = 68
              Campo.Top = 0
              Campo.Width = 57
              Campo.Height = 21
              Campo.CharCase = ecUpperCase
              Campo.DataField = 'COD_SUBGRUPO'
              Campo.DataSource = ds
              Campo.TabOrder = 0
              OnPesquisa = DBPesquisa6Pesquisa
              TabOrder = 4
              TabStop = True
            end
            object pnlTopLeft: TPanel
              Left = 0
              Top = 0
              Width = 110
              Height = 200
              Align = alLeft
              Caption = 'pnlTopLeft'
              ShowCaption = False
              TabOrder = 0
              object Label6: TLabel
                Left = 0
                Top = 2
                Width = 110
                Height = 15
                Alignment = taCenter
                AutoSize = False
                Caption = 'C'#211'DIGO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object dbtxtCODIGO: TDBText
                Left = 0
                Top = 21
                Width = 110
                Height = 17
                Alignment = taCenter
                DataField = 'CODIGO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label20: TLabel
                Left = 0
                Top = 45
                Width = 110
                Height = 15
                Alignment = taCenter
                AutoSize = False
                Caption = 'SITUA'#199#194'O'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object dbcbbSITUACAO: TDBComboBox
                Left = 1
                Top = 66
                Width = 108
                Height = 25
                Style = csDropDownList
                Color = clWhite
                DataField = 'SITUACAO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                Items.Strings = (
                  'ATIVO'
                  'INATIVO')
                ParentFont = False
                TabOrder = 0
                TabStop = False
              end
            end
            object DBMemo1: TDBMemo
              Left = 218
              Top = 138
              Width = 333
              Height = 60
              DataField = 'DESCRICAO'
              DataSource = ds
              TabOrder = 7
            end
          end
        end
        object pnlPages: TPanel
          Left = 1
          Top = 363
          Width = 613
          Height = 232
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'pnlPages'
          ParentColor = True
          ShowCaption = False
          TabOrder = 1
          object PageControl1: TPageControl
            Left = 0
            Top = 0
            Width = 613
            Height = 232
            ActivePage = tsFiscal
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = False
            object tsEstoque: TTabSheet
              Caption = 'ESTOQUE'
              object pnl2: TPanel
                Left = 0
                Top = 0
                Width = 605
                Height = 204
                Align = alClient
                Color = 14803681
                ParentBackground = False
                TabOrder = 0
                object pnlMovimentar: TPanel
                  Left = 1
                  Top = 102
                  Width = 603
                  Height = 85
                  Align = alTop
                  Caption = 'pnlMovimentar'
                  ShowCaption = False
                  TabOrder = 1
                  object Label21: TLabel
                    Left = 8
                    Top = 30
                    Width = 102
                    Height = 17
                    Caption = 'MOVIMENTO DE:'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label22: TLabel
                    Left = 144
                    Top = 30
                    Width = 83
                    Height = 17
                    Caption = 'QUANTIDADE'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object lblTitMov: TLabel
                    Left = 1
                    Top = 1
                    Width = 601
                    Height = 20
                    Align = alTop
                    AutoSize = False
                    Caption = '  REALIZAR MOVIMENTA'#199#195'O DE ESTOQUE'
                    Color = 10114859
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Transparent = False
                    Layout = tlCenter
                    OnMouseMove = lblTituloMouseMove
                    ExplicitLeft = 2
                    ExplicitTop = 9
                    ExplicitWidth = 295
                  end
                  object btnMovimentar: TSpeedButton
                    Left = 248
                    Top = 51
                    Width = 23
                    Height = 25
                    Action = actMovimentar
                    Flat = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object cbbTpMov: TComboBox
                    Left = 8
                    Top = 51
                    Width = 120
                    Height = 25
                    Style = csDropDownList
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ItemIndex = 0
                    ParentFont = False
                    TabOrder = 0
                    Text = 'SELECIONE'
                    Items.Strings = (
                      'SELECIONE'
                      'ENTRADA'
                      'SAIDA')
                  end
                  object edtQtdeMov: TEdit
                    Left = 143
                    Top = 51
                    Width = 84
                    Height = 25
                    Alignment = taRightJustify
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                    OnKeyPress = edtQtdeMovKeyPress
                  end
                end
                object Panel2: TPanel
                  Left = 1
                  Top = 1
                  Width = 603
                  Height = 101
                  Align = alTop
                  Caption = 'pnlMovimentar'
                  ShowCaption = False
                  TabOrder = 0
                  object Label26: TLabel
                    Left = 1
                    Top = 1
                    Width = 601
                    Height = 20
                    Align = alTop
                    AutoSize = False
                    Caption = '  QUANTIDADE EM ESTOQUE'
                    Color = 10114859
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    Transparent = False
                    Layout = tlCenter
                    OnMouseMove = lblTituloMouseMove
                    ExplicitLeft = 2
                    ExplicitTop = 9
                    ExplicitWidth = 295
                  end
                  object Label9: TLabel
                    Left = 20
                    Top = 25
                    Width = 46
                    Height = 15
                    Caption = 'M'#205'NIMO'
                    FocusControl = DBEdit10
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label4: TLabel
                    Left = 105
                    Top = 26
                    Width = 80
                    Height = 15
                    Alignment = taCenter
                    AutoSize = False
                    Caption = 'ATUAL'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object dbtxtQTDE_ESTOQUE: TDBText
                    Left = 105
                    Top = 45
                    Width = 80
                    Height = 17
                    Alignment = taCenter
                    DataField = 'QTDE_ESTOQUE'
                    DataSource = ds
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clGreen
                    Font.Height = -13
                    Font.Name = 'Segoe UI Black'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit10: TDBEdit
                    Left = 20
                    Top = 44
                    Width = 57
                    Height = 23
                    DataField = 'QTDE_MINIMA'
                    DataSource = ds
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                end
              end
            end
            object tsComposicao: TTabSheet
              Caption = 'COMPOSI'#199#195'O'
              ImageIndex = 1
              object pnl1: TPanel
                Left = 0
                Top = 0
                Width = 605
                Height = 204
                Align = alClient
                Color = 14803681
                ParentBackground = False
                TabOrder = 0
                object PngAddProduto: TPngSpeedButton
                  Left = 209
                  Top = 8
                  Width = 86
                  Height = 28
                  Caption = 'Adicionar'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  OnClick = PngAddProdutoClick
                  PngImage.Data = {
                    89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                    610000016A4944415478DA95D23F4BC3401806F0E792D6FE113A48774741B008
                    0E7E03A5285511058BA88393E0A8B8BAB90B2A38B8140445C14567FD08E250A1
                    0E8A5AAA31B1964B9334C9F936810A9A8277F07221DCFDEECD73618818B99D8C
                    F8FDEE76EB8B45AD65DD80CD956D58BE8926D56169571E585FDA80F1E102994F
                    948E8FE481D5C53568AF1E94AC8EF3935379A0B8B04C800B356BE0EAECB23B10
                    15587B4CCFCF42AB12D067E0FAE2266A4980B2898361313755A4B078189AC783
                    6A701BF5BA033F59C7937307DDD48016356153590AC4632204F2FB43A2509881
                    AEB5828D61F21CDCB260098E075E4643D4828F55DA2DD3AC56E9E92D1E02637B
                    83627C321F6C0A008F00D7A40E2C94DF2B30590D31E1FF9CDCA4CDBC5D6A0844
                    65908CA7911EF5F1A237908EB5202A09C027809C60F668162C04BADD021BA18E
                    9C1EA41C17E23E257F8D2C67C256624818A213981C30D084D3AB22FECC3A81C9
                    01FDF69FC0A480A89FE6DF80CCF8067BECD811176622860000000049454E44AE
                    426082}
                end
                object PngSpeedButton1: TPngSpeedButton
                  Left = 310
                  Top = 8
                  Width = 86
                  Height = 28
                  Caption = 'Excluir'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  OnClick = PngSpeedButton1Click
                  PngImage.Data = {
                    89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                    610000000473424954080808087C086488000000097048597300000B1300000B
                    1301009A9C18000000AD4944415478DA6364A01030E29210ABFDEDFF9F81C110
                    C4FECFF0FF172B13EBACE78D8C6F883640A4EEF7E4374DACB920B650FD3F3EA6
                    7F7F72DE34B3B5E13540B4F67703928C03D0EA03D8F8FF98180EBC6D643D80D5
                    05A275BFFFE3F5F47F86C6D7CDAC0D0873711900540894ADC7468F1A30120CF8
                    F98781818919C83C08C4F6E834305FD4BC69626BC5698048EDEF2EC6FFFF0A19
                    989858D0E5FE3130DC67FCF7D7FD4D0BC76D9C06900A00F8AE981170C6214400
                    00000049454E44AE426082}
                end
                object DBGrid1: TDBGrid
                  Left = 1
                  Top = 43
                  Width = 603
                  Height = 160
                  TabStop = False
                  Align = alBottom
                  DataSource = dsComposicaoProduto
                  Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'MATERIAPRIMA'
                      Title.Caption = 'Mat'#233'ia-Prima'
                      Width = 400
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'QTDE'
                      Title.Caption = 'Quantidade'
                      Visible = True
                    end>
                end
              end
            end
            object tsConversao: TTabSheet
              Caption = 'FATOR DE CONVERS'#195'O'
              ImageIndex = 2
              object pnlFundoTab: TPanel
                Left = 0
                Top = 0
                Width = 605
                Height = 204
                Align = alClient
                TabOrder = 0
                object lblTitConversao: TLabel
                  Left = 1
                  Top = 1
                  Width = 603
                  Height = 30
                  Align = alTop
                  AutoSize = False
                  Caption = '  CONVERS'#195'O DE UNIDADE DE MEDIDA (MOVIMENTA'#199#195'O DE ESTOQUE)'
                  Color = 10114859
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  Transparent = False
                  Layout = tlCenter
                  OnMouseMove = lblTituloMouseMove
                  ExplicitLeft = -6
                  ExplicitTop = 16
                end
                object pnlTopTab: TPanel
                  Left = 1
                  Top = 31
                  Width = 603
                  Height = 172
                  Align = alClient
                  BevelOuter = bvNone
                  Color = 14803681
                  ParentBackground = False
                  TabOrder = 0
                  object Label10: TLabel
                    Left = 67
                    Top = 52
                    Width = 73
                    Height = 15
                    Caption = 'QUANTIDADE'
                    FocusControl = DBEdit4
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label11: TLabel
                    Left = 227
                    Top = 52
                    Width = 125
                    Height = 15
                    Caption = 'PRE'#199'O CONVERS'#195'O R$'
                    FocusControl = DBEdit6
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object DBPesquisa2: TDBPesquisa
                    Left = 28
                    Top = 21
                    Width = 449
                    Height = 22
                    Titulo.Left = 0
                    Titulo.Top = 3
                    Titulo.Width = 114
                    Titulo.Height = 15
                    Titulo.Caption = 'UNIDADE DE MEDIDA'
                    Titulo.Font.Charset = ANSI_CHARSET
                    Titulo.Font.Color = clWindowText
                    Titulo.Font.Height = -12
                    Titulo.Font.Name = 'Segoe UI'
                    Titulo.Font.Style = []
                    Titulo.ParentFont = False
                    ConsultaTabela.Tabela = 'UNIDADE'
                    ConsultaTabela.Pesquisa = 'codigo'
                    ConsultaTabela.Mostrar = 'SIGLA'
                    Mostrar.Left = 198
                    Mostrar.Top = 0
                    Mostrar.Width = 250
                    Mostrar.Height = 21
                    Mostrar.TabStop = False
                    Mostrar.DataField = 'CONV_DESCRIUNIDADE'
                    Mostrar.DataSource = ds
                    Mostrar.Font.Charset = DEFAULT_CHARSET
                    Mostrar.Font.Color = clBlue
                    Mostrar.Font.Height = -11
                    Mostrar.Font.Name = 'Tahoma'
                    Mostrar.Font.Style = []
                    Mostrar.ParentFont = False
                    Mostrar.ReadOnly = True
                    Mostrar.TabOrder = 1
                    Campo.Left = 116
                    Campo.Top = 0
                    Campo.Width = 57
                    Campo.Height = 21
                    Campo.CharCase = ecUpperCase
                    Campo.DataField = 'CONV_UNIDADE'
                    Campo.DataSource = ds
                    Campo.TabOrder = 0
                    OnPesquisa = DBPesquisa2Pesquisa
                    TabOrder = 0
                    TabStop = True
                  end
                  object DBEdit4: TDBEdit
                    Left = 146
                    Top = 49
                    Width = 57
                    Height = 23
                    DataField = 'CONV_QTDE'
                    DataSource = ds
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 1
                  end
                  object DBEdit6: TDBEdit
                    Left = 356
                    Top = 49
                    Width = 121
                    Height = 23
                    DataField = 'CONV_PRECO'
                    DataSource = ds
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 2
                  end
                end
              end
            end
            object tsHistPrecoVenda: TTabSheet
              Caption = 'HIST'#211'RICO DE PRE'#199'O'
              ImageIndex = 3
              object pnlHistorico: TPanel
                Left = 0
                Top = 0
                Width = 605
                Height = 204
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object Label14: TLabel
                  Left = 0
                  Top = 0
                  Width = 605
                  Height = 30
                  Align = alTop
                  AutoSize = False
                  Caption = '  PRE'#199'O DE VENDA'
                  Color = 10114859
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Segoe UI Semibold'
                  Font.Style = [fsBold]
                  ParentColor = False
                  ParentFont = False
                  Transparent = False
                  Layout = tlCenter
                  OnMouseMove = lblTituloMouseMove
                  ExplicitTop = 8
                end
                object dbgrdItens: TDBGrid
                  Left = 0
                  Top = 30
                  Width = 605
                  Height = 174
                  Align = alClient
                  DataSource = dsHistPreco
                  DrawingStyle = gdsGradient
                  GradientEndColor = 13864803
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
                      FieldName = 'INICIO'
                      Visible = True
                    end
                    item
                      Alignment = taCenter
                      Expanded = False
                      FieldName = 'FIM'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'PRECO'
                      Width = 90
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'USUARIO'
                      Width = 280
                      Visible = True
                    end>
                end
              end
            end
            object tsFiscal: TTabSheet
              Caption = 'FISCAL'
              ImageIndex = 4
              object pnlFundoFiscal: TPanel
                Left = 0
                Top = 0
                Width = 605
                Height = 204
                Align = alClient
                BevelOuter = bvNone
                Caption = 'pnlFundoFiscal'
                Color = 14803681
                ParentBackground = False
                ShowCaption = False
                TabOrder = 0
                ExplicitLeft = -3
                ExplicitTop = 3
                object Label24: TLabel
                  Left = 8
                  Top = 14
                  Width = 26
                  Height = 17
                  Caption = 'Tipo'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                end
                object Label25: TLabel
                  Left = 200
                  Top = 14
                  Width = 44
                  Height = 17
                  Caption = 'Origem'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                end
                object dbcbbFISCAL_TIPO: TDBComboBox
                  Left = 8
                  Top = 35
                  Width = 145
                  Height = 25
                  Style = csDropDownList
                  DataField = 'FISCAL_TIPO'
                  DataSource = ds
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Items.Strings = (
                    'Selecione'
                    'Ativo Imobilizado'
                    'Embalagem'
                    'Material de Uso e Consumo'
                    'Mat'#233'ria-Prima'
                    'Mercadoria para Revenda'
                    'Outras'
                    'Outros Insumos'
                    'Produto Acabado'
                    'Produto em Processo'
                    'Produto Intermedi'#225'rio'
                    'Servi'#231'os'
                    'Subproduto')
                  ParentFont = False
                  TabOrder = 0
                end
                object dbcbbFISCAL_ORIGEM: TDBComboBox
                  Left = 200
                  Top = 35
                  Width = 145
                  Height = 25
                  Style = csDropDownList
                  DataField = 'FISCAL_ORIGEM'
                  DataSource = ds
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Items.Strings = (
                    'Selecione'
                    '0 - Nacional, exceto as indicadas nos c'#243'digos 3 a 5'
                    
                      '1 - Estrangeira - Importa'#231#227'o direta, exceto a indicada no c'#243'digo' +
                      ' 6'
                    
                      '2 - Estrangeira - Adquirida no mercado interno, exceto a indicad' +
                      'a no c'#243'digo 7'
                    
                      '3 - Nacional, mercadoria ou bem com conte'#250'do de importa'#231#227'o super' +
                      'ior a 40%'
                    
                      '4 - Nacional, cuja produ'#231#227'o tenha sido feita em conformidade com' +
                      ' os processos produtivos b'#225'sicos'
                    
                      '5 - Nacional, mercadoria ou bem com conte'#250'do de importa'#231#227'o infer' +
                      'ior ou igual a 40%'
                    
                      '6 - Estrangeira - Importa'#231#227'o direta, sem similar nacional, const' +
                      'ante em lista de Resolu'#231#227'o CAMEX'
                    
                      '7 - Estrangeira - Adquirida no mercado interno, sem similar naci' +
                      'onal, constante em lista de Resolu'#231#227'o CAMEX'
                    '8 - Nacional, conte'#250'do de importa'#231#227'o superior a 70%')
                  ParentFont = False
                  TabOrder = 1
                end
                object dbpsqsNCM: TDBPesquisa
                  Left = 8
                  Top = 76
                  Width = 365
                  Height = 25
                  Titulo.Left = 0
                  Titulo.Top = 3
                  Titulo.Width = 30
                  Titulo.Height = 17
                  Titulo.Caption = 'NCM'
                  Titulo.Font.Charset = ANSI_CHARSET
                  Titulo.Font.Color = clWindowText
                  Titulo.Font.Height = -13
                  Titulo.Font.Name = 'Segoe UI'
                  Titulo.Font.Style = []
                  Titulo.ParentFont = False
                  ConsultaTabela.Tabela = 'NCM'
                  ConsultaTabela.Pesquisa = 'ID'
                  ConsultaTabela.Mostrar = 'descricao'
                  Mostrar.Left = 114
                  Mostrar.Top = 0
                  Mostrar.Width = 250
                  Mostrar.Height = 25
                  Mostrar.TabStop = False
                  Mostrar.DataField = 'NCM'
                  Mostrar.DataSource = ds
                  Mostrar.Font.Charset = ANSI_CHARSET
                  Mostrar.Font.Color = clBlue
                  Mostrar.Font.Height = -13
                  Mostrar.Font.Name = 'Segoe UI'
                  Mostrar.Font.Style = []
                  Mostrar.ParentFont = False
                  Mostrar.ReadOnly = True
                  Mostrar.TabOrder = 1
                  Campo.Left = 32
                  Campo.Top = 0
                  Campo.Width = 57
                  Campo.Height = 25
                  Campo.CharCase = ecUpperCase
                  Campo.DataField = 'FISCAL_NCM'
                  Campo.DataSource = ds
                  Campo.Font.Charset = ANSI_CHARSET
                  Campo.Font.Color = clWindowText
                  Campo.Font.Height = -13
                  Campo.Font.Name = 'Segoe UI'
                  Campo.Font.Style = []
                  Campo.ParentFont = False
                  Campo.TabOrder = 0
                  OnPesquisa = dbpsqsNCMPesquisa
                  TabOrder = 2
                  TabStop = True
                end
                object dbpsqsCEST: TDBPesquisa
                  Left = 9
                  Top = 116
                  Width = 364
                  Height = 25
                  Titulo.Left = 0
                  Titulo.Top = 3
                  Titulo.Width = 29
                  Titulo.Height = 17
                  Titulo.Caption = 'CEST'
                  Titulo.Font.Charset = ANSI_CHARSET
                  Titulo.Font.Color = clWindowText
                  Titulo.Font.Height = -13
                  Titulo.Font.Name = 'Segoe UI'
                  Titulo.Font.Style = []
                  Titulo.ParentFont = False
                  ConsultaTabela.Tabela = 'CEST'
                  ConsultaTabela.Pesquisa = 'ID'
                  ConsultaTabela.Mostrar = 'descricao'
                  ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
                  Mostrar.Left = 113
                  Mostrar.Top = 0
                  Mostrar.Width = 250
                  Mostrar.Height = 25
                  Mostrar.TabStop = False
                  Mostrar.DataField = 'CEST'
                  Mostrar.DataSource = ds
                  Mostrar.Font.Charset = ANSI_CHARSET
                  Mostrar.Font.Color = clBlue
                  Mostrar.Font.Height = -13
                  Mostrar.Font.Name = 'Segoe UI'
                  Mostrar.Font.Style = []
                  Mostrar.ParentFont = False
                  Mostrar.ReadOnly = True
                  Mostrar.TabOrder = 1
                  Campo.Left = 31
                  Campo.Top = 0
                  Campo.Width = 57
                  Campo.Height = 25
                  Campo.CharCase = ecUpperCase
                  Campo.DataField = 'FISCAL_CEST'
                  Campo.DataSource = ds
                  Campo.Font.Charset = ANSI_CHARSET
                  Campo.Font.Color = clWindowText
                  Campo.Font.Height = -13
                  Campo.Font.Name = 'Segoe UI'
                  Campo.Font.Style = []
                  Campo.ParentFont = False
                  Campo.TabOrder = 0
                  OnPesquisa = dbpsqsCESTPesquisa
                  TabOrder = 3
                  TabStop = True
                end
              end
            end
          end
        end
      end
    end
  end
  inherited ds: TDataSource
    Left = 160
    Top = 432
  end
  inherited cds: TClientDataSet
    CommandText = 
      'select A.*, U.NOME DESCRI_UNIDADE, X.NOME CONV_DESCRIUNIDADE, G.' +
      'DESCRI GRUPO, S.DESCRI SUBGRUPO, N.DESCRICAO NCM,C.descricao CES' +
      'T'#13#10'from PRODUTO A'#13#10'left outer join UNIDADE U on (U.CODIGO = A.CO' +
      'D_UNIDADE)'#13#10'left outer join UNIDADE X on (X.CODIGO = A.CONV_UNID' +
      'ADE)'#13#10'left outer join GRUPO_PROD G on (G.CODIGO = A.COD_GRUPO)'#13#10 +
      'left outer join SUBGRUPO_PROD S on (S.CODIGO = A.COD_SUBGRUPO)'#13#10 +
      'left outer join NCM N on (N.ID = A.FISCAL_NCM)'#13#10'left outer join ' +
      'CEST C on (C.ID = A.FISCAL_CEST)'#13#10'where 1 = 2   '
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = cdsAfterInsert
    BeforePost = cdsBeforePost
    Left = 160
    Top = 375
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
    end
    object cdsEAN_CODBARRA: TStringField
      FieldName = 'EAN_CODBARRA'
      Size = 13
    end
    object cdsCOD_FABRICANTE: TIntegerField
      FieldName = 'COD_FABRICANTE'
    end
    object cdsCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
    end
    object cdsCOD_SUBGRUPO: TIntegerField
      FieldName = 'COD_SUBGRUPO'
    end
    object cdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
    object cdsTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsDESCRI_UNIDADE: TStringField
      FieldName = 'DESCRI_UNIDADE'
      Size = 30
    end
    object cdsGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 45
    end
    object cdsSUBGRUPO: TStringField
      FieldName = 'SUBGRUPO'
      Size = 45
    end
    object cdsCONV_UNIDADE: TIntegerField
      FieldName = 'CONV_UNIDADE'
    end
    object cdsCONV_DESCRIUNIDADE: TStringField
      FieldName = 'CONV_DESCRIUNIDADE'
      Size = 30
    end
    object cdsPRECO_VENDA: TCurrencyField
      FieldName = 'PRECO_VENDA'
      Required = True
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsQTDE_ESTOQUE: TFMTBCDField
      FieldName = 'QTDE_ESTOQUE'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsPRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsPESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsPESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsQTDE_MINIMA: TFMTBCDField
      FieldName = 'QTDE_MINIMA'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsCONV_QTDE: TFMTBCDField
      FieldName = 'CONV_QTDE'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsCONV_PRECO: TCurrencyField
      FieldName = 'CONV_PRECO'
      DisplayFormat = '#,##0.00'
    end
    object cdsESTIMA_PRODUCAO: TFMTBCDField
      FieldName = 'ESTIMA_PRODUCAO'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object cdsDESC_MAXIMO: TFMTBCDField
      FieldName = 'DESC_MAXIMO'
      DisplayFormat = '#,##0.000 %'
      Precision = 18
      Size = 3
    end
    object cdsPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      OnChange = cdsPRECO_ATACADOChange
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsQTDE_MIN_ATACADO: TFMTBCDField
      Alignment = taCenter
      FieldName = 'QTDE_MIN_ATACADO'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsSITUACAO: TStringField
      Alignment = taCenter
      FieldName = 'SITUACAO'
      Required = True
      Size = 10
    end
    object cdsFISCAL_TIPO: TStringField
      FieldName = 'FISCAL_TIPO'
      Size = 30
    end
    object cdsFISCAL_ORIGEM: TStringField
      FieldName = 'FISCAL_ORIGEM'
      Size = 200
    end
    object cdsFISCAL_NCM: TIntegerField
      FieldName = 'FISCAL_NCM'
    end
    object cdsFISCAL_CEST: TIntegerField
      FieldName = 'FISCAL_CEST'
    end
    object cdsNCM: TStringField
      FieldName = 'NCM'
      ReadOnly = True
      Size = 500
    end
    object cdsCEST: TStringField
      FieldName = 'CEST'
      ReadOnly = True
      Size = 500
    end
  end
  inherited actMaster: TActionList
    Left = 104
    Top = 373
    object actTrilhar: TAction
      Caption = 'actTrilhar'
      OnExecute = actTrilharExecute
    end
    object actMovimentar: TAction
      Caption = 'OK'
      OnExecute = actMovimentarExecute
    end
  end
  object cdsComposicaoProduto: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select a.*,b.NOME materiaprima'#13#10'from PRODUTO_COMPOSICAO a'#13#10'left ' +
      'outer join PRODUTO b on (b.CODIGO = a.ID_MATPRIMA)'#13#10'where 1 = 2'
    Params = <>
    ProviderName = 'DSPLer1'
    Left = 264
    Top = 368
    object cdsComposicaoProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsComposicaoProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsComposicaoProdutoID_MATPRIMA: TIntegerField
      FieldName = 'ID_MATPRIMA'
      Required = True
    end
    object cdsComposicaoProdutoQTDE: TFMTBCDField
      FieldName = 'QTDE'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 5
    end
    object cdsComposicaoProdutoMATERIAPRIMA: TStringField
      FieldName = 'MATERIAPRIMA'
      Size = 100
    end
  end
  object dsComposicaoProduto: TDataSource
    DataSet = cdsComposicaoProduto
    Left = 264
    Top = 432
  end
  object dsHistPreco: TDataSource
    DataSet = cdsHisPreco
    Left = 456
    Top = 385
  end
  object cdsHisPreco: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'INICIO'
        DataType = ftDate
      end
      item
        Name = 'FIM'
        DataType = ftDate
      end
      item
        Name = 'PRECO'
        DataType = ftCurrency
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 456
    Top = 337
    object cdsHisPrecoINICIO: TDateField
      DisplayLabel = 'INICIO DA VIG'#202'NCIA'
      FieldName = 'INICIO'
    end
    object cdsHisPrecoFIM: TDateField
      DisplayLabel = 'FINAL DA VIG'#202'NCIA'
      FieldName = 'FIM'
    end
    object cdsHisPrecoPRECO: TCurrencyField
      DisplayLabel = 'PRE'#199'O(R$)'
      FieldName = 'PRECO'
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsHisPrecoUSUARIO: TStringField
      DisplayLabel = 'USU'#193'RIO'
      FieldName = 'USUARIO'
      Size = 100
    end
  end
end

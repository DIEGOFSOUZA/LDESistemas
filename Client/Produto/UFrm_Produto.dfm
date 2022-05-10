inherited Frm_Produto: TFrm_Produto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 650
  ClientWidth = 750
  ExplicitWidth = 750
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 750
    Caption = '         CADASTRO DE PRODUTO'
    ExplicitWidth = 700
  end
  inherited pnlFundo0: TPanel
    Width = 750
    Height = 620
    ExplicitWidth = 750
    ExplicitHeight = 620
    inherited Panel1: TPanel
      Height = 618
      ExplicitHeight = 618
      inherited pnlSair: TPanel
        Top = 534
        ExplicitTop = 534
      end
      inherited pnlGravar: TPanel
        Top = 449
        ExplicitTop = 449
      end
      inherited pnlCancelar: TPanel
        Top = 364
        ExplicitTop = 364
      end
      inherited pnlLocalizar: TPanel
        Top = 279
        ExplicitTop = 279
      end
      inherited pnlExcluir: TPanel
        Top = 194
        ExplicitTop = 194
      end
      inherited pnlEditar: TPanel
        Top = 109
        ExplicitTop = 109
      end
      inherited pnlAdicionar: TPanel
        Top = 24
        ExplicitTop = 24
      end
    end
    inherited pnlFundo1: TPanel
      Width = 667
      Height = 618
      Color = 14803681
      ParentColor = False
      ExplicitWidth = 667
      ExplicitHeight = 618
      inherited Panel4: TPanel
        Top = 597
        Width = 665
        TabOrder = 1
        ExplicitTop = 597
        ExplicitWidth = 665
      end
      object pnlFundo2: TPanel
        Left = 1
        Top = 1
        Width = 665
        Height = 596
        Align = alClient
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 663
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
            Width = 661
            Height = 160
            Align = alClient
            BorderStyle = bsSingle
            Caption = 'pnlPreco'
            ShowCaption = False
            TabOrder = 1
            object lblTitPreco: TLabel
              Left = 1
              Top = 1
              Width = 655
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
              Width = 559
              Height = 134
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlPrecoCenter'
              ShowCaption = False
              TabOrder = 1
              object pnlPVenda: TPanel
                Left = 0
                Top = 0
                Width = 559
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
                  Left = 422
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
                Width = 559
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
                  Left = 404
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
            Width = 661
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
              ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
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
              TabOrder = 3
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
              TabOrder = 6
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
              TabOrder = 7
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
              ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
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
              TabOrder = 4
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
              ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
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
              TabOrder = 5
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
                Left = 5
                Top = 64
                Width = 100
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
              TabOrder = 8
            end
            object pnlTrilha: TPanel
              Left = 564
              Top = 4
              Width = 90
              Height = 49
              Cursor = crHandPoint
              Caption = 'pnlTrilha'
              Color = 4868682
              ParentBackground = False
              ShowCaption = False
              TabOrder = 2
              object btnTrilhar: TSpeedButton
                Left = 1
                Top = 1
                Width = 88
                Height = 47
                Cursor = crHandPoint
                Action = actTrilhar
                Align = alClient
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitLeft = 32
                ExplicitTop = 16
                ExplicitWidth = 23
                ExplicitHeight = 22
              end
            end
          end
        end
        object pnlPages: TPanel
          Left = 1
          Top = 363
          Width = 663
          Height = 232
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'pnlPages'
          ParentColor = True
          ShowCaption = False
          TabOrder = 1
          object pgc1: TPageControl
            Left = 0
            Top = 0
            Width = 663
            Height = 232
            ActivePage = tsEstoque
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
              object pnlEstoque: TPanel
                Left = 0
                Top = 0
                Width = 655
                Height = 204
                Align = alClient
                Color = 14803681
                ParentBackground = False
                TabOrder = 0
                object pnlMovimentar: TPanel
                  Left = 1
                  Top = 102
                  Width = 653
                  Height = 85
                  Align = alTop
                  Caption = 'pnlMovimentar'
                  Enabled = False
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
                    Width = 651
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
                    Cursor = crHandPoint
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
                object pnlEstoqueAtual: TPanel
                  Left = 1
                  Top = 1
                  Width = 653
                  Height = 101
                  Align = alTop
                  ShowCaption = False
                  TabOrder = 0
                  ExplicitLeft = 0
                  ExplicitTop = -4
                  object Label26: TLabel
                    Left = 1
                    Top = 1
                    Width = 651
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
                    Width = 200
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
                  object lblEstoqueAtual: TLabel
                    Left = 105
                    Top = 42
                    Width = 200
                    Height = 21
                    Alignment = taCenter
                    AutoSize = False
                    Caption = '26 SACO COM 40 KG'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clGreen
                    Font.Height = -16
                    Font.Name = 'Segoe UI Semibold'
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
              object pnlComposicao: TPanel
                Left = 0
                Top = 0
                Width = 655
                Height = 204
                Align = alClient
                Color = 14803681
                ParentBackground = False
                TabOrder = 0
                object pnlFundoComposicao: TPanel
                  Left = 1
                  Top = 1
                  Width = 653
                  Height = 202
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'pnlFundoComposicao'
                  ShowCaption = False
                  TabOrder = 0
                  object pnlTopoComposicao: TPanel
                    Left = 0
                    Top = 0
                    Width = 653
                    Height = 50
                    Align = alTop
                    BevelOuter = bvNone
                    Caption = 'pnlTopoComposicao'
                    ShowCaption = False
                    TabOrder = 0
                    object pnlProdAdd: TPanel
                      Left = 0
                      Top = 0
                      Width = 653
                      Height = 50
                      Align = alTop
                      Caption = 'pnlProdAdd'
                      Color = 13337441
                      ParentBackground = False
                      ShowCaption = False
                      TabOrder = 0
                      object pnlAdd: TPanel
                        Left = 592
                        Top = 1
                        Width = 60
                        Height = 48
                        Cursor = crHandPoint
                        Align = alRight
                        BevelOuter = bvNone
                        Caption = 'pnlAdd'
                        Color = 7024384
                        ParentBackground = False
                        ShowCaption = False
                        TabOrder = 4
                        TabStop = True
                        object btnAddItem: TSpeedButton
                          Left = 0
                          Top = 0
                          Width = 60
                          Height = 48
                          Action = actAddItem
                          Align = alClient
                          Flat = True
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clWhite
                          Font.Height = -13
                          Font.Name = 'Segoe UI'
                          Font.Style = [fsBold]
                          ParentFont = False
                          ExplicitLeft = 6
                          ExplicitTop = -5
                          ExplicitWidth = 94
                        end
                      end
                      object pnlQtde: TPanel
                        Left = 372
                        Top = 1
                        Width = 70
                        Height = 48
                        Align = alRight
                        BevelOuter = bvNone
                        Caption = 'pnlTotalItem'
                        Color = 10114859
                        ParentBackground = False
                        ShowCaption = False
                        TabOrder = 1
                        TabStop = True
                        object lblUM: TLabel
                          Left = 6
                          Top = 29
                          Width = 30
                          Height = 17
                          Alignment = taCenter
                          AutoSize = False
                          Caption = 'UN'
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clWhite
                          Font.Height = -13
                          Font.Name = 'Segoe UI Semibold'
                          Font.Style = [fsBold]
                          ParentFont = False
                          Visible = False
                        end
                        object edtQtde: TEdit
                          Left = 0
                          Top = 0
                          Width = 70
                          Height = 25
                          Alignment = taCenter
                          AutoSize = False
                          BorderStyle = bsNone
                          Color = 10114859
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clWhite
                          Font.Height = -16
                          Font.Name = 'Segoe UI'
                          Font.Style = [fsBold]
                          ParentFont = False
                          TabOrder = 0
                          Text = '1,000'
                          OnClick = edtQtdeClick
                          OnExit = edtQtdeExit
                          OnKeyPress = edtQtdeKeyPress
                        end
                      end
                      object pnlItem: TPanel
                        Left = 1
                        Top = 1
                        Width = 371
                        Height = 48
                        Align = alClient
                        BevelOuter = bvNone
                        Caption = 'pnlItem'
                        ShowCaption = False
                        TabOrder = 0
                        object edpsqsProduto: TEdPesquisa
                          Left = 22
                          Top = 14
                          Width = 321
                          Height = 21
                          PermitirBranco = Sim
                          ConsultaTabela.Tabela = 'PRODUTO'
                          ConsultaTabela.Pesquisa = 'codigo'
                          ConsultaTabela.Mostrar = 'nome'
                          ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
                          OnPesquisa = edpsqsProdutoPesquisa
                          Titulo.Left = 0
                          Titulo.Top = 3
                          Titulo.Width = 3
                          Titulo.Height = 13
                          Titulo.Caption = ' '
                          Titulo.Visible = False
                          Mostrar.Left = 70
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
                          Campo.Left = 5
                          Campo.Top = 0
                          Campo.Width = 40
                          Campo.Height = 25
                          Campo.CharCase = ecUpperCase
                          Campo.Font.Charset = ANSI_CHARSET
                          Campo.Font.Color = clWindowText
                          Campo.Font.Height = -13
                          Campo.Font.Name = 'Segoe UI'
                          Campo.Font.Style = []
                          Campo.ParentFont = False
                          Campo.TabOrder = 0
                          Campo.OnChange = edpsqsProdutoedtCampoChange
                          TabOrder = 0
                          TabStop = True
                        end
                      end
                      object pnlTotalItem: TPanel
                        Left = 522
                        Top = 1
                        Width = 70
                        Height = 48
                        Align = alRight
                        BevelOuter = bvNone
                        Caption = 'pnlTotalItem'
                        Color = 10114859
                        ParentBackground = False
                        ShowCaption = False
                        TabOrder = 3
                        object Label53: TLabel
                          Left = 12
                          Top = 4
                          Width = 56
                          Height = 15
                          Caption = 'TOTAL (R$)'
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clWhite
                          Font.Height = -12
                          Font.Name = 'Segoe UI'
                          Font.Style = []
                          ParentFont = False
                        end
                        object lblTotItem: TLabel
                          Left = 0
                          Top = 23
                          Width = 70
                          Height = 25
                          Align = alBottom
                          Alignment = taCenter
                          AutoSize = False
                          Caption = '0,00'
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clWhite
                          Font.Height = -19
                          Font.Name = 'Segoe UI Semibold'
                          Font.Style = [fsBold]
                          ParentFont = False
                          ExplicitTop = 20
                          ExplicitWidth = 79
                        end
                      end
                      object pnlVlUnitario: TPanel
                        Left = 442
                        Top = 1
                        Width = 80
                        Height = 48
                        Align = alRight
                        BevelOuter = bvNone
                        Caption = 'pnlTotalItem'
                        Color = 10114859
                        ParentBackground = False
                        ShowCaption = False
                        TabOrder = 2
                        object lbl8: TLabel
                          Left = 2
                          Top = 4
                          Width = 76
                          Height = 15
                          Caption = 'UNIT'#193'RIO (R$)'
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clWhite
                          Font.Height = -12
                          Font.Name = 'Segoe UI'
                          Font.Style = []
                          ParentFont = False
                        end
                        object lblUnitario: TLabel
                          Left = 0
                          Top = 23
                          Width = 80
                          Height = 25
                          Align = alBottom
                          Alignment = taCenter
                          Caption = '0,00'
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clWhite
                          Font.Height = -19
                          Font.Name = 'Segoe UI Semibold'
                          Font.Style = [fsBold]
                          ParentFont = False
                          ExplicitWidth = 38
                        end
                      end
                    end
                  end
                  object pnlFundo1Comp: TPanel
                    Left = 0
                    Top = 50
                    Width = 653
                    Height = 152
                    Align = alClient
                    BevelOuter = bvNone
                    Caption = 'pnlFundo1Comp'
                    ShowCaption = False
                    TabOrder = 1
                    object pnlGridComposicao: TPanel
                      Left = 0
                      Top = 0
                      Width = 653
                      Height = 132
                      Align = alClient
                      BevelOuter = bvNone
                      Caption = 'pnlGridComposicao'
                      ShowCaption = False
                      TabOrder = 0
                      object pnlAcaoComposicao: TPanel
                        Left = 593
                        Top = 0
                        Width = 60
                        Height = 132
                        Align = alRight
                        Caption = 'pnlAcaoComposicao'
                        ShowCaption = False
                        TabOrder = 1
                        object pnlExcItem: TPanel
                          Left = 18
                          Top = 8
                          Width = 25
                          Height = 25
                          Cursor = crHandPoint
                          BevelOuter = bvNone
                          Caption = 'pnlIncluiCondPagto'
                          Color = 7024384
                          ParentBackground = False
                          ShowCaption = False
                          TabOrder = 0
                          TabStop = True
                          object imgExcItem: TImage
                            Left = 0
                            Top = 0
                            Width = 25
                            Height = 25
                            Align = alClient
                            Picture.Data = {
                              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
                              00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000001
                              244944415478DA6364A003601CBE96FCFFFF9F1548F1A009B301F12C20D64112
                              BB02C46940FC0B4DED174646C6DF842C090052EB71386A3BC810A8233C71A809
                              045AB2819025AA50573B00710D10FF814A3D006A5E89A42E1C482940B92C40DC
                              02C40740BE03AABB8DD712A801ED40AA028839811A7E100A73A07A0E20F51D88
                              3B80EA2B09C6C9805802C48A406C0BC4AB8098171A17A0B8F90CC461407C1888
                              EF536A4902104F07624D681C6C875AF40088AF037126102F18B564D492116E09
                              2803CA01F1550648690C2ADB406513A8F4D506E2470C908C39388B952620550B
                              C4A2404D6F88B0440448BD06E266A0FA3A622D7106527B182015D37542963040
                              E20B54A139032DD9479425508BD2811408F31361C947209E01B4601636C961DC
                              90A00500002294BF1ABE0ECED60000000049454E44AE426082}
                            ExplicitLeft = 8
                            ExplicitTop = 8
                            ExplicitWidth = 105
                            ExplicitHeight = 105
                          end
                          object btnEscItem: TSpeedButton
                            Left = 0
                            Top = 0
                            Width = 25
                            Height = 25
                            Action = actExcItem
                            Align = alClient
                            Flat = True
                            ParentShowHint = False
                            ShowHint = True
                            ExplicitLeft = 1
                            ExplicitTop = 7
                            ExplicitWidth = 23
                            ExplicitHeight = 23
                          end
                        end
                      end
                      object dbgrdComposicao: TDBGrid
                        Left = 0
                        Top = 0
                        Width = 593
                        Height = 132
                        Align = alClient
                        DataSource = dsComposicaoProduto
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
                            Alignment = taLeftJustify
                            Expanded = False
                            FieldName = 'ID_MATPRIMA'
                            Width = 250
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'QTDE'
                            Width = 70
                            Visible = True
                          end
                          item
                            Alignment = taCenter
                            Expanded = False
                            FieldName = 'SIGLA'
                            Title.Alignment = taCenter
                            Width = 50
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'CUSTO_UNIT'
                            Width = 95
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'CUSTO_TOTAL'
                            Width = 95
                            Visible = True
                          end>
                      end
                    end
                    object pnlRodapeComposicao: TPanel
                      Left = 0
                      Top = 132
                      Width = 653
                      Height = 20
                      Align = alBottom
                      Caption = 'pnlRodapeComposicao'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ShowCaption = False
                      TabOrder = 1
                      object Label27: TLabel
                        Left = 450
                        Top = 2
                        Width = 98
                        Height = 17
                        Caption = 'Custo estimado:'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Segoe UI Semibold'
                        Font.Style = [fsBold]
                        ParentFont = False
                      end
                      object lblCustEstimado: TLabel
                        Left = 548
                        Top = 2
                        Width = 43
                        Height = 17
                        Caption = 'R$ 0,00'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -13
                        Font.Name = 'Segoe UI'
                        Font.Style = []
                        ParentFont = False
                      end
                    end
                  end
                end
              end
            end
            object tsFragmentacao: TTabSheet
              Caption = 'FRAGMENTA'#199#195'O'
              ImageIndex = 2
              object pnlFundoFragm: TPanel
                Left = 0
                Top = 0
                Width = 655
                Height = 204
                Align = alClient
                TabOrder = 0
                object lblTitConversao: TLabel
                  Left = 1
                  Top = 1
                  Width = 653
                  Height = 30
                  Align = alTop
                  AutoSize = False
                  Caption = '  FRAGMENTA'#199#195'O'
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
                  ExplicitLeft = 0
                  ExplicitTop = 3
                end
                object pnlTopTab: TPanel
                  Left = 1
                  Top = 145
                  Width = 653
                  Height = 58
                  Align = alBottom
                  BevelOuter = bvNone
                  Color = 14803681
                  ParentBackground = False
                  TabOrder = 2
                end
                object pnlFragmExemplo: TPanel
                  Left = 1
                  Top = 31
                  Width = 653
                  Height = 42
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'pnlFragmExemplo'
                  ShowCaption = False
                  TabOrder = 0
                  object Label28: TLabel
                    Left = 0
                    Top = 0
                    Width = 653
                    Height = 17
                    Align = alTop
                    Caption = 'Venda fracionada, informe abaixo a condi'#231#227'o de fragmenta'#231#227'o'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Layout = tlCenter
                    ExplicitWidth = 378
                  end
                  object Label29: TLabel
                    Left = 0
                    Top = 17
                    Width = 653
                    Height = 17
                    Align = alTop
                    Caption = 'EXEMPLO: 1 Litro = 1000ml / 1 Caixa = 10 pacotes / 1 Saco = 50Kg'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semilight'
                    Font.Style = []
                    ParentFont = False
                    Layout = tlCenter
                    ExplicitWidth = 375
                  end
                end
                object pnlFragmentacao: TPanel
                  Left = 1
                  Top = 73
                  Width = 653
                  Height = 72
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'pnlFragmentacao'
                  Color = 14803681
                  ParentBackground = False
                  ShowCaption = False
                  TabOrder = 1
                  object lblUnidade: TLabel
                    Left = 6
                    Top = 19
                    Width = 140
                    Height = 34
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = '1 CAIXA COM 50 UNIDADES = '
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                    WordWrap = True
                  end
                  object pnlDadosFragmentacao: TPanel
                    Left = 152
                    Top = 0
                    Width = 501
                    Height = 72
                    Align = alRight
                    Caption = 'pnlDadosFragmentacao'
                    ShowCaption = False
                    TabOrder = 0
                    object Label10: TLabel
                      Left = 24
                      Top = 16
                      Width = 73
                      Height = 15
                      Caption = 'QUANTIDADE'
                      FocusControl = dbedtCONV_QTDE
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label11: TLabel
                      Left = 2
                      Top = 44
                      Width = 95
                      Height = 15
                      Caption = 'PRE'#199'O DE VENDA'
                      FocusControl = dbedtCONV_PRECO
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                    end
                    object dbedtCONV_QTDE: TDBEdit
                      Left = 99
                      Top = 13
                      Width = 81
                      Height = 23
                      DataField = 'CONV_QTDE'
                      DataSource = ds
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                    end
                    object dbpsqsConvUnidade: TDBPesquisa
                      Left = 182
                      Top = 13
                      Width = 318
                      Height = 22
                      Titulo.Left = 0
                      Titulo.Top = 3
                      Titulo.Width = 50
                      Titulo.Height = 15
                      Titulo.Caption = 'UNIDADE'
                      Titulo.Font.Charset = ANSI_CHARSET
                      Titulo.Font.Color = clWindowText
                      Titulo.Font.Height = -12
                      Titulo.Font.Name = 'Segoe UI'
                      Titulo.Font.Style = []
                      Titulo.ParentFont = False
                      ConsultaTabela.Tabela = 'UNIDADE'
                      ConsultaTabela.Pesquisa = 'codigo'
                      ConsultaTabela.Mostrar = 'SIGLA'
                      ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
                      Mostrar.Left = 117
                      Mostrar.Top = 0
                      Mostrar.Width = 200
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
                      Campo.Left = 52
                      Campo.Top = 0
                      Campo.Width = 40
                      Campo.Height = 21
                      Campo.CharCase = ecUpperCase
                      Campo.DataField = 'CONV_UNIDADE'
                      Campo.DataSource = ds
                      Campo.TabOrder = 0
                      OnPesquisa = dbpsqsConvUnidadePesquisa
                      TabOrder = 1
                      TabStop = True
                    end
                    object dbedtCONV_PRECO: TDBEdit
                      Left = 99
                      Top = 41
                      Width = 81
                      Height = 23
                      DataField = 'CONV_PRECO'
                      DataSource = ds
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 3
                    end
                    object pnlExcFrag: TPanel
                      Left = 466
                      Top = 39
                      Width = 25
                      Height = 25
                      Cursor = crHandPoint
                      BevelOuter = bvNone
                      Caption = 'pnlIncluiCondPagto'
                      Color = 7024384
                      ParentBackground = False
                      ShowCaption = False
                      TabOrder = 2
                      TabStop = True
                      object imgExcFrag: TImage
                        Left = 0
                        Top = 0
                        Width = 25
                        Height = 25
                        Align = alClient
                        Picture.Data = {
                          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
                          00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000001
                          244944415478DA6364A003601CBE96FCFFFF9F1548F1A009B301F12C20D64112
                          BB02C46940FC0B4DED174646C6DF842C090052EB71386A3BC810A8233C71A809
                          045AB2819025AA50573B00710D10FF814A3D006A5E89A42E1C482940B92C40DC
                          02C40740BE03AABB8DD712A801ED40AA028839811A7E100A73A07A0E20F51D88
                          3B80EA2B09C6C9805802C48A406C0BC4AB8098171A17A0B8F90CC461407C1888
                          EF536A4902104F07624D681C6C875AF40088AF037126102F18B564D492116E09
                          2803CA01F1550648690C2ADB406513A8F4D506E2470C908C39388B952620550B
                          C4A2404D6F88B0440448BD06E266A0FA3A622D7106527B182015D37542963040
                          E20B54A139032DD9479425508BD2811408F31361C947209E01B4601636C961DC
                          90A00500002294BF1ABE0ECED60000000049454E44AE426082}
                        ExplicitLeft = 8
                        ExplicitTop = 8
                        ExplicitWidth = 105
                        ExplicitHeight = 105
                      end
                      object btnExcFragmentacao: TSpeedButton
                        Left = 0
                        Top = 0
                        Width = 25
                        Height = 25
                        Action = actExcFragmentacao
                        Align = alClient
                        Flat = True
                        ParentShowHint = False
                        ShowHint = True
                        ExplicitLeft = 1
                        ExplicitTop = 7
                        ExplicitWidth = 23
                        ExplicitHeight = 23
                      end
                    end
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
                Width = 655
                Height = 204
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object pnlHistVenda: TPanel
                  Left = 0
                  Top = 102
                  Width = 655
                  Height = 102
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'pnlHistVenda'
                  ShowCaption = False
                  TabOrder = 1
                  object Label14: TLabel
                    Left = 0
                    Top = 0
                    Width = 655
                    Height = 20
                    Align = alTop
                    AutoSize = False
                    Caption = '  PRE'#199'O DE CUSTO'
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
                    ExplicitWidth = 605
                  end
                  object dbgrdHistCusto: TDBGrid
                    Left = 0
                    Top = 20
                    Width = 655
                    Height = 82
                    Align = alClient
                    DataSource = dsHistCusto
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
                        Expanded = False
                        FieldName = 'DATA'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'DATA_FIM'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'PRECO_NOVO'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'USUARIO'
                        Width = 270
                        Visible = True
                      end>
                  end
                end
                object pnlHistCusto: TPanel
                  Left = 0
                  Top = 0
                  Width = 655
                  Height = 102
                  Align = alTop
                  BevelOuter = bvNone
                  Caption = 'pnlHistVenda'
                  ShowCaption = False
                  TabOrder = 0
                  object lblTitHistCusto: TLabel
                    Left = 0
                    Top = 0
                    Width = 655
                    Height = 20
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
                    ExplicitWidth = 605
                  end
                  object dbgrdHistVenda: TDBGrid
                    Left = 0
                    Top = 20
                    Width = 655
                    Height = 82
                    Align = alClient
                    DataSource = dsHistVenda
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
                        FieldName = 'DATA'
                        Visible = True
                      end
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'DT_FIM'
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'PRECO_NOVO'
                        Width = 120
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
            end
            object tsFiscal: TTabSheet
              Caption = 'FISCAL'
              ImageIndex = 4
              object pnlFundoFiscal: TPanel
                Left = 0
                Top = 0
                Width = 655
                Height = 204
                Align = alClient
                BevelOuter = bvNone
                Caption = 'pnlFundoFiscal'
                Color = 14803681
                ParentBackground = False
                ShowCaption = False
                TabOrder = 0
                object Label24: TLabel
                  Left = 27
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
                  Left = 235
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
                  Left = 27
                  Top = 35
                  Width = 200
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
                  Left = 235
                  Top = 35
                  Width = 400
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
                  Width = 627
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
                  ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
                  Mostrar.Left = 114
                  Mostrar.Top = 0
                  Mostrar.Width = 512
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
                  Width = 626
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
                  Mostrar.Width = 512
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
    Left = 144
    Top = 544
  end
  inherited cds: TClientDataSet
    ProviderName = 'dspProduto'
    RemoteServer = DM.dspRProduto
    AfterInsert = cdsAfterInsert
    BeforePost = cdsBeforePost
    AfterCancel = cdsAfterCancel
    AfterDelete = cdsAfterDelete
    Left = 144
    Top = 495
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object cdsPRECO_VENDA: TCurrencyField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Required = True
    end
    object cdsCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
      Origin = 'COD_UNIDADE'
    end
    object cdsQTDE_ESTOQUE: TFMTBCDField
      FieldName = 'QTDE_ESTOQUE'
      Origin = 'QTDE_ESTOQUE'
      Precision = 18
      Size = 3
    end
    object cdsPRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
    end
    object cdsESTIMA_PRODUCAO: TFMTBCDField
      FieldName = 'ESTIMA_PRODUCAO'
      Origin = 'ESTIMA_PRODUCAO'
      Precision = 18
      Size = 3
    end
    object cdsPESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
      Precision = 18
      Size = 3
    end
    object cdsPESO_LIQUIDO: TFMTBCDField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
      Precision = 18
      Size = 3
    end
    object cdsEAN_CODBARRA: TStringField
      FieldName = 'EAN_CODBARRA'
      Origin = 'EAN_CODBARRA'
      Size = 13
    end
    object cdsCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = 'COD_GRUPO'
    end
    object cdsCOD_SUBGRUPO: TIntegerField
      FieldName = 'COD_SUBGRUPO'
      Origin = 'COD_SUBGRUPO'
    end
    object cdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object cdsTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsQTDE_MINIMA: TFMTBCDField
      FieldName = 'QTDE_MINIMA'
      Origin = 'QTDE_MINIMA'
      Precision = 18
      Size = 3
    end
    object cdsCONV_UNIDADE: TIntegerField
      FieldName = 'CONV_UNIDADE'
      Origin = 'CONV_UNIDADE'
    end
    object cdsCONV_QTDE: TFMTBCDField
      FieldName = 'CONV_QTDE'
      Origin = 'CONV_QTDE'
      Precision = 18
      Size = 3
    end
    object cdsCONV_PRECO: TCurrencyField
      FieldName = 'CONV_PRECO'
      Origin = 'CONV_PRECO'
    end
    object cdsDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = 'DT_CADASTRO'
    end
    object cdsDESC_MAXIMO: TFMTBCDField
      FieldName = 'DESC_MAXIMO'
      Origin = 'DESC_MAXIMO'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 3
    end
    object cdsPRECO_ATACADO: TFMTBCDField
      FieldName = 'PRECO_ATACADO'
      OnChange = cdsPRECO_ATACADOChange
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsQTDE_MIN_ATACADO: TFMTBCDField
      FieldName = 'QTDE_MIN_ATACADO'
      Origin = 'QTDE_MIN_ATACADO'
      Precision = 18
      Size = 3
    end
    object cdsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Required = True
      Size = 10
    end
    object cdsFISCAL_TIPO: TStringField
      FieldName = 'FISCAL_TIPO'
      Origin = 'FISCAL_TIPO'
      Size = 30
    end
    object cdsFISCAL_ORIGEM: TStringField
      FieldName = 'FISCAL_ORIGEM'
      Origin = 'FISCAL_ORIGEM'
      Size = 200
    end
    object cdsFISCAL_NCM: TIntegerField
      FieldName = 'FISCAL_NCM'
      Origin = 'FISCAL_NCM'
    end
    object cdsFISCAL_CEST: TIntegerField
      FieldName = 'FISCAL_CEST'
      Origin = 'FISCAL_CEST'
    end
    object cdsULTIMA_ALTERACAO: TStringField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = 'ULTIMA_ALTERACAO'
      Size = 200
    end
    object cdsCALC_CUSTO_COMPOSICAO: TStringField
      FieldName = 'CALC_CUSTO_COMPOSICAO'
      FixedChar = True
      Size = 1
    end
    object cdsDESCRI_UNIDADE: TStringField
      FieldName = 'DESCRI_UNIDADE'
      OnGetText = cdsDESCRI_UNIDADEGetText
      Size = 30
    end
    object cdsCONV_DESCRIUNIDADE: TStringField
      FieldName = 'CONV_DESCRIUNIDADE'
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
    object cdsNCM: TStringField
      FieldName = 'NCM'
      Size = 500
    end
    object cdsCEST: TStringField
      FieldName = 'CEST'
      Size = 500
    end
    object cdsfdqryProdutoFornecedor: TDataSetField
      FieldName = 'fdqryProdutoFornecedor'
    end
    object cdsfdqryProdutoComposicao: TDataSetField
      FieldName = 'fdqryProdutoComposicao'
    end
    object cdsfdqryPrecoVendaHist: TDataSetField
      FieldName = 'fdqryPrecoVendaHist'
    end
    object cdsfdqryPrecoCustoHist: TDataSetField
      FieldName = 'fdqryPrecoCustoHist'
    end
  end
  inherited actMaster: TActionList
    Left = 136
    Top = 157
    object actTrilhar: TAction
      Caption = 'EXTRATO DE'#13#10'MOVIMENTA'#199#195'O'
      OnExecute = actTrilharExecute
    end
    object actMovimentar: TAction
      Caption = 'OK'
      OnExecute = actMovimentarExecute
    end
    object actAddItem: TAction
      Caption = 'INCLUIR '#13#10'ITEM'
      OnExecute = actAddItemExecute
    end
    object actExcItem: TAction
      OnExecute = actExcItemExecute
    end
    object actExcFragmentacao: TAction
      OnExecute = actExcFragmentacaoExecute
    end
  end
  object cdsComposicaoProduto: TClientDataSet
    Aggregates = <>
    DataSetField = cdsfdqryProdutoComposicao
    Params = <>
    Left = 232
    Top = 496
    object cdsComposicaoProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object cdsComposicaoProdutoID_MATPRIMA: TIntegerField
      DisplayLabel = 'ITEM'
      FieldName = 'ID_MATPRIMA'
      Origin = 'ID_MATPRIMA'
      Required = True
      OnGetText = cdsComposicaoProdutoID_MATPRIMAGetText
    end
    object cdsComposicaoProdutoQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 5
    end
    object cdsComposicaoProdutoCUSTO_UNIT: TFMTBCDField
      DisplayLabel = 'CUSTO UNIT'#193'RIO'
      FieldName = 'CUSTO_UNIT'
      Origin = 'CUSTO_UNIT'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsComposicaoProdutoCUSTO_TOTAL: TFMTBCDField
      DisplayLabel = 'CUSTO TOTAL'
      FieldName = 'CUSTO_TOTAL'
      Origin = 'CUSTO_TOTAL'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsComposicaoProdutoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 100
    end
    object cdsComposicaoProdutoSIGLA: TStringField
      DisplayLabel = 'UND'
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      ProviderFlags = []
      Size = 10
    end
  end
  object dsComposicaoProduto: TDataSource
    DataSet = cdsComposicaoProduto
    Left = 232
    Top = 544
  end
  object dsHistVenda: TDataSource
    DataSet = cdsHistVenda
    Left = 328
    Top = 545
  end
  object cdsHistVenda: TClientDataSet
    Aggregates = <>
    DataSetField = cdsfdqryPrecoVendaHist
    FieldDefs = <
      item
        Name = 'ID_PROD'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'USUARIO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PRECO_NOVO'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'DATA'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'DT_FIM'
        DataType = ftDate
      end>
    IndexDefs = <
      item
        Name = 'DATA'
        Fields = 'DATA'
        Options = [ixDescending]
      end>
    IndexName = 'DATA'
    Params = <>
    StoreDefs = True
    Left = 328
    Top = 497
    object cdsHistVendaID_PROD: TIntegerField
      FieldName = 'ID_PROD'
      Origin = 'ID_PROD'
      Required = True
    end
    object cdsHistVendaUSUARIO: TStringField
      DisplayLabel = 'USU'#193'RIO'
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object cdsHistVendaPRECO_NOVO: TFMTBCDField
      DisplayLabel = 'PRE'#199'O'
      FieldName = 'PRECO_NOVO'
      Origin = 'PRECO_NOVO'
      Required = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsHistVendaDATA: TDateField
      DisplayLabel = #205'NICIO VIG'#202'NCIA'
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object cdsHistVendaDT_FIM: TDateField
      DisplayLabel = 'FINAL VIG'#202'NCIA'
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
  end
  object cdsHistCusto: TClientDataSet
    Aggregates = <>
    DataSetField = cdsfdqryPrecoCustoHist
    Params = <>
    Left = 400
    Top = 499
    object cdsHistCustoID_PROD: TIntegerField
      FieldName = 'ID_PROD'
      Origin = 'ID_PROD'
      Required = True
    end
    object cdsHistCustoPRECO_NOVO: TFMTBCDField
      DisplayLabel = 'PRE'#199'O'
      FieldName = 'PRECO_NOVO'
      Origin = 'PRECO_NOVO'
      Required = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsHistCustoDATA: TDateField
      DisplayLabel = #205'NICIO VIG'#202'NCIA'
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object cdsHistCustoDATA_FIM: TDateField
      DisplayLabel = 'FINAL VIG'#202'NCIA'
      FieldName = 'DATA_FIM'
      Origin = 'DATA_FIM'
    end
    object cdsHistCustoUSUARIO: TStringField
      DisplayLabel = 'USU'#193'RIO'
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
  end
  object dsHistCusto: TDataSource
    DataSet = cdsHistCusto
    Left = 400
    Top = 547
  end
end

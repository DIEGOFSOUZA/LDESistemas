inherited Rel_PDV_Venda: TRel_PDV_Venda
  BorderStyle = bsDialog
  Caption = 'RELAT'#211'RIO DE VENDAS (PDV)'
  ClientHeight = 456
  ClientWidth = 896
  OnCreate = FormCreate
  ExplicitWidth = 902
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Left = 8
    Top = 241
    DataSource = dsMaster
    ExplicitLeft = 8
    ExplicitTop = 241
    object RLGroup1: TRLGroup
      Left = 38
      Top = 84
      Width = 718
      Height = 210
      DataFields = 'TIPO;ID'
      IntegralHeight = True
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 91
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand6BeforePrint
        object RLLabel18: TRLLabel
          Left = 8
          Top = 8
          Width = 35
          Height = 16
          Caption = 'Data:'
        end
        object RLLabel21: TRLLabel
          Left = 144
          Top = 8
          Width = 45
          Height = 16
          Caption = 'Venda:'
        end
        object RLLabel30: TRLLabel
          Left = 433
          Top = 8
          Width = 59
          Height = 16
          Caption = 'Vl. Bruto:'
        end
        object RLLabel31: TRLLabel
          Left = 580
          Top = 8
          Width = 65
          Height = 16
          Caption = 'Vl. L'#237'quido'
        end
        object RLLabel33: TRLLabel
          Left = 3
          Top = 30
          Width = 48
          Height = 16
          Caption = 'Cliente:'
        end
        object RLLabel36: TRLLabel
          Left = 518
          Top = 30
          Width = 78
          Height = 16
          Caption = 'Vendedor(a):'
        end
        object RLDBText5: TRLDBText
          Left = 45
          Top = 8
          Width = 91
          Height = 16
          AutoSize = False
          DataField = 'EMISSAO'
          DataSource = dsMaster
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 196
          Top = 8
          Width = 231
          Height = 16
          AutoSize = False
          DataField = 'ID'
          DataSource = dsMaster
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          BeforePrint = RLDBText7BeforePrint
        end
        object RLDBText9: TRLDBText
          Left = 495
          Top = 8
          Width = 70
          Height = 16
          AutoSize = False
          DataField = 'VL_BRUTO'
          DataSource = dsMaster
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 648
          Top = 8
          Width = 77
          Height = 16
          AutoSize = False
          DataField = 'VL_LIQUIDO'
          DataSource = dsMaster
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText11: TRLDBText
          Left = 49
          Top = 30
          Width = 352
          Height = 16
          AutoSize = False
          DataField = 'CLIENTE'
          DataSource = dsMaster
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 597
          Top = 30
          Width = 118
          Height = 16
          AutoSize = False
          DataField = 'VENDEDORA'
          DataSource = dsMaster
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel42: TRLLabel
          Left = 20
          Top = 51
          Width = 136
          Height = 16
          Caption = 'Formas de Pagamento'
        end
        object RLDBMemo1: TRLDBMemo
          Left = 20
          Top = 70
          Width = 700
          Height = 15
          Behavior = [beSiteExpander]
          DataField = 'FORMAS_PAGTO'
          DataSource = dsMaster
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel52: TRLLabel
          Left = 528
          Top = 51
          Width = 108
          Height = 16
          Caption = 'Horario da Venda:'
          Visible = False
        end
        object RLDBText22: TRLDBText
          Left = 637
          Top = 51
          Width = 98
          Height = 16
          AutoSize = False
          DataField = 'HORARIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 91
        Width = 718
        Height = 73
        DataSource = dsDetail
        BeforePrint = RLSubDetail1BeforePrint
        object RLBand7: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 28
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel44: TRLLabel
            Left = 2
            Top = 10
            Width = 37
            Height = 16
            AutoSize = False
            Caption = 'ITEM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel46: TRLLabel
            Left = 42
            Top = 10
            Width = 350
            Height = 16
            AutoSize = False
            Caption = 'DESCRI'#199#195'O DO PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel48: TRLLabel
            Left = 436
            Top = 10
            Width = 58
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'QTDE.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel49: TRLLabel
            Left = 496
            Top = 10
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'VL. UNIT.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel50: TRLLabel
            Left = 569
            Top = 10
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'VL. DESC.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel45: TRLLabel
            Left = 645
            Top = 10
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'VL. TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel1: TRLLabel
            Left = 395
            Top = 10
            Width = 38
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'U.M.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand8: TRLBand
          Left = 0
          Top = 28
          Width = 718
          Height = 18
          object RLDBText14: TRLDBText
            Left = 2
            Top = 1
            Width = 37
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ORDEM'
            DataSource = dsDetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
          end
          object RLDBText15: TRLDBText
            Left = 42
            Top = 1
            Width = 350
            Height = 16
            AutoSize = False
            DataField = 'NOME'
            DataSource = dsDetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText17: TRLDBText
            Left = 436
            Top = 1
            Width = 58
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTDE'
            DataSource = dsDetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText18: TRLDBText
            Left = 496
            Top = 1
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VL_UNITARIO'
            DataSource = dsDetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText19: TRLDBText
            Left = 569
            Top = 1
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VL_DESCONTO'
            DataSource = dsDetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText21: TRLDBText
            Left = 645
            Top = 1
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VL_LIQUIDO'
            DataSource = dsDetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object RLDBText1: TRLDBText
            Left = 395
            Top = 1
            Width = 38
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'UNIDADE'
            DataSource = dsDetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 164
        Width = 718
        Height = 20
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLDraw1: TRLDraw
          Left = 0
          Top = 8
          Width = 718
          Height = 12
          Align = faClientBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 294
      Width = 718
      Height = 21
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand2BeforePrint
      object rlblTotQtde: TRLLabel
        Left = 336
        Top = 2
        Width = 158
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'QTDE. ITENS:  200.000 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblTotValor: TRLLabel
        Left = 500
        Top = 1
        Width = 215
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vl. Total l'#237'q. R$  100.000,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 0
    Width = 896
    Height = 217
    Align = alTop
    TabOrder = 0
    object pnlFiltros: TPanel
      Left = 1
      Top = 1
      Width = 894
      Height = 122
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label2: TLabel
        Left = 251
        Top = 63
        Width = 96
        Height = 17
        Caption = 'TIPO RELAT'#211'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object pnlPeriodo: TPanel
        Left = 8
        Top = 21
        Width = 228
        Height = 63
        BorderStyle = bsSingle
        TabOrder = 1
        object lblTitPeriodo: TLabel
          Left = 1
          Top = 1
          Width = 222
          Height = 17
          Align = alTop
          Caption = '  Per'#237'odo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 54
        end
        object Label1: TLabel
          Left = 112
          Top = 32
          Width = 6
          Height = 13
          Caption = #224
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object dtp1: TDateTimePicker
          Left = 11
          Top = 26
          Width = 93
          Height = 25
          Date = 43801.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.530467696757114000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object dtp2: TDateTimePicker
          Left = 124
          Top = 26
          Width = 93
          Height = 25
          Date = 43801.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.530467696757114000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
      object edpCliente: TEdPesquisa
        Left = 299
        Top = 38
        Width = 383
        Height = 21
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'CLIENTE'
        ConsultaTabela.Pesquisa = 'codigo'
        ConsultaTabela.Mostrar = 'nome_razao'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edpClientePesquisa
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 48
        Titulo.Height = 17
        Titulo.Caption = 'CLIENTE'
        Titulo.Font.Charset = ANSI_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -13
        Titulo.Font.Name = 'Segoe UI'
        Titulo.Font.Style = []
        Titulo.ParentFont = False
        Mostrar.Left = 132
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
        Campo.Left = 50
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.TabOrder = 0
        TabOrder = 2
        TabStop = True
      end
      object cbbTipoRel: TComboBox
        Left = 349
        Top = 63
        Width = 145
        Height = 21
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 3
        Text = 'RESUMIDO'
        OnChange = cbbTipoRelChange
        Items.Strings = (
          'RESUMIDO'
          'DETALHADO')
      end
      object edpProduto: TEdPesquisa
        Left = 288
        Top = 95
        Width = 394
        Height = 21
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'PRODUTO'
        ConsultaTabela.Pesquisa = 'codigo'
        ConsultaTabela.Mostrar = 'nome'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edpProdutoPesquisa
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 59
        Titulo.Height = 17
        Titulo.Caption = 'PRODUTO'
        Titulo.Font.Charset = ANSI_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -13
        Titulo.Font.Name = 'Segoe UI'
        Titulo.Font.Style = []
        Titulo.ParentFont = False
        Mostrar.Left = 143
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
        Campo.Left = 61
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.TabOrder = 0
        TabOrder = 4
        TabStop = True
      end
      object edpsqsVendedor: TEdPesquisa
        Left = 263
        Top = 13
        Width = 419
        Height = 21
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'FUNCIONARIO'
        ConsultaTabela.Pesquisa = 'id_vendedor'
        ConsultaTabela.Mostrar = 'nome'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edpsqsVendedorPesquisa
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 84
        Titulo.Height = 17
        Titulo.Caption = 'VENDEDOR(A)'
        Titulo.Font.Charset = ANSI_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -13
        Titulo.Font.Name = 'Segoe UI'
        Titulo.Font.Style = []
        Titulo.ParentFont = False
        Mostrar.Left = 168
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
        Campo.Left = 86
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.TabOrder = 0
        TabOrder = 0
        TabStop = True
      end
    end
    object pnlAcoes: TPanel
      Left = 1
      Top = 123
      Width = 894
      Height = 54
      Align = alTop
      TabOrder = 1
      object btnRelatorio: TButton
        Left = 465
        Top = 4
        Width = 100
        Height = 47
        Action = actGerarRelatorio
        ImageMargins.Left = 5
        Images = DM.il2
        TabOrder = 0
      end
      object btnSair: TButton
        Left = 579
        Top = 4
        Width = 100
        Height = 47
        Action = actSair
        ImageMargins.Left = 5
        Images = DM.il2
        TabOrder = 1
      end
    end
  end
  object Rel_Resumido: TRLReport [2]
    Left = 826
    Top = 241
    Width = 1123
    Height = 794
    DataSource = dsMaster
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 46
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLPanel1: TRLPanel
        Left = 0
        Top = 0
        Width = 305
        Height = 45
        Align = faLeft
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLLabel2: TRLLabel
          Left = 0
          Top = 2
          Width = 304
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'NOME FANTASIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel2: TRLPanel
        Left = 963
        Top = 0
        Width = 84
        Height = 45
        Align = faRight
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLSystemInfo4: TRLSystemInfo
          Left = 1
          Top = 0
          Width = 83
          Height = 14
          Align = faTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
          Text = 'Pag.: '
        end
        object RLSystemInfo5: TRLSystemInfo
          Left = 1
          Top = 14
          Width = 83
          Height = 14
          Align = faTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLSystemInfo6: TRLSystemInfo
          Left = 1
          Top = 28
          Width = 83
          Height = 14
          Align = faTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itHour
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel3: TRLLabel
        Left = 306
        Top = 1
        Width = 322
        Height = 18
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 307
        Top = 28
        Width = 321
        Height = 14
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 84
      Width = 1047
      Height = 36
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel4: TRLLabel
        Left = 5
        Top = 14
        Width = 89
        Height = 16
        AutoSize = False
        Caption = 'Data Emiss'#227'o'
      end
      object RLLabel5: TRLLabel
        Left = 98
        Top = 14
        Width = 83
        Height = 16
        AutoSize = False
        Caption = 'N'#186' da Venda'
      end
      object RLLabel6: TRLLabel
        Left = 185
        Top = 14
        Width = 280
        Height = 16
        AutoSize = False
        Caption = 'Cliente'
      end
      object RLLabel7: TRLLabel
        Left = 469
        Top = 14
        Width = 95
        Height = 16
        AutoSize = False
        Caption = 'Vl. Bruto R$'
      end
      object RLLabel8: TRLLabel
        Left = 568
        Top = 14
        Width = 95
        Height = 16
        AutoSize = False
        Caption = 'Vl. L'#237'quido R$'
      end
      object RLLabel9: TRLLabel
        Left = 667
        Top = 14
        Width = 256
        Height = 16
        AutoSize = False
        Caption = 'Forma de Pagto.'
      end
      object RLLabel10: TRLLabel
        Left = 927
        Top = 14
        Width = 115
        Height = 16
        AutoSize = False
        Caption = 'Vendedor(a)'
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 120
      Width = 1047
      Height = 17
      BeforePrint = RLBand5BeforePrint
      object RLDBText2: TRLDBText
        Left = 5
        Top = 1
        Width = 89
        Height = 16
        AutoSize = False
        DataField = 'EMISSAO'
        DataSource = dsMaster
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 98
        Top = 1
        Width = 83
        Height = 16
        AutoSize = False
        DataField = 'ID'
        DataSource = dsMaster
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 185
        Top = 1
        Width = 280
        Height = 16
        AutoSize = False
        DataField = 'CLIENTE'
        DataSource = dsMaster
        Text = ''
        BeforePrint = RLDBText4BeforePrint
      end
      object RLDBText6: TRLDBText
        Left = 469
        Top = 1
        Width = 95
        Height = 16
        AutoSize = False
        DataField = 'VL_BRUTO'
        DataSource = dsMaster
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 568
        Top = 1
        Width = 95
        Height = 16
        AutoSize = False
        DataField = 'VL_LIQUIDO'
        DataSource = dsMaster
        Text = ''
      end
      object RLDBText12: TRLDBText
        Left = 927
        Top = 1
        Width = 115
        Height = 16
        AutoSize = False
        DataField = 'VENDEDORA'
        DataSource = dsMaster
        Text = ''
      end
      object RLDBMemo2: TRLDBMemo
        Left = 667
        Top = 2
        Width = 256
        Height = 16
        Behavior = [beSiteExpander]
        DataField = 'FORMAS_PAGTO'
        DataSource = dsMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 137
      Width = 1047
      Height = 21
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand10BeforePrint
      object RLLabel11: TRLLabel
        Left = 414
        Top = 2
        Width = 42
        Height = 18
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlblTotLiquido: TRLLabel
        Left = 568
        Top = 2
        Width = 95
        Height = 18
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblTotBruto: TRLLabel
        Left = 469
        Top = 2
        Width = 95
        Height = 18
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited RLPDFFilter1: TRLPDFFilter
    Left = 15
    Top = 93
  end
  object actlstAcoes: TActionList
    Images = DM.il2
    Left = 47
    Top = 93
    object actGerarRelatorio: TAction
      Caption = 'Relat'#243'rio'
      ImageIndex = 8
      OnExecute = actGerarRelatorioExecute
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 9
      OnExecute = actSairExecute
    end
  end
  object cdsMaster: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select a.TIPO,a.ID,a.EMISSAO,'#13#10'cast(a.VL_TOTAL as numeric(10,2))' +
      ' vl_bruto,a.status,'#13#10'cast( (a.VL_TOTAL - a.VL_DESCONTO) as numer' +
      'ic(10,2)) vl_liquido,'#13#10'b.NOME_RAZAO cliente,e.NOME VENDEDORA,'#13#10'c' +
      'ast( '#39#39' as varchar(500) ) formas_pagto'#13#10'from PDV_MASTER a '#13#10'left' +
      ' outer join CLIENTE b on (b.codigo = a.ID_CLIENTE) '#13#10'left outer ' +
      'join FUNCIONARIO e on (e.codigo = a.ID_VENDEDOR) '#13#10'where 1 = 2'
    Params = <>
    ProviderName = 'DSPLer1'
    Left = 79
    Top = 93
    object cdsMasterTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsMasterID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMasterEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object cdsMasterCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ReadOnly = True
      Size = 100
    end
    object cdsMasterVENDEDORA: TStringField
      FieldName = 'VENDEDORA'
      ReadOnly = True
      Size = 40
    end
    object cdsMasterFORMAS_PAGTO: TStringField
      FieldName = 'FORMAS_PAGTO'
      ReadOnly = True
      Size = 500
    end
    object cdsMasterSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsMasterVL_BRUTO: TFMTBCDField
      FieldName = 'VL_BRUTO'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMasterVL_LIQUIDO: TFMTBCDField
      FieldName = 'VL_LIQUIDO'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object cdsDetail: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 
      'select a.TIPO,a.ID,a.ORDEM,cast(a.QTDE as integer) qtde,c.SIGLA ' +
      'unidade,'#13#10'cast(a.VL_UNITARIO as numeric(10,2)) VL_UNITARIO,'#13#10'cas' +
      't(a.VL_DESCONTO as numeric(10,2))VL_DESCONTO,'#13#10'cast(a.VL_TOTAL a' +
      's numeric(10,2)) vl_liquido,'#13#10'b.CODIGO codpro,b.NOME'#13#10'from PDV_I' +
      'TENS a '#13#10'left outer join PRODUTO b on (b.CODIGO = a.ID_PRODUTO)'#13 +
      #10'left outer join UNIDADE c on (c.CODIGO = b.COD_UNIDADE)'#13#10'where ' +
      '1 = 2'
    Params = <>
    ProviderName = 'DSPLer1'
    Left = 111
    Top = 93
    object cdsDetailTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDetailID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDetailORDEM: TIntegerField
      FieldName = 'ORDEM'
      Required = True
    end
    object cdsDetailQTDE: TIntegerField
      FieldName = 'QTDE'
      ReadOnly = True
      DisplayFormat = '#,##0.000'
    end
    object cdsDetailUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ReadOnly = True
      Size = 10
    end
    object cdsDetailCODPRO: TIntegerField
      FieldName = 'CODPRO'
      ReadOnly = True
    end
    object cdsDetailNOME: TStringField
      FieldName = 'NOME'
      ReadOnly = True
      Size = 100
    end
    object cdsDetailVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsDetailVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsDetailVL_LIQUIDO: TFMTBCDField
      FieldName = 'VL_LIQUIDO'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsDetailtot_qtde: TAggregateField
      FieldName = 'tot_qtde'
      Active = True
      DisplayName = ''
      DisplayFormat = '#,##0'
      Expression = 'sum(qtde)'
    end
  end
  object dsMaster: TDataSource
    DataSet = cdsMaster
    Left = 143
    Top = 93
  end
  object dsDetail: TDataSource
    DataSet = cdsDetail
    Left = 15
    Top = 125
  end
end

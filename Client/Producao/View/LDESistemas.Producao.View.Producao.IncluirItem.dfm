inherited FrmProducaoIncluirItem: TFrmProducaoIncluirItem
  Caption = 'FrmProducaoIncluirItem'
  ClientHeight = 540
  ClientWidth = 1103
  Visible = False
  OnShow = FormShow
  ExplicitWidth = 1103
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 1103
    ExplicitWidth = 1054
    inherited lblTitulo: TLabel
      Width = 1068
      Caption = 'ORDEM DE PRODU'#199#195'O - ITEM'
      ExplicitLeft = -6
      ExplicitTop = -6
      ExplicitWidth = 725
    end
    inherited pnlBotaoSair: TPanel
      Left = 1073
      ExplicitLeft = 1024
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 30
    Width = 1103
    Height = 510
    Align = alClient
    BevelOuter = bvNone
    Color = 14803681
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 1054
    object pnlLeft: TPanel
      Left = 0
      Top = 0
      Width = 587
      Height = 510
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object lblProduto: TLabel
        Left = 13
        Top = 17
        Width = 59
        Height = 17
        Caption = 'PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 501
        Top = 17
        Width = 80
        Height = 17
        Caption = 'QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 13
        Top = 81
        Width = 57
        Height = 17
        Caption = 'VALIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 149
        Top = 81
        Width = 29
        Height = 17
        Caption = 'LOTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edpesProduto: TEdPesquisa
        Left = 6
        Top = 38
        Width = 489
        Height = 25
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'PRODUTO'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'NOME'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 4
        Titulo.Height = 17
        Titulo.Caption = ' '
        Mostrar.Left = 88
        Mostrar.Top = 0
        Mostrar.Width = 400
        Mostrar.Height = 25
        Mostrar.TabStop = False
        Mostrar.Color = 14803681
        Mostrar.Font.Charset = ANSI_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -13
        Mostrar.Font.Name = 'Segoe UI'
        Mostrar.Font.Style = []
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 6
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 25
        Campo.CharCase = ecUpperCase
        Campo.Color = 14803681
        Campo.Font.Charset = ANSI_CHARSET
        Campo.Font.Color = clWindowText
        Campo.Font.Height = -13
        Campo.Font.Name = 'Segoe UI'
        Campo.Font.Style = []
        Campo.ParentFont = False
        Campo.TabOrder = 0
        Campo.OnChange = edpesProdutoedtCampoChange
        TabOrder = 0
        TabStop = True
      end
      object edtValidade: TEdit
        Left = 13
        Top = 102
        Width = 121
        Height = 25
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 2
        TextHint = 'dd/mm/aaaa'
        OnKeyPress = edtValidadeKeyPress
      end
      object edtLote: TEdit
        Left = 149
        Top = 102
        Width = 432
        Height = 25
        CharCase = ecUpperCase
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object pnlEstoque: TPanel
        Left = 13
        Top = 216
        Width = 568
        Height = 49
        BevelOuter = bvNone
        Color = 14803681
        Padding.Left = 10
        Padding.Right = 15
        ParentBackground = False
        TabOrder = 4
        object lbl1: TLabel
          Left = 10
          Top = 0
          Width = 293
          Height = 49
          Align = alLeft
          Caption = 'ESTOQUE ATUAL(AP'#211'S PRODU'#199#195'O)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 25
        end
        object lblEstoque: TLabel
          Left = 303
          Top = 0
          Width = 250
          Height = 49
          Align = alClient
          Alignment = taRightJustify
          Caption = '15.000 (18.000)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 414
          ExplicitWidth = 139
          ExplicitHeight = 25
        end
      end
      object pnlCusto: TPanel
        Left = 13
        Top = 304
        Width = 568
        Height = 50
        BevelOuter = bvNone
        Color = 14803681
        Padding.Left = 10
        Padding.Right = 15
        ParentBackground = False
        TabOrder = 5
        object Label4: TLabel
          Left = 10
          Top = 0
          Width = 232
          Height = 50
          Align = alLeft
          Caption = 'CUSTO TOTAL DO PRODUTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 25
        end
        object lblCusto: TLabel
          Left = 242
          Top = 0
          Width = 311
          Height = 50
          Align = alClient
          Alignment = taRightJustify
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 487
          ExplicitWidth = 66
          ExplicitHeight = 25
        end
      end
      object edtQtde: TEdit
        Left = 501
        Top = 38
        Width = 80
        Height = 25
        Alignment = taCenter
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 1
        OnKeyPress = edtQtdeKeyPress
      end
    end
    object pnlRight: TPanel
      Left = 587
      Top = 0
      Width = 516
      Height = 510
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 467
      object pnlBotoes: TPanel
        Left = 0
        Top = 460
        Width = 516
        Height = 50
        Align = alBottom
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        ParentBackground = False
        TabOrder = 2
        ExplicitWidth = 467
        object pnlCancelar: TPanel
          Left = 5
          Top = 5
          Width = 185
          Height = 40
          Align = alLeft
          BevelOuter = bvNone
          Color = 10114881
          ParentBackground = False
          TabOrder = 0
          object btnCancelar: TSpeedButton
            Left = 0
            Top = 0
            Width = 185
            Height = 40
            Cursor = crHandPoint
            Align = alClient
            Caption = 'CANCELAR'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnCancelarClick
            ExplicitLeft = 80
            ExplicitTop = 16
            ExplicitWidth = 23
            ExplicitHeight = 22
          end
        end
        object pnlIncluir: TPanel
          Left = 190
          Top = 5
          Width = 321
          Height = 40
          Align = alClient
          BevelOuter = bvNone
          Color = 7024384
          ParentBackground = False
          TabOrder = 1
          ExplicitWidth = 272
          object btnIncluir: TSpeedButton
            Left = 0
            Top = 0
            Width = 321
            Height = 40
            Cursor = crHandPoint
            Align = alClient
            Caption = 'INCLUIR PRODUTO'
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
      object pnlTitInsumo: TPanel
        Left = 0
        Top = 0
        Width = 516
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlTitulo'
        ShowCaption = False
        TabOrder = 0
        ExplicitWidth = 467
        object lblTitInsumo: TLabel
          Left = 0
          Top = 0
          Width = 516
          Height = 60
          Align = alClient
          Alignment = taCenter
          AutoSize = False
          Caption = 'INSUMOS UTILIZADOS'
          Color = 4195840
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          OnMouseMove = lblTituloMouseMove
          ExplicitLeft = -6
          ExplicitTop = -6
          ExplicitWidth = 725
          ExplicitHeight = 30
        end
      end
      object pnlGrid: TPanel
        Left = 0
        Top = 60
        Width = 516
        Height = 400
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitWidth = 467
        object dbgrdPedidos: TDBGrid
          Left = 0
          Top = 0
          Width = 516
          Height = 400
          Align = alClient
          DataSource = dsInsumo
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
              Expanded = False
              FieldName = 'INSUMO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE_ESTOQUE'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UNIDADE'
              Visible = True
            end>
        end
      end
    end
  end
  inherited actlst1: TActionList
    Left = 664
    Top = 304
  end
  object dsInsumo: TDataSource
    DataSet = cdsInsumo
    Left = 936
    Top = 352
  end
  object cdsInsumo: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_INSUMO'
        DataType = ftInteger
      end
      item
        Name = 'INSUMO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'QTDE'
        DataType = ftFloat
      end
      item
        Name = 'QTDE_ESTOQUE'
        DataType = ftFloat
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 936
    Top = 288
    object cdsInsumoID_INSUMO: TIntegerField
      FieldName = 'ID_INSUMO'
    end
    object cdsInsumoINSUMO: TStringField
      DisplayWidth = 35
      FieldName = 'INSUMO'
      Size = 100
    end
    object cdsInsumoQTDE: TFloatField
      DisplayLabel = 'QUANTIDADE'
      FieldName = 'QTDE'
    end
    object cdsInsumoQTDE_ESTOQUE: TFloatField
      DisplayLabel = 'ESTOQUE ATUAL'
      FieldName = 'QTDE_ESTOQUE'
    end
    object cdsInsumoUNIDADE: TStringField
      Alignment = taCenter
      DisplayLabel = 'UND'
      DisplayWidth = 8
      FieldName = 'UNIDADE'
      Size = 10
    end
  end
end

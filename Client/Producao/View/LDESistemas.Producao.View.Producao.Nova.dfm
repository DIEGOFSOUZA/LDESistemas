inherited FrmProducaoNova: TFrmProducaoNova
  Caption = 'FrmProducaoNova'
  ClientHeight = 527
  ClientWidth = 1000
  Visible = False
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 1000
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 1000
    ExplicitWidth = 1000
    inherited lblTitulo: TLabel
      Width = 965
      Caption = 'ORDEM DE PRODU'#199#195'O - NOVA'
      ExplicitWidth = 965
    end
    inherited pnlBotaoSair: TPanel
      Left = 970
      ExplicitLeft = 970
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 30
    Width = 1000
    Height = 497
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object pnlBotoes: TPanel
      Left = 0
      Top = 447
      Width = 1000
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
        Left = 760
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
          Caption = 'SALVAR PRODU'#199#195'O'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 80
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object pnlCenter: TPanel
      Left = 0
      Top = 146
      Width = 1000
      Height = 301
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Right = 5
      TabOrder = 1
      object pnlIncRodapeIncProduto: TPanel
        Left = 5
        Top = 211
        Width = 990
        Height = 40
        Align = alBottom
        BevelOuter = bvNone
        Color = 14803681
        Padding.Top = 5
        TabOrder = 1
        object pnlIncProduto: TPanel
          Left = 800
          Top = 5
          Width = 190
          Height = 35
          Align = alRight
          BevelOuter = bvNone
          Color = 4195840
          ParentBackground = False
          TabOrder = 0
          object btnIncProduto: TSpeedButton
            Left = 0
            Top = 0
            Width = 190
            Height = 35
            Cursor = crHandPoint
            Align = alClient
            Caption = 'INCLUIR PRODUTO'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = btnIncProdutoClick
            ExplicitTop = -6
          end
        end
      end
      object pnlRodapeCustoTotal: TPanel
        Left = 5
        Top = 251
        Width = 990
        Height = 50
        Align = alBottom
        BevelOuter = bvNone
        Color = 14803681
        Padding.Top = 5
        Padding.Bottom = 5
        TabOrder = 2
        object lblCustoTotal: TLabel
          Left = 800
          Top = 5
          Width = 190
          Height = 40
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -24
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
        end
        object lbl1: TLabel
          Left = 610
          Top = 5
          Width = 190
          Height = 40
          Align = alRight
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CUSTO TOTAL DA PRODU'#199#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
          ExplicitLeft = 800
        end
      end
      object pnlGrid: TPanel
        Left = 5
        Top = 0
        Width = 990
        Height = 211
        Align = alClient
        BevelOuter = bvNone
        Color = 14803681
        TabOrder = 0
        object dbgrdPedidos: TDBGrid
          Left = 0
          Top = 0
          Width = 990
          Height = 211
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
        end
      end
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 1000
      Height = 146
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        Left = 202
        Top = 22
        Width = 131
        Height = 17
        Caption = #205'NICIO DA PRODU'#199#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 390
        Top = 22
        Width = 115
        Height = 17
        Caption = 'FIM DA PRODU'#199#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 578
        Top = 22
        Width = 84
        Height = 17
        Caption = 'RESPONS'#193'VEL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 202
        Top = 78
        Width = 80
        Height = 17
        Caption = 'OBSERVA'#199#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtInicio: TEdit
        Left = 202
        Top = 43
        Width = 180
        Height = 25
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        TextHint = 'dd/mm/aaaa'
        OnKeyPress = edtInicioKeyPress
      end
      object edtFimProducao: TEdit
        Left = 390
        Top = 43
        Width = 180
        Height = 25
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 1
        TextHint = 'dd/mm/aaaa'
        OnKeyPress = edtFimProducaoKeyPress
      end
      object edtResponsavel: TEdit
        Left = 578
        Top = 43
        Width = 220
        Height = 25
        TabStop = False
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtObservacao: TEdit
        Left = 202
        Top = 99
        Width = 596
        Height = 25
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  inherited actlst1: TActionList
    Left = 832
    Top = 200
  end
  object dsItem: TDataSource
    DataSet = cdsItem
    Left = 488
    Top = 248
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 248
  end
end

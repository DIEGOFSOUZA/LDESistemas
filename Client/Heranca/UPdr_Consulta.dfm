inherited Pdr_Consulta: TPdr_Consulta
  ActiveControl = edTexto
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Pdr_Consulta'
  ClientHeight = 340
  ClientWidth = 692
  Color = 13028246
  Position = poScreenCenter
  ExplicitWidth = 692
  ExplicitHeight = 340
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 138
    Align = alTop
    BevelInner = bvLowered
    Color = 13337441
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      Left = 11
      Top = 84
      Width = 56
      Height = 17
      Caption = 'Consulta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTitulo: TLabel
      Left = 2
      Top = 2
      Width = 688
      Height = 30
      Align = alTop
      AutoSize = False
      Caption = '         Titulo'
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
      ExplicitLeft = 0
      ExplicitTop = -6
      ExplicitWidth = 585
    end
    object Label1: TLabel
      Left = 96
      Top = 85
      Width = 224
      Height = 15
      Caption = 'use(%) para consulta em qualquer posi'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 11
      Top = 39
      Width = 103
      Height = 17
      Caption = 'Campo Consulta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edTexto: TEdit
      Left = 8
      Top = 103
      Width = 313
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyDown = edTextoKeyDown
    end
    object cbCampoConsulta: TComboBox
      Left = 11
      Top = 58
      Width = 175
      Height = 21
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = cbCampoConsultaClick
    end
  end
  object DBGridConsulta: TDBGrid
    Left = 0
    Top = 138
    Width = 692
    Height = 194
    Align = alTop
    Color = 12319738
    DataSource = sLer
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridConsultaDblClick
    OnTitleClick = DBGridConsultaTitleClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 205
    Width = 273
    Height = 101
    Caption = 'Op'#231#245'es da Consulta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object RadioGroup1: TRadioGroup
      Left = 3
      Top = 16
      Width = 267
      Height = 54
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 1
      Items.Strings = (
        'Iniciar por'
        'Em qualquer posi'#231#227'o'
        'Igual a')
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = RadioGroup1Click
    end
  end
  object Ler: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 200
  end
  object sLer: TDataSource
    DataSet = Ler
    Left = 600
    Top = 248
  end
end

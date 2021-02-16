inherited Frm_Desconto: TFrm_Desconto
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsNone
  Caption = 'Aplicar Desconto'
  ClientHeight = 162
  ClientWidth = 408
  Position = poScreenCenter
  ExplicitWidth = 408
  ExplicitHeight = 162
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 408
    Height = 30
    Align = alTop
    AutoSize = False
    Caption = '       APLICAR DESCONTO'
    Color = 13534033
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    ExplicitLeft = -55
    ExplicitWidth = 463
  end
  object pnl1: TPanel
    Left = 0
    Top = 30
    Width = 408
    Height = 132
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 144
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 58
      Top = 14
      Width = 135
      Height = 17
      Caption = 'Valor sem o Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 58
      Top = 104
      Width = 168
      Height = 17
      Caption = 'Valor aplicando o Desconto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 58
      Top = 42
      Width = 86
      Height = 17
      Caption = 'Percentual %: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 88
      Top = 71
      Width = 56
      Height = 17
      Caption = 'Valor R$: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSemDesc: TLabel
      Left = 200
      Top = 12
      Width = 62
      Height = 20
      Caption = '0.000,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblComDesc: TLabel
      Left = 231
      Top = 101
      Width = 31
      Height = 20
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtPerc: TEdit
      Left = 150
      Top = 40
      Width = 84
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '0,00'
      OnKeyPress = edtPercKeyPress
    end
    object edtVal: TEdit
      Left = 150
      Top = 69
      Width = 84
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      OnKeyPress = edtValKeyPress
    end
    object btnok: TButton
      Left = 283
      Top = 29
      Width = 100
      Height = 34
      Caption = 'Aplicar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ImageIndex = 3
      Images = DM.il2
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = btnokClick
    end
    object btnCancel: TButton
      Left = 283
      Top = 69
      Width = 100
      Height = 34
      Caption = 'Voltar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ImageIndex = 4
      Images = DM.il2
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = btnCancelClick
    end
  end
end

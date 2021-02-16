inherited Frm_EscolhaUM: TFrm_EscolhaUM
  BorderStyle = bsNone
  Caption = 'Frm_EscolhaUM'
  ClientHeight = 127
  ClientWidth = 342
  Visible = False
  ExplicitWidth = 342
  ExplicitHeight = 127
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 342
    Height = 30
    Align = alTop
    AutoSize = False
    Caption = '         INFORME A UNIDADE DE MEDIDA'
    Color = 10114859
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    ExplicitLeft = -263
    ExplicitWidth = 726
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 30
    Width = 342
    Height = 97
    Align = alClient
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'SACO'
      'QUILOGRAMAS')
    ParentFont = False
    TabOrder = 0
  end
end

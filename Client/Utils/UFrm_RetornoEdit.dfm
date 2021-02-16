inherited Frm_RetornoEdit: TFrm_RetornoEdit
  BorderStyle = bsDialog
  Caption = ''
  ClientHeight = 101
  ClientWidth = 336
  Visible = False
  OnKeyDown = FormKeyDown
  ExplicitWidth = 342
  ExplicitHeight = 130
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 5
    Top = 22
    Width = 325
    Height = 17
    Alignment = taCenter
    AutoSize = False
    Caption = 'TEXTO LIVRE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 62
    Top = 54
    Width = 213
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
  end
  object medt1: TMaskEdit
    Left = 126
    Top = 54
    Width = 81
    Height = 25
    Alignment = taCenter
    EditMask = '!99/99/0000;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 1
    Text = '  /  /    '
    Visible = False
    OnKeyPress = medt1KeyPress
  end
end

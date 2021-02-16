inherited Frm_VoltaSenha: TFrm_VoltaSenha
  BorderStyle = bsNone
  Caption = 'Frm_VoltaSenha'
  ClientHeight = 98
  ClientWidth = 164
  Visible = False
  ExplicitWidth = 164
  ExplicitHeight = 98
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 164
    Height = 98
    Align = alClient
    Color = 13337441
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 162
      Height = 22
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Informe a senha'
      Color = 7024384
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      ExplicitWidth = 461
    end
    object edtSenha: TEdit
      Left = 21
      Top = 46
      Width = 121
      Height = 25
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 0
      OnKeyPress = edtSenhaKeyPress
    end
  end
end

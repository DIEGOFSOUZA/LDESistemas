inherited Frm_PDV_Vendedor: TFrm_PDV_Vendedor
  BorderStyle = bsDialog
  Caption = ''
  ClientHeight = 180
  ClientWidth = 416
  Visible = False
  ExplicitWidth = 422
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 416
    Height = 180
    Align = alClient
    Caption = 'pnlFundo'
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 64
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 414
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = '         VENDEDOR'
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
      ExplicitTop = 0
      ExplicitWidth = 1200
    end
    object Label9: TLabel
      Left = 39
      Top = 51
      Width = 180
      Height = 25
      Caption = 'Informe o vendedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlSalvar: TPanel
      Left = 1
      Top = 144
      Width = 414
      Height = 35
      Align = alBottom
      Caption = 'pnlSalvar'
      Color = 3458443
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      ExplicitWidth = 455
      object btnSalvar: TSpeedButton
        Left = 1
        Top = 1
        Width = 412
        Height = 33
        Align = alClient
        Caption = 'SALVAR'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnSalvarClick
        ExplicitLeft = 2
        ExplicitWidth = 453
        ExplicitHeight = 41
      end
    end
    object cbbVendedor: TComboBox
      Left = 38
      Top = 79
      Width = 269
      Height = 29
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'N'#227'o informado'
      Items.Strings = (
        'N'#227'o informado')
    end
  end
end

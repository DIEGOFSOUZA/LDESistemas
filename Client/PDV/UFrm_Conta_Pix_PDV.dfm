object Frm_Conta_Pix_PDV: TFrm_Conta_Pix_PDV
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_Conta_Pix_PDV'
  ClientHeight = 243
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 337
    Height = 243
    Align = alClient
    BevelOuter = bvNone
    Color = 14803681
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 149
    object lblTit: TLabel
      Left = 0
      Top = 0
      Width = 337
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = '     Informe a conta a ser creditada'
      Color = 10114859
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      ExplicitTop = 8
      ExplicitWidth = 650
    end
    object rgcontas: TRadioGroup
      Left = 30
      Top = 22
      Width = 307
      Height = 181
      Align = alClient
      Columns = 2
      Items.Strings = (
        'Banco do Brasil'
        'Banco Sicoob'
        'Banco Bradesco'
        'Banco Santander'
        'Banco Itau'
        'Banco Safra')
      TabOrder = 1
      ExplicitLeft = 36
      ExplicitTop = 21
    end
    object pnlLeft: TPanel
      Left = 0
      Top = 22
      Width = 30
      Height = 181
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitHeight = 127
    end
    object pnlRodape: TPanel
      Left = 0
      Top = 203
      Width = 337
      Height = 40
      Align = alBottom
      TabOrder = 2
      ExplicitTop = 193
      object pnlConfirma: TPanel
        Left = 223
        Top = 5
        Width = 100
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 1
        object btnConfirma: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 30
          Align = alClient
          Caption = 'CONFIRMAR'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          OnClick = btnConfirmaClick
          ExplicitLeft = 1
          ExplicitHeight = 40
        end
      end
      object pnlCancela: TPanel
        Left = 133
        Top = 5
        Width = 75
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 0
        object btnCancela: TSpeedButton
          Left = 0
          Top = 0
          Width = 75
          Height = 30
          Align = alClient
          Caption = 'CANCELAR'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          OnClick = btnCancelaClick
          ExplicitLeft = 1
          ExplicitWidth = 100
          ExplicitHeight = 40
        end
      end
    end
  end
end

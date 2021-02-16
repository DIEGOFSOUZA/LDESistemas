inherited Frm_baixaDuplicata: TFrm_baixaDuplicata
  BorderStyle = bsNone
  Caption = ''
  ClientHeight = 166
  ClientWidth = 330
  Visible = False
  OnKeyDown = FormKeyDown
  ExplicitWidth = 330
  ExplicitHeight = 166
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 330
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 49
      Top = 42
      Width = 93
      Height = 15
      Caption = 'VALOR PAGO EM:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnIntegral: TButton
      Left = 55
      Top = 6
      Width = 100
      Height = 25
      Caption = 'Baixa Integral'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnIntegralClick
    end
    object btnParcial: TButton
      Left = 180
      Top = 7
      Width = 100
      Height = 25
      Caption = 'Baixa Parcial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnParcialClick
    end
    object cbbFormaPagto: TComboBox
      Left = 147
      Top = 38
      Width = 133
      Height = 22
      Style = csOwnerDrawFixed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        'DINHEIRO'
        'CHEQUE'
        'CARTAO DE CREDITO'
        'CARTAO DE DEBITO'
        'BOLETO BANCARIO')
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 65
    Width = 330
    Height = 101
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 147
      Height = 17
      Caption = 'Valor da Baixa Parcial R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnl3: TPanel
      Left = 1
      Top = 1
      Width = 328
      Height = 27
      Align = alTop
      TabOrder = 0
      object lblVlIntegral: TLabel
        Left = 1
        Top = 1
        Width = 131
        Height = 25
        Align = alLeft
        Caption = 'Valor integral: 150,49'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 17
      end
    end
    object edtValBaixa: TEdit
      Left = 26
      Top = 63
      Width = 59
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TextHint = '0,00'
      OnKeyPress = edtValBaixaKeyPress
    end
  end
end

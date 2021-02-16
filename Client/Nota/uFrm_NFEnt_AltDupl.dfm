inherited Frm_NFEnt_AltDupl: TFrm_NFEnt_AltDupl
  BorderStyle = bsNone
  Caption = 'Frm_NFEnt_AltDupl'
  ClientHeight = 180
  ClientWidth = 472
  Visible = False
  ExplicitWidth = 472
  ExplicitHeight = 180
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo0: TPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 180
    Align = alClient
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 470
      Height = 30
      Align = alTop
      AutoSize = False
      Caption = '   N.F. ENTRADA - ALTERA'#199#195'O DE DUPLICATA'
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
      ExplicitLeft = 2
      ExplicitTop = 9
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 134
      Width = 470
      Height = 45
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'pnlRodape'
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      object pnlCancelar: TPanel
        Left = 235
        Top = 5
        Width = 110
        Height = 35
        Caption = 'pnlIncRecebimento'
        Color = 4868682
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        object btnCancelar: TSpeedButton
          Left = 1
          Top = 1
          Width = 108
          Height = 33
          Action = actCancelar
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = -3
          ExplicitWidth = 278
          ExplicitHeight = 58
        end
      end
      object pnlSalvar: TPanel
        Left = 355
        Top = 5
        Width = 110
        Height = 35
        Caption = 'pnlIncRecebimento'
        Color = 3458443
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        object btnSalvar: TSpeedButton
          Left = 1
          Top = 1
          Width = 108
          Height = 33
          Action = actSalvar
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = -3
          ExplicitWidth = 278
          ExplicitHeight = 58
        end
      end
    end
    object pnlDados: TPanel
      Left = 1
      Top = 31
      Width = 470
      Height = 105
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label9: TLabel
        Left = 245
        Top = 40
        Width = 81
        Height = 17
        Caption = 'VENCIMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 357
        Top = 40
        Width = 78
        Height = 17
        Caption = 'VALOR TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 12
        Top = 40
        Width = 44
        Height = 17
        Caption = 'FORMA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dtpVencimento: TDateTimePicker
        Left = 245
        Top = 61
        Width = 103
        Height = 25
        Date = 44155.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 0.345167199076968200
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtVlTotal: TEdit
        Left = 356
        Top = 61
        Width = 101
        Height = 25
        TabStop = False
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edtVlTotalKeyPress
      end
      object Edit1: TEdit
        Left = 14
        Top = 61
        Width = 225
        Height = 25
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object actlst1: TActionList
    Left = 152
    Top = 128
    object actCancelar: TAction
      Caption = 'CANCELAR'
      OnExecute = actCancelarExecute
    end
    object actSalvar: TAction
      Caption = 'SALVAR'
      OnExecute = actSalvarExecute
    end
  end
end

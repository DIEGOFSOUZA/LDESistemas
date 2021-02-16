inherited Frm_PedidoDescontoItem: TFrm_PedidoDescontoItem
  BorderStyle = bsDialog
  Caption = '   DESCONTO NO ITEM'
  ClientHeight = 203
  ClientWidth = 519
  ExplicitWidth = 525
  ExplicitHeight = 232
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 203
    Align = alClient
    Caption = 'pnlFundo'
    Color = clWhite
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlInfProduto: TPanel
      Left = 1
      Top = 1
      Width = 517
      Height = 30
      Align = alTop
      Caption = 'pnlInfProduto'
      Color = 14803681
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      ExplicitWidth = 571
      object lblProduto: TLabel
        Left = 32
        Top = 7
        Width = 64
        Height = 17
        Caption = 'lblProduto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlDados: TPanel
      Left = 1
      Top = 31
      Width = 517
      Height = 101
      Align = alClient
      Caption = 'pnlDados'
      ShowCaption = False
      TabOrder = 1
      ExplicitHeight = 122
      object Label1: TLabel
        Left = 15
        Top = 22
        Width = 68
        Height = 17
        Caption = 'Quantidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 118
        Top = 22
        Width = 49
        Height = 17
        Caption = 'Unidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 201
        Top = 22
        Width = 107
        Height = 17
        Caption = 'Valor Unit'#225'rio (R$)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 323
        Top = 22
        Width = 77
        Height = 17
        Caption = 'Desconto em'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 413
        Top = 22
        Width = 82
        Height = 17
        Caption = 'Desconto (R$)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtQtde: TEdit
        Left = 12
        Top = 44
        Width = 73
        Height = 25
        Alignment = taRightJustify
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0,000'
        OnChange = edtQtdeChange
        OnKeyPress = edtQtdeKeyPress
      end
      object cbbUn: TComboBox
        Left = 100
        Top = 44
        Width = 85
        Height = 25
        Style = csDropDownList
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtVlUnit: TEdit
        Left = 200
        Top = 44
        Width = 107
        Height = 25
        Alignment = taRightJustify
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '0,000'
        OnChange = edtVlUnitChange
        OnKeyPress = edtVlUnitKeyPress
      end
      object edtDesc: TEdit
        Left = 414
        Top = 44
        Width = 82
        Height = 25
        Alignment = taRightJustify
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '0,000'
        OnChange = edtDescChange
        OnKeyPress = edtDescKeyPress
      end
      object cbbDesc: TComboBox
        Left = 322
        Top = 44
        Width = 77
        Height = 25
        Style = csDropDownList
        Color = 14803681
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 4
        Text = '    R$'
        OnChange = cbbDescChange
        Items.Strings = (
          '    R$'
          '    %')
      end
    end
    object pnlBotoes: TPanel
      Left = 1
      Top = 162
      Width = 517
      Height = 40
      Align = alBottom
      Caption = 'pnlDados'
      ShowCaption = False
      TabOrder = 2
      ExplicitTop = 280
      ExplicitWidth = 571
      object pnlSalvar: TPanel
        Left = 436
        Top = 7
        Width = 60
        Height = 25
        BevelOuter = bvNone
        Caption = 'pnlIncluiCondPagto'
        Color = 3458443
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        TabStop = True
        object btnSalvar: TSpeedButton
          Left = 0
          Top = 0
          Width = 60
          Height = 25
          Action = actSalvar
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = -8
          ExplicitWidth = 25
        end
      end
      object pnlCancelar: TPanel
        Left = 332
        Top = 7
        Width = 80
        Height = 25
        BevelOuter = bvNone
        Caption = 'pnlIncluiCondPagto'
        Color = clBlack
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        TabStop = True
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 80
          Height = 25
          Action = actCancelar
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = -8
          ExplicitWidth = 25
        end
      end
    end
    object pnlVlFinal: TPanel
      Left = 1
      Top = 132
      Width = 517
      Height = 30
      Align = alBottom
      Caption = 'pnlDados'
      ShowCaption = False
      TabOrder = 3
      ExplicitTop = 126
      object Label6: TLabel
        Left = 315
        Top = 7
        Width = 82
        Height = 17
        Caption = 'Valor Final: R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblVlFinal: TLabel
        Left = 403
        Top = 3
        Width = 96
        Height = 25
        Caption = '150.000,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object actlst1: TActionList
    Left = 248
    Top = 104
    object actSalvar: TAction
      Caption = 'SALVAR'
      OnExecute = actSalvarExecute
    end
    object actCancelar: TAction
      Caption = 'CANCELAR'
      OnExecute = actCancelarExecute
    end
  end
end

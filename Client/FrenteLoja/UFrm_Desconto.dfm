inherited Frm_Desconto: TFrm_Desconto
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsNone
  Caption = 'Aplicar Desconto'
  ClientHeight = 144
  ClientWidth = 380
  Position = poScreenCenter
  ExplicitWidth = 380
  ExplicitHeight = 144
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 380
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
    Width = 380
    Height = 114
    Align = alClient
    TabOrder = 0
    object pnlDireita: TPanel
      Left = 274
      Top = 1
      Width = 105
      Height = 112
      Align = alRight
      BevelOuter = bvNone
      Caption = 'pnlDireita'
      ShowCaption = False
      TabOrder = 0
      object btnCancel: TButton
        Left = 1
        Top = 61
        Width = 100
        Height = 34
        Caption = 'Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ImageIndex = 4
        Images = DM.il2
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = btnCancelClick
      end
      object btnok: TButton
        Left = 1
        Top = 21
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
        TabOrder = 1
        TabStop = False
        OnClick = btnokClick
      end
    end
    object pnlCentro: TPanel
      Left = 1
      Top = 1
      Width = 273
      Height = 112
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnlCentro'
      ShowCaption = False
      TabOrder = 1
      object pnlCentro1: TPanel
        Left = 0
        Top = 0
        Width = 273
        Height = 112
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlCentro1'
        ShowCaption = False
        TabOrder = 0
        object pnlDireita1: TPanel
          Left = 196
          Top = 0
          Width = 77
          Height = 112
          Align = alRight
          BevelOuter = bvNone
          Caption = 'pnlDireita1'
          ShowCaption = False
          TabOrder = 0
          Visible = False
          object lblPercMax: TLabel
            Left = 5
            Top = 35
            Width = 67
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Caption = '15,00%'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblVlMax: TLabel
            Left = 5
            Top = 64
            Width = 67
            Height = 15
            Alignment = taCenter
            AutoSize = False
            Caption = 'R$ 1.550,35'
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblTitDesMax: TLabel
            Left = 0
            Top = 0
            Width = 77
            Height = 15
            Align = alTop
            AutoSize = False
            Caption = 'Desc. M'#225'ximo'
            Color = 13534033
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
            ExplicitWidth = 89
          end
        end
        object pnlEdits: TPanel
          Left = 0
          Top = 0
          Width = 196
          Height = 112
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnlEdits'
          ShowCaption = False
          TabOrder = 1
          object Label4: TLabel
            Left = 74
            Top = 62
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
          object Label3: TLabel
            Left = 44
            Top = 33
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
          object edtVal: TEdit
            Left = 134
            Top = 60
            Width = 60
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '0,00'
            OnKeyPress = edtValKeyPress
          end
          object edtPerc: TEdit
            Left = 134
            Top = 31
            Width = 60
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '0,00'
            OnKeyPress = edtPercKeyPress
          end
          object pnlTopo: TPanel
            Left = 0
            Top = 0
            Width = 196
            Height = 20
            Align = alTop
            BevelOuter = bvNone
            Caption = 'pnlTopo'
            ShowCaption = False
            TabOrder = 2
            object Label1: TLabel
              Left = 21
              Top = -1
              Width = 109
              Height = 17
              Caption = 'Valor s/ Desconto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblSemDesc: TLabel
              Left = 134
              Top = 0
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
          end
          object pnlRodape: TPanel
            Left = 0
            Top = 92
            Width = 196
            Height = 20
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'pnlRodape'
            ShowCaption = False
            TabOrder = 3
            object Label2: TLabel
              Left = 6
              Top = 3
              Width = 124
              Height = 17
              Caption = 'Valor com Desconto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblComDesc: TLabel
              Left = 134
              Top = 0
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
          end
        end
      end
    end
  end
end

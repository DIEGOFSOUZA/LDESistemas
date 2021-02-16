inherited Frm_PDVCancelarVenda: TFrm_PDVCancelarVenda
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cancelar Venda <F2> Buscar Venda '
  ClientHeight = 300
  ClientWidth = 457
  OnClick = actLocalizarExecute
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitHeight = 329
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 457
    Height = 300
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 25
      Top = 12
      Width = 62
      Height = 17
      Caption = 'N'#186' VENDA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 47
      Width = 176
      Height = 17
      Caption = 'MOTIVO DO CANCELAMENTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 244
      Width = 455
      Height = 55
      Align = alBottom
      BorderStyle = bsSingle
      TabOrder = 2
      object btnGravar: TButton
        Left = 292
        Top = 6
        Width = 147
        Height = 39
        Caption = 'EFETUAR CANCELAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold, fsItalic]
        ImageIndex = 3
        Images = DM.il2
        ParentFont = False
        TabOrder = 0
        TabStop = False
        WordWrap = True
        OnClick = btnGravarClick
      end
    end
    object edtVenda: TEdit
      Left = 88
      Top = 9
      Width = 84
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
      Text = '0'
    end
    object mmo1: TMemo
      Left = 1
      Top = 67
      Width = 455
      Height = 177
      Align = alBottom
      TabOrder = 1
      OnKeyPress = mmo1KeyPress
    end
  end
  object actlst1: TActionList
    Left = 152
    Top = 176
    object actLocalizar: TAction
      Caption = 'Localizar vendas'
      ShortCut = 113
      OnExecute = actLocalizarExecute
    end
  end
end

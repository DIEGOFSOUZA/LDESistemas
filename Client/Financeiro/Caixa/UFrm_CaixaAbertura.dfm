inherited Frm_CaixaAbertura: TFrm_CaixaAbertura
  BorderStyle = bsDialog
  Caption = ''
  ClientHeight = 275
  ClientWidth = 316
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 322
  ExplicitHeight = 304
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 316
    Height = 30
    Align = alTop
    AutoSize = False
    Caption = '         Abertura do Caixa'
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
    ExplicitLeft = -138
    ExplicitWidth = 585
  end
  object pnlDados: TPanel
    Left = 0
    Top = 30
    Width = 316
    Height = 215
    Align = alClient
    Color = 14803681
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = 27
    object Label1: TLabel
      Left = 10
      Top = 13
      Width = 80
      Height = 13
      Caption = 'Usu'#225'rio logado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 137
      Top = 13
      Width = 108
      Height = 13
      Caption = 'Data e Hora abertura'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 10
      Top = 64
      Width = 81
      Height = 13
      Caption = 'Fundo de Caixa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 1
      Top = 193
      Width = 106
      Height = 21
      Align = alBottom
      Alignment = taCenter
      Caption = 'Caixa ABERTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      Visible = False
    end
    object Label5: TLabel
      Left = 10
      Top = 111
      Width = 60
      Height = 13
      Caption = 'Observa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object imgImportaSaldoAnterior: TImage
      Left = 201
      Top = 62
      Width = 40
      Height = 40
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
        002808060000008CFEB86D00000006624B474400FF00FF00FFA0BDA793000001
        4B4944415478DA636418E48071A01D40B603DD3B8EFFA7A74376565862750B5E
        07CEC830A78BE332669C1C75E0A803471D38EAC051070E84032F3F7CCFA02B2F
        38381D78E8EA2B8615471F304C4B331B5C0EFCF7FF3FC3CAA38F182E3DFCC8F0
        FEF3770662CCA09B037FFEFECB3073D75D86F7DFFF3218EBA8326C3970962807
        D62DBFC8B038D390B60EFCF0ED17C3E4ADB718D838B818F434141898181919D6
        EF394594034140518089760E7CFAEE1BC324A0E3A4C54518D495A4E1E283C281
        D71E7F6098B3E71E83B69A3C838CB8108A1CC881E402589AA4C881A09CBAE1F4
        1306131D150661015EB21D830E401E1B190E04017814ABCA31C848086358442E
        A09A0341E01930934C1CAC99040660C50C3B271783AEFA202B6660605017D430
        30A8AB3A6430681B0BC8605037B74801A30E1C75E0A803471D38EA40321D4817
        D74101C90E1C2C60D03B1000B96968386C06F5FE0000000049454E44AE426082}
      Visible = False
      OnClick = imgImportaSaldoAnteriorClick
    end
    object lblImportaSaldoAnterior: TLabel
      Left = 138
      Top = 101
      Width = 163
      Height = 13
      Caption = 'Importar saldo de caixa anterior'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Visible = False
      OnClick = imgImportaSaldoAnteriorClick
    end
    object edtUsuario: TEdit
      Left = 10
      Top = 31
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 0
      TextHint = 'ADMINISTRADOR'
    end
    object edtDataHora: TEdit
      Left = 137
      Top = 31
      Width = 136
      Height = 21
      ReadOnly = True
      TabOrder = 1
      TextHint = '27/04/2020 | 16:15:55'
    end
    object edtFundoCaixa: TEdit
      Left = 10
      Top = 81
      Width = 121
      Height = 21
      Alignment = taRightJustify
      TabOrder = 2
      TextHint = '0,00'
      OnKeyPress = edtFundoCaixaKeyPress
    end
    object mmo1: TMemo
      Left = 10
      Top = 130
      Width = 256
      Height = 57
      MaxLength = 300
      TabOrder = 3
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 245
    Width = 316
    Height = 30
    Align = alBottom
    BorderStyle = bsSingle
    Color = 14803681
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      312
      26)
    object btnOk: TButton
      Left = 241
      Top = 1
      Width = 65
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Abrir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ImageIndex = 6
      Images = DM.il1
      ParentFont = False
      TabOrder = 0
      OnClick = btnOkClick
    end
  end
  object temp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 14
  end
end

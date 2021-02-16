inherited Frm_Caixa_InformaValores: TFrm_Caixa_InformaValores
  BorderStyle = bsNone
  Caption = 'Frm_Caixa_InformaValores'
  ClientHeight = 369
  ClientWidth = 369
  Visible = False
  ExplicitWidth = 369
  ExplicitHeight = 369
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 369
    Height = 30
    Align = alTop
    AutoSize = False
    Caption = '       Informe os valores apurados'
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
    ExplicitLeft = -55
    ExplicitWidth = 463
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 333
    Width = 369
    Height = 36
    Align = alBottom
    Color = 14803681
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 335
    object lblSalvar: TLabel
      Left = 167
      Top = 2
      Width = 55
      Height = 30
      AutoSize = False
      Caption = 'SALVAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      OnClick = imgSalvarClick
    end
    object lblCancelar: TLabel
      Left = 293
      Top = 2
      Width = 66
      Height = 30
      AutoSize = False
      Caption = 'CANCELAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      OnClick = imgCancelarClick
    end
    object pnlSalvar: TPanel
      Left = 135
      Top = 2
      Width = 32
      Height = 32
      BevelOuter = bvNone
      Caption = 'pnlSalvar'
      Color = 7024384
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      object imgSalvar: TImage
        Left = 0
        Top = 0
        Width = 50
        Height = 50
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
          174944415478DAED97CB4B5B411487E78A558A267455A81BB705138B5A68BB69
          C1C7A6FA1FB8B6A022818AF84F286AD4852DEEEC5EF001B574D345453751535F
          3B375ADA9D4622BEFD4E6684A1782F0977482864E0E3CC9D7366CEEFDEDC3973
          E3A91237AF2CA02CE0A1C15B9A83B5F7A0D5F3BCDFA51290978840014CF482C6
          1E1AB7C4FF8298B16DB8FF165BC053F80EF1A027115A40D05CBAF722724F82A1
          785105986B11F1C76F6EC102F26DF98AFF7F0484696501A10584AC8C67F0D8F4
          632CB95D6C0176BB81691862E9F38205F8FD24B81F61E6E13DC8C29FE08BD265
          589A14A06EF80055F00DBA58EEC29580714C020EA193B04D9FB826CC22D4C114
          7103A105E06AC06CC035BCF24B6EC5376356A1125EB8103082198424EE4440E2
          B7668D1FF4A7E8F6C3A40B0169A50F1BB9FB75AE6BE8F7C0849C4756F26533E5
          253C314F61C78580634C1422B84FB95E52FA659C815E90E43256638DD5C20964
          5D08C82ABDCFA3B833D6DD4A42D9191D76727D4ADF468C808CCB4FB2D72CBE66
          E6BFB3EE5AD9C98DFF0DE6A7926F04870272DBCA5AE35EC49C9DDCF8A418F5C1
          68E85A6FB6E1165C99A790B27CCF31FBFF246F51FA0594DC7157874D1223777F
          A474854BF9C449F205780663C47D7425A0DA2C2C2FDC057C56BA14A74D48A3D2
          A558B6A794ED1523F4D2D93F2344488D97A22405A6C2274C7EA6491896E432E0
          FCAF1942A428C9A1D30EF54A9F8007F0156649BC6BC7DF01EDA17E19974C6F32
          0000000049454E44AE426082}
        OnClick = imgSalvarClick
      end
    end
    object pnlCancel: TPanel
      Left = 261
      Top = 2
      Width = 32
      Height = 32
      BevelOuter = bvNone
      Caption = 'pnlSalvar'
      Color = 7024384
      ParentBackground = False
      ShowCaption = False
      TabOrder = 1
      object imgCancelar: TImage
        Left = 0
        Top = 0
        Width = 50
        Height = 50
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000003
          4C4944415478DAC5975F688E511CC7CF6B2BCD5B2BD6D62CDC0D0945AB2526BB
          70855912526643A499528AE9DD8ADE99E56621AD46B35D2D4D993F574AB45D2C
          1272C1B842FE8C29D2B860E6F3EBF93DDEE3D9FBEE799EED9153DF7E9DF3FB73
          BECFEF3CE777CE8999FFDC62618CC7C6C6B211ABC14A301FE4CA30F80A9E837E
          D0178BC57E464A808917228E800A30CBC7FC13B80E5A20F26C4A0498B8009104
          35203B4CB66892858BA011221F421360F2E5885E30C7A31A050FC0632081B340
          112806A5609AC7FE35D8088987810930F906443798610DBF04ADE012C13E4F90
          B12DA05E49B96D046CC3EF862F01FDF23ECFE467C151027C0B927B62886F427C
          AC398444993713318F6381A6D79BF65B9AC6EF410858F13623BA408E0EBD0225
          C4F99889403B624F86789325B109D163CDD5468CFDE308E8567B62527FBBA45D
          C6D64640A25997439AEC8EC5C418F412E840546B577EB845C62932BD532541EC
          38E20598AD431DF8EFFA43402BDC904915994318B4AA2E272212758833DA9562
          552815D325508EB86DA528DFDE6A5190204621E28D49D589727CEFB8041A11C7
          55710F45699A00519018304EB192D6805FD225D089A852453B8ABD19024C8904
          FEB2257768B7139F6A978004AD5045138AC40441A623AE807561497876432FF6
          95E9089C4251EF13685224F03B699C323D8E80BD045D2876064867E8E5C0E702
          62B776E54CA9710934204EA86200C50A3F02932181FD7D44897613D834A5DB86
          BF4011CAA12849602735C63DBEA5AD417FD72E44EF419E2AEB509E0B42202809
          6C0E234EAB6ED83885683453297E0B8A831EBF7E248C537C9E82B93AFE7729D6
          00DEC3A819A3634109F8909083E780F67F8025E30E230DD086D8E776C1760CBB
          439248B745ED769E98B56E27DD8544FED4793A24EB5785434F04999026A7AC5C
          4886D31250E765C6B992C5AD4CB480248E230109C4D5A7D61A16DF55C47864DB
          66BA94AE37CEA5346E0DBF03524A2F67DAA2F8CD344EA13968523F9C3BF956FC
          6E7A7D26BA964B26AE5ACBE136A913B24CF21292E355AEE972D1580AC427CB63
          2F69AFF47EB92F0125916F9C0A29F7C4B00F13F9DBA5F436DA6B1E8A80456481
          493DCDF27CCCE5B673CD384FB341BFD8611FA792DE32E33C4E8554AEAABE98D4
          E3B45F2A5CD098A108FC8BF61B47B27C30D4827D5A0000000049454E44AE4260
          82}
        OnClick = imgCancelarClick
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 30
    Width = 369
    Height = 303
    Align = alClient
    Color = 14803681
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 305
    object Label1: TLabel
      Left = 126
      Top = 19
      Width = 59
      Height = 17
      Caption = 'DINHEIRO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 135
      Top = 50
      Width = 50
      Height = 17
      Caption = 'CHEQUE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 63
      Top = 81
      Width = 122
      Height = 17
      Caption = 'CART'#194'O DE CR'#201'DITO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 72
      Top = 112
      Width = 113
      Height = 17
      Caption = 'CART'#195'O DE D'#201'BITO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblVlRetirado: TLabel
      Left = 11
      Top = 143
      Width = 174
      Height = 17
      Alignment = taRightJustify
      Caption = 'VALOR A RETIRAR DINHEIRO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 9
      Top = 199
      Width = 80
      Height = 17
      Caption = 'OBSERVA'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lblRestante: TLabel
      Left = 178
      Top = 283
      Width = 183
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Caracteres restantes: 250'
    end
    object Label6: TLabel
      Left = 22
      Top = 174
      Width = 163
      Height = 17
      Alignment = taRightJustify
      Caption = 'VALOR A RETIRAR CHEQUE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object edtDinheiro: TEdit
      Left = 189
      Top = 16
      Width = 121
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '0,00'
      TextHint = '1.000,00'
      OnExit = edtDinheiroExit
      OnKeyPress = edtDinheiroKeyPress
    end
    object edtCheque: TEdit
      Left = 189
      Top = 47
      Width = 121
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '0,00'
      TextHint = '1.000,00'
      OnExit = edtChequeExit
      OnKeyPress = edtDinheiroKeyPress
    end
    object edtCCredito: TEdit
      Left = 189
      Top = 78
      Width = 121
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '0,00'
      OnExit = edtCCreditoExit
      OnKeyPress = edtDinheiroKeyPress
    end
    object edtCDebito: TEdit
      Left = 189
      Top = 109
      Width = 121
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '0,00'
      TextHint = '1.000,00'
      OnExit = edtCDebitoExit
      OnKeyPress = edtDinheiroKeyPress
    end
    object edtVlRetirado: TEdit
      Left = 189
      Top = 140
      Width = 121
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Text = '0,00'
      TextHint = '1.000,00'
      OnExit = edtVlRetiradoExit
      OnKeyPress = edtDinheiroKeyPress
    end
    object mmo1: TMemo
      Left = 8
      Top = 217
      Width = 353
      Height = 64
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxLength = 250
      ParentFont = False
      TabOrder = 5
      OnChange = mmo1Change
    end
    object edtVlRetiradoCheque: TEdit
      Left = 189
      Top = 171
      Width = 121
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = '0,00'
      TextHint = '1.000,00'
      OnExit = edtVlRetiradoExit
      OnKeyPress = edtDinheiroKeyPress
    end
  end
end

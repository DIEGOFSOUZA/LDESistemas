inherited Rel_FechamentoCaixa: TRel_FechamentoCaixa
  BorderStyle = bsNone
  Caption = 'Rel_FechamentoCaixa'
  ClientHeight = 800
  ClientWidth = 2000
  Visible = False
  OnCreate = FormCreate
  ExplicitTop = -62
  ExplicitWidth = 2000
  ExplicitHeight = 800
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Left = 576
    Top = 41
    NextReport = RelREcebidos
    ExplicitLeft = 576
    ExplicitTop = 41
    object RLBand2: TRLBand
      Left = 38
      Top = 84
      Width = 718
      Height = 32
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 20
        Top = 16
        Width = 126
        Height = 16
        AutoSize = False
        Caption = 'FORMA DE PAGTO.'
      end
      object RLLabel2: TRLLabel
        Left = 152
        Top = 16
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ COMPUTADO'
      end
      object RLLabel3: TRLLabel
        Left = 274
        Top = 16
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ APURADO'
      end
      object RLLabel4: TRLLabel
        Left = 396
        Top = 16
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'R$ DIFEREN'#199'A'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 116
      Width = 718
      Height = 509
      BandType = btColumnHeader
      Color = clWhite
      ParentColor = False
      Transparent = False
      BeforePrint = RLBand3BeforePrint
      object RLLabel5: TRLLabel
        Left = 16
        Top = 1
        Width = 121
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DINHEIRO'
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 16
        Top = 24
        Width = 121
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CHEQUE'
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 16
        Top = 46
        Width = 121
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CART'#194'O CR'#201'DITO'
        Transparent = False
      end
      object RLLabel8: TRLLabel
        Left = 16
        Top = 68
        Width = 121
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CART'#194'O D'#201'BITO'
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 152
        Top = 1
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 152
        Top = 24
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel11: TRLLabel
        Left = 152
        Top = 46
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 152
        Top = 68
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel13: TRLLabel
        Left = 274
        Top = 1
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 274
        Top = 24
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 274
        Top = 46
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel16: TRLLabel
        Left = 274
        Top = 68
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel17: TRLLabel
        Left = 396
        Top = 1
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel18: TRLLabel
        Left = 396
        Top = 24
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel19: TRLLabel
        Left = 396
        Top = 46
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel20: TRLLabel
        Left = 396
        Top = 68
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel21: TRLLabel
        Left = 152
        Top = 113
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = '1.000,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel22: TRLLabel
        Left = 274
        Top = 113
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = '1.000,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel23: TRLLabel
        Left = 396
        Top = 113
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = '1.000,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel24: TRLLabel
        Left = 16
        Top = 113
        Width = 121
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel25: TRLLabel
        Left = 16
        Top = 148
        Width = 241
        Height = 16
        AutoSize = False
        Caption = 'TOTAL DE VENDAS A PRAZO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel26: TRLLabel
        Left = 16
        Top = 170
        Width = 241
        Height = 16
        AutoSize = False
        Caption = 'TOTAL DE VENDAS A VISTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel27: TRLLabel
        Left = 16
        Top = 192
        Width = 241
        Height = 16
        AutoSize = False
        Caption = 'TOTAL GERAL DE VENDAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel28: TRLLabel
        Left = 260
        Top = 148
        Width = 186
        Height = 16
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel29: TRLLabel
        Left = 260
        Top = 170
        Width = 186
        Height = 16
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel30: TRLLabel
        Left = 260
        Top = 192
        Width = 186
        Height = 16
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 136
        Width = 718
        Height = 10
        DrawKind = dkLine
        Pen.Style = psDot
        Transparent = False
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 215
        Width = 718
        Height = 10
        DrawKind = dkLine
        Pen.Style = psDot
        Transparent = False
      end
      object RLLabel31: TRLLabel
        Left = 239
        Top = 228
        Width = 242
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'Confer'#234'ncia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
        Transparent = False
      end
      object RLLabel32: TRLLabel
        Left = 16
        Top = 280
        Width = 240
        Height = 16
        AutoSize = False
        Caption = '+ SALDO INICIAL'
        Color = 12698049
        ParentColor = False
        Transparent = False
      end
      object RLLabel33: TRLLabel
        Left = 16
        Top = 300
        Width = 240
        Height = 16
        AutoSize = False
        Caption = '+ RECEBIMENTOS A VISTA'
        Transparent = False
      end
      object RLLabel34: TRLLabel
        Left = 16
        Top = 320
        Width = 240
        Height = 16
        AutoSize = False
        Caption = '+ RECEBIMENTOS A PRAZO'
        Color = 12698049
        ParentColor = False
        Transparent = False
      end
      object RLLabel35: TRLLabel
        Left = 16
        Top = 340
        Width = 240
        Height = 16
        AutoSize = False
        Caption = '+ OUTRAS ENTRADAS CAIXA'
        Transparent = False
      end
      object RLLabel36: TRLLabel
        Left = 16
        Top = 372
        Width = 240
        Height = 16
        AutoSize = False
        Caption = '- DEVOLU'#199#195'O/RETIRADAS CAIXA'
        Color = 12698049
        ParentColor = False
        Transparent = False
      end
      object RLLabel37: TRLLabel
        Left = 16
        Top = 392
        Width = 240
        Height = 16
        AutoSize = False
        Caption = '= SALDO FINAL DINHEIRO'
        Transparent = False
      end
      object RLLabel39: TRLLabel
        Left = 377
        Top = 340
        Width = 160
        Height = 16
        AutoSize = False
        Caption = '* DIFEREN'#199'A DO CAIXA'
        Transparent = False
      end
      object rlblCSaldoInicial: TRLLabel
        Left = 254
        Top = 280
        Width = 100
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Color = 12698049
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object rlblCAVista: TRLLabel
        Left = 254
        Top = 300
        Width = 100
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlblCPrazo: TRLLabel
        Left = 254
        Top = 320
        Width = 100
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Color = 12698049
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object rlblCEntrada: TRLLabel
        Left = 254
        Top = 340
        Width = 100
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlblCDespesas: TRLLabel
        Left = 254
        Top = 372
        Width = 100
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Color = 12698049
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object rlblCSaldoFinalDin: TRLLabel
        Left = 254
        Top = 392
        Width = 100
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object rlblCDiferenca: TRLLabel
        Left = 538
        Top = 340
        Width = 177
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel41: TRLLabel
        Left = 16
        Top = 453
        Width = 95
        Height = 16
        Alignment = taRightJustify
        Caption = 'OBSERVA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLMemo1: TRLMemo
        Left = 16
        Top = 473
        Width = 689
        Height = 20
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Transparent = False
      end
      object rlblSaldoFinalChe: TRLLabel
        Left = 253
        Top = 409
        Width = 100
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel43: TRLLabel
        Left = 15
        Top = 409
        Width = 240
        Height = 16
        AutoSize = False
        Caption = '= SALDO FINAL CHEQUE'
        Transparent = False
      end
      object RLLabel42: TRLLabel
        Left = 377
        Top = 280
        Width = 338
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'VALOR RETIRADO NO FECHAMENTO'
        Color = 12698049
        ParentColor = False
        Transparent = False
      end
      object RLLabel44: TRLLabel
        Left = 377
        Top = 300
        Width = 160
        Height = 16
        AutoSize = False
        Caption = 'DINHEIRO'
        Transparent = False
      end
      object rlblRetDin: TRLLabel
        Left = 538
        Top = 300
        Width = 177
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel46: TRLLabel
        Left = 377
        Top = 320
        Width = 160
        Height = 16
        AutoSize = False
        Caption = 'CHEQUE'
        Transparent = False
      end
      object rlblRetChq: TRLLabel
        Left = 538
        Top = 320
        Width = 177
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel48: TRLLabel
        Left = 377
        Top = 372
        Width = 338
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'VALOR MANTIDO EM CAIXA'
        Color = 12698049
        ParentColor = False
        Transparent = False
      end
      object RLLabel49: TRLLabel
        Left = 377
        Top = 389
        Width = 160
        Height = 16
        AutoSize = False
        Caption = 'DINHEIRO'
        Transparent = False
      end
      object rlblMantDin: TRLLabel
        Left = 538
        Top = 389
        Width = 177
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel51: TRLLabel
        Left = 377
        Top = 409
        Width = 160
        Height = 16
        AutoSize = False
        Caption = 'CHEQUE'
        Transparent = False
      end
      object rlblMantChq: TRLLabel
        Left = 538
        Top = 409
        Width = 177
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLLabel58: TRLLabel
        Left = 16
        Top = 91
        Width = 121
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PIX'
        Transparent = False
      end
      object RLLabel59: TRLLabel
        Left = 152
        Top = 91
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel60: TRLLabel
        Left = 274
        Top = 91
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel61: TRLLabel
        Left = 396
        Top = 91
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '1.000,00'
        Transparent = False
      end
      object RLLabel62: TRLLabel
        Left = 138
        Top = 244
        Width = 442
        Height = 16
        Caption = 
          'Valores abaixo considera apenas recebimentos em DINHEIRO ou CHEQ' +
          'UE'
      end
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 541
    Height = 360
    Caption = 'Panel1'
    TabOrder = 0
    object pnlAcoes: TPanel
      Left = 422
      Top = 31
      Width = 118
      Height = 328
      Align = alRight
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object imgFiltrar: TImage
        Left = 6
        Top = 96
        Width = 50
        Height = 50
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
          003208060000001E3F88B100000006624B474400FF00FF00FFA0BDA793000007
          8D4944415478DAED987B5054D719C0CFB977B92CBBBCDF9AF0304140D8FA0856
          7679455B0B4B139B4EF19968ED4C1F49933F4C32111662D3D569604133699A99
          8E89639B349A10359D769AC8B2D51181B02B128B124094082E44D90DBBBC1676
          F7EEDE737AAE2390C988B2EE6537CDF49BB93377CEB9F7DCEF77BFF39DEF01C1
          7744A02F3FB649DDC98C4B6CD98043391405D3C8B598A66130C7619B9BC35F02
          807B20802D218E90D6E3EA4CF65B07525C69C84034789E86F0498490342E3CC8
          91102D65C28319C20200C2008C4C38D1A0658A358DDAC59086368CC1FB6E8CFF
          78AA4CD1ED7790A257DB1651B4EB0082605B524CB02B272D9A59911C01C2A5CC
          9CEF8C4EB2A0BDCF0A5A7A8659E3F06400C4E02845D1BB4F96AE19F20B88B25A
          FF130AC02351A181CCC69CC4C0E549111EAFD1DE6F0527F44676648275B811DE
          AE5329FEE55390C22AFD0B1082D7D6C9E2F0C69C248AA6EEFF331CD977C73F35
          A286CE21B2087CA15E257FC327203C0451FCC05305C954EEB258C1D66DEA3283
          0F9AFA11E17AF14E308282F0DB8938E93F763CBA040A09310B6302479BFA31C0
          D4867A55F6270B02C23B362D72F71464C64AB7E425538253DC965A6295A66EB3
          CDE902A9A75F969B040729D6E88F4687894B7EBF6579A0373E712FE17D46FDE1
          25D632E6ACAD53C9770A0AB2BE5ABF8C06A0F359652ABC9FD3C953E18FE783BA
          AB98E2A0ACAE42DE25184851B5E1EDA418E9CEF29F6532DEAF363FA9FCE87376
          C032F5576DA9FC194140F8B4635262B36ECE4D943E9A19E72B0ED0F0F91038D1
          629C180A13457DF6F46A97D720859A4F0B28409DADDAB1EAAE115B68E13380F2
          F7FE0310C0B93A554E8BD720451A7D697C44D05EF596E5629F51DC96576A2F39
          4CA38EDFE954F2035E8314571BFE92F550E4CE5FFE2865C18EDCB9E4D0BF7BB9
          0BD72CEF68CB14BFF21AE4F1FDE7EAD7CAE20A4B1489BEE6E07D84F88A49FB49
          6976B1D7201BF6B736FF70657CEE13DF7FD0E720FF3C3F084E5DBCD9FCF14BD9
          F9FFB7C8B47C677C4459D5B23B3642B26FEF56FF9C5AE611C79EFA72F96BDE1F
          BF35E7F221428D95DB57818860DFC511ABCD095E3ED24EEA6494A3ADC8D50B12
          D96DD209CB664562F05A59BCCF40CE740C818F0CC6F1C9497B54837A9D5B905C
          4B5963782B214AF28B8A12994F4C82C9557982E45AC39387EB558A67F9314140
          0A2B5BD2210DBB9E295A0A5726472E38C8856B567048D78B00746768CBF27A04
          03E145A9D1BF171D2ADEA4DEBAF0F5C82BB517598B8DADAD2F15B81EE1E5C735
          ADF118A3DEFC65B1D26D05C90B06F27E633F6AEE364F701497AADB9D6B161CA4
          B0CA9005216E24B792A70A9680FC0CE16BF6B39D26F041733FC6183CA65329EA
          BE3E274C61C51FC1186B1F888B0C8C0895D05D5707C1D6FC2402235C7DC2437C
          D87C1D71183F4F20DEFCE6BCF771A4DAB08E2C723279710CB3323D99E257EC35
          9A40C795EB802FB436E726016FFB5A3C4063B789FC2BB0EB4E105E8314D6B43C
          4E61EAEF4B93E2E9CC94845B290A7F34B677F7A3EB37CC2C0160C3A48CB8243B
          8159F57094C71FBB3C38C66F25E757634E07E6C093DA0AF9C9B99EBD6F90428D
          612B05F19194A445942C2561669D8EDE01FC85F1260B105CEFE2C05586063508
          E21D89D1D2DBBDDFC8BB66007CC4BED83772ABF73B60B9D5FB7D17D1A8ECEB8E
          2D1808A90A7F0D013C284B4DA0521267A379D71783F84AFF4D17B18AB2BE4C7E
          667A5C59DD9C8631BD4B44C1ED64AB84C4F0DDF8C82026322490E2DBF17CFBD0
          6A63B981619BCB3CE6148B6838EEE6F05108B937A6E3C4BDC4631065B5818FA4
          6FF2FE90FC40CCCC78EFC010EEB862E400A67EFACD2EE0B4AC559F1131E2C035
          005039C49AE9046C31210945088DBB11BE8130BC4C92A716D6E16CE5D30E4FF4
          F20844A931A8C81BAF3E92B1844A5C143D337E6DC0042EF518C97FC5DB48CA70
          CCD39F2384CC1BA45863D88B21D8B3E67B29D4E2D8D9269CF1E630B8D0D947D2
          05F41B6D59CE617F40CC0F0463585C7DEE754081E7E42BD2447151A1335337CC
          23A0B5A31761849FAB2F571CF417C43D41361D3B46DBFA120F410AEE50108898
          C8909939B3650CB4B45F21F1095790ED54E34F88BB82F08E290E0AFA1B45531B
          F357A505448405CFCC7D651D27103D1CB9DD57572ADFE76F883941F862694262
          3B11405345798FA4336121929939EBE80468BED0E326B9C29FB5E5F25DFE0698
          136483BA4DC249DC1F8B44545E5E564640A83468666ED436091ADB2EBB30E20E
          D7952A7EEB6FE5E70459AF690B6328B78E09085899BF3A9D9106CDF613C66D53
          E06C5BB78B58E258B67DCDCFD56A88FCADFC1D411EAB6A8AC022E6B49861320B
          B2D219B178368D989C7280B3E7BB58D6CD691D767B89A7C1CA6720B7B7D367D2
          A0A087F2B2D298402660E601BBC3091A5ABB59D6E53A6D0E173DC1B7F0FDADF4
          9C20A44CDD432CB0E7077259202312CD423859D0482CE160DD7AFBD4949258C2
          E16F85EF0A52BCFF9CF6E107638B644B67DB9EACCB0D1ACE77B27687EB2207C5
          EB74BB574CFA5BD97B82146AF47F8A0A0F7EBA607506C30FB06E37683ADFCDDA
          EC8E1E1712E59F52AD1EF3B7A2F303F9436B02CDA0CEF0506960646830F3A5C9
          EA243ED1E774C3BCD315D9167F2B396F90691840732F89682A9543A82994C1AF
          1F7F31C7EE6F053D06F95F97FF0290A94F60DB4E27E20000000049454E44AE42
          6082}
        Stretch = True
        OnClick = imgFiltrarClick
      end
      object lblFiltrar: TLabel
        Left = 60
        Top = 96
        Width = 54
        Height = 50
        AutoSize = False
        Caption = 'Filtrar Caixas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
        OnClick = imgFiltrarClick
      end
      object imgGeraRelatorio: TImage
        Left = 6
        Top = 176
        Width = 50
        Height = 50
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
          002808060000008CFEB86D00000006624B474400FF00FF00FFA0BDA793000001
          284944415478DA636418E48071A01D30EA40BA38D0BDE3F8FF81760836B0B3C2
          9211EEC01DE51603ED1E14E0D17962D48183CF81454BAE32804CEC8DD61E9C0E
          04190A02D4326BD481A30E1C75E0A803471D486507162FBD0A6E1EF50CD69A84
          9A60643A70D0371646D3E0600243CF8103ED206C00C581812E6603ED1E14B07E
          CFA9C1E5C0081D26067E7606868F3F1918565CF937F81C880E301C38D00EC206
          E00EA404E00B7D58285062FEF0706068C355B6EF3C5FBBFEFDFF9FF0F7EF3F7E
          4A2C646166FEC0C0C4B080EB3377F9EA06ED5F5471A06FEFA97E7E3EEE34632D
          252E4E76364ADCC7F0FDE72F867357EF7D7BF7F9EBACADC566855471A057D7C9
          0FAED67AFC943A0EEEC81FBF18F61CBFFC616BA99920551C48AB5C4E4CFA1C1A
          23AC83190C7A070200A9251C38A47DDD2D0000000049454E44AE426082}
        Stretch = True
        OnClick = lblGeraRelatorioClick
      end
      object lblGeraRelatorio: TLabel
        Left = 60
        Top = 176
        Width = 54
        Height = 50
        AutoSize = False
        Caption = 'Gerar Relat'#243'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
        OnClick = lblGeraRelatorioClick
      end
    end
    object pnlfundo: TPanel
      Left = 1
      Top = 31
      Width = 422
      Height = 328
      Align = alLeft
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 32
        Top = 10
        Width = 47
        Height = 17
        Caption = 'Per'#237'odo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dtp1: TDateTimePicker
        Left = 32
        Top = 30
        Width = 97
        Height = 25
        Date = 43984.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 0.219465856484021100
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object dtp2: TDateTimePicker
        Left = 133
        Top = 30
        Width = 97
        Height = 25
        Date = 43984.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 0.219465856484021100
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dbgrd1: TDBGrid
        Left = 1
        Top = 70
        Width = 420
        Height = 257
        Align = alBottom
        BorderStyle = bsNone
        Color = clWhite
        DataSource = s2
        DrawingStyle = gdsGradient
        GradientEndColor = 15983320
        GradientStartColor = 14460289
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI Semibold'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = dbgrd1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'IDCAIXA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Title.Caption = 'N'#186' CAIXA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABERTURA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHAMENTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Width = 140
            Visible = True
          end>
      end
    end
    object pnlTit: TPanel
      Left = 1
      Top = 1
      Width = 539
      Height = 30
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      Caption = 'pnlTit'
      TabOrder = 0
      object lblTitulo: TLabel
        Left = 0
        Top = 0
        Width = 539
        Height = 30
        Align = alTop
        AutoSize = False
        Caption = '        Rela'#231#227'o de caixas fechado'
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
        ExplicitTop = 4
      end
      object imgFechar: TImage
        Left = 505
        Top = 0
        Width = 30
        Height = 30
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
          003008060000005702F98700000006624B474400FF00FF00FFA0BDA793000004
          934944415478DAED99DB531B5518C0BF4D5251C1B1436E240DFD271CA7624829
          B66A29975AED051F7D619CF6A9A3338E42A08586521E9C8E0F9DD1FFC2870EC5
          D2429190422FDA566DB576464D60ACF6822561905C3EBF6FC30672D9DD9C649C
          2C331C76CE9E3D3967F7F73BB73D3B48B0C1835469804D814A036C0A541AE07F
          13887574B622485F52721B220220E7AE9D31E75A3ED2990039E7AC7C8DFA99FC
          ECFA11CAEEAA0D8E8C0809443BDE0FD3C9535178F9906F1EB64E8F6E1715C00A
          B77CBAFE6A5D6B68B420ABAAC0627B271A059E236BE81B4181B64E340A3C5FDB
          AE5E141538824681E7B46D4654A0F5081A059E23DBCC98A8C061340ABCDC03B3
          8202CFF61DC662E0E39882E564122C92099E97A4A2E0B97C82EA55519D2D5447
          0F9E7FB35DBB242A7008F5E0FF4DA520EAB283FD68172C9C1F01D3D42C549BCD
          9AF0B1441CD0F73A6C6DDF0B7F9D3D072FCEFF09552069C2739EFDFA65418196
          43A8D7F2CFEAEC507FF60C58ACB580D4AAF3FD430013D3B2841A3C3437C2B693
          9F814465E28F1EC31F1F1E879AB987D413A00ACFA1048183A835E61709E6E540
          2FD434BC9AA9C312732787409A0866491482CF3C672A040B1FF9A1DA645285E7
          B4FDC6B8A0C0DE83A835619769F8C41B5E21A0EE2CA0B4C46990C68399E1A406
          CF65C39F9E00CB95903C1FD4E065819B136202FFBCFD1E666E9003AF5C2F2512
          90F2ED00F7891C30929B1F1806BC38918669F28267A03BAFCC5CDF20A446C7A9
          F5CD9AF07CE52849A088A5324A12E87B2DBF7559A2FF0CA456E265C3F3D9F1DD
          154181B7DECDEA01AD757E29493DD14812FDD9A09042793729F1F82E035E16F8
          7EB204018197942CE16BC89758174A85E70BC72D5181370F60B1F0CA3926F744
          03D407FC00EB5A5DB9CF5C6FA024788E1CB7BE151710DD1EC82F299EB0A77AB2
          868D329CC27D01C00B24603609C173D2795B506061CF3B6B7340047E407B0845
          7A0749E2B2BCEE170BCF91F3CE54090265C233A0C405722671C44F4369E4D2EA
          CB4E1F9ED3CE3B414181DDFBB12C7865C2AEAC40FD605FDE6F911E96184BF784
          0E3C1FCE1F4405DED88F65C3D384E507E02E2FD49F2E20D13D0049EE09791BA1
          0ECF3D59F7E3B4A840076AC1CB5B625AFB3D819EBCED41C47F0A706C32B3DAC4
          124980DD3BA927FC79657FFFB8072CE353B42335A9C2F375DD4F213181A7CD1D
          A806CF519496CCADC3FDF092778726BCB2DAF01B5BDAD3443DD19BBD999B0CC2
          E3639F408DD9A40ACFA10481765483E710A721B0E876C0F6739FC3169B55135E
          596D628AC4507A38C5FF7E04BF7D700CAAC3F36091BF090AC3CB3D70F7AAA0C0
          AE76548357C6EB322661C9E504C7F1A3F0F4EBF3E96F019D97549444A1D90BB5
          07DAE0E1F017F002C13FA7032F0BDC9B111568432DF8D58F05EA09FE32A34F4A
          FA496F4BACAC365C3E9E44A83249BA2DAFD473090B34B561417858F7109DCFC0
          42F07AAB0DA8D473FD3C2B2AD08A4681E784EB174181273B5BD128F0720FDCBF
          2628E0DBB7B617AA303CFFB9EF5F2F41C020F07CB87F1515686C41A3C073DAFD
          E086B040981EE231023C4561F7839B62FFE078E26D69414C7D4537F1541A9EA2
          2E12B82024B051C2A640A5C3A640A5C38617F80F04235D9A7C15BC8800000000
          49454E44AE426082}
        Stretch = True
        OnClick = imgFecharClick
      end
    end
  end
  object RelREcebidos: TRLReport [2]
    Left = 1384
    Top = 41
    Width = 1123
    Height = 794
    DataSource = dsRecebidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    object RLBand4: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 46
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand4BeforePrint
      object RLPanel1: TRLPanel
        Left = 0
        Top = 0
        Width = 305
        Height = 45
        Align = faLeft
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object RLLabel38: TRLLabel
          Left = 0
          Top = 2
          Width = 304
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'NOME FANTASIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLPanel2: TRLPanel
        Left = 963
        Top = 0
        Width = 84
        Height = 45
        Align = faRight
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLSystemInfo4: TRLSystemInfo
          Left = 1
          Top = 0
          Width = 83
          Height = 14
          Align = faTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
          Text = 'Pag.: '
        end
        object RLSystemInfo5: TRLSystemInfo
          Left = 1
          Top = 14
          Width = 83
          Height = 14
          Align = faTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLSystemInfo6: TRLSystemInfo
          Left = 1
          Top = 28
          Width = 83
          Height = 14
          Align = faTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itHour
          ParentFont = False
          Text = ''
        end
      end
      object RLLabel40: TRLLabel
        Left = 310
        Top = 1
        Width = 322
        Height = 18
        AutoSize = False
        Caption = 'RELA'#199#195'O DE RECEBIMENTOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 84
      Width = 1047
      Height = 42
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel45: TRLLabel
        Left = 1
        Top = 23
        Width = 105
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'DATA EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel47: TRLLabel
        Left = 108
        Top = 23
        Width = 69
        Height = 16
        AutoSize = False
        Caption = 'VENDA N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel50: TRLLabel
        Left = 179
        Top = 23
        Width = 70
        Height = 16
        AutoSize = False
        Caption = 'PARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 251
        Top = 23
        Width = 130
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'VALOR RECEBIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 383
        Top = 23
        Width = 240
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'FORMA DE PAGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel54: TRLLabel
        Left = 625
        Top = 23
        Width = 126
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'CONTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel55: TRLLabel
        Left = 753
        Top = 23
        Width = 110
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'RECEBIDO POR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel56: TRLLabel
        Left = 865
        Top = 23
        Width = 180
        Height = 16
        AutoSize = False
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 126
      Width = 1047
      Height = 25
      object RLDBText1: TRLDBText
        Left = 1
        Top = 6
        Width = 105
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'EMISSAO'
        DataSource = dsRecebidos
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 108
        Top = 6
        Width = 69
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'ID'
        DataSource = dsRecebidos
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 179
        Top = 6
        Width = 70
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'ORDEM'
        DataSource = dsRecebidos
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 251
        Top = 6
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VL_PAGO'
        DataSource = dsRecebidos
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 383
        Top = 6
        Width = 240
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'FORMA_PAGTO'
        DataSource = dsRecebidos
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 625
        Top = 6
        Width = 126
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'CONTA'
        DataSource = dsRecebidos
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 753
        Top = 6
        Width = 110
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'USUARIO'
        DataSource = dsRecebidos
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 865
        Top = 6
        Width = 180
        Height = 16
        AutoSize = False
        DataField = 'NOME_RAZAO'
        DataSource = dsRecebidos
        Text = ''
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 151
      Width = 1047
      Height = 26
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult1: TRLDBResult
        Left = 251
        Top = 8
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VL_PAGO'
        DataSource = dsRecebidos
        Info = riSum
        Text = ''
        OnCompute = RLDBResult1Compute
      end
      object RLLabel57: TRLLabel
        Left = 119
        Top = 8
        Width = 130
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'TOTAL RECEBIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited RLPDFFilter1: TRLPDFFilter
    Left = 364
    Top = 156
  end
  object ds1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FORMA_PAGTO'
        DataType = ftInteger
      end
      item
        Name = 'VL_COMPUTADO'
        DataType = ftFloat
      end
      item
        Name = 'VL_APURADO'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 366
    Top = 217
    object ds1VL_COMPUTADO: TFloatField
      FieldName = 'VL_COMPUTADO'
      DisplayFormat = '#,##0.00'
    end
    object ds1VL_APURADO: TFloatField
      FieldName = 'VL_APURADO'
      DisplayFormat = '#,##0.00'
    end
    object ds1FORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
    end
  end
  object ds2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'IDCAIXA'
        DataType = ftInteger
      end
      item
        Name = 'ABERTURA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FECHAMENTO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DATA'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 40
    Top = 144
    object ds2ID: TIntegerField
      FieldName = 'ID'
    end
    object ds2IDCAIXA: TIntegerField
      FieldName = 'IDCAIXA'
    end
    object ds2ABERTURA: TStringField
      FieldName = 'ABERTURA'
      Size = 50
    end
    object ds2FECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      Size = 50
    end
    object ds2DATA: TDateField
      FieldName = 'DATA'
    end
  end
  object s2: TDataSource
    DataSet = ds2
    Left = 104
    Top = 144
  end
  object dsRecebidos: TDataSource
    DataSet = cdsRecebidos
    Left = 984
    Top = 574
  end
  object cdsRecebidos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select B.ID, B.ORDEM, B.VL_PAGO, H.DESCRICAO FORMA_PAGTO,'#13#10'     ' +
      '  substring(B.USUARIO_BAIXA from 1 for position('#39'|'#39' in B.USUARIO' +
      '_BAIXA) - 1) USUARIO, CB.BCO_NOME CONTA,'#13#10'       PM.EMISSAO, C.N' +
      'OME_RAZAO'#13#10'from PDV_RECEBER B'#13#10'left join PDV_MASTER PM on (PM.ID' +
      ' = B.ID and'#13#10'      PM.TIPO = B.TIPO)'#13#10'left join CONTA_BANCARIA C' +
      'B on (CB.ID = B.ID_CONTA)'#13#10'left join CLIENTE C on (C.CODIGO = PM' +
      '.ID_CLIENTE)'#13#10'left join HISTORICO H on (H.ID = B.ID_HISTORICO)'#13#10 +
      'where 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    Left = 896
    Top = 576
    object cdsRecebidosID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '000'
    end
    object cdsRecebidosORDEM: TStringField
      FieldName = 'ORDEM'
      Required = True
      Size = 5
    end
    object cdsRecebidosFORMA_PAGTO: TStringField
      FieldName = 'FORMA_PAGTO'
      ReadOnly = True
      Size = 60
    end
    object cdsRecebidosUSUARIO: TStringField
      FieldName = 'USUARIO'
      ReadOnly = True
      Size = 50
    end
    object cdsRecebidosCONTA: TStringField
      FieldName = 'CONTA'
      ReadOnly = True
      Size = 40
    end
    object cdsRecebidosEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ReadOnly = True
    end
    object cdsRecebidosNOME_RAZAO: TStringField
      FieldName = 'NOME_RAZAO'
      ReadOnly = True
      Size = 100
    end
    object cdsRecebidosVL_PAGO: TFMTBCDField
      FieldName = 'VL_PAGO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
  end
end

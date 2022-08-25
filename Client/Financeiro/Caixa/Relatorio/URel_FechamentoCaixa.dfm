inherited Rel_FechamentoCaixa: TRel_FechamentoCaixa
  BorderStyle = bsNone
  Caption = 'Rel_FechamentoCaixa'
  ClientHeight = 800
  ClientWidth = 2000
  Visible = False
  OnCreate = FormCreate
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
    Width = 545
    Height = 300
    TabOrder = 0
    object pnlAcoes: TPanel
      Left = 424
      Top = 23
      Width = 120
      Height = 276
      Align = alRight
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      ExplicitLeft = 428
      ExplicitHeight = 336
      object pnlGeraRelatorio: TPanel
        Left = 3
        Top = 118
        Width = 114
        Height = 41
        BevelOuter = bvNone
        Color = 14803425
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object btnGerarRelatorio: TSpeedButton
          Left = 0
          Top = 0
          Width = 114
          Height = 41
          Cursor = crHandPoint
          Align = alClient
          Caption = 'GERAR RELAT'#211'RIO'
          Flat = True
          OnClick = btnGerarRelatorioClick
          ExplicitLeft = 24
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object pnlfundo: TPanel
      Left = 1
      Top = 23
      Width = 422
      Height = 276
      Align = alLeft
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 31
      ExplicitHeight = 328
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
        TabOrder = 1
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
        TabOrder = 2
      end
      object dbgrd1: TDBGrid
        Left = 1
        Top = 70
        Width = 420
        Height = 205
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
        TabOrder = 3
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
      object pnlFiltrar: TPanel
        Left = 294
        Top = 25
        Width = 80
        Height = 30
        BevelOuter = bvNone
        Color = 14803425
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object btnFiltrar: TSpeedButton
          Left = 0
          Top = 0
          Width = 80
          Height = 30
          Cursor = crHandPoint
          Align = alClient
          Caption = 'FILTRAR'
          Flat = True
          OnClick = btnFiltrarClick
          ExplicitLeft = 24
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 543
      Height = 22
      Align = alTop
      Caption = 'pnlTitulo'
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 729
      object lblTit: TLabel
        Left = 1
        Top = 1
        Width = 511
        Height = 20
        Align = alClient
        AutoSize = False
        Caption = '     RELA'#199#195'O DE CAIXAS FECHADO'
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
        OnMouseMove = lblTitMouseMove
        ExplicitWidth = 20
        ExplicitHeight = 740
      end
      object imgSair: TImage
        Left = 512
        Top = 1
        Width = 30
        Height = 20
        Align = alRight
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          001908020000004B8B123400000006624B474400FF00FF00FFA0BDA793000000
          CC4944415478DA6364D0CF66A012601CC466B5E5FA15C739B3B1329367C4AFDF
          7FBB17EEA999B21964D6CFD313255D2ADF7DFC865F4F438617889CB10D4D5C88
          9FEBD9EE360EB3029059FF2F4C6134C821683F2EB3800062C248372BD1DF62C9
          D6D3BFFFFCA582596B7B53806444F97C88711499C5CAC2BCBA27F9CF9F7F11E5
          F3FEFCFD479A5957D6566B2B4B622ACDEB5C3D79F9C18173171A58D59DCCCCC4
          489DF08AF6325DB5EB1C75E2110D8C9A05358B9AE5574B8E6F69BC0B25E56AD7
          82DDB553B70CE6BA835A6601007F1FF0243E9942B90000000049454E44AE4260
          82}
        Stretch = True
        OnClick = imgFecharClick
        ExplicitLeft = 1110
        ExplicitTop = -3
        ExplicitHeight = 38
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

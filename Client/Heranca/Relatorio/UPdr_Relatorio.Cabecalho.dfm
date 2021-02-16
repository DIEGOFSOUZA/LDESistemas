inherited Pdr_RelatorioRetratoCabecalho: TPdr_RelatorioRetratoCabecalho
  Caption = 'Pdr_RelatorioRetratoCabecalho'
  ClientWidth = 974
  ExplicitWidth = 990
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Left = 62
    Top = 257
    ExplicitLeft = 62
    ExplicitTop = 257
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 46
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      BeforePrint = RLBand1BeforePrint
      object rlpnlEmpresa: TRLPanel
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
        object rlblEmpFantasia: TRLLabel
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
      object rlpnlInfo: TRLPanel
        Left = 634
        Top = 0
        Width = 84
        Height = 45
        Align = faRight
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLSystemInfo1: TRLSystemInfo
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
        object RLSystemInfo2: TRLSystemInfo
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
        object RLSystemInfo3: TRLSystemInfo
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
      object rlblNomeRelatorio: TRLLabel
        Left = 306
        Top = 1
        Width = 322
        Height = 18
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object rlMemoParametros: TRLMemo
        Left = 307
        Top = 28
        Width = 321
        Height = 14
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 28
    Top = 20
  end
end

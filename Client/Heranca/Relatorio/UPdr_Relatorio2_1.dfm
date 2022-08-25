object Pdr_Relatorio2_1: TPdr_Relatorio2_1
  Left = 0
  Top = 0
  Caption = 'Pdr_Relatorio2_1'
  ClientHeight = 590
  ClientWidth = 939
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 20
    Top = 20
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RelatorioBeforePrint
    object rlbndTitulo: TRLBand
      Left = 38
      Top = 129
      Width = 718
      Height = 25
      BandType = btColumnHeader
      object rlblTitRelatorio: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 22
        Align = faTop
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Width = 2
        Caption = '    T'#237'tulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rlbndDadosEmpresa: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 91
      BandType = btTitle
      object rlblEmpresaRazao: TRLLabel
        Left = 210
        Top = 2
        Width = 500
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEmpresaCNPJ: TRLLabel
        Left = 210
        Top = 20
        Width = 500
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEmpresaLog: TRLLabel
        Left = 210
        Top = 38
        Width = 500
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'rlblEmpresaLogr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEmpresaCep: TRLLabel
        Left = 210
        Top = 56
        Width = 500
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'rlblEmpresaLogr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEmpresaFone: TRLLabel
        Left = 210
        Top = 74
        Width = 500
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'rlblEmpresaLogr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
end

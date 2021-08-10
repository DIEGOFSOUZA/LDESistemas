inherited Pdr_Relatorio2: TPdr_Relatorio2
  BorderStyle = bsNone
  Caption = 'Pdr_Relatorio2'
  ClientHeight = 444
  ClientWidth = 808
  ExplicitWidth = 808
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Top = 202
    ExplicitTop = 202
    object RLBand10: TRLBand
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
    object RLBand9: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 91
      BandType = btTitle
      BeforePrint = RLBand9BeforePrint
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
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 185
    BevelOuter = bvNone
    TabOrder = 0
    object pnlButtons: TPanel
      Left = 625
      Top = 22
      Width = 104
      Height = 163
      Align = alRight
      TabOrder = 2
      object btnGerarRelatorio: TButton
        Left = 2
        Top = 61
        Width = 100
        Height = 40
        Action = actGerarRelatorio
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        WordWrap = True
      end
    end
    object pnlTitulo: TPanel
      Left = 0
      Top = 0
      Width = 729
      Height = 22
      Align = alTop
      Caption = 'pnlTitulo'
      TabOrder = 0
      object lblTitulo: TLabel
        Left = 1
        Top = 1
        Width = 697
        Height = 20
        Align = alClient
        AutoSize = False
        Caption = '         TITULO'
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
        OnMouseMove = lblTituloMouseMove
        ExplicitWidth = 20
        ExplicitHeight = 740
      end
      object imgFechar: TImage
        Left = 698
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
    object pnlClient: TPanel
      Left = 0
      Top = 22
      Width = 625
      Height = 163
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
    end
    object pnlRodape: TPanel
      Left = 0
      Top = 185
      Width = 729
      Height = 0
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
    end
  end
  object actlst1: TActionList
    Left = 536
    Top = 48
    object actGerarRelatorio: TAction
      Caption = 'GERAR RELAT'#211'RIO'
      OnExecute = actGerarRelatorioExecute
    end
    object actSair: TAction
      Caption = 'SAIR'
      OnExecute = actSairExecute
    end
  end
end

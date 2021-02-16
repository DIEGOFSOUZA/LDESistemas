inherited Rel_ContasAReceber: TRel_ContasAReceber
  Caption = 'Rel_ContasAReceber'
  Visible = False
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Left = 8
    Top = 73
    DataSource = ds1
    ExplicitLeft = 8
    ExplicitTop = 73
    object RLBand2: TRLBand
      Left = 38
      Top = 84
      Width = 718
      Height = 41
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 6
        Top = 24
        Width = 28
        Height = 16
        AutoSize = False
        Caption = 'Tipo'
      end
      object RLLabel2: TRLLabel
        Left = 40
        Top = 24
        Width = 55
        Height = 16
        AutoSize = False
        Caption = 'N'#186' venda'
      end
      object RLLabel3: TRLLabel
        Left = 96
        Top = 24
        Width = 52
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ordem'
      end
      object RLLabel4: TRLLabel
        Left = 151
        Top = 24
        Width = 74
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Dt. Vencto.'
      end
      object RLLabel5: TRLLabel
        Left = 231
        Top = 24
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor R$'
      end
      object RLLabel7: TRLLabel
        Left = 315
        Top = 24
        Width = 136
        Height = 16
        AutoSize = False
        Caption = 'Usu'#225'rio baixa'
      end
      object RLLabel8: TRLLabel
        Left = 455
        Top = 24
        Width = 253
        Height = 16
        AutoSize = False
        Caption = 'Cliente'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 125
      Width = 718
      Height = 23
      object RLDBText1: TRLDBText
        Left = 6
        Top = 1
        Width = 28
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'TIPO'
        DataSource = ds1
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 40
        Top = 1
        Width = 55
        Height = 16
        AutoSize = False
        DataField = 'ID'
        DataSource = ds1
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 96
        Top = 1
        Width = 52
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'ORDEM'
        DataSource = ds1
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 151
        Top = 1
        Width = 74
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'DT_VENC'
        DataSource = ds1
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 231
        Top = 1
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = ds1
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 315
        Top = 1
        Width = 136
        Height = 16
        AutoSize = False
        DataField = 'USUARIO_BAIXA'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText8: TRLDBText
        Left = 455
        Top = 1
        Width = 260
        Height = 16
        AutoSize = False
        DataField = 'CLIENTE'
        DataSource = ds1
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 148
      Width = 718
      Height = 24
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLDBResult1: TRLDBResult
        Left = 231
        Top = 2
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = ds1
        Info = riSum
        Text = ''
      end
      object RLLabel9: TRLLabel
        Left = 189
        Top = 2
        Width = 40
        Height = 16
        Caption = 'Total:'
      end
    end
  end
  object ds1: TDataSource
    Left = 40
    Top = 160
  end
end

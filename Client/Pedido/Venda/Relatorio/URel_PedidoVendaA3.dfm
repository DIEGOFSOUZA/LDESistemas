inherited Rel_PedidoVendaA3: TRel_PedidoVendaA3
  Height = 704
  AutoScroll = True
  Caption = 'Rel_PedidoVendaA3'
  ExplicitHeight = 704
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    inherited rlbndTitulo: TRLBand
      Height = 30
      ExplicitHeight = 30
      inherited rlblTitRelatorio: TRLLabel
        Caption = ' PEDIDO DE VENDA'
      end
    end
    object rlbndDados: TRLBand
      Left = 38
      Top = 159
      Width = 718
      Height = 783
      BandType = btColumnHeader
      object rlpnlDetailTop: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 81
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel1: TRLLabel
          Left = 64
          Top = 8
          Width = 55
          Height = 18
          Caption = 'Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 120
          Top = 6
          Width = 71
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel2: TRLLabel
          Left = 202
          Top = 8
          Width = 73
          Height = 18
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 276
          Top = 6
          Width = 439
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel3: TRLLabel
          Left = 66
          Top = 32
          Width = 53
          Height = 18
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 120
          Top = 30
          Width = 595
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel4: TRLLabel
          Left = 3
          Top = 56
          Width = 116
          Height = 18
          Caption = 'Data de cria'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 120
          Top = 54
          Width = 154
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel5: TRLLabel
          Left = 281
          Top = 56
          Width = 124
          Height = 18
          Caption = 'Data de emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 406
          Top = 54
          Width = 92
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel6: TRLLabel
          Left = 505
          Top = 56
          Width = 117
          Height = 18
          Caption = 'Data de entrega'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 623
          Top = 54
          Width = 92
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
      object rlpnlTopEndereco: TRLPanel
        Left = 0
        Top = 81
        Width = 718
        Height = 82
        Align = faTop
        object RLLabel7: TRLLabel
          Left = 0
          Top = 0
          Width = 718
          Height = 23
          Align = faTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Width = 2
          Caption = ' ENDERE'#199'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel8: TRLLabel
          Left = 172
          Top = 32
          Width = 72
          Height = 18
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 245
          Top = 30
          Width = 339
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel9: TRLLabel
          Left = 585
          Top = 32
          Width = 59
          Height = 18
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 645
          Top = 30
          Width = 52
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel10: TRLLabel
          Left = 18
          Top = 58
          Width = 47
          Height = 18
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 66
          Top = 56
          Width = 247
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel12: TRLLabel
          Left = 320
          Top = 58
          Width = 65
          Height = 18
          Caption = 'CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 386
          Top = 56
          Width = 144
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel11: TRLLabel
          Left = 27
          Top = 34
          Width = 38
          Height = 18
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 66
          Top = 32
          Width = 105
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLLabel13: TRLLabel
          Left = 535
          Top = 58
          Width = 70
          Height = 18
          Caption = 'ESTADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 606
          Top = 56
          Width = 32
          Height = 20
          AutoSize = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
      object rlpnlItens: TRLPanel
        Left = 0
        Top = 344
        Width = 718
        Height = 49
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel14: TRLLabel
          Left = 0
          Top = 0
          Width = 718
          Height = 23
          Align = faTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Width = 2
          Caption = ' ITENS DO PEDIDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 13
          Top = 25
          Width = 56
          Height = 20
          AutoSize = False
          Caption = 'C'#211'DIGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 71
          Top = 25
          Width = 200
          Height = 20
          AutoSize = False
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 273
          Top = 25
          Width = 62
          Height = 20
          AutoSize = False
          Caption = 'UNIDADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 337
          Top = 25
          Width = 90
          Height = 20
          AutoSize = False
          Caption = 'QUANTIDADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 429
          Top = 25
          Width = 90
          Height = 20
          AutoSize = False
          Caption = 'UNIT'#193'RIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 521
          Top = 25
          Width = 90
          Height = 20
          AutoSize = False
          Caption = 'DESCONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 613
          Top = 25
          Width = 90
          Height = 20
          AutoSize = False
          Caption = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object rlpnlmages: TRLPanel
        Left = 0
        Top = 163
        Width = 718
        Height = 181
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object rlpnlImg1: TRLPanel
          Left = 1
          Top = 1
          Width = 239
          Height = 179
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
        end
        object rlpnlImg2: TRLPanel
          Left = 240
          Top = 1
          Width = 238
          Height = 179
          Align = faClient
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
        end
        object rlpnlImg3: TRLPanel
          Left = 478
          Top = 1
          Width = 239
          Height = 179
          Align = faRight
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
      end
    end
  end
end

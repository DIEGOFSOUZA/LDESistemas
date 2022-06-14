inherited Rel_PedidoVendaA3: TRel_PedidoVendaA3
  Width = 972
  AutoScroll = True
  Caption = 'Rel_PedidoVendaA3'
  ExplicitWidth = 972
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    DataSource = dsPedidoVenda
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
      Height = 408
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
          DataField = 'ID'
          DataSource = dsPedidoVenda
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
          DataField = 'VENDEDOR'
          DataSource = dsPedidoVenda
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
          DataField = 'CLIENTE'
          DataSource = dsPedidoVenda
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
          DataField = 'ENTRADA'
          DataSource = dsPedidoVenda
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
          DataField = 'EMISSAO'
          DataSource = dsPedidoVenda
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
          DataField = 'ENTREGA'
          DataSource = dsPedidoVenda
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
          DataField = 'ENDERECO'
          DataSource = dsPedidoVenda
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
          DataField = 'NUMERO'
          DataSource = dsPedidoVenda
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
          DataField = 'BAIRRO'
          DataSource = dsPedidoVenda
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
          DataField = 'CIDADE'
          DataSource = dsPedidoVenda
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
          DataField = 'CEP'
          DataSource = dsPedidoVenda
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
          DataField = 'ESTADO'
          DataSource = dsPedidoVenda
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
        Height = 62
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLLabel14: TRLLabel
          Left = 0
          Top = 15
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
          Left = 6
          Top = 41
          Width = 47
          Height = 20
          AutoSize = False
          Caption = 'C'#211'DIGO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 55
          Top = 41
          Width = 276
          Height = 20
          AutoSize = False
          Caption = 'DESCRI'#199#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 333
          Top = 41
          Width = 55
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'UNIDADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 390
          Top = 41
          Width = 75
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'QUANTIDADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 467
          Top = 41
          Width = 80
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'UNIT'#193'RIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 549
          Top = 41
          Width = 80
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DESCONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 631
          Top = 41
          Width = 80
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLPanel1: TRLPanel
          Left = 0
          Top = 0
          Width = 718
          Height = 15
          Align = faTop
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
          Margins.LeftMargin = 2.000000000000000000
          Margins.TopMargin = 2.000000000000000000
          Margins.RightMargin = 2.000000000000000000
          Margins.BottomMargin = 2.000000000000000000
          Align = faLeft
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object rlmg1: TRLImage
            Left = 8
            Top = 8
            Width = 223
            Height = 163
            Align = faClient
          end
        end
        object rlpnlImg2: TRLPanel
          Left = 240
          Top = 1
          Width = 238
          Height = 179
          Margins.LeftMargin = 2.000000000000000000
          Margins.TopMargin = 2.000000000000000000
          Margins.RightMargin = 2.000000000000000000
          Margins.BottomMargin = 2.000000000000000000
          Align = faClient
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object rlmg2: TRLImage
            Left = 8
            Top = 8
            Width = 222
            Height = 163
            Align = faClient
          end
        end
        object rlpnlImg3: TRLPanel
          Left = 478
          Top = 1
          Width = 239
          Height = 179
          Margins.LeftMargin = 2.000000000000000000
          Margins.TopMargin = 2.000000000000000000
          Margins.RightMargin = 2.000000000000000000
          Margins.BottomMargin = 2.000000000000000000
          Align = faRight
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object rlmg3: TRLImage
            Left = 8
            Top = 8
            Width = 223
            Height = 163
            Align = faClient
          end
        end
      end
    end
    object rlsbdtlReceber: TRLSubDetail
      Left = 38
      Top = 631
      Width = 718
      Height = 108
      DataSource = dsReceber
      object rlbndTitReceber: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 62
        BandType = btColumnHeader
        object RLLabel22: TRLLabel
          Left = 0
          Top = 15
          Width = 718
          Height = 23
          Align = faTop
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.Width = 2
          Caption = ' FORMA / CONDI'#199#213'ES DE PAGAMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel23: TRLLabel
          Left = 30
          Top = 40
          Width = 469
          Height = 20
          AutoSize = False
          Caption = 'DESCRI'#199#194'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel24: TRLLabel
          Left = 501
          Top = 40
          Width = 95
          Height = 20
          AutoSize = False
          Caption = 'VENCIMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel25: TRLLabel
          Left = 598
          Top = 40
          Width = 90
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'VALOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlpnl1: TRLPanel
          Left = 0
          Top = 0
          Width = 718
          Height = 15
          Align = faTop
        end
      end
      object rlbndReceberItens: TRLBand
        Left = 0
        Top = 62
        Width = 718
        Height = 22
        object RLDBText20: TRLDBText
          Left = 30
          Top = 1
          Width = 469
          Height = 20
          AutoSize = False
          DataField = 'DESCRI'
          DataSource = dsReceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText21: TRLDBText
          Left = 501
          Top = 1
          Width = 95
          Height = 20
          Alignment = taCenter
          AutoSize = False
          DataField = 'DVENC'
          DataSource = dsReceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText22: TRLDBText
          Left = 598
          Top = 1
          Width = 90
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VDUP'
          DataSource = dsReceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
    object rlsbdtlItens: TRLSubDetail
      Left = 38
      Top = 567
      Width = 718
      Height = 64
      DataSource = dsItens
      object rlbndItens: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 22
        object RLDBText13: TRLDBText
          Left = 6
          Top = 1
          Width = 47
          Height = 20
          AutoSize = False
          DataField = 'ID_PRODUTO'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 55
          Top = 1
          Width = 276
          Height = 20
          AutoSize = False
          DataField = 'PRODUTO'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 333
          Top = 1
          Width = 55
          Height = 20
          Alignment = taCenter
          AutoSize = False
          DataField = 'UNIDADE'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 390
          Top = 1
          Width = 75
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDE'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText17: TRLDBText
          Left = 467
          Top = 1
          Width = 80
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VUNIT'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText18: TRLDBText
          Left = 549
          Top = 1
          Width = 80
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VDESC'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText19: TRLDBText
          Left = 631
          Top = 1
          Width = 80
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTAL'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object rlbndSumaryItens: TRLBand
        Left = 0
        Top = 22
        Width = 718
        Height = 27
        BandType = btSummary
        object rlpnlTotaisItem: TRLPanel
          Left = 120
          Top = 1
          Width = 596
          Height = 25
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          object RLLabel26: TRLLabel
            Left = 104
            Top = 2
            Width = 151
            Height = 20
            AutoSize = False
            Caption = 'Quantidade de Itens:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldbrsltQtde: TRLDBResult
            Left = 256
            Top = 2
            Width = 90
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTDE'
            DataSource = dsItens
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            Text = ''
          end
          object RLLabel27: TRLLabel
            Left = 350
            Top = 2
            Width = 151
            Height = 20
            AutoSize = False
            Caption = 'Valor total dos Itens:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object rldbrsltTotItens: TRLDBResult
            Left = 502
            Top = 2
            Width = 90
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'TOTAL'
            DataSource = dsItens
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
            Text = ''
          end
        end
      end
    end
    object rlbndObservacao: TRLBand
      Left = 38
      Top = 739
      Width = 718
      Height = 94
      BandType = btSummary
      object RLLabel28: TRLLabel
        Left = 0
        Top = 15
        Width = 718
        Height = 23
        Align = faTop
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Width = 2
        Caption = ' OBSERVA'#199#213'ES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlmOBS: TRLMemo
        Left = 18
        Top = 43
        Width = 681
        Height = 16
        Behavior = [beSiteExpander]
      end
      object RLPanel2: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 15
        Align = faTop
      end
    end
  end
  object dsPedidoVenda: TDataSource
    DataSet = cdsPedidoVenda
    Left = 856
    Top = 316
  end
  object cdsPedidoVenda: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select P.ID, P.EMISSAO, P.ENTREGA, cast(P.ENTRADA as date) ENTRA' +
      'DA, P.OBSERVACAO, R.NOME VENDEDOR, C.NOME_RAZAO CLIENTE,'#13#10'      ' +
      ' C.ENDERECO, C.NUMERO, C.BAIRRO, C.CEP, C.CIDADE, C.UF ESTADO'#13#10'f' +
      'rom PEDIDO_VENDA P'#13#10'left join CLIENTE C on (C.CODIGO = P.ID_CLIE' +
      'NTE)'#13#10'left join REPRESENTANTE R on (R.CODIGO = P.ID_VENDEDOR)'#13#10'w' +
      'here p.id = 2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    Left = 856
    Top = 268
    object cdsPedidoVendaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object cdsPedidoVendaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      Required = True
    end
    object cdsPedidoVendaENTREGA: TDateField
      FieldName = 'ENTREGA'
      Origin = 'ENTREGA'
    end
    object cdsPedidoVendaENTRADA: TDateField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsPedidoVendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 500
    end
    object cdsPedidoVendaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object cdsPedidoVendaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'NOME_RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsPedidoVendaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsPedidoVendaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object cdsPedidoVendaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsPedidoVendaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object cdsPedidoVendaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cdsPedidoVendaESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 944
    Top = 316
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select I.ID_PRODUTO, P.NOME PRODUTO, I.UNIDADE, '#13#10'cast(I.QTDE as' +
      ' double precision)qtde, cast(I.VUNIT as double precision)vunit, ' +
      #13#10'cast(I.VDESC as double precision)vdesc, cast(I.TOTAL as double' +
      ' precision) total'#13#10'from PEDIDO_VENDA_ITEM I'#13#10'left join PRODUTO P' +
      ' on (P.CODIGO = I.ID_PRODUTO)'#13#10'where 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    Left = 944
    Top = 268
    object cdsItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
      DisplayFormat = '000'
    end
    object cdsItensPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ReadOnly = True
      Size = 100
    end
    object cdsItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 10
    end
    object cdsItensQTDE: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
      DisplayFormat = '#,##0.000'
    end
    object cdsItensVUNIT: TFloatField
      FieldName = 'VUNIT'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsItensVDESC: TFloatField
      FieldName = 'VDESC'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsItensTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
    end
  end
  object dsReceber: TDataSource
    DataSet = cdsReceber
    Left = 856
    Top = 428
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select C.DESCRI, C.DVENC, C.VDUP'#13#10'from CONTAS_A_RECEBER C'#13#10'where' +
      ' 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    Left = 856
    Top = 380
    object cdsReceberDESCRI: TStringField
      FieldName = 'DESCRI'
      Size = 150
    end
    object cdsReceberDVENC: TDateField
      FieldName = 'DVENC'
      Required = True
    end
    object cdsReceberVDUP: TFMTBCDField
      FieldName = 'VDUP'
      Required = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsIMG: TDataSource
    DataSet = cdsIMG
    Left = 944
    Top = 428
  end
  object cdsIMG: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select I.SEQUENCIA, I.PATH_IMAGEM'#13#10'from PEDIDO_VENDA_IMG I'#13#10'wher' +
      'e 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    Left = 944
    Top = 380
    object cdsIMGSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object cdsIMGPATH_IMAGEM: TStringField
      FieldName = 'PATH_IMAGEM'
      Size = 5000
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.0.1 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 872
    Top = 184
  end
end

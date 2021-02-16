inherited Rel_Venda0: TRel_Venda0
  Width = 734
  Height = 461
  HorzScrollBar.Position = 778
  VertScrollBar.Position = 179
  AutoScroll = True
  Caption = 'Rel_Venda0'
  Visible = False
  ExplicitWidth = 734
  ExplicitHeight = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Left = 56
    Top = -117
    DataSource = dsItens
    ShowProgress = False
    ExplicitLeft = 56
    ExplicitTop = -117
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 159
      BandType = btTitle
      BeforePrint = RLBand1BeforePrint
      object rlpnlEmpresa: TRLPanel
        Left = 0
        Top = 0
        Width = 330
        Height = 159
        Align = faClientLeft
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        object rlblEmpFantasia: TRLLabel
          Left = 9
          Top = 9
          Width = 310
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'TAKANO TRANSPORTES'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlblEmpRazao: TRLLabel
          Left = 9
          Top = 34
          Width = 310
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'TAKANO TRANSPORTES E LOGISTICA ME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object rlblEmpCNPJINSC: TRLLabel
          Left = 9
          Top = 54
          Width = 310
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'CNPJ: 12.345.678/0001-65  - IE: 408.082.747.111'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object rlblEmpEndereco: TRLLabel
          Left = 9
          Top = 74
          Width = 310
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'AV GERALDO FUDO, 750'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object rlblEmpBairroCidadeUF: TRLLabel
          Left = 9
          Top = 93
          Width = 310
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'CENTRO - JUNQUEIR'#211'POLIS - SP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object rlblEmpFones: TRLLabel
          Left = 9
          Top = 114
          Width = 310
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'FONE: (18) 3842-1443  - CEL: (18) 99642-8769'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object rlblEmailSite: TRLLabel
          Left = 9
          Top = 134
          Width = 310
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'EMAIL: logistica@takanotransportes.com.br'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
      end
      object rlpnlTopoDireita: TRLPanel
        Left = 330
        Top = 0
        Width = 388
        Height = 159
        Align = faClientRight
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object rlblTitulo: TRLLabel
          Left = 5
          Top = 9
          Width = 379
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'COMPROVANTE DE VENDA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlblVendaEmissao: TRLLabel
          Left = 5
          Top = 53
          Width = 379
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'N'#186' 000001  - 11/10/2019'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlblImpressao: TRLLabel
          Left = 0
          Top = 142
          Width = 388
          Height = 16
          Align = faBottom
          Alignment = taCenter
          AutoSize = False
          Caption = 'IMPRESS'#195'O  11/10/2019 as 09:20:25 '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 260
      Width = 718
      Height = 127
      BandType = btColumnHeader
      object RLDBText1: TRLDBText
        Left = 101
        Top = 31
        Width = 302
        Height = 17
        AutoSize = False
        DataField = 'NOME_RAZAO'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        BeforePrint = RLDBText1BeforePrint
      end
      object rlblEndereco: TRLLabel
        Left = 9
        Top = 50
        Width = 92
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ENDERE'#199'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 101
        Top = 50
        Width = 302
        Height = 17
        AutoSize = False
        DataField = 'ENDERECO'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        BeforePrint = RLDBText2BeforePrint
      end
      object rlblBairro: TRLLabel
        Left = 9
        Top = 69
        Width = 92
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'BAIRRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 101
        Top = 69
        Width = 302
        Height = 17
        AutoSize = False
        DataField = 'BAIRRO'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rlblCPFCNPJ: TRLLabel
        Left = 9
        Top = 88
        Width = 92
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CPF/CNPJ'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 101
        Top = 88
        Width = 302
        Height = 17
        AutoSize = False
        DataField = 'CPF_CNPJ'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rlblEmail: TRLLabel
        Left = 9
        Top = 107
        Width = 92
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'EMAIL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 101
        Top = 107
        Width = 302
        Height = 17
        AutoSize = False
        DataField = 'EMAIL'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rlblCidadeUF: TRLLabel
        Left = 409
        Top = 31
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CEP/CIDADE/UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 510
        Top = 31
        Width = 206
        Height = 17
        AutoSize = False
        DataField = 'CEP'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        BeforePrint = RLDBText7BeforePrint
      end
      object rlblFones: TRLLabel
        Left = 409
        Top = 50
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'FONE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 510
        Top = 50
        Width = 206
        Height = 17
        AutoSize = False
        DataField = 'TELEFONE'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rlblRGINSC: TRLLabel
        Left = 409
        Top = 88
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'RG/INSC'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 510
        Top = 88
        Width = 206
        Height = 17
        AutoSize = False
        DataField = 'RG_INSC'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rlblTitCliente: TRLLabel
        Left = 9
        Top = 10
        Width = 129
        Height = 17
        Caption = 'DADOS DO CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object rlblCel: TRLLabel
        Left = 409
        Top = 69
        Width = 100
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CELULAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 510
        Top = 69
        Width = 206
        Height = 17
        AutoSize = False
        DataField = 'CELULAR'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rlblNome: TRLLabel
        Left = 9
        Top = 31
        Width = 92
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'NOME/RAZ'#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 387
      Width = 718
      Height = 143
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 55
        BandType = btColumnHeader
        object rlblTitProduto: TRLLabel
          Left = 9
          Top = 11
          Width = 74
          Height = 17
          Caption = 'PRODUTOS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object rlpnlTitProdutos: TRLPanel
          Left = 0
          Top = 30
          Width = 718
          Height = 25
          Align = faBottom
          Color = cl3DLight
          ParentColor = False
          Transparent = False
          object RLLabel1: TRLLabel
            Left = 9
            Top = 4
            Width = 48
            Height = 17
            AutoSize = False
            Caption = 'QTD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel2: TRLLabel
            Left = 58
            Top = 4
            Width = 45
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'UM'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 105
            Top = 4
            Width = 267
            Height = 17
            Alignment = taCenter
            AutoSize = False
            Caption = 'DESCRI'#199#195'O'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 379
            Top = 4
            Width = 83
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'VL. UNIT.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 467
            Top = 4
            Width = 82
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'SUBTOTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 553
            Top = 4
            Width = 74
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'VL. DESC.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 632
            Top = 4
            Width = 81
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Vl. TOTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 74
        Width = 718
        Height = 28
        BandType = btColumnFooter
        object RLDBResult1: TRLDBResult
          Left = 9
          Top = 1
          Width = 48
          Height = 17
          AutoSize = False
          DataField = 'QTDE'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = ''
        end
        object RLDBResult2: TRLDBResult
          Left = 467
          Top = 1
          Width = 247
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VL_TOTAL'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Info = riSum
          ParentFont = False
          Text = 'TOTAL PRODUTOS     '
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 55
        Width = 718
        Height = 19
        object RLDBText11: TRLDBText
          Left = 9
          Top = 1
          Width = 48
          Height = 17
          AutoSize = False
          DataField = 'QTDE'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText12: TRLDBText
          Left = 58
          Top = 1
          Width = 45
          Height = 17
          Alignment = taCenter
          AutoSize = False
          DataField = 'UNIDADE'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText13: TRLDBText
          Left = 105
          Top = 1
          Width = 267
          Height = 17
          AutoSize = False
          DataField = 'DESCRI_PRODUTO'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText14: TRLDBText
          Left = 379
          Top = 1
          Width = 83
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VL_UNITARIO'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText15: TRLDBText
          Left = 467
          Top = 1
          Width = 82
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'SUBTOTAL'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText16: TRLDBText
          Left = 553
          Top = 1
          Width = 74
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VL_DESCONTO'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText17: TRLDBText
          Left = 632
          Top = 1
          Width = 82
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VL_TOTAL'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 530
      Width = 718
      Height = 102
      DataSource = dsReceber
      object RLDetailGrid1: TRLDetailGrid
        Left = 0
        Top = 23
        Width = 718
        Height = 51
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        ColCount = 5
        object RLLabel8: TRLLabel
          Left = 3
          Top = 12
          Width = 50
          Height = 13
          AutoSize = False
          Caption = 'VENCTO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 3
          Top = 29
          Width = 50
          Height = 13
          AutoSize = False
          Caption = 'VALOR:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 56
          Top = 9
          Width = 85
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'DT_VENC'
          DataSource = dsReceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
          Text = ''
        end
        object RLDBText18: TRLDBText
          Left = 56
          Top = 26
          Width = 85
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VALOR'
          DataSource = dsReceber
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Layout = tlBottom
          ParentFont = False
          Text = 'R$ '
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 23
        BandType = btColumnHeader
        object RLLabel10: TRLLabel
          Left = 9
          Top = 5
          Width = 67
          Height = 17
          Caption = 'PARCELAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
      end
    end
    object RLBand7: TRLBand
      Left = 38
      Top = 197
      Width = 718
      Height = 63
      BandType = btColumnHeader
      BeforePrint = RLBand7BeforePrint
      object RLLabel11: TRLLabel
        Left = 13
        Top = 22
        Width = 128
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CREDI'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText19: TRLDBText
        Left = 145
        Top = 22
        Width = 316
        Height = 17
        AutoSize = False
        DataField = 'CREDIARIO'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel12: TRLLabel
        Left = 467
        Top = 20
        Width = 91
        Height = 17
        AutoSize = False
        Caption = 'VENDEDOR(A)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText20: TRLDBText
        Left = 564
        Top = 20
        Width = 144
        Height = 17
        AutoSize = False
        DataField = 'VENDEDOR'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel14: TRLLabel
        Left = 13
        Top = 1
        Width = 128
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'FORMAS DE PAGTO.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText21: TRLDBText
        Left = 145
        Top = 1
        Width = 561
        Height = 17
        AutoSize = False
        DataField = 'FORMAS_PAGTO'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLLabel15: TRLLabel
        Left = 13
        Top = 43
        Width = 128
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'TOTAL A PAGAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText22: TRLDBText
        Left = 145
        Top = 43
        Width = 185
        Height = 17
        AutoSize = False
        DataField = 'TOT_PAGAR'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'R$  '
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 632
      Width = 718
      Height = 91
      BandType = btSummary
      object RLDraw1: TRLDraw
        Left = 109
        Top = 60
        Width = 500
        Height = 12
        DrawKind = dkLine
      end
      object RLDBText23: TRLDBText
        Left = 109
        Top = 70
        Width = 500
        Height = 17
        Alignment = taCenter
        AutoSize = False
        DataField = 'NOME_RAZAO'
        DataSource = dsItens
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object Rel_Orcamento: TRLReport
    Left = -770
    Top = -117
    Width = 794
    Height = 1123
    DataSource = sOrItem
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
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
    object RLBand10: TRLBand
      Left = 38
      Top = 129
      Width = 718
      Height = 190
      BandType = btColumnHeader
      BeforePrint = RLBand10BeforePrint
      object RLLabel13: TRLLabel
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
        Caption = '    Or'#231'amento de venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 8
        Top = 34
        Width = 74
        Height = 20
        Caption = 'Or'#231'amento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblNum: TRLLabel
        Left = 88
        Top = 34
        Width = 24
        Height = 20
        Caption = '002'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl1: TRLLabel
        Left = 36
        Top = 62
        Width = 46
        Height = 20
        Caption = 'Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblCliente: TRLLabel
        Left = 88
        Top = 62
        Width = 86
        Height = 20
        Caption = 'Fulano de Tal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl2: TRLLabel
        Left = 23
        Top = 90
        Width = 59
        Height = 20
        Caption = 'Emiss'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEmissao: TRLLabel
        Left = 86
        Top = 90
        Width = 65
        Height = 20
        Caption = '21/09/2020'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl3: TRLLabel
        Left = 219
        Top = 90
        Width = 107
        Height = 20
        Caption = 'Data de validade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblValidade: TRLLabel
        Left = 332
        Top = 90
        Width = 65
        Height = 20
        Caption = '21/09/2020'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel17: TRLLabel
        Left = 0
        Top = 132
        Width = 718
        Height = 22
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Width = 2
        Caption = '    Itens do or'#231'amento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 8
        Top = 170
        Width = 72
        Height = 16
        AutoSize = False
        Caption = 'Refer'#234'ncia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 85
        Top = 170
        Width = 231
        Height = 16
        AutoSize = False
        Caption = 'Descri'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 322
        Top = 170
        Width = 47
        Height = 16
        AutoSize = False
        Caption = 'Unidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 378
        Top = 170
        Width = 80
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Quantidade'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 462
        Top = 170
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Unit'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 546
        Top = 170
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 630
        Top = 170
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup2: TRLGroup
      Left = 38
      Top = 319
      Width = 718
      Height = 85
      object RLBand12: TRLBand
        Left = 0
        Top = 24
        Width = 718
        Height = 39
        BandType = btSummary
        BeforePrint = RLBand12BeforePrint
        object RLPanel1: TRLPanel
          Left = 322
          Top = 4
          Width = 390
          Height = 30
          Borders.Sides = sdAll
          object rlbl4: TRLLabel
            Left = 6
            Top = 7
            Width = 113
            Height = 16
            AutoSize = False
            Caption = 'Quantidade de itens:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlblTotItens: TRLLabel
            Left = 123
            Top = 7
            Width = 65
            Height = 16
            AutoSize = False
            Caption = '3,000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlbl6: TRLLabel
            Left = 192
            Top = 7
            Width = 111
            Height = 16
            AutoSize = False
            Caption = 'Valor total dos itens:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlblVlTotItens: TRLLabel
            Left = 307
            Top = 7
            Width = 75
            Height = 16
            AutoSize = False
            Caption = 'R$ 90,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLBand11: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 24
        BeforePrint = RLBand11BeforePrint
        object RLDBText24: TRLDBText
          Left = 8
          Top = 1
          Width = 72
          Height = 16
          AutoSize = False
          DataField = 'ID_PROD'
          DataSource = sOrItem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText25: TRLDBText
          Left = 85
          Top = 1
          Width = 231
          Height = 16
          AutoSize = False
          DataField = 'NOME'
          DataSource = sOrItem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText26: TRLDBText
          Left = 322
          Top = 1
          Width = 48
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'UNIDADE'
          DataSource = sOrItem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText27: TRLDBText
          Left = 378
          Top = 1
          Width = 80
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'QTDE'
          DataSource = sOrItem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText28: TRLDBText
          Left = 462
          Top = 1
          Width = 80
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VUNIT'
          DataSource = sOrItem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText29: TRLDBText
          Left = 546
          Top = 1
          Width = 80
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VDESC'
          DataSource = sOrItem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText30: TRLDBText
          Left = 630
          Top = 1
          Width = 80
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VTOTAL'
          DataSource = sOrItem
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLSubDetail2: TRLSubDetail
      Left = 38
      Top = 404
      Width = 718
      Height = 126
      DataSource = sOrPagar
      object RLBand13: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 52
        BandType = btColumnHeader
        object RLLabel25: TRLLabel
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
          Caption = '    Forma / Condi'#231#245'es de pagamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel26: TRLLabel
          Left = 8
          Top = 33
          Width = 177
          Height = 16
          AutoSize = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel27: TRLLabel
          Left = 196
          Top = 33
          Width = 92
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vencimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel28: TRLLabel
          Left = 298
          Top = 33
          Width = 85
          Height = 16
          AutoSize = False
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand14: TRLBand
        Left = 0
        Top = 52
        Width = 718
        Height = 25
        object RLDBText31: TRLDBText
          Left = 8
          Top = 1
          Width = 177
          Height = 16
          AutoSize = False
          DataField = 'DESCRICAO'
          DataSource = sOrPagar
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText32: TRLDBText
          Left = 196
          Top = 1
          Width = 92
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'VENCTO'
          DataSource = sOrPagar
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
        object RLDBText33: TRLDBText
          Left = 298
          Top = 1
          Width = 108
          Height = 16
          AutoSize = False
          DataField = 'VALOR'
          DataSource = sOrPagar
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
        end
      end
    end
    object RLBand15: TRLBand
      Left = 38
      Top = 530
      Width = 718
      Height = 23
      BandType = btSummary
      BeforePrint = RLBand15BeforePrint
      object rlblImpresso: TRLLabel
        Left = 210
        Top = 4
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
  object cdsItens: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select a.QTDE,c.SIGLA unidade,b.NOME descri_produto,'#13#10'cast(a.VL_' +
      'UNITARIO as numeric(10,2))VL_UNITARIO,cast(a.VL_DESCONTO as nume' +
      'ric(10,2))VL_DESCONTO,'#13#10'cast(a.VL_TOTAL as double precision)VL_T' +
      'OTAL,'#13#10'e.NOME_RAZAO,e.ENDERECO,e.NUMERO,e.BAIRRO,e.CEP,e.CIDADE,' +
      'e.UF,e.CPF_CNPJ,'#13#10'e.DDD_FONE||'#39'-'#39'||e.TELEFONE1 telefone,e.DDD_CE' +
      'L||'#39'-'#39'||e.CEL celular,e.EMAIL,e.RG_INSC,'#13#10'd.ID venda,d.EMISSAO,d' +
      '.ID_VENDEDOR||'#39' - '#39'||f.NOME vendedor,'#13#10'cast(iif(h.percent_acresc' +
      'imo > 0,h.descricao||'#39' - '#39'||h.percent_acrescimo||'#39'%'#39',h.descricao' +
      ') as varchar(100)) crediario,'#13#10'a.TIPO,a.ID,'#13#10'cast( (select list(' +
      'upper(x.FORMA_PAGTO)||'#39': '#39'||'#39'R$ '#39'||x.VALOR,'#39'  '#39') from PDV_RECEBE' +
      'R x where x.forma_pagto <> '#39'CREDIARIO'#39' and x.tipo = a.TIPO and x' +
      '.ID = a.ID ) as varchar(500) ) formas_pagto,'#13#10'cast( (select sum(' +
      'y.VALOR) from PDV_RECEBER y where y.forma_pagto <> '#39'DESCONTO'#39' an' +
      'd y.tipo = a.TIPO and y.ID = a.ID) as numeric(10,2) )tot_pagar'#13#10 +
      'from PDV_ITENS a'#13#10'left outer join PRODUTO b on (b.CODIGO = a.ID_' +
      'PRODUTO)'#13#10'left outer join UNIDADE c on (c.CODIGO = b.COD_UNIDADE' +
      ')'#13#10'left outer join PDV_MASTER d on (d.ID = a.ID and d.TIPO = a.T' +
      'IPO)'#13#10'left outer join CLIENTE e on (e.CODIGO = d.ID_CLIENTE)'#13#10'le' +
      'ft outer join FUNCIONARIO f on (f.CODIGO = d.ID_VENDEDOR)'#13#10'left ' +
      'outer join CONDPAGTO h on (h.CODIGO = d.ID_CREDIARIO)'#13#10'where 1 =' +
      ' 2'#13#10
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    OnCalcFields = cdsItensCalcFields
    Left = 576
    Top = 32
    object cdsItensQTDE: TCurrencyField
      FieldName = 'QTDE'
      DisplayFormat = '#,##0.000'
    end
    object cdsItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ReadOnly = True
      Size = 10
    end
    object cdsItensDESCRI_PRODUTO: TStringField
      FieldName = 'DESCRI_PRODUTO'
      ReadOnly = True
      Size = 100
    end
    object cdsItensNOME_RAZAO: TStringField
      FieldName = 'NOME_RAZAO'
      ReadOnly = True
      Size = 100
    end
    object cdsItensENDERECO: TStringField
      FieldName = 'ENDERECO'
      ReadOnly = True
      Size = 45
    end
    object cdsItensNUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 10
    end
    object cdsItensBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ReadOnly = True
      Size = 30
    end
    object cdsItensCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 10
    end
    object cdsItensCIDADE: TStringField
      FieldName = 'CIDADE'
      ReadOnly = True
      Size = 50
    end
    object cdsItensCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ReadOnly = True
    end
    object cdsItensTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ReadOnly = True
      Size = 19
    end
    object cdsItensCELULAR: TStringField
      FieldName = 'CELULAR'
      ReadOnly = True
      Size = 19
    end
    object cdsItensEMAIL: TStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Size = 70
    end
    object cdsItensRG_INSC: TStringField
      FieldName = 'RG_INSC'
      ReadOnly = True
      Size = 30
    end
    object cdsItensVENDA: TIntegerField
      FieldName = 'VENDA'
      ReadOnly = True
    end
    object cdsItensEMISSAO: TDateField
      FieldName = 'EMISSAO'
      ReadOnly = True
    end
    object cdsItensVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ReadOnly = True
      Size = 54
    end
    object cdsItensTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsItensUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object cdsItensFORMAS_PAGTO: TStringField
      FieldName = 'FORMAS_PAGTO'
      ReadOnly = True
      Size = 500
    end
    object cdsItensCREDIARIO: TStringField
      FieldName = 'CREDIARIO'
      ReadOnly = True
      Size = 100
    end
    object cdsItensVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensVL_DESCONTO: TFMTBCDField
      FieldName = 'VL_DESCONTO'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensTOT_PAGAR: TFMTBCDField
      FieldName = 'TOT_PAGAR'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensVL_TOTAL: TFloatField
      FieldName = 'VL_TOTAL'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object cdsItensSUBTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUBTOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 608
    Top = 32
  end
  object cdsReceber: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select cast(a.VALOR as numeric(10,2))valor,a.DT_VENC'#13#10'from PDV_R' +
      'ECEBER a'#13#10'where 1 = 2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 640
    Top = 32
    object cdsReceberDT_VENC: TDateField
      FieldName = 'DT_VENC'
    end
    object cdsReceberVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsReceber: TDataSource
    DataSet = cdsReceber
    Left = 672
    Top = 32
  end
  object dsOrItem: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select a.ID,a.ID_FORMAPAGTO,a.EMISSAO,a.dt_validade,c.NOME_RAZAO' +
      ' cliente,'#13#10'b.ID_PROD,d.NOME,e.SIGLA unidade,b.QTDE,b.VUNIT,b.VDE' +
      'SC,b.VTOTAL'#13#10'from ORCAMENTO a'#13#10'left outer join ORCAMENTO_ITEM b ' +
      'on (b.ID_ORCAMENTO = a.ID)'#13#10'left outer join CLIENTE c on (c.CODI' +
      'GO = a.ID_CLIENTE)'#13#10'left outer join PRODUTO d on (d.CODIGO = b.I' +
      'D_PROD)'#13#10'left outer join UNIDADE e on (e.CODIGO = d.COD_UNIDADE)' +
      #13#10'where 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 430
    Top = 63
    object dsOrItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object dsOrItemID_FORMAPAGTO: TIntegerField
      FieldName = 'ID_FORMAPAGTO'
    end
    object dsOrItemEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object dsOrItemDT_VALIDADE: TDateField
      FieldName = 'DT_VALIDADE'
    end
    object dsOrItemCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ReadOnly = True
      Size = 100
    end
    object dsOrItemID_PROD: TIntegerField
      FieldName = 'ID_PROD'
      ReadOnly = True
    end
    object dsOrItemNOME: TStringField
      FieldName = 'NOME'
      ReadOnly = True
      Size = 100
    end
    object dsOrItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ReadOnly = True
      Size = 10
    end
    object dsOrItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      ReadOnly = True
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object dsOrItemVUNIT: TFMTBCDField
      FieldName = 'VUNIT'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object dsOrItemVDESC: TFMTBCDField
      FieldName = 'VDESC'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object dsOrItemVTOTAL: TFMTBCDField
      FieldName = 'VTOTAL'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 5
    end
  end
  object dsOrPagar: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select a.DESCRICAO,cast('#39'21.09.2020'#39' as date) vencto,cast(0 as n' +
      'umeric(10,2)) valor'#13#10'from CONDPAGTO a where 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 486
    Top = 63
    object dsOrPagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object dsOrPagarVENCTO: TDateField
      FieldName = 'VENCTO'
    end
    object dsOrPagarVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object sOrItem: TDataSource
    DataSet = dsOrItem
    Left = 430
    Top = 121
  end
  object sOrPagar: TDataSource
    DataSet = dsOrPagar
    Left = 486
    Top = 121
  end
end

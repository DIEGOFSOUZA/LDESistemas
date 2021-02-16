inherited Rel_VendaPorItem: TRel_VendaPorItem
  Caption = 'Rel_VendaPorItem'
  ClientWidth = 1663
  OnCreate = FormCreate
  ExplicitWidth = 1663
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFundo0: TPanel
    Width = 825
    ExplicitWidth = 825
    inherited pnlNaoExisteReg: TPanel
      Width = 823
      ExplicitWidth = 823
    end
    inherited pnlTopo: TPanel
      Width = 823
      ExplicitWidth = 823
      inherited pnlPeriodo: TPanel
        inherited dtp1: TDateTimePicker
          OnChange = dtp1Change
        end
        inherited dtp2: TDateTimePicker
          OnChange = dtp2Change
        end
      end
      inherited pnlVisualizar: TPanel
        Left = 737
        ExplicitLeft = 737
        inherited Label3: TLabel
          Width = 85
        end
      end
      inherited chkExibirResumo: TCheckBox
        Left = 635
        ExplicitLeft = 635
      end
    end
    inherited pnlFundo1: TPanel
      Width = 823
      ExplicitWidth = 823
      inherited cbbLista: TComboBox [0]
        OnClick = cbbListaClick
      end
      inherited pnlGrid: TPanel [1]
        Width = 658
        ExplicitWidth = 658
        inherited pnlRodape: TPanel
          Width = 656
          ExplicitWidth = 656
          object lblRodapeQtdeV: TLabel
            Left = 190
            Top = 2
            Width = 85
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblRodapeVV: TLabel
            Left = 350
            Top = 2
            Width = 95
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$ 0,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblRodapeVM: TLabel
            Left = 275
            Top = 2
            Width = 75
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblQtdeRegistros: TLabel
            Left = 7
            Top = 2
            Width = 166
            Height = 17
            AutoSize = False
            Caption = 'EXIBINDO 0 REGISTROS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblRodapeCM: TLabel
            Left = 445
            Top = 2
            Width = 80
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$ 0,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblRodapeLuc: TLabel
            Left = 605
            Top = 2
            Width = 85
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'R$ 0,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblRodapeCD: TLabel
            Left = 525
            Top = 2
            Width = 80
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        inherited dbgrd1: TDBGrid
          Width = 656
          Columns = <
            item
              Expanded = False
              FieldName = 'PRODUTO'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE_VENDIDA'
              Title.Alignment = taRightJustify
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_MEDIO'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_VENDAS'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CUSTO_MEDIO'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CUSTO_DIRETO'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LUCRATIVIDADE'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MARG_LUCRO'
              Width = 100
              Visible = True
            end>
        end
      end
      inherited pnlRight: TPanel [2]
        Left = 659
        ExplicitLeft = 659
        object lblResDt1: TLabel
          Left = 1
          Top = 87
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = '26/10/2020'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlBottom
          ExplicitTop = 81
        end
        object Label8: TLabel
          Left = 1
          Top = 109
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'AT'#201
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
          ExplicitTop = 118
        end
        object lblResDt2: TLabel
          Left = 1
          Top = 131
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = '26/10/2020'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlBottom
          ExplicitTop = 140
        end
        object lblResTotVenda: TLabel
          Left = 1
          Top = 43
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlBottom
          ExplicitTop = 46
        end
        object Label5: TLabel
          Left = 1
          Top = 21
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'TOTAL DE VENDAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
        end
        object Label6: TLabel
          Left = 1
          Top = 65
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'APURA'#199#194'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
        end
        object Label7: TLabel
          Left = 1
          Top = 153
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'TOTAL QTDE. VENDIDA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
        end
        object lblResQtVendida: TLabel
          Left = 1
          Top = 175
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = '0,000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlBottom
        end
        object Label10: TLabel
          Left = 1
          Top = 197
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'CUSTO M'#201'DIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
        end
        object lblResCustoMedio: TLabel
          Left = 1
          Top = 219
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlBottom
        end
        object Label9: TLabel
          Left = 1
          Top = 241
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'VALOR M'#201'DIO DE VENDA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
        end
        object lblResVlmedioVenda: TLabel
          Left = 1
          Top = 263
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlBottom
        end
        object Label12: TLabel
          Left = 1
          Top = 285
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'LUCRO M'#201'DIO DE VENDA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
        end
        object lblResLucMedioV: TLabel
          Left = 1
          Top = 307
          Width = 161
          Height = 22
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlBottom
        end
      end
    end
    inherited pnlTitulo: TPanel
      Width = 823
      ExplicitWidth = 823
      inherited lblTitulo: TLabel
        Width = 791
        Caption = '         VENDAS TOTAIS POR ITEM'
        ExplicitWidth = 791
      end
      inherited imgFechar: TImage
        Left = 792
        ExplicitLeft = 792
      end
    end
  end
  inherited Rel_1: TRLReport
    Left = 861
    DataSource = sGrid
    ExplicitLeft = 861
    inherited RLBand10: TRLBand
      Height = 54
      ExplicitHeight = 54
      inherited RLLabel13: TRLLabel
        Caption = '   Relat'#243'rio - Vendas: Vendas Totais por item'
      end
      object RLLabel16: TRLLabel
        Left = 8
        Top = 28
        Width = 66
        Height = 20
        Caption = 'Apura'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblDT1: TRLLabel
        Left = 86
        Top = 28
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
      object rlblDT2: TRLLabel
        Left = 180
        Top = 28
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
      object RLLabel1: TRLLabel
        Left = 155
        Top = 28
        Width = 21
        Height = 20
        Caption = 'at'#233
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 183
      Width = 718
      Height = 40
      BandType = btColumnHeader
      object RLMemo1: TRLMemo
        Left = 0
        Top = 0
        Width = 102
        Height = 40
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        Lines.Strings = (
          'PRODUTO')
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 102
        Top = 0
        Width = 85
        Height = 40
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        Lines.Strings = (
          'QUANTIDADE'
          'VENDIDA')
        ParentFont = False
      end
      object RLMemo3: TRLMemo
        Left = 187
        Top = 0
        Width = 85
        Height = 40
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        Lines.Strings = (
          'VALOR'
          'M'#201'DIO')
        ParentFont = False
      end
      object RLMemo4: TRLMemo
        Left = 272
        Top = 0
        Width = 85
        Height = 40
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        Lines.Strings = (
          'VALOR DE'
          'VENDAS')
        ParentFont = False
      end
      object RLMemo5: TRLMemo
        Left = 357
        Top = 0
        Width = 85
        Height = 40
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        Lines.Strings = (
          'CUSTO'
          'M'#201'DIO')
        ParentFont = False
      end
      object RLMemo6: TRLMemo
        Left = 442
        Top = 0
        Width = 85
        Height = 40
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        Lines.Strings = (
          'CUSTO'
          'DIRETO')
        ParentFont = False
      end
      object RLMemo7: TRLMemo
        Left = 527
        Top = 0
        Width = 105
        Height = 40
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        Lines.Strings = (
          'LUCRATIVIDADE')
        ParentFont = False
      end
      object RLMemo8: TRLMemo
        Left = 632
        Top = 0
        Width = 82
        Height = 40
        Alignment = taCenter
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        Lines.Strings = (
          'MARGEM '
          'DE LUCRO')
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 223
      Width = 718
      Height = 40
      object RLDBMemo1: TRLDBMemo
        Left = 0
        Top = 0
        Width = 102
        Height = 40
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'PRODUTO'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLDBMemo2: TRLDBMemo
        Left = 102
        Top = 0
        Width = 85
        Height = 40
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'QTDE_VENDIDA'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLDBMemo3: TRLDBMemo
        Left = 187
        Top = 0
        Width = 85
        Height = 40
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'VL_MEDIO'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLDBMemo4: TRLDBMemo
        Left = 272
        Top = 0
        Width = 85
        Height = 40
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'VL_VENDAS'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLDBMemo5: TRLDBMemo
        Left = 357
        Top = 0
        Width = 85
        Height = 40
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'CUSTO_MEDIO'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLDBMemo6: TRLDBMemo
        Left = 442
        Top = 0
        Width = 85
        Height = 40
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'CUSTO_DIRETO'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLDBMemo7: TRLDBMemo
        Left = 527
        Top = 0
        Width = 105
        Height = 40
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'LUCRATIVIDADE'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLDBMemo8: TRLDBMemo
        Left = 632
        Top = 0
        Width = 82
        Height = 40
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'MARG_LUCRO'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 263
      Width = 718
      Height = 20
      BandType = btSummary
      BeforePrint = RLBand3BeforePrint
      object RLLabel5: TRLLabel
        Left = 0
        Top = 0
        Width = 102
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Color = clGray
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object rlblTotQtde: TRLLabel
        Left = 102
        Top = 0
        Width = 85
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = '0,000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object rlblVlVendas: TRLLabel
        Left = 272
        Top = 0
        Width = 85
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object rlblVlMedio: TRLLabel
        Left = 187
        Top = 0
        Width = 85
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object rlblCustoMedio: TRLLabel
        Left = 357
        Top = 0
        Width = 85
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object rlblLucratividade: TRLLabel
        Left = 527
        Top = 0
        Width = 105
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object rlblCustoDireto: TRLLabel
        Left = 442
        Top = 0
        Width = 85
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'R$ 0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
    end
  end
  inherited dsGrid: TClientDataSet
    CommandText = 
      'select c.NOME produto,sum(b.QTDE) qtde_vendida,'#13#10'cast(sum(b.VL_T' +
      'OTAL) as numeric(10,2)) vl_vendas,'#13#10'cast((sum(b.VL_TOTAL)/sum(b.' +
      'QTDE)) as numeric(10,2)) vl_medio,'#13#10'cast( ( (sum(b.QTDE)*coalesc' +
      'e(c.PRECO_CUSTO,0)) / sum(b.QTDE) )as numeric(10,2)) custo_medio' +
      ','#13#10'cast( (sum(b.QTDE)*coalesce(c.PRECO_CUSTO,0)) as numeric(10,2' +
      ')) custo_direto,'#13#10'cast( (sum(b.VL_TOTAL)-(sum(b.QTDE)*coalesce(c' +
      '.PRECO_CUSTO,0))) as numeric(10,2)) lucratividade,'#13#10'cast( iif(c.' +
      'PRECO_CUSTO > 0,((coalesce(c.PRECO_VENDA,0)-coalesce(c.PRECO_CUS' +
      'TO,0)) /coalesce(c.PRECO_CUSTO,0))*100,100) as numeric(10,2)) ma' +
      'rg_lucro'#13#10'from PDV_MASTER a'#13#10'left outer join PDV_ITENS b on (b.I' +
      'D = a.ID and b.TIPO = a.TIPO)'#13#10'left outer join PRODUTO c on (c.C' +
      'ODIGO = b.ID_PRODUTO)'#13#10'where 1=2 '#13#10'and a.STATUS is null  '#13#10'group' +
      ' by c.NOME,c.PRECO_CUSTO,c.PRECO_VENDA'
    IndexDefs = <
      item
        Name = 'dsGridIndex1'
        Fields = 'qtde_vendida'
        Options = [ixDescending]
      end>
    IndexName = 'dsGridIndex1'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    StoreDefs = True
    object dsGridPRODUTO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Size = 100
    end
    object dsGridQTDE_VENDIDA: TFMTBCDField
      DisplayLabel = 'Qtde. vendida'
      FieldName = 'QTDE_VENDIDA'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object dsGridVL_VENDAS: TFMTBCDField
      DisplayLabel = 'Valor de vendas'
      FieldName = 'VL_VENDAS'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridVL_MEDIO: TFMTBCDField
      DisplayLabel = 'Valor m'#233'dio'
      FieldName = 'VL_MEDIO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridCUSTO_MEDIO: TFMTBCDField
      DisplayLabel = 'Custo m'#233'dio'
      FieldName = 'CUSTO_MEDIO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridCUSTO_DIRETO: TFMTBCDField
      DisplayLabel = 'Custo direto'
      FieldName = 'CUSTO_DIRETO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridLUCRATIVIDADE: TFMTBCDField
      DisplayLabel = 'Lucratividade'
      FieldName = 'LUCRATIVIDADE'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridMARG_LUCRO: TFMTBCDField
      DisplayLabel = 'Margem de lucro'
      FieldName = 'MARG_LUCRO'
      DisplayFormat = '#,##0.00%'
      Precision = 18
      Size = 2
    end
  end
end

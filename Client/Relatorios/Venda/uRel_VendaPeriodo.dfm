inherited Rel_VendaPeriodo: TRel_VendaPeriodo
  Caption = 'Rel_VendaPeriodo'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFundo0: TPanel
    inherited pnlTopo: TPanel
      inherited pnlPeriodo: TPanel
        inherited dtp1: TDateTimePicker
          OnChange = dtp1Change
        end
        inherited dtp2: TDateTimePicker
          OnChange = dtp2Change
        end
      end
      inherited pnlVisualizar: TPanel
        inherited Label3: TLabel
          Width = 85
        end
      end
    end
    inherited pnlFundo1: TPanel
      inherited pnlGrid: TPanel
        Width = 560
        ExplicitWidth = 560
        inherited pnlRodape: TPanel
          Width = 558
          ExplicitWidth = 558
          object lblQtdeRegistros: TLabel
            Left = 8
            Top = 2
            Width = 281
            Height = 17
            AutoSize = False
            Caption = 'EXIBINDO 0 REGISTROS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblTotal: TLabel
            Left = 358
            Top = 2
            Width = 200
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            AutoSize = False
            Caption = 'R$ 0,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        inherited dbgrd1: TDBGrid
          Width = 558
          Columns = <
            item
              Expanded = False
              FieldName = 'FONTE'
              Visible = True
            end
            item
              Alignment = taLeftJustify
              Expanded = False
              FieldName = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLIENTE'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDEDOR'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMISSAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE'
              Title.Alignment = taRightJustify
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_ENTREGA'
              Title.Alignment = taRightJustify
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_BRUTO'
              Title.Alignment = taRightJustify
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_DESCONTO'
              Title.Alignment = taRightJustify
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_TOTAL'
              Title.Alignment = taRightJustify
              Width = 100
              Visible = True
            end>
        end
      end
      inherited pnlRight: TPanel
        Left = 561
        Width = 180
        ExplicitLeft = 561
        ExplicitWidth = 180
        inherited lblTitBanco: TLabel
          Width = 178
          ExplicitWidth = 178
        end
        object ScrollBox1: TScrollBox
          Left = 1
          Top = 21
          Width = 178
          Height = 322
          Align = alClient
          TabOrder = 0
          object Label6: TLabel
            Left = 0
            Top = 0
            Width = 157
            Height = 25
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
            ExplicitTop = 8
          end
          object lblResDt1: TLabel
            Left = 0
            Top = 25
            Width = 157
            Height = 25
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
            ExplicitLeft = 1
            ExplicitTop = 96
            ExplicitWidth = 161
          end
          object Label8: TLabel
            Left = 0
            Top = 50
            Width = 157
            Height = 25
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
            ExplicitLeft = 1
            ExplicitTop = 121
            ExplicitWidth = 161
          end
          object lblResDt2: TLabel
            Left = 0
            Top = 75
            Width = 157
            Height = 25
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
            ExplicitLeft = 1
            ExplicitTop = 149
            ExplicitWidth = 161
          end
          object lblResQtVenda: TLabel
            Left = 0
            Top = 125
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = '0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlBottom
            ExplicitLeft = 2
            ExplicitTop = 156
          end
          object Label5: TLabel
            Left = 0
            Top = 100
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'QTDE. DE VENDAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Layout = tlBottom
            ExplicitLeft = -8
            ExplicitTop = 137
          end
          object Label7: TLabel
            Left = 0
            Top = 150
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'VALOR TOTAL BRUTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Layout = tlBottom
            ExplicitWidth = 152
          end
          object lblResTotBruto: TLabel
            Left = 0
            Top = 175
            Width = 157
            Height = 25
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
            ExplicitLeft = -3
            ExplicitTop = 206
          end
          object lblResTotDesc: TLabel
            Left = 0
            Top = 225
            Width = 157
            Height = 25
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
            ExplicitLeft = -3
            ExplicitTop = 268
          end
          object Label10: TLabel
            Left = 0
            Top = 200
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'TOTAL DESCONTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Layout = tlBottom
            ExplicitLeft = -3
            ExplicitTop = 218
          end
          object lblResTotVenda: TLabel
            Left = 0
            Top = 275
            Width = 157
            Height = 25
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
            ExplicitLeft = 2
            ExplicitTop = 306
          end
          object Label11: TLabel
            Left = 0
            Top = 250
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'VALOR TOTAL VENDAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Layout = tlBottom
            ExplicitWidth = 152
          end
          object Label9: TLabel
            Left = 0
            Top = 300
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'TOTAL ENTREGA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Layout = tlBottom
            ExplicitLeft = 3
            ExplicitTop = 306
          end
          object lblResTotEntrega: TLabel
            Left = 0
            Top = 325
            Width = 157
            Height = 25
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
            ExplicitLeft = 2
            ExplicitTop = 305
            ExplicitWidth = 140
          end
          object lbl1: TLabel
            Left = 0
            Top = 350
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'VALOR M'#201'DIO BRUTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Layout = tlBottom
            ExplicitTop = 252
            ExplicitWidth = 152
          end
          object lblResMedBruto: TLabel
            Left = 0
            Top = 375
            Width = 157
            Height = 25
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
            ExplicitLeft = 3
            ExplicitTop = 299
            ExplicitWidth = 140
          end
          object lbl2: TLabel
            Left = 0
            Top = 400
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'VALOR M'#201'DIO VENDAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Layout = tlBottom
            ExplicitTop = 215
            ExplicitWidth = 152
          end
          object lblResMedioVenda: TLabel
            Left = 0
            Top = 425
            Width = 157
            Height = 25
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
            ExplicitLeft = -3
            ExplicitTop = 305
            ExplicitWidth = 140
          end
          object lbl3: TLabel
            Left = 0
            Top = 450
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'VALOR M'#201'DIO ENTREGA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Layout = tlBottom
            ExplicitTop = 178
            ExplicitWidth = 152
          end
          object lblResMedioEntrega: TLabel
            Left = 0
            Top = 475
            Width = 157
            Height = 25
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
            ExplicitLeft = -3
            ExplicitTop = 305
            ExplicitWidth = 147
          end
          object lbl4: TLabel
            Left = 0
            Top = 500
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'VALOR M'#201'DIO DESCONTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Layout = tlBottom
            ExplicitTop = 228
            ExplicitWidth = 152
          end
          object lblResMedDesconto: TLabel
            Left = 0
            Top = 525
            Width = 157
            Height = 25
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
            ExplicitLeft = 16
            ExplicitTop = 307
            ExplicitWidth = 152
          end
          object lbl5: TLabel
            Left = 0
            Top = 550
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'PRODUTOS POR VENDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Layout = tlBottom
            ExplicitLeft = 2
            ExplicitTop = 305
          end
          object lblResProdVenda: TLabel
            Left = 0
            Top = 575
            Width = 157
            Height = 25
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
            ExplicitLeft = 2
            ExplicitTop = 305
          end
          object lblResPrecoMedio: TLabel
            Left = 0
            Top = 625
            Width = 157
            Height = 25
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
            ExplicitLeft = -3
            ExplicitTop = 305
          end
          object lbl: TLabel
            Left = 0
            Top = 600
            Width = 157
            Height = 25
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'PRE'#199'O M'#201'DIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Layout = tlBottom
            ExplicitLeft = -3
            ExplicitTop = 305
          end
        end
      end
      inherited cbbLista: TComboBox
        OnClick = cbbListaClick
      end
    end
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Caption = '         VENDAS POR PER'#205'ODO'
        ExplicitLeft = -5
        ExplicitTop = -3
        ExplicitWidth = 710
        ExplicitHeight = 20
      end
    end
  end
  inherited Rel_1: TRLReport
    Left = 777
    Width = 1123
    Height = 794
    DataSource = sGrid
    PageSetup.Orientation = poLandscape
    ExplicitLeft = 777
    ExplicitWidth = 1123
    ExplicitHeight = 794
    inherited RLBand9: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited rlblEmpresaRazao: TRLLabel
        Left = 544
        ExplicitLeft = 544
      end
      inherited rlblEmpresaCNPJ: TRLLabel
        Left = 544
        ExplicitLeft = 544
      end
      inherited rlblEmpresaLog: TRLLabel
        Left = 544
        ExplicitLeft = 544
      end
      inherited rlblEmpresaCep: TRLLabel
        Left = 544
        ExplicitLeft = 544
      end
      inherited rlblEmpresaFone: TRLLabel
        Left = 544
        ExplicitLeft = 544
      end
    end
    inherited RLBand10: TRLBand
      Width = 1047
      Height = 54
      ExplicitWidth = 1047
      ExplicitHeight = 54
      inherited RLLabel13: TRLLabel
        Width = 1047
        Caption = '    Relat'#243'rio - Vendas: Vendas por Per'#237'odo'
        ExplicitWidth = 1047
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
      Width = 1047
      Height = 40
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 118
        Height = 40
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'CANAL DE VENDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 118
        Top = 0
        Width = 105
        Height = 40
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'PEDIDO/CUPOM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 223
        Top = 0
        Width = 150
        Height = 40
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 373
        Top = 0
        Width = 150
        Height = 40
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'VENDEDOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 523
        Top = 0
        Width = 80
        Height = 40
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 603
        Top = 0
        Width = 80
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
          'TOTAL DE '
          'PRODUTOS')
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 683
        Top = 0
        Width = 80
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
          'ENTREGA')
        ParentFont = False
      end
      object RLMemo3: TRLMemo
        Left = 763
        Top = 0
        Width = 80
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
          'TOTAL'
          'BRUTO')
        ParentFont = False
      end
      object RLMemo4: TRLMemo
        Left = 843
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
          'DESCONTOS')
        ParentFont = False
      end
      object RLMemo5: TRLMemo
        Left = 928
        Top = 0
        Width = 80
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
          'TOTAL DE '
          'VENDA')
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 223
      Width = 1047
      Height = 40
      object RLDBMemo1: TRLDBMemo
        Left = 0
        Top = 0
        Width = 118
        Height = 40
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'FONTE'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBMemo2: TRLDBMemo
        Left = 118
        Top = 0
        Width = 105
        Height = 40
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'ID'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBMemo3: TRLDBMemo
        Left = 223
        Top = 0
        Width = 150
        Height = 40
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'CLIENTE'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBMemo4: TRLDBMemo
        Left = 373
        Top = 0
        Width = 150
        Height = 40
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'VENDEDOR'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBMemo5: TRLDBMemo
        Left = 523
        Top = 0
        Width = 80
        Height = 40
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'EMISSAO'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBMemo6: TRLDBMemo
        Left = 603
        Top = 0
        Width = 80
        Height = 40
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'QTDE'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBMemo7: TRLDBMemo
        Left = 683
        Top = 0
        Width = 80
        Height = 40
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'VL_ENTREGA'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBMemo8: TRLDBMemo
        Left = 763
        Top = 0
        Width = 80
        Height = 40
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'VL_BRUTO'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBMemo9: TRLDBMemo
        Left = 843
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
        DataField = 'VL_DESCONTO'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBMemo10: TRLDBMemo
        Left = 928
        Top = 0
        Width = 80
        Height = 40
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'VL_TOTAL'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 263
      Width = 1047
      Height = 20
      BandType = btSummary
      BeforePrint = RLBand3BeforePrint
      object RLLabel5: TRLLabel
        Left = 0
        Top = 0
        Width = 683
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
      object rlblTotal: TRLLabel
        Left = 928
        Top = 0
        Width = 80
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
      object rlblTotDesc: TRLLabel
        Left = 843
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
      object rlblTotEntrega: TRLLabel
        Left = 683
        Top = 0
        Width = 80
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
      object rlblTotBruto: TRLLabel
        Left = 763
        Top = 0
        Width = 80
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
      'select '#39'PDV'#39' fonte,a.ID,a.EMISSAO,iif(a.ID_CLIENTE is null,'#39'Ao C' +
      'onsumidor'#39',b.NOME_RAZAO) cliente,'#13#10'iif(a.ID_VENDEDOR is null,'#39'N'#227 +
      'o informado'#39',c.NOME) vendedor,'#13#10'cast(sum(d.QTDE) as numeric(18,3' +
      ')) qtde,cast(0 as numeric(10,2))vl_entrega,'#13#10'cast(coalesce(a.VL_' +
      'PRODUTO,0) as numeric(10,2))vl_bruto,cast(coalesce((a.VL_DESCONT' +
      'O),0) as numeric(10,2))vl_desconto,'#13#10'cast(coalesce(a.VL_TOTAL,0)' +
      ' as numeric(10,2))vl_total'#13#10'from PDV_MASTER a'#13#10'left outer join C' +
      'LIENTE b on (b.CODIGO = a.ID_CLIENTE)'#13#10'left outer join USUARIO c' +
      ' on (c.ID_VENDEDOR = a.ID_VENDEDOR)'#13#10'left outer join PDV_ITENS d' +
      ' on (d.TIPO = a.TIPO and d.ID = a.ID)'#13#10'left outer join PDV_RECEB' +
      'ER e on (e.TIPO = a.TIPO and e.ID = a.TIPO)'#13#10'where 1=2'#13#10'group by' +
      ' 1,2,3,4,5,7,8,9,10'
    ProviderName = 'DSPLer1'
    object dsGridFONTE: TStringField
      DisplayLabel = 'Canal de venda'
      FieldName = 'FONTE'
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object dsGridID: TIntegerField
      DisplayLabel = 'Pedido/Cupom'
      FieldName = 'ID'
      Required = True
    end
    object dsGridEMISSAO: TDateField
      DisplayLabel = 'Data'
      FieldName = 'EMISSAO'
      Required = True
    end
    object dsGridCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      ReadOnly = True
      Size = 100
    end
    object dsGridVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      ReadOnly = True
      Size = 100
    end
    object dsGridQTDE: TFMTBCDField
      DisplayLabel = 'Total produtos'
      FieldName = 'QTDE'
      ReadOnly = True
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 3
    end
    object dsGridVL_ENTREGA: TFMTBCDField
      DisplayLabel = 'Valor entrega'
      FieldName = 'VL_ENTREGA'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridVL_BRUTO: TFMTBCDField
      DisplayLabel = 'Total bruto'
      FieldName = 'VL_BRUTO'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridVL_DESCONTO: TFMTBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VL_DESCONTO'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Total de venda'
      FieldName = 'VL_TOTAL'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
  end
end

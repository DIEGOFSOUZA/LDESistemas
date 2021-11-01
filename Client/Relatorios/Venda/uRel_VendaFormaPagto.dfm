inherited Rel_VendaFormaPagto: TRel_VendaFormaPagto
  Caption = 'Rel_VendaFormaPagto'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFundo0: TPanel
    Color = 14803681
    ParentBackground = False
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
        inherited pnlVisualizaBotao: TPanel
          inherited imgVisualizar: TImage
            ExplicitTop = 80
            ExplicitWidth = 125
            ExplicitHeight = 80
          end
        end
      end
    end
    inherited pnlFundo1: TPanel
      inherited pnlGrid: TPanel
        inherited pnlRodape: TPanel
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
            Left = 365
            Top = 2
            Width = 200
            Height = 17
            Alignment = taRightJustify
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
          Columns = <
            item
              Expanded = False
              FieldName = 'FORMA'
              Width = 210
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CONDICAO'
              Width = 220
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Alignment = taRightJustify
              Width = 120
              Visible = True
            end>
        end
      end
      inherited cbbLista: TComboBox [1]
        OnClick = cbbListaClick
      end
      inherited pnlRight: TPanel [2]
        object Label5: TLabel
          Left = 1
          Top = 21
          Width = 161
          Height = 25
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'VENDAS TOTAIS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
        end
        object lblResVTot: TLabel
          Left = 1
          Top = 46
          Width = 161
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
          ExplicitLeft = 4
          ExplicitTop = 40
        end
        object Label6: TLabel
          Left = 1
          Top = 71
          Width = 161
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
        end
        object lblResDt1: TLabel
          Left = 1
          Top = 96
          Width = 161
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
        end
        object lblResDt2: TLabel
          Left = 1
          Top = 146
          Width = 161
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
          ExplicitTop = 149
        end
        object Label8: TLabel
          Left = 1
          Top = 121
          Width = 161
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
        end
        object Label7: TLabel
          Left = 1
          Top = 171
          Width = 161
          Height = 25
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'TOTAL RECEBIDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
        end
        object lblResTotRec: TLabel
          Left = 1
          Top = 196
          Width = 161
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
        end
        object Label9: TLabel
          Left = 1
          Top = 221
          Width = 161
          Height = 25
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'TOTAL A RECEBER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
        end
        object lblResTotReceber: TLabel
          Left = 1
          Top = 246
          Width = 161
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
        end
        object Label10: TLabel
          Left = 1
          Top = 271
          Width = 161
          Height = 25
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'TOTAL PER'#205'ODO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
          ExplicitLeft = 5
          ExplicitTop = 327
        end
        object lblResTotPeriodo: TLabel
          Left = 1
          Top = 296
          Width = 161
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
          ExplicitLeft = 5
          ExplicitTop = 327
        end
      end
    end
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Caption = '         VENDAS POR FORMA DE PAGAMENTO'
        ExplicitWidth = 608
        ExplicitHeight = 20
      end
    end
  end
  inherited Rel_1: TRLReport
    Left = 750
    DataSource = sGrid
    ExplicitLeft = 750
    inherited RLBand10: TRLBand
      Height = 54
      ExplicitHeight = 54
      inherited RLLabel13: TRLLabel
        Caption = '    Relat'#243'rio - Vendas: Vendas por Forma de Pagamento'
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
      Height = 20
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 218
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'FORMA DE PAGAMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 218
        Top = 0
        Width = 218
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'CONDI'#199#194'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 436
        Top = 0
        Width = 218
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'VALOR TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 203
      Width = 718
      Height = 20
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 218
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'FORMA'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 218
        Top = 0
        Width = 218
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'CONDICAO'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 436
        Top = 0
        Width = 218
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'VALOR'
        DataSource = sGrid
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 223
      Width = 718
      Height = 20
      BandType = btSummary
      BeforePrint = RLBand3BeforePrint
      object RLLabel5: TRLLabel
        Left = 0
        Top = 0
        Width = 436
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
        Left = 436
        Top = 0
        Width = 218
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'VALOR TOTAL'
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
  inherited actlst1: TActionList
    Left = 200
    Top = 184
  end
  inherited dsGrid: TClientDataSet
    CommandText = 
      'select cast(iif(a.FORMA_PAGTO = '#39'CREDIARIO'#39','#39'CREDIARIO'#39',b.DESCRI' +
      'CAO) as varchar(60)) forma,'#13#10'cast(iif(a.FORMA_PAGTO = '#39'CREDIARIO' +
      #39',d.DESCRICAO,'#39'A VISTA'#39') as varchar(50)) condicao,'#13#10'cast(sum(a.V' +
      'ALOR) as numeric(10,2))valor '#13#10'from PDV_RECEBER a'#13#10'left outer jo' +
      'in HISTORICO b on (b.ID = a.ID_HISTORICO)'#13#10'left outer join PDV_M' +
      'ASTER c on (c.TIPO = a.TIPO and c.ID = a.ID)'#13#10'left outer join CO' +
      'NDPAGTO d on (d.CODIGO = c.ID_CREDIARIO)'#13#10'where 1=2'#13#10'group by 1,' +
      '2'
    ProviderName = 'DSPLer1'
    Left = 120
    object dsGridFORMA: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'FORMA'
      Origin = 'FORMA'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object dsGridCONDICAO: TStringField
      DisplayLabel = 'Condi'#231#227'o'
      FieldName = 'CONDICAO'
      Origin = 'CONDICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object dsGridVALOR: TFMTBCDField
      DisplayLabel = 'Valor Total R$'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
  end
end

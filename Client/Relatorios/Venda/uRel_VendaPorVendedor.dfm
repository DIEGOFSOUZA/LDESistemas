inherited Rel_VendaPorVendedor: TRel_VendaPorVendedor
  Caption = 'Rel_VendaPorVendedor'
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
      inherited cbbLista: TComboBox [0]
        OnClick = cbbListaClick
      end
      inherited pnlGrid: TPanel [1]
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
          object lblRodapeTotal: TLabel
            Left = 469
            Top = 2
            Width = 86
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
          object lblRodapeQtde: TLabel
            Left = 379
            Top = 2
            Width = 86
            Height = 17
            Alignment = taRightJustify
            AutoSize = False
            Caption = '0,000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblRodapeComissao: TLabel
            Left = 297
            Top = 2
            Width = 86
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
          Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          Columns = <
            item
              Expanded = False
              FieldName = 'VENDEDOR'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRODUTO'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'COMISSAO'
              Title.Alignment = taRightJustify
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE'
              Title.Alignment = taRightJustify
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_TOTAL'
              Title.Alignment = taRightJustify
              Width = 90
              Visible = True
            end>
        end
      end
      inherited pnlRight: TPanel [2]
        inherited lblTitBanco: TLabel
          ExplicitLeft = 1
          ExplicitTop = 0
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
          ExplicitLeft = 2
          ExplicitTop = 9
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
        object lblResTotVenda: TLabel
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
          ExplicitLeft = 6
          ExplicitTop = 15
        end
        object Label5: TLabel
          Left = 1
          Top = 21
          Width = 161
          Height = 25
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
          ExplicitLeft = 6
          ExplicitTop = -10
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
          ExplicitTop = 40
        end
        object Label7: TLabel
          Left = 1
          Top = 171
          Width = 161
          Height = 25
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'VENDAS POR VENDEDOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Layout = tlBottom
          ExplicitLeft = 21
          ExplicitTop = 229
        end
        object pnlGridResumo: TPanel
          Left = 1
          Top = 196
          Width = 161
          Height = 147
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnlGridResumo'
          ShowCaption = False
          TabOrder = 0
          object dbgrdResumo: TDBGrid
            Left = 0
            Top = 0
            Width = 161
            Height = 147
            Align = alClient
            DataSource = sGResumo
            DrawingStyle = gdsGradient
            GradientEndColor = 13864803
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = dbgrdResumoDrawColumnCell
            OnTitleClick = dbgrd1TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'NOME'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Width = 90
                Visible = True
              end>
          end
        end
      end
    end
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Caption = '         VENDAS POR VENDEDOR'
      end
    end
  end
  inherited Rel_1: TRLReport
    DataSource = sGrid
    inherited RLBand10: TRLBand
      Height = 54
      ExplicitHeight = 54
      inherited RLLabel13: TRLLabel
        Caption = '    Relat'#243'rio - Vendas: Vendas por Vendedor'
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
    object RLBand2: TRLBand
      Left = 38
      Top = 203
      Width = 718
      Height = 20
      object RLDBMemo1: TRLDBMemo
        Left = 0
        Top = 0
        Width = 150
        Height = 20
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
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
        Layout = tlBottom
        ParentFont = False
      end
      object RLDBMemo2: TRLDBMemo
        Left = 150
        Top = 0
        Width = 210
        Height = 20
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
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
      object RLDBMemo3: TRLDBMemo
        Left = 360
        Top = 0
        Width = 120
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'COMISSAO'
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
        Left = 480
        Top = 0
        Width = 92
        Height = 20
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
        Layout = tlBottom
        ParentFont = False
      end
      object RLDBMemo5: TRLDBMemo
        Left = 572
        Top = 0
        Width = 120
        Height = 20
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
        Layout = tlBottom
        ParentFont = False
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
        Width = 360
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
      object rlblComissao: TRLLabel
        Left = 360
        Top = 0
        Width = 120
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
      object rlblVlTotal: TRLLabel
        Left = 572
        Top = 0
        Width = 120
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
      object rlblQtde: TRLLabel
        Left = 480
        Top = 0
        Width = 92
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
        Width = 150
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'VENDEDOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 150
        Top = 0
        Width = 210
        Height = 20
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'PRODUTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 360
        Top = 0
        Width = 120
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'COMISS'#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 480
        Top = 0
        Width = 92
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 572
        Top = 0
        Width = 120
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
  inherited dsGrid: TClientDataSet
    CommandText = 
      'select d.NOME vendedor,c.NOME produto,'#13#10'cast(((coalesce(d.COMISS' +
      'AO,0)/100)*sum(b.VL_TOTAL)) as numeric(10,2)) comissao,'#13#10'sum(b.Q' +
      'TDE) qtde,cast(sum(b.VL_TOTAL) as numeric(10,2)) vl_total'#13#10'from ' +
      'PDV_MASTER a'#13#10'left outer join PDV_ITENS b on (b.ID = a.ID and b.' +
      'TIPO = a.TIPO)'#13#10'left outer join PRODUTO c on (c.CODIGO = b.ID_PR' +
      'ODUTO)'#13#10'left outer join USUARIO d on (d.ID_VENDEDOR = a.ID_VENDE' +
      'DOR)'#13#10'where 1=2'#13#10'group by 1,2,d.COMISSAO'
    ProviderName = 'DSPLer1'
    object dsGridVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Size = 100
    end
    object dsGridPRODUTO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Size = 100
    end
    object dsGridCOMISSAO: TFMTBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'COMISSAO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridQTDE: TFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDE'
      DisplayFormat = '#,##0'
      Precision = 18
      Size = 3
    end
    object dsGridVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsGridResumo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 242
    Top = 282
    object dsGridResumoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object dsGridResumoVALOR: TCurrencyField
      FieldName = 'VALOR'
      DisplayFormat = 'R$ #,##0.00'
    end
  end
  object sGResumo: TDataSource
    DataSet = dsGridResumo
    Left = 298
    Top = 298
  end
end

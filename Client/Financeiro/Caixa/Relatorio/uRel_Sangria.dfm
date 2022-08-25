inherited Rel_Sangria: TRel_Sangria
  Caption = 'Rel_Sangria'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFundo0: TPanel
    inherited pnlTopo: TPanel
      inherited pnlPeriodo: TPanel
        inherited pnlGerar: TPanel
          inherited btnGerar: TSpeedButton
            ExplicitTop = -6
            ExplicitWidth = 25
            ExplicitHeight = 25
          end
        end
      end
      inherited pnlVisualizar: TPanel
        inherited Label3: TLabel
          Width = 85
        end
      end
      inherited chkExibirResumo: TCheckBox
        Visible = False
      end
    end
    inherited pnlFundo1: TPanel
      inherited pnlRight: TPanel [0]
      end
      inherited pnlGrid: TPanel [1]
        inherited pnlRodape: TPanel
          object lblQtdeRegistros: TLabel
            Left = 8
            Top = 2
            Width = 201
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
            Left = 525
            Top = 2
            Width = 44
            Height = 17
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
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
              FieldName = 'DATA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENTSAI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INF'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USUARIO'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FORMA_PAGTO'
              Width = 150
              Visible = True
            end>
        end
      end
      inherited cbbLista: TComboBox
        OnClick = cbbListaClick
      end
    end
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        Caption = '         SANGRIA - MOVIMENTA'#199#213'ES DO CAIXA'
      end
    end
  end
  inherited Rel_1: TRLReport
    DataSource = sGrid
    inherited RLBand10: TRLBand
      Height = 54
      ExplicitHeight = 54
      inherited RLLabel13: TRLLabel
        Caption = '    Relat'#243'rio - Caixa: Sangria - Movimenta'#231#245'es'
      end
      object RLLabel16: TRLLabel
        Left = 8
        Top = 28
        Width = 74
        Height = 20
        Caption = 'Apurua'#231#227'o:'
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
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 183
      Width = 718
      Height = 40
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 80
        Height = 40
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
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
      object RLLabel4: TRLLabel
        Left = 170
        Top = 0
        Width = 100
        Height = 40
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'VALOR R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 270
        Top = 0
        Width = 270
        Height = 40
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'INFORMA'#199#194'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 540
        Top = 0
        Width = 85
        Height = 40
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'USU'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        Layout = tlCenter
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 624
        Top = 0
        Width = 93
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
          'FORMA DE'
          'PAGAMENTO')
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
      object RLMemo6: TRLMemo
        Left = 80
        Top = 0
        Width = 90
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
          'ENTRADA /'
          'SA'#205'DA')
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 223
      Width = 718
      Height = 20
      object RLDBMemo1: TRLDBMemo
        Left = 0
        Top = 0
        Width = 80
        Height = 20
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'DATA'
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
        Left = 80
        Top = 0
        Width = 90
        Height = 20
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'ENTSAI'
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
        Left = 170
        Top = 0
        Width = 100
        Height = 20
        Alignment = taRightJustify
        AutoSize = False
        Behavior = [beSiteExpander]
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
        Layout = tlCenter
        ParentFont = False
      end
      object RLDBMemo4: TRLDBMemo
        Left = 270
        Top = 0
        Width = 270
        Height = 20
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'INF'
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
        Left = 540
        Top = 0
        Width = 85
        Height = 20
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'USUARIO'
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
        Left = 625
        Top = 0
        Width = 93
        Height = 20
        AutoSize = False
        Behavior = [beSiteExpander]
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataField = 'FORMA_PAGTO'
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
      Top = 243
      Width = 718
      Height = 20
      BandType = btSummary
      BeforePrint = RLBand3BeforePrint
      object RLLabel5: TRLLabel
        Left = 0
        Top = 0
        Width = 270
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
      object rlblTotBruto: TRLLabel
        Left = 763
        Top = 0
        Width = 79
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
      object rlblTotais: TRLLabel
        Left = 270
        Top = 0
        Width = 448
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
  inherited actlst1: TActionList
    Left = 112
    Top = 112
  end
  inherited dsGrid: TClientDataSet
    CommandText = 
      'SELECT'#13#10#9'CAST (ces.DATA_HORA AS date)DATA,'#13#10#9'iif(ces.VALOR < 0,'#13 +
      #10#9#39'SAIDA'#39','#13#10#9#39'ENTRADA'#39')entsai,'#13#10#9'CAST (iif(ces.VALOR < 0,'#13#10#9'ces.' +
      'VALOR*-1,'#13#10#9'ces.VALOR) AS NUMERIC(10,'#13#10#9'2))valor,'#13#10#9'CAST(upper (' +
      'ces.OBS) AS varchar(500)) inf,'#13#10#9'ces.USUARIO,'#13#10#9'ces.FORMA_PAGTO'#13 +
      #10'FROM'#13#10#9'CAIXA_ENT_SAI ces'#13#10'WHERE 1 = 2'
    FieldDefs = <
      item
        Name = 'DATA'
        Attributes = [faReadonly]
        DataType = ftDate
      end
      item
        Name = 'ENTSAI'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'VALOR'
        Attributes = [faReadonly]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'INF'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 500
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FORMA_PAGTO'
        DataType = ftString
        Size = 30
      end>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    StoreDefs = True
    object dsGridDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object dsGridENTSAI: TStringField
      DisplayLabel = 'Entrada/Sa'#237'da'
      FieldName = 'ENTSAI'
      Origin = 'ENTSAI'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 7
    end
    object dsGridVALOR: TFMTBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 30
    end
    object dsGridFORMA_PAGTO: TStringField
      DisplayLabel = 'Forma de Pagto.'
      FieldName = 'FORMA_PAGTO'
      Origin = 'FORMA_PAGTO'
      Size = 30
    end
    object dsGridINF: TStringField
      FieldName = 'INF'
      ReadOnly = True
      Size = 500
    end
  end
  inherited RLPDFFilter1: TRLPDFFilter
    Left = 408
    Top = 72
  end
  inherited RLXLSFilter1: TRLXLSFilter
    Left = 488
    Top = 64
  end
end

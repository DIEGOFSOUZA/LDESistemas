inherited Frm_PedidoVenda_NovoProduto: TFrm_PedidoVenda_NovoProduto
  Caption = 'Frm_PedidoVenda_NovoProduto'
  ClientHeight = 437
  ClientWidth = 688
  ExplicitWidth = 688
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 688
    ExplicitWidth = 688
    inherited lblTitulo: TLabel
      Width = 663
      Caption = '         CRIA'#199#195'O DE NOVO PRODUTO'
      Color = 10114859
      ExplicitLeft = -6
      ExplicitTop = -2
      ExplicitWidth = 796
    end
    inherited pnlBotaoSair: TPanel
      Left = 663
      Visible = False
      ExplicitLeft = 663
      ExplicitTop = 0
      ExplicitHeight = 30
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 30
    Width = 688
    Height = 407
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 688
      Height = 99
      Align = alTop
      TabOrder = 0
      object Label4: TLabel
        Left = 29
        Top = 1
        Width = 63
        Height = 17
        Caption = 'MATERIAL*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 29
        Top = 49
        Width = 85
        Height = 17
        Caption = 'QUANTIDADE*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 158
        Top = 49
        Width = 84
        Height = 17
        Caption = 'UNIT'#193'RIO (R$)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 287
        Top = 49
        Width = 62
        Height = 17
        Caption = 'TOTAL (R$)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edpesMatPrima: TEdPesquisa
        Left = 23
        Top = 20
        Width = 488
        Height = 25
        PermitirBranco = Sim
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 3
        Titulo.Height = 13
        Titulo.Caption = ' '
        Mostrar.Left = 87
        Mostrar.Top = 0
        Mostrar.Width = 400
        Mostrar.Height = 25
        Mostrar.TabStop = False
        Mostrar.Font.Charset = ANSI_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -13
        Mostrar.Font.Name = 'Segoe UI'
        Mostrar.Font.Style = []
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 5
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 25
        Campo.CharCase = ecUpperCase
        Campo.Font.Charset = ANSI_CHARSET
        Campo.Font.Color = clWindowText
        Campo.Font.Height = -13
        Campo.Font.Name = 'Segoe UI'
        Campo.Font.Style = []
        Campo.ParentFont = False
        Campo.TabOrder = 0
        TabOrder = 0
        TabStop = True
      end
      object edtQtde: TEdit
        Left = 29
        Top = 68
        Width = 121
        Height = 25
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '0,00'
      end
      object Edit1: TEdit
        Left = 158
        Top = 68
        Width = 121
        Height = 25
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = '0,00'
      end
      object Edit2: TEdit
        Left = 287
        Top = 68
        Width = 121
        Height = 25
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = '0,00'
      end
      object pnlAdicionarMat: TPanel
        Left = 437
        Top = 34
        Width = 92
        Height = 32
        BevelOuter = bvNone
        Caption = 'pnlAddMovimentacao'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        object lblAdicionarMat: TLabel
          Left = 0
          Top = 0
          Width = 92
          Height = 32
          Align = alClient
          Alignment = taCenter
          Caption = 'INCLUIR'#13#10'NO PEDIDO'
          Color = 7237230
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
          ExplicitWidth = 71
          ExplicitHeight = 34
        end
      end
    end
    object pnlBotton: TPanel
      Left = 0
      Top = 358
      Width = 688
      Height = 49
      Align = alBottom
      TabOrder = 2
      object pnlGravar: TPanel
        Left = 581
        Top = 9
        Width = 92
        Height = 32
        BevelOuter = bvNone
        Caption = 'pnlAddMovimentacao'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        object lblGravar: TLabel
          Left = 0
          Top = 0
          Width = 92
          Height = 32
          Align = alClient
          Alignment = taCenter
          Caption = 'INCLUIR'#13#10'NO PEDIDO'
          Color = 7237230
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
          ExplicitWidth = 71
          ExplicitHeight = 34
        end
      end
      object pnlCancelar: TPanel
        Left = 464
        Top = 9
        Width = 85
        Height = 32
        BevelOuter = bvNone
        Caption = 'pnlAddMovimentacao'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        object lblCancelar: TLabel
          Left = 0
          Top = 0
          Width = 85
          Height = 32
          Align = alClient
          Alignment = taCenter
          Caption = 'CANCELAR'
          Color = 7237230
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          ExplicitWidth = 59
          ExplicitHeight = 15
        end
      end
    end
    object pnlClient: TPanel
      Left = 0
      Top = 99
      Width = 688
      Height = 259
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnlClientBotton: TPanel
        Left = 0
        Top = 234
        Width = 688
        Height = 25
        Align = alBottom
        BevelOuter = bvNone
        Color = 16764573
        ParentBackground = False
        TabOrder = 2
        object Label6: TLabel
          Left = 482
          Top = 4
          Width = 87
          Height = 17
          Caption = 'SUBTOTAL (R$)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblItensSubTotal: TLabel
          Left = 571
          Top = 4
          Width = 102
          Height = 17
          AutoSize = False
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object dbgrdItens: TDBGrid
        Left = 0
        Top = 0
        Width = 668
        Height = 234
        Align = alClient
        DataSource = dsMatPrima
        DrawingStyle = gdsGradient
        GradientEndColor = 13864803
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'MATPRIMA'
            Width = 350
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UND'
            Title.Alignment = taCenter
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNITARIO'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Width = 90
            Visible = True
          end>
      end
      object pnlClientRight: TPanel
        Left = 668
        Top = 0
        Width = 20
        Height = 234
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
  end
  inherited actlst1: TActionList
    Left = 240
    Top = 192
  end
  object cdsMatPrima: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'MATPRIMA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'QTDE'
        DataType = ftFloat
      end
      item
        Name = 'UND'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'UNITARIO'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsMatPrimaCalcFields
    Left = 400
    Top = 232
    object cdsMatPrimaMATPRIMA: TStringField
      DisplayLabel = 'MATERIAL'
      FieldName = 'MATPRIMA'
      Size = 100
    end
    object cdsMatPrimaQTDE: TFloatField
      DisplayLabel = 'QUANTIDADE'
      FieldName = 'QTDE'
      DisplayFormat = '#,##0.000'
    end
    object cdsMatPrimaUND: TStringField
      FieldName = 'UND'
      Size = 10
    end
    object cdsMatPrimaUNITARIO: TCurrencyField
      DisplayLabel = 'UNITARIO(R$)'
      FieldName = 'UNITARIO'
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsMatPrimaTOTAL: TCurrencyField
      DisplayLabel = 'TOTAL(R$)'
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      DisplayFormat = 'R$ #,##0.00'
      currency = False
      Calculated = True
    end
    object cdsMatPrimaSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      DisplayName = ''
      Expression = 'sum(total)'
    end
  end
  object dsMatPrima: TDataSource
    DataSet = cdsMatPrima
    Left = 488
    Top = 240
  end
end

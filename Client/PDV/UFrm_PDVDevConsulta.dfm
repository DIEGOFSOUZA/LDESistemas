inherited Frm_PDVDevConsulta: TFrm_PDVDevConsulta
  Caption = 'Frm_PDVDevConsulta'
  ClientHeight = 641
  ClientWidth = 749
  OnCreate = FormCreate
  ExplicitWidth = 749
  ExplicitHeight = 641
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 749
    ExplicitWidth = 749
    inherited lblTitulo: TLabel
      Width = 724
      Caption = '         VENDAS'
      ExplicitWidth = 724
    end
    inherited pnlBotaoSair: TPanel
      Left = 724
      ExplicitLeft = 724
      ExplicitTop = 0
      ExplicitHeight = 30
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 30
    Width = 749
    Height = 611
    Align = alClient
    BevelOuter = bvNone
    Color = 14803681
    ParentBackground = False
    TabOrder = 1
    object pnlConsulta: TPanel
      Left = 0
      Top = 0
      Width = 749
      Height = 75
      Align = alTop
      TabOrder = 0
      object Label2: TLabel
        Left = 14
        Top = 21
        Width = 77
        Height = 17
        Caption = 'FILTRAR POR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object pnlData: TPanel
        Left = 112
        Top = 12
        Width = 103
        Height = 63
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 8
          Width = 30
          Height = 17
          Caption = 'DATA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object dtp1: TDateTimePicker
          Left = 6
          Top = 29
          Width = 90
          Height = 25
          Date = 44315.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.549263969907769900
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edtCupomKeyPress
        end
      end
      object pnlCupom: TPanel
        Left = 224
        Top = 12
        Width = 103
        Height = 63
        BevelOuter = bvNone
        TabOrder = 1
        object Label3: TLabel
          Left = 6
          Top = 8
          Width = 46
          Height = 17
          Caption = 'CUPOM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtCupom: TEdit
          Left = 6
          Top = 29
          Width = 90
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edtCupomKeyPress
        end
      end
      object cbbFIltro: TComboBox
        Left = 14
        Top = 42
        Width = 81
        Height = 25
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 3
        Text = 'DATA'
        OnChange = cbbFIltroChange
        Items.Strings = (
          'DATA'
          'CUPOM')
      end
      object pnlFiltrar: TPanel
        Left = 338
        Top = 37
        Width = 110
        Height = 30
        BevelOuter = bvNone
        Caption = 'pnlIncluiCondPagto'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 2
        TabStop = True
        object btnFiltrar: TSpeedButton
          Left = 0
          Top = 0
          Width = 110
          Height = 30
          Cursor = crHandPoint
          Action = actFiltrar
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          ExplicitLeft = 1
          ExplicitTop = 7
          ExplicitWidth = 23
          ExplicitHeight = 23
        end
      end
    end
    object pnlVendas: TPanel
      Left = 0
      Top = 106
      Width = 749
      Height = 505
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 2
      object pnlAcoes: TPanel
        Left = 618
        Top = 1
        Width = 130
        Height = 503
        Align = alRight
        TabOrder = 1
        ExplicitLeft = 624
        ExplicitTop = 6
        object pnlTroca: TPanel
          Left = 10
          Top = 127
          Width = 110
          Height = 30
          BevelOuter = bvNone
          Caption = 'pnlIncluiCondPagto'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          TabStop = True
          object btnTroca: TSpeedButton
            Left = 0
            Top = 0
            Width = 110
            Height = 30
            Cursor = crHandPoint
            Action = actTroca
            Align = alClient
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            ExplicitLeft = -4
          end
        end
        object pnlImprimir: TPanel
          Left = 10
          Top = 237
          Width = 110
          Height = 30
          BevelOuter = bvNone
          Caption = 'pnlIncluiCondPagto'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 1
          TabStop = True
          object btnImpressao: TSpeedButton
            Left = 0
            Top = 0
            Width = 110
            Height = 30
            Cursor = crHandPoint
            Action = actImpressao
            Align = alClient
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            ExplicitLeft = 1
            ExplicitTop = 7
            ExplicitWidth = 23
            ExplicitHeight = 23
          end
        end
        object pnlCancelarVenda: TPanel
          Left = 10
          Top = 347
          Width = 110
          Height = 30
          BevelOuter = bvNone
          Caption = 'pnlIncluiCondPagto'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 2
          TabStop = True
          object btnCancelarVenda: TSpeedButton
            Left = 0
            Top = 0
            Width = 110
            Height = 30
            Cursor = crHandPoint
            Action = actCancelarVenda
            Align = alClient
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            ExplicitLeft = -4
          end
        end
      end
      object pnlGrid: TPanel
        Left = 1
        Top = 1
        Width = 617
        Height = 503
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object dbgrdVendas: TDBGrid
          Left = 0
          Top = 0
          Width = 617
          Height = 503
          Align = alClient
          DataSource = dsVenda
          DrawingStyle = gdsGradient
          GradientEndColor = 13864803
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
              FieldName = 'EMISSAO'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_RAZAO'
              Width = 363
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VL_TOTAL'
              Width = 100
              Visible = True
            end>
        end
      end
    end
    object pnlTitVendas: TPanel
      Left = 0
      Top = 75
      Width = 749
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label4: TLabel
        Left = 8
        Top = 16
        Width = 110
        Height = 17
        AutoSize = False
        Caption = 'DATA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 118
        Top = 16
        Width = 363
        Height = 17
        AutoSize = False
        Caption = 'CLIENTE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 481
        Top = 16
        Width = 124
        Height = 17
        AutoSize = False
        Caption = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited actlst1: TActionList
    Left = 80
    Top = 344
    object actTroca: TAction
      Caption = 'DEVOLVER ITEM'
      OnExecute = actTrocaExecute
    end
    object actImpressao: TAction
      Caption = 'IMPRIMIR'
      OnExecute = actImpressaoExecute
    end
    object actCancelarVenda: TAction
      Caption = 'CANCELAR'
      Hint = 'CANCELAR A VENDA'
      OnExecute = actCancelarVendaExecute
    end
    object actFiltrar: TAction
      Caption = 'LOCALIZAR'
      OnExecute = actFiltrarExecute
    end
  end
  object dsVenda: TDataSource
    DataSet = cdsVenda
    Left = 377
    Top = 359
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select pm.tipo,pm.id,pm.emissao,pm.vl_total,c.nome_razao,pm.stat' +
      'us,c.cliente_default'#13#10'from pdv_master pm'#13#10'left join cliente c on' +
      ' (c.codigo=pm.id_cliente)'#13#10'where 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    Left = 377
    Top = 311
    object cdsVendaTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsVendaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsVendaEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object cdsVendaVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsVendaNOME_RAZAO: TStringField
      FieldName = 'NOME_RAZAO'
      ReadOnly = True
      Size = 100
    end
    object cdsVendaSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsVendaCLIENTE_DEFAULT: TStringField
      FieldName = 'CLIENTE_DEFAULT'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
end

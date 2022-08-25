inherited Rel_ClienteNaoComprou: TRel_ClienteNaoComprou
  Caption = 'Rel_ClienteNaoComprou'
  ClientHeight = 523
  OnCreate = FormCreate
  ExplicitHeight = 523
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    DataSource = dsMaster
    object RLBand2: TRLBand
      Left = 38
      Top = 154
      Width = 718
      Height = 34
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLLabel5: TRLLabel
        Left = 11
        Top = 2
        Width = 70
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 85
        Top = 2
        Width = 290
        Height = 30
        AutoSize = False
        Caption = 'NOME/RAZ'#195'O SOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
        Transparent = False
      end
      object RLLabel7: TRLLabel
        Left = 379
        Top = 2
        Width = 110
        Height = 30
        AutoSize = False
        Caption = 'CEL/FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 597
        Top = 2
        Width = 110
        Height = 30
        AutoSize = False
        Caption = 'VALOR R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlBottom
        ParentFont = False
        Transparent = False
      end
      object RLMemo1: TRLMemo
        Left = 493
        Top = 2
        Width = 100
        Height = 30
        AutoSize = False
        Behavior = [beSiteExpander]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = tlBottom
        Lines.Strings = (
          'DATA '
          #218'LTIMA COMPRA')
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 188
      Width = 718
      Height = 18
      object RLDBText5: TRLDBText
        Left = 11
        Top = 0
        Width = 70
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'CODIGO'
        DataSource = dsMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 85
        Top = 0
        Width = 290
        Height = 16
        AutoSize = False
        DataField = 'NOME'
        DataSource = dsMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 379
        Top = 0
        Width = 110
        Height = 16
        AutoSize = False
        DataField = 'FONE'
        DataSource = dsMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 597
        Top = 0
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VALOR'
        DataSource = dsMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText1: TRLDBText
        Left = 493
        Top = 0
        Width = 100
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'DATA_ULTIMACOMPRA'
        DataSource = dsMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  inherited pnlFundo: TPanel
    inherited pnlClient: TPanel
      object Label1: TLabel
        Left = 21
        Top = 0
        Width = 16
        Height = 17
        Caption = 'DE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 141
        Top = 0
        Width = 22
        Height = 17
        Caption = 'AT'#201
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dtp1: TDateTimePicker
        Left = 21
        Top = 19
        Width = 105
        Height = 25
        Date = 44129.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 0.685025972219591500
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dtp2: TDateTimePicker
        Left = 141
        Top = 19
        Width = 105
        Height = 25
        Date = 44129.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 0.685025972219591500
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object cdsMaster: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select'#13#10'  c.codigo,'#13#10'  c.nome_razao nome,'#13#10'  cast(coalesce(c.ddd' +
      '_cel|| c.cel,c.ddd_fone|| c.telefone1) as varchar(18))  fone,'#13#10' ' +
      ' c.data_ultimacompra,'#13#10'  (select first 1 p.vl_total from pdv_mas' +
      'ter p where p.id_cliente = c.codigo and p.emissao = c.data_ultim' +
      'acompra)VALOR'#13#10'from cliente c'#13#10'where 1=2'#13#10'order by c.codigo;'#13#10
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    Left = 379
    Top = 86
    object cdsMasterCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsMasterNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsMasterFONE: TStringField
      FieldName = 'FONE'
      Size = 18
    end
    object cdsMasterDATA_ULTIMACOMPRA: TDateField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object cdsMasterVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsMaster: TDataSource
    DataSet = cdsMaster
    Left = 376
    Top = 142
  end
end

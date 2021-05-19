inherited Rel_ContasAPagar: TRel_ContasAPagar
  Width = 1007
  AutoScroll = True
  Caption = 'Rel_ContasAPagar'
  Visible = False
  ExplicitWidth = 1007
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Left = 22
    Top = 8
    DataSource = ds1
    BeforePrint = RelatorioBeforePrint
    ExplicitLeft = 22
    ExplicitTop = 8
    object RLBand2: TRLBand
      Left = 38
      Top = 84
      Width = 718
      Height = 41
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 6
        Top = 24
        Width = 60
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'N'#186' N.F'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel2: TRLLabel
        Left = 70
        Top = 24
        Width = 85
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Data Emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 159
        Top = 24
        Width = 60
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Duplicata'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 215
        Top = 24
        Width = 74
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 507
        Top = 24
        Width = 90
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 657
        Top = 24
        Width = 55
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 125
      Width = 718
      Height = 17
      BeforePrint = RLBand3BeforePrint
      object RLDBText1: TRLDBText
        Left = 6
        Top = 1
        Width = 60
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'N_NF'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 70
        Top = 1
        Width = 85
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'EMISSAO'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 159
        Top = 1
        Width = 52
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'NDUP'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 215
        Top = 1
        Width = 280
        Height = 16
        AutoSize = False
        DataField = 'FORNECEDOR'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 507
        Top = 1
        Width = 90
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'DVENC'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 602
        Top = 1
        Width = 110
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'VDUP'
        DataSource = ds1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 142
      Width = 718
      Height = 35
      BandType = btSummary
      BeforePrint = RLBand4BeforePrint
      object rlblTotal: TRLLabel
        Left = 507
        Top = 2
        Width = 205
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object ds1: TDataSource
    DataSet = cdsReport
    Left = 544
    Top = 216
  end
  object cdsReport: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select a.ID ID_NOTA,a.EMISSAO,a.N_NF,'#13#10'b.RAZAO_NOME fornecedor,'#13 +
      #10'c.NDUP,c.DVENC,c.VDUP,c.BAIXA_DATA,c.BAIXA_VALOR,'#13#10'c.BAIXA_USUA' +
      'RIO,c.ID_HISTORICO ID_HISTORICODUP,c.ID_CONTA,'#13#10'c.ID_CAIXA,cast(' +
      #39#39' as char(1)) baixada,'#13#10'c.VDESC,c.VJUROS,c.CHEQUE_NUMERO,d.DT_C' +
      'OMPENSA'#13#10'from NOTA_ENTRADA a'#13#10'left outer join FABRICANTE b on (b' +
      '.CODIGO = a.CODFOR)'#13#10'left outer join NOTA_ENTRADA_PAGAR c on (c.' +
      'ID_NOTAENTRADA = a.ID)'#13#10'left outer join CHEQUE d on (d.id_banco ' +
      '= c.id_conta and d.num_cheque = c.cheque_numero)'#13#10'WHERE'#13#10'    1 =' +
      ' 2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 488
    Top = 208
    object cdsReportID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Required = True
    end
    object cdsReportEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object cdsReportN_NF: TIntegerField
      FieldName = 'N_NF'
      DisplayFormat = '000'
    end
    object cdsReportFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ReadOnly = True
      Size = 60
    end
    object cdsReportNDUP: TIntegerField
      FieldName = 'NDUP'
      ReadOnly = True
      DisplayFormat = '00'
    end
    object cdsReportDVENC: TDateField
      FieldName = 'DVENC'
      ReadOnly = True
    end
    object cdsReportVDUP: TFMTBCDField
      FieldName = 'VDUP'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsReportBAIXA_DATA: TDateField
      FieldName = 'BAIXA_DATA'
      ReadOnly = True
    end
    object cdsReportBAIXA_VALOR: TFMTBCDField
      FieldName = 'BAIXA_VALOR'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object cdsReportBAIXA_USUARIO: TStringField
      FieldName = 'BAIXA_USUARIO'
      ReadOnly = True
    end
    object cdsReportID_HISTORICODUP: TIntegerField
      FieldName = 'ID_HISTORICODUP'
      ReadOnly = True
    end
    object cdsReportID_CONTA: TStringField
      FieldName = 'ID_CONTA'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object cdsReportID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      ReadOnly = True
    end
    object cdsReportBAIXADA: TStringField
      FieldName = 'BAIXADA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object cdsReportVDESC: TFMTBCDField
      FieldName = 'VDESC'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object cdsReportVJUROS: TFMTBCDField
      FieldName = 'VJUROS'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object cdsReportCHEQUE_NUMERO: TIntegerField
      FieldName = 'CHEQUE_NUMERO'
      ReadOnly = True
    end
    object cdsReportDT_COMPENSA: TDateField
      FieldName = 'DT_COMPENSA'
      ReadOnly = True
    end
  end
end

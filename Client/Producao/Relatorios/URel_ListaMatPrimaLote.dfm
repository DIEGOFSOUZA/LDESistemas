inherited Rel_ListaMatPrimaLote: TRel_ListaMatPrimaLote
  Caption = 'Rel_ListaMatPrimaLote'
  ClientHeight = 612
  ClientWidth = 968
  Visible = False
  ExplicitWidth = 984
  ExplicitHeight = 651
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Top = 70
    DataSource = dsMatPrima
    ExplicitTop = 70
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 145
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object rlpnlEmpresa: TRLPanel
        Left = 0
        Top = 0
        Width = 305
        Height = 144
        Align = faLeft
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        object rlblEmpFantasia: TRLLabel
          Left = 0
          Top = 2
          Width = 304
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'NOME FANTASIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlblEmpRazao: TRLLabel
          Left = 0
          Top = 27
          Width = 304
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'RAZAO SOCIAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object rlblEmpCNPJINSC: TRLLabel
          Left = 0
          Top = 47
          Width = 304
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'CNPJ: 00.000.000/0000-00  - IE: 000.000.000.000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object rlblEmpEndereco: TRLLabel
          Left = 0
          Top = 67
          Width = 304
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'ENDERECO, 000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object rlblEmpBairroCidadeUF: TRLLabel
          Left = 0
          Top = 87
          Width = 304
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'BAIRRO - CIDADE - UF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object rlblEmpFones: TRLLabel
          Left = 0
          Top = 107
          Width = 304
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'FONE: (00)0000-0000  - CEL: (00)0 0000-0000'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object rlblEmailSite: TRLLabel
          Left = 0
          Top = 127
          Width = 304
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'EMAIL: aaaaaaaaaa@aaaaaaaa.com.br'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
      end
      object rlpnlInfo: TRLPanel
        Left = 634
        Top = 0
        Width = 84
        Height = 144
        Align = faRight
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object RLSystemInfo1: TRLSystemInfo
          Left = 1
          Top = 0
          Width = 83
          Height = 14
          Align = faTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itPageNumber
          ParentFont = False
          Text = 'Pag.: '
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 1
          Top = 14
          Width = 83
          Height = 14
          Align = faTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 1
          Top = 28
          Width = 83
          Height = 14
          Align = faTop
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Info = itHour
          ParentFont = False
          Text = ''
        end
      end
      object rlblNomeRelatorio: TRLLabel
        Left = 306
        Top = 1
        Width = 322
        Height = 18
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object rlMemoParametros: TRLMemo
        Left = 307
        Top = 25
        Width = 321
        Height = 14
        Behavior = [beSiteExpander]
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 223
      Width = 718
      Height = 22
      object RLDBText1: TRLDBText
        Left = 12
        Top = 1
        Width = 454
        Height = 17
        AutoSize = False
        DataField = 'NOME'
        DataSource = dsMatPrima
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 474
        Top = 1
        Width = 142
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TOTAL'
        DataSource = dsMatPrima
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 627
        Top = 1
        Width = 86
        Height = 17
        AutoSize = False
        DataField = 'UNIDADE'
        DataSource = dsMatPrima
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 183
      Width = 718
      Height = 40
      BandType = btColumnHeader
      object RLPanel1: TRLPanel
        Left = 0
        Top = 12
        Width = 718
        Height = 28
        Align = faBottom
        Color = cl3DLight
        ParentColor = False
        Transparent = False
        object Label1: TLabel
          Left = 12
          Top = 10
          Width = 101
          Height = 17
          Caption = 'MAT'#201'RIA-PRIMA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object Label2: TLabel
          Left = 474
          Top = 10
          Width = 142
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'QUANTIDADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object Label3: TLabel
          Left = 627
          Top = 11
          Width = 21
          Height = 17
          Caption = 'UM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
    end
  end
  object cdsMatPrima: TClientDataSet
    Aggregates = <>
    CommandText = 
      'with juncao as'#13#10'('#13#10'SELECT b.CODIGO,b.NOME,cast((a.QTDE * c.QTDE)' +
      ' as numeric(15,5)) total,'#13#10'd.SIGLA unidade '#13#10'FROM LOTE_ITENS a '#13 +
      #10'left outer join PRODUTO_COMPOSICAO c on (c.ID_PRODUTO = a.CODPR' +
      'O) '#13#10'left outer join PRODUTO b on (b.CODIGO = c.ID_MATPRIMA) '#13#10'l' +
      'eft outer join UNIDADE d on (d.CODIGO = b.COD_UNIDADE) '#13#10'where 1' +
      ' = 2'#13#10')'#13#10'select a.codigo,a.nome, cast(sum(a.total)as numeric(15,' +
      '5)) total, a.unidade'#13#10'from JUNCAO a'#13#10'group by 1,2,4'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 80
    Top = 16
    object cdsMatPrimaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsMatPrimaNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsMatPrimaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 5
    end
    object cdsMatPrimaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
  end
  object dsMatPrima: TDataSource
    DataSet = cdsMatPrima
    Left = 112
    Top = 16
  end
end

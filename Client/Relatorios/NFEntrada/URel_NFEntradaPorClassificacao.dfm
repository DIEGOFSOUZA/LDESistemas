inherited Rel_NFEntradaPorClassificacao: TRel_NFEntradaPorClassificacao
  Caption = 'Rel_NFEntradaPorClassificacao'
  ClientHeight = 558
  OnCreate = FormCreate
  ExplicitHeight = 558
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    DataSource = dsMaster
    object rlgrp1: TRLGroup
      Left = 38
      Top = 154
      Width = 718
      Height = 40
      DataFields = 'IDHIST'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 40
        Color = 12303291
        ParentColor = False
        Transparent = False
        BeforePrint = RLBand1BeforePrint
        object RLDBText1: TRLDBText
          Left = 15
          Top = 21
          Width = 321
          Height = 16
          AutoSize = False
          DataField = 'CLASSIFICACAO'
          DataSource = dsMaster
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 456
          Top = 21
          Width = 125
          Height = 16
          AutoSize = False
          DataField = 'TOTAL'
          DataSource = dsMaster
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLLabel1: TRLLabel
          Left = 15
          Top = 3
          Width = 111
          Height = 16
          Caption = 'CLASSIFICA'#199#195'O:'
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 456
          Top = 3
          Width = 179
          Height = 16
          AutoSize = False
          Caption = 'TOTAL DAS NOTAS FISCAIS:'
          Transparent = False
        end
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 194
      Width = 718
      Height = 104
      DataSource = dsDetail
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 20
        BandType = btHeader
        Color = 12189695
        ParentColor = False
        Transparent = False
        object RLLabel5: TRLLabel
          Left = 32
          Top = 2
          Width = 110
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'N'#186' N.F.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 150
          Top = 2
          Width = 80
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'ENTRADA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 238
          Top = 2
          Width = 300
          Height = 15
          AutoSize = False
          Caption = 'FORNECEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 546
          Top = 2
          Width = 140
          Height = 15
          AutoSize = False
          Caption = 'TOTAL R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 20
        Width = 718
        Height = 18
        object RLDBText5: TRLDBText
          Left = 32
          Top = 0
          Width = 110
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'N_NF'
          DataSource = dsDetail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 150
          Top = 0
          Width = 80
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'ENTRADA'
          DataSource = dsDetail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 238
          Top = 0
          Width = 300
          Height = 16
          AutoSize = False
          DataField = 'RAZAO_NOME'
          DataSource = dsDetail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 546
          Top = 0
          Width = 140
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTNOTA'
          DataSource = dsDetail
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
  end
  inherited pnlFundo: TPanel
    inherited pnlButtons: TPanel
      ExplicitLeft = 625
      ExplicitTop = 22
      ExplicitHeight = 163
    end
    inherited pnlTitulo: TPanel
      ExplicitTop = 0
    end
    inherited pnlClient: TPanel
      ExplicitLeft = 0
      ExplicitTop = 22
      ExplicitWidth = 625
      ExplicitHeight = 163
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
      object edpesClassificacao: TEdPesquisa
        Left = 21
        Top = 54
        Width = 431
        Height = 21
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'HISTORICO'
        ConsultaTabela.Pesquisa = 'id'
        ConsultaTabela.Mostrar = 'descricao'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edpesClassificacaoPesquisa
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 96
        Titulo.Height = 17
        Titulo.Caption = 'CLASSIFICA'#199#195'O'
        Titulo.Font.Charset = ANSI_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -13
        Titulo.Font.Name = 'Segoe UI Semibold'
        Titulo.Font.Style = [fsBold]
        Titulo.ParentFont = False
        Mostrar.Left = 180
        Mostrar.Top = 0
        Mostrar.Width = 250
        Mostrar.Height = 21
        Mostrar.TabStop = False
        Mostrar.Font.Charset = DEFAULT_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -11
        Mostrar.Font.Name = 'Tahoma'
        Mostrar.Font.Style = []
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 98
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.TabOrder = 0
        TabOrder = 2
        TabStop = True
      end
    end
    inherited pnlRodape: TPanel
      ExplicitTop = 185
    end
  end
  object cdsDetail: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select NE.N_NF, NE.ENTRADA, NE.TOTNOTA, NE.ID_HISTORICO, H.DESCR' +
      'ICAO, F.RAZAO_NOME'#13#10'from NOTA_ENTRADA NE'#13#10'left join HISTORICO H ' +
      'on (H.ID = NE.ID_HISTORICO)'#13#10'left join FABRICANTE F on (F.CODIGO' +
      ' = NE.CODFOR)'#13#10'where 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    Left = 392
    Top = 208
    object cdsDetailENTRADA: TDateField
      FieldName = 'ENTRADA'
      Required = True
    end
    object cdsDetailTOTNOTA: TCurrencyField
      FieldName = 'TOTNOTA'
      DisplayFormat = '#,##0.00'
    end
    object cdsDetailID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object cdsDetailDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 60
    end
    object cdsDetailRAZAO_NOME: TStringField
      FieldName = 'RAZAO_NOME'
      ReadOnly = True
      Size = 60
    end
    object cdsDetailN_NF: TIntegerField
      FieldName = 'N_NF'
    end
  end
  object dsDetail: TDataSource
    DataSet = cdsDetail
    Left = 392
    Top = 264
  end
  object dsMaster: TDataSource
    DataSet = cdsMaster
    Left = 339
    Top = 264
  end
  object cdsMaster: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select cast('#39#39' as varchar(60))classificacao, cast(0 as numeric(1' +
      '0,2)) total,cast(0 as integer)IDHIST'#13#10'from RDB$database'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    Left = 339
    Top = 208
    object cdsMasterCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 60
    end
    object cdsMasterTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsMasterIDHIST: TIntegerField
      FieldName = 'IDHIST'
    end
  end
end

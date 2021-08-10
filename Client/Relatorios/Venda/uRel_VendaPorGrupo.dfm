inherited Rel_VendaPorGrupo: TRel_VendaPorGrupo
  Caption = 'Rel_VendaPorGrupo'
  ClientHeight = 521
  ClientWidth = 876
  OnCreate = FormCreate
  ExplicitWidth = 876
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    DataSource = dsGrupo
    inherited RLBand10: TRLBand
      Height = 35
      ExplicitHeight = 35
    end
    object rlgrp1: TRLGroup
      Left = 38
      Top = 164
      Width = 718
      Height = 56
      DataFields = 'IDGRUPO'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 56
        Color = 12303291
        ParentColor = False
        Transparent = False
        BeforePrint = RLBand1BeforePrint
        object RLDBText1: TRLDBText
          Left = 64
          Top = 16
          Width = 51
          Height = 16
          DataField = 'GRUPO'
          DataSource = dsGrupo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 136
          Top = 40
          Width = 70
          Height = 16
          AutoSize = False
          DataField = 'QTDE_VENDA'
          DataSource = dsGrupo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Text = ''
          Transparent = False
        end
        object RLDBText3: TRLDBText
          Left = 373
          Top = 40
          Width = 70
          Height = 16
          AutoSize = False
          DataField = 'QTDE'
          DataSource = dsGrupo
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
          Left = 588
          Top = 40
          Width = 125
          Height = 16
          AutoSize = False
          DataField = 'TOTAL'
          DataSource = dsGrupo
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
          Left = 5
          Top = 16
          Width = 55
          Height = 16
          Caption = 'GRUPO:'
          Transparent = False
        end
        object RLLabel2: TRLLabel
          Left = 5
          Top = 40
          Width = 127
          Height = 16
          AutoSize = False
          Caption = 'QTDE. DE VENDAS:'
          Transparent = False
        end
        object RLLabel3: TRLLabel
          Left = 210
          Top = 40
          Width = 159
          Height = 16
          AutoSize = False
          Caption = 'QTDE. ITENS VENDIDOS:'
          Transparent = False
        end
        object RLLabel4: TRLLabel
          Left = 447
          Top = 40
          Width = 137
          Height = 16
          AutoSize = False
          Caption = 'TOTAL DAS VENDAS:'
          Transparent = False
        end
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 38
      Top = 220
      Width = 718
      Height = 104
      DataSource = dsDetalhe
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
          Left = 25
          Top = 2
          Width = 57
          Height = 15
          AutoSize = False
          Caption = 'N'#186' VENDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 90
          Top = 2
          Width = 80
          Height = 15
          Alignment = taCenter
          AutoSize = False
          Caption = 'EMISS'#194'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 178
          Top = 2
          Width = 220
          Height = 15
          AutoSize = False
          Caption = 'CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel8: TRLLabel
          Left = 406
          Top = 2
          Width = 120
          Height = 15
          AutoSize = False
          Caption = 'VENDEDOR(A)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel9: TRLLabel
          Left = 534
          Top = 2
          Width = 60
          Height = 15
          AutoSize = False
          Caption = 'QTDE.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 602
          Top = 2
          Width = 90
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
          Left = 25
          Top = 1
          Width = 55
          Height = 16
          AutoSize = False
          DataField = 'VENDA'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText6: TRLDBText
          Left = 90
          Top = 1
          Width = 80
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'EMISSAO'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText7: TRLDBText
          Left = 178
          Top = 1
          Width = 220
          Height = 16
          AutoSize = False
          DataField = 'CLIENTE'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText8: TRLDBText
          Left = 406
          Top = 1
          Width = 120
          Height = 16
          AutoSize = False
          DataField = 'VENDEDOR'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText9: TRLDBText
          Left = 534
          Top = 1
          Width = 60
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'QTDE'
          DataSource = dsDetalhe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object RLDBText10: TRLDBText
          Left = 602
          Top = 1
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'TOTAL'
          DataSource = dsDetalhe
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
      object edpesGrupo: TEdPesquisa
        Left = 21
        Top = 54
        Width = 379
        Height = 21
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'GRUPO_PROD'
        ConsultaTabela.Pesquisa = 'codigo'
        ConsultaTabela.Mostrar = 'descri'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edpesGrupoPesquisa
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 44
        Titulo.Height = 17
        Titulo.Caption = 'GRUPO'
        Titulo.Font.Charset = ANSI_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -13
        Titulo.Font.Name = 'Segoe UI Semibold'
        Titulo.Font.Style = [fsBold]
        Titulo.ParentFont = False
        Mostrar.Left = 128
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
        Campo.Left = 46
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.TabOrder = 0
        TabOrder = 2
        TabStop = True
      end
      object chkResumo: TCheckBox
        Left = 21
        Top = 85
        Width = 138
        Height = 17
        Caption = 'Exibir apenas o resumo'
        TabOrder = 3
      end
    end
    inherited pnlRodape: TPanel
      ExplicitTop = 185
    end
  end
  object dsDetalhe: TDataSource
    DataSet = cdsDetalhe
    Left = 536
    Top = 258
  end
  object cdsDetalhe: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select cast(sum(pi.qtde) as double precision)qtde, cast(sum(pi.q' +
      'tde*p.preco_venda)as double precision) total,'#13#10'coalesce(p.cod_gr' +
      'upo,-1)idgrupo, coalesce(gp.descri,'#39'SEM GRUPO'#39') grupo,pm.id vend' +
      'a,pm.emissao,'#13#10'c.nome_razao cliente, u.usu_nome vendedor'#13#10'from p' +
      'dv_master pm'#13#10'left join cliente c on (c.codigo = pm.id_cliente)'#13 +
      #10'left join usuario u on (u.id_vendedor = pm.id_vendedor)'#13#10'left j' +
      'oin pdv_itens pi on (pi.tipo = pm.tipo and pi.id = pm.id)'#13#10'left ' +
      'join produto p on (p.codigo = pi.id_produto)'#13#10'left join grupo_pr' +
      'od gp on (gp.codigo = p.cod_grupo)'#13#10'where 1=2'#13#10'group by 3,4,5,6,' +
      '7,8;'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    Left = 536
    Top = 210
    object cdsDetalheQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object cdsDetalheTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
    end
    object cdsDetalheIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
      Origin = 'IDGRUPO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsDetalheGRUPO: TStringField
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object cdsDetalheVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = 'ID'
      Required = True
    end
    object cdsDetalheEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      Required = True
    end
    object cdsDetalheCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'NOME_RAZAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsDetalheVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'USU_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select cast(sum(pi.QTDE) as double precision) QTDE, '#13#10'cast(sum(p' +
      'i.QTDE * P.PRECO_VENDA) as numeric(10,2)) TOTAL, '#13#10'coalesce(P.CO' +
      'D_GRUPO, -1) IDGRUPO, coalesce(GP.DESCRI, '#39'SEM GRUPO'#39') GRUPO,'#13#10'c' +
      'ast(0 as integer)qtde_venda'#13#10'from PDV_MASTER PM'#13#10'left join CLIEN' +
      'TE C on (C.CODIGO = PM.ID_CLIENTE)'#13#10'left join USUARIO U on (U.ID' +
      '_VENDEDOR = PM.ID_VENDEDOR)'#13#10'left join PDV_ITENS pi on (pi.TIPO ' +
      '= PM.TIPO and pi.ID = PM.ID)'#13#10'left join PRODUTO P on (P.CODIGO =' +
      ' pi.ID_PRODUTO)'#13#10'left join GRUPO_PROD GP on (GP.CODIGO = P.COD_G' +
      'RUPO)'#13#10'where 1=2'#13#10'group by 3,4'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    Left = 464
    Top = 218
    object cdsGrupoQTDE: TFloatField
      FieldName = 'QTDE'
      DisplayFormat = '#,##0'
    end
    object cdsGrupoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsGrupoIDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
    end
    object cdsGrupoGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 45
    end
    object cdsGrupoQTDE_VENDA: TIntegerField
      FieldName = 'QTDE_VENDA'
      DisplayFormat = '#,##0'
    end
  end
  object dsGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 464
    Top = 272
  end
end

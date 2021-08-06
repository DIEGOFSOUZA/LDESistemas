inherited Rel_VendaPorGrupo: TRel_VendaPorGrupo
  Caption = 'Rel_VendaPorGrupo'
  ClientHeight = 644
  ClientWidth = 826
  OnCreate = FormCreate
  ExplicitWidth = 826
  ExplicitHeight = 644
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    DataSource = ds1
    inherited RLBand10: TRLBand
      BeforePrint = nil
    end
    object rlgrp1: TRLGroup
      Left = 38
      Top = 154
      Width = 718
      Height = 207
      DataFields = 'IDGRUPO'
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 89
        BandType = btHeader
        Color = 14342874
        ParentColor = False
        Transparent = False
        object RLDBResult1: TRLDBResult
          Left = 32
          Top = 24
          Width = 174
          Height = 16
          DataField = 'VENDA'
          DataSource = ds1
          Info = riCount
          Text = 'TOTAL DE VENDAS: '
          Transparent = False
        end
        object RLDBResult2: TRLDBResult
          Left = 232
          Top = 24
          Width = 267
          Height = 16
          DataField = 'VENDA'
          DataSource = ds1
          Info = riCount
          Text = 'QUANTIDADE DE ITENS VENDIDOS:'
          Transparent = False
        end
        object RLDBResult3: TRLDBResult
          Left = 232
          Top = 56
          Width = 237
          Height = 16
          DataField = 'VENDA'
          DataSource = ds1
          Info = riCount
          Text = 'SOMAT'#211'RIO DAS VENDAS R$:'
          Transparent = False
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 89
        Width = 718
        Height = 72
      end
    end
  end
  inherited pnlFundo: TPanel
    inherited pnlTitulo: TPanel
      inherited lblTitulo: TLabel
        OnMouseDown = nil
      end
    end
    inherited pnlClient: TPanel
      ExplicitLeft = -4
      ExplicitTop = 27
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
        Top = 66
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
    end
  end
  object ds1: TDataSource
    DataSet = cds1
    Left = 584
    Top = 210
  end
  object cds1: TClientDataSet
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
    RemoteServer = DM.DSProviderConnection1
    Left = 536
    Top = 210
    object cds1QTDE: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object cds1TOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object cds1IDGRUPO: TIntegerField
      FieldName = 'IDGRUPO'
      ReadOnly = True
    end
    object cds1GRUPO: TStringField
      FieldName = 'GRUPO'
      ReadOnly = True
      Size = 45
    end
    object cds1VENDA: TIntegerField
      FieldName = 'VENDA'
      Required = True
    end
    object cds1EMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object cds1CLIENTE: TStringField
      FieldName = 'CLIENTE'
      ReadOnly = True
      Size = 100
    end
    object cds1VENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ReadOnly = True
      Size = 40
    end
  end
end

inherited RelListaEtoque: TRelListaEtoque
  BorderIcons = [biSystemMenu]
  Caption = 'Estoque de produtos/ mat'#233'ria-prima'
  ClientHeight = 165
  ClientWidth = 499
  ExplicitWidth = 515
  ExplicitHeight = 204
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Left = 46
    Top = 200
    DataSource = dsEstoque
    BeforePrint = RelatorioBeforePrint
    ExplicitLeft = 46
    ExplicitTop = 200
    inherited RLBand1: TRLBand
      inherited rlpnlEmpresa: TRLPanel
        inherited rlblEmpFantasia: TRLLabel
          Left = -3
          Top = 1
          ExplicitLeft = -3
          ExplicitTop = 1
        end
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 84
      Width = 718
      Height = 53
      BandType = btColumnHeader
      object RLPanel1: TRLPanel
        Left = 0
        Top = 19
        Width = 718
        Height = 34
        Align = faBottom
        Color = cl3DLight
        ParentColor = False
        Transparent = False
        object Label1: TLabel
          Left = 60
          Top = 0
          Width = 335
          Height = 34
          AutoSize = False
          Caption = 'Tipo | Produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          Layout = tlBottom
          WordWrap = True
        end
        object Label2: TLabel
          Left = 481
          Top = 0
          Width = 70
          Height = 34
          AutoSize = False
          Caption = 'QTDE. EM ESTOQUE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
        end
        object Label3: TLabel
          Left = 559
          Top = 0
          Width = 70
          Height = 34
          Alignment = taCenter
          AutoSize = False
          Caption = 'UND'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          Layout = tlBottom
        end
        object Label5: TLabel
          Left = 2
          Top = 0
          Width = 50
          Height = 34
          Alignment = taCenter
          AutoSize = False
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          Layout = tlBottom
        end
        object Label6: TLabel
          Left = 403
          Top = 0
          Width = 70
          Height = 34
          AutoSize = False
          Caption = 'QTDE. M'#205'NIMA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
        end
        object Label7: TLabel
          Left = 637
          Top = 0
          Width = 80
          Height = 34
          Alignment = taCenter
          AutoSize = False
          Caption = 'VALOR DE CUSTO R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          Layout = tlBottom
          WordWrap = True
        end
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 22
      object RLDBText1: TRLDBText
        Left = 60
        Top = 0
        Width = 335
        Height = 17
        AutoSize = False
        DataField = 'NOME'
        DataSource = dsEstoque
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
        BeforePrint = RLDBText1BeforePrint
      end
      object RLDBText2: TRLDBText
        Left = 481
        Top = 0
        Width = 70
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTDE_ESTOQUE'
        DataSource = dsEstoque
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 559
        Top = 0
        Width = 70
        Height = 17
        Alignment = taCenter
        AutoSize = False
        DataField = 'SIGLA'
        DataSource = dsEstoque
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 2
        Top = 0
        Width = 50
        Height = 17
        Alignment = taCenter
        AutoSize = False
        DataField = 'CODIGO'
        DataSource = dsEstoque
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 403
        Top = 0
        Width = 70
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTDE_MINIMA'
        DataSource = dsEstoque
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 637
        Top = 0
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_CUSTO'
        DataSource = dsEstoque
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 159
      Width = 718
      Height = 62
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLDBResult1: TRLDBResult
        Left = 402
        Top = 16
        Width = 149
        Height = 16
        Alignment = taRightJustify
        DataField = 'QTDE_ESTOQUE'
        DataSource = dsEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLMemo1: TRLMemo
        Left = 368
        Top = 0
        Width = 93
        Height = 32
        AutoSize = False
        Behavior = [beSiteExpander]
        Lines.Strings = (
          'QTDE TOTAL'
          'EM ESTOQUE')
      end
      object RLDBResult2: TRLDBResult
        Left = 637
        Top = 16
        Width = 80
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRECO_CUSTO'
        DataSource = dsEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
        Text = ''
      end
      object RLMemo2: TRLMemo
        Left = 567
        Top = 0
        Width = 65
        Height = 32
        AutoSize = False
        Behavior = [beSiteExpander]
        Lines.Strings = (
          'CUSTO'
          'TOTAL R$')
      end
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 0
    Width = 499
    Height = 161
    Align = alTop
    TabOrder = 0
    object pnlAcoes: TPanel
      Left = 1
      Top = 120
      Width = 497
      Height = 40
      Align = alBottom
      Color = 14803681
      ParentBackground = False
      TabOrder = 1
      object pnlGerar: TPanel
        Left = 267
        Top = 5
        Width = 100
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 0
        object btnGerar: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 30
          Align = alClient
          Caption = '   Relat'#243'rio'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Transparent = False
          OnClick = btnGerarClick
          ExplicitWidth = 80
        end
        object imgGerar: TImage
          Left = 0
          Top = 2
          Width = 25
          Height = 25
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
            00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000001
            EC4944415478DAED974B2844511880CF552C4459587894B2A1A448290B2CC402
            291B0A4948796CB0404C29C942A29035CA86422479E595C7DA8E2CA42CC502E5
            D5F8FEEE9D9AA6317371EE5870EBEB9F3973FEFF7C73EFB9F79C6BA85F3E0CDF
            06B7DB5D4FA8FE66BD7368370CE3ED270283843A98FBE2E0D950000BF207EC4A
            7C26904F81FCAF8C4E5E07A1CFAAB9635742B74093322FDF36EC4115755E432A
            405E1A9F33ED4A3822607DB725E198805D09DD02CD90E3F353162CC3BAF23331
            750B8C06E9D64DDD61A70492082901BA88DC0A755D8E08D8103C201CFC0BFC0B
            FC69817DC2E16F0A8413A2A87B171201EA44136AA110E2E1168E6186DA378E0A
            50A398300D61B00135B009E910033DD49F7044C01A7C1564805E6B8C47A90947
            D00503E0927541AB8075DA2F618EFC4EAB2DD22340DBA1D5D64A18870CDD0252
            B81F92C97F0A2020E39EC2996E8145C23DB90D5E6D1E815238F1EA2ECB77AD6E
            01B9C6DBE4F67BB545101E20DC4FCAB36E8135C215B96D3EED32FBE37CBA9741
            856E0199F572FA53C97F0FD2572ED7BB6E8144C28532B75E9301FAE52973A35A
            A4F3D54C8E31A8841165EE9067FDD4CF252C29737BD6A8FBE5744B1E2ED49087
            CD903267FD3C5C432C9440B9329F922DF47D31BE3950D00309793F905B4DD682
            0465AE0572974C31F0AEA7DF079ED65D8BF25E04770000000049454E44AE4260
            82}
          Stretch = True
        end
      end
      object pnlSair: TPanel
        Left = 383
        Top = 5
        Width = 100
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 30
          Align = alClient
          Caption = 'Sair'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Transparent = False
          OnClick = actSairExecute
          ExplicitLeft = -16
          ExplicitTop = -5
        end
        object imgSair: TImage
          Left = 0
          Top = 2
          Width = 25
          Height = 25
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
            00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000000
            CF4944415478DA6364A00360A4BB25FFFFFF170052B3C830E73723236334B196
            4800A9E740FC1D887F10690117482BD0124E522DA9046AEA20C606A09EE9402A
            61D858120754CF4D4B4BA600A96340F5CB6869892450ED7320CD09A4BFD3C412
            A8BE2220950CC44E407D2F69654908900205D73D207604F98C644B80E2DA404A
            92805DA1409C06C4D7D07D44AC25F3815402B13E03825540FDE183CF2744C6C9
            7220BE4B769C1061096D5317480F50ED0B9AE613688E3F0A54BF1C979A215376
            0DEEA29EA63523EDEB785A01BA5802002A22C61A4081E3F70000000049454E44
            AE426082}
          OnClick = actSairExecute
        end
      end
    end
    object pgc1: TPageControl
      Left = 1
      Top = 1
      Width = 497
      Height = 119
      ActivePage = ts1
      Align = alClient
      TabOrder = 0
      object ts1: TTabSheet
        Caption = 'Pesquisa por tipo'
        object pnlFiltros: TPanel
          Left = 0
          Top = 0
          Width = 489
          Height = 91
          Align = alClient
          Color = 14803681
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object Label4: TLabel
            Left = 20
            Top = 35
            Width = 77
            Height = 22
            AutoSize = False
            Caption = 'Produto tipo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object cbbTipoRel: TComboBox
            Left = 101
            Top = 35
            Width = 145
            Height = 22
            Style = csOwnerDrawFixed
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ItemIndex = 0
            ParentFont = False
            TabOrder = 1
            Text = 'Todos'
            Items.Strings = (
              'Todos'
              'Mat'#233'ria Prima'
              'Ambos'
              'Revenda')
          end
          object rgOpcao: TRadioGroup
            Left = 291
            Top = 8
            Width = 185
            Height = 75
            Items.Strings = (
              'Estoque positivo'
              'Estoque negativo'
              'Estoque zerado'
              'Estoque m'#237'nimo atingido')
            TabOrder = 0
          end
        end
      end
      object ts2: TTabSheet
        Caption = 'Pesquisa por produto'
        ImageIndex = 1
        ExplicitWidth = 942
        object pnl1: TPanel
          Left = 0
          Top = 0
          Width = 489
          Height = 91
          Align = alClient
          Caption = 'pnl1'
          Color = 14803681
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          ExplicitWidth = 942
          object edpsqsProd: TEdPesquisa
            Left = 40
            Top = 24
            Width = 373
            Height = 21
            PermitirBranco = Sim
            ConsultaTabela.Tabela = 'PRODUTO'
            ConsultaTabela.Pesquisa = 'codigo'
            ConsultaTabela.Mostrar = 'nome'
            ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
            OnPesquisa = edpsqsProdPesquisa
            Titulo.Left = 0
            Titulo.Top = 3
            Titulo.Width = 38
            Titulo.Height = 13
            Titulo.Caption = 'Produto'
            Mostrar.Left = 122
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
            Campo.Left = 40
            Campo.Top = 0
            Campo.Width = 57
            Campo.Height = 21
            Campo.CharCase = ecUpperCase
            Campo.TabOrder = 0
            TabOrder = 0
            TabStop = True
          end
        end
      end
    end
  end
  inherited RLPDFFilter1: TRLPDFFilter
    Left = 804
  end
  object cdsEstoque: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT PROD.codigo,prod.nome,cast(prod.qtde_estoque as double pr' +
      'ecision) qtde_estoque,'#13#10'PROD.tipo_produto, d.sigla,cast(prod.QTD' +
      'E_MINIMA as double precision) qtde_minima,'#13#10'prod.preco_custo'#13#10'fr' +
      'om PRODUTO prod'#13#10'left join UNIDADE d on (d.CODIGO = prod.COD_UNI' +
      'DADE)'#13#10'WHERE 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 865
    Top = 152
    object cdsEstoqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object cdsEstoqueNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object cdsEstoqueTIPO_PRODUTO: TStringField
      FieldName = 'TIPO_PRODUTO'
      Origin = 'TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsEstoqueSIGLA: TStringField
      FieldName = 'SIGLA'
      ReadOnly = True
      Size = 10
    end
    object cdsEstoqueQTDE_ESTOQUE: TFloatField
      FieldName = 'QTDE_ESTOQUE'
      ReadOnly = True
      DisplayFormat = '#,##0.000'
    end
    object cdsEstoqueQTDE_MINIMA: TFloatField
      FieldName = 'QTDE_MINIMA'
      ReadOnly = True
      DisplayFormat = '#,##0.000'
    end
    object cdsEstoquePRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsEstoque: TDataSource
    DataSet = cdsEstoque
    Left = 864
    Top = 208
  end
  object actlstAcoes: TActionList
    Images = DM.il2
    Left = 749
    Top = 25
    object actGerarRelatorio: TAction
      Caption = 'Relat'#243'rio'
      ImageIndex = 8
    end
    object actSair: TAction
      Caption = 'Sair'
      ImageIndex = 9
      OnExecute = actSairExecute
    end
  end
end

inherited Frm_AcertoEstoque: TFrm_AcertoEstoque
  Caption = 'Frm_AcertoEstoque'
  ClientWidth = 683
  ExplicitWidth = 683
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 683
    Caption = '         ACERTO DE ESTOQUE'
    ExplicitWidth = 777
  end
  inherited pnlFundo0: TPanel
    Width = 683
    ExplicitWidth = 683
    object pnlEscolha: TPanel [0]
      Left = 82
      Top = 1
      Width = 600
      Height = 513
      Align = alClient
      TabOrder = 2
      object Label6: TLabel
        Left = 24
        Top = 58
        Width = 177
        Height = 34
        AutoSize = False
        Caption = 'INFORME O TIPO DE AJUSTE QUE DESEJA EFETUAR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object cbbTipo: TComboBox
        Left = 204
        Top = 67
        Width = 137
        Height = 25
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'SELECIONE'
        OnClick = cbbTipoClick
        Items.Strings = (
          'SELECIONE'
          'ACERTO DE ESTOQUE'
          'ZERAR ESTOQUE')
      end
    end
    inherited pnlFundo1: TPanel
      Width = 600
      ExplicitWidth = 600
      inherited Panel4: TPanel
        Width = 598
        ExplicitWidth = 598
      end
      object pnlHeader: TPanel
        Left = 1
        Top = 1
        Width = 598
        Height = 145
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label32: TLabel
          Left = 117
          Top = 16
          Width = 26
          Height = 15
          Caption = 'LOTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 3
          Top = 16
          Width = 97
          Height = 15
          Caption = 'DATA DE EMISS'#194'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 253
          Top = 16
          Width = 128
          Height = 15
          Caption = 'LOTE ADICIONADO POR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 3
          Top = 64
          Width = 129
          Height = 15
          Caption = 'JUSTIFICATIVA / MOTIVO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 453
          Top = 42
          Width = 140
          Height = 15
          DataField = 'AUTORIZACAO'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 117
          Top = 33
          Width = 121
          Height = 23
          DataField = 'LOTE'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBMemo1: TDBMemo
          Left = 3
          Top = 79
          Width = 439
          Height = 62
          DataField = 'OBS'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          MaxLength = 100
          ParentFont = False
          TabOrder = 5
        end
        object pnlLegenda: TPanel
          Left = 450
          Top = 67
          Width = 143
          Height = 74
          Caption = 'pnlLegenda'
          Color = 11909045
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsItalic]
          ParentBackground = False
          ParentFont = False
          ShowCaption = False
          TabOrder = 4
          object Label5: TLabel
            Left = 15
            Top = 3
            Width = 115
            Height = 65
            Caption = 
              'Legenda: Nome Lotes'#13#10'Iniciado por:'#13#10'LT - Lote de ENTRADA'#13#10'AC - L' +
              'ote de ACERTO'#13#10'ZR - Lote para ZERAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 33
          Width = 105
          Height = 23
          DataField = 'EMISSAO'
          DataSource = ds
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 253
          Top = 33
          Width = 189
          Height = 23
          DataField = 'USUARIO'
          DataSource = ds
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object pnlAutorizar: TPanel
          Left = 453
          Top = 5
          Width = 140
          Height = 35
          Caption = 'pnlIncRecebimento'
          Color = 4868682
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          Visible = False
          object btnAutorizar: TSpeedButton
            Left = 1
            Top = 1
            Width = 138
            Height = 33
            Action = actAutorizar
            Align = alClient
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitTop = -1
            ExplicitWidth = 108
          end
        end
      end
      object pnlDetail: TPanel
        Left = 1
        Top = 146
        Width = 598
        Height = 346
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object pnlRight: TPanel
          Left = 518
          Top = 0
          Width = 80
          Height = 346
          Align = alRight
          BevelOuter = bvLowered
          TabOrder = 1
          object pnlAdd: TPanel
            Left = 1
            Top = 1
            Width = 78
            Height = 73
            Align = alTop
            BevelOuter = bvNone
            Caption = 'pnlAdd'
            Color = 7024384
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            TabStop = True
            object btnAddItem: TSpeedButton
              Left = 0
              Top = 0
              Width = 78
              Height = 73
              Cursor = crHandPoint
              Action = actAddItem
              Align = alClient
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 98
              ExplicitHeight = 75
            end
          end
          object pnlExcItem: TPanel
            Left = 27
            Top = 106
            Width = 25
            Height = 25
            BevelOuter = bvNone
            Caption = 'pnlIncluiCondPagto'
            Color = 7024384
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
            TabStop = True
            object imgExcItem: TImage
              Left = 0
              Top = 0
              Width = 25
              Height = 25
              Align = alClient
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
                00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000001
                244944415478DA6364A003601CBE96FCFFFF9F1548F1A009B301F12C20D64112
                BB02C46940FC0B4DED174646C6DF842C090052EB71386A3BC810A8233C71A809
                045AB2819025AA50573B00710D10FF814A3D006A5E89A42E1C482940B92C40DC
                02C40740BE03AABB8DD712A801ED40AA028839811A7E100A73A07A0E20F51D88
                3B80EA2B09C6C9805802C48A406C0BC4AB8098171A17A0B8F90CC461407C1888
                EF536A4902104F07624D681C6C875AF40088AF037126102F18B564D492116E09
                2803CA01F1550648690C2ADB406513A8F4D506E2470C908C39388B952620550B
                C4A2404D6F88B0440448BD06E266A0FA3A622D7106527B182015D37542963040
                E20B54A139032DD9479425508BD2811408F31361C947209E01B4601636C961DC
                90A00500002294BF1ABE0ECED60000000049454E44AE426082}
              ExplicitLeft = 8
              ExplicitTop = 8
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
            object btnEscItem: TSpeedButton
              Left = 0
              Top = 0
              Width = 25
              Height = 25
              Cursor = crHandPoint
              Action = actExcItem
              Align = alClient
              Flat = True
              ParentShowHint = False
              ShowHint = True
              ExplicitLeft = 1
              ExplicitTop = 7
              ExplicitWidth = 23
              ExplicitHeight = 23
            end
          end
        end
        object pnlClientGrid: TPanel
          Left = 0
          Top = 0
          Width = 518
          Height = 346
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object pnlTopGrid: TPanel
            Left = 0
            Top = 0
            Width = 518
            Height = 75
            Align = alTop
            TabOrder = 0
            object pnlProdAdd: TPanel
              Left = 1
              Top = 1
              Width = 516
              Height = 40
              Align = alTop
              Caption = 'pnlProdAdd'
              Color = 13337441
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object pnlItem: TPanel
                Left = 1
                Top = 1
                Width = 514
                Height = 38
                Align = alClient
                BevelOuter = bvNone
                Caption = 'pnlItem'
                ShowCaption = False
                TabOrder = 0
                object edpsqsProduto: TEdPesquisa
                  Left = 10
                  Top = 8
                  Width = 346
                  Height = 21
                  PermitirBranco = Sim
                  ConsultaTabela.Tabela = 'PRODUTO'
                  ConsultaTabela.Pesquisa = 'codigo'
                  ConsultaTabela.Mostrar = 'nome'
                  ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
                  OnPesquisa = edpsqsProdutoPesquisa
                  Titulo.Left = 0
                  Titulo.Top = 3
                  Titulo.Width = 28
                  Titulo.Height = 13
                  Titulo.Caption = 'ITEM:'
                  Mostrar.Left = 95
                  Mostrar.Top = 0
                  Mostrar.Width = 250
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
                  Campo.Left = 30
                  Campo.Top = 0
                  Campo.Width = 40
                  Campo.Height = 25
                  Campo.CharCase = ecUpperCase
                  Campo.Font.Charset = ANSI_CHARSET
                  Campo.Font.Color = clWindowText
                  Campo.Font.Height = -13
                  Campo.Font.Name = 'Segoe UI'
                  Campo.Font.Style = []
                  Campo.ParentFont = False
                  Campo.TabOrder = 0
                  Campo.OnChange = edpsqsProdutoedtCampoChange
                  TabOrder = 0
                  TabStop = True
                end
              end
            end
            object pnlTotalItem: TPanel
              Left = 1
              Top = 41
              Width = 516
              Height = 33
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlTotalItem'
              Color = 10114859
              ParentBackground = False
              ShowCaption = False
              TabOrder = 1
              object Label53: TLabel
                Left = 9
                Top = 9
                Width = 78
                Height = 15
                Caption = 'SALDO ATUAL:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object lblTotItem: TLabel
                Left = 89
                Top = 4
                Width = 130
                Height = 21
                AutoSize = False
                Caption = '0,0000'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 221
                Top = 9
                Width = 120
                Height = 15
                Caption = 'SALDO RECONTAGEM:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object edtSaldo: TEdit
                Left = 343
                Top = 5
                Width = 104
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                TextHint = '0,0000'
                OnKeyPress = edtSaldoKeyPress
              end
            end
          end
          object pnlAlocaGrid: TPanel
            Left = 0
            Top = 75
            Width = 518
            Height = 271
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object dbgrdItens: TDBGrid
              Left = 0
              Top = 0
              Width = 518
              Height = 271
              Align = alClient
              DataSource = sItens
              DrawingStyle = gdsGradient
              GradientEndColor = 13864803
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
                  FieldName = 'ENTSAI'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTDE'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRI_ITEM'
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  inherited ds: TDataSource
    Left = 528
    Top = 376
  end
  inherited cds: TClientDataSet
    ProviderName = 'dspProducao'
    RemoteServer = DM.dspRProducao
    AfterInsert = cdsAfterInsert
    Left = 528
    Top = 328
    object cdsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object cdsLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Required = True
    end
    object cdsEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      Required = True
    end
    object cdsVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object cdsENTREGA: TDateField
      FieldName = 'ENTREGA'
      Origin = 'ENTREGA'
    end
    object cdsESTIMATIVA_PRONTO: TSQLTimeStampField
      FieldName = 'ESTIMATIVA_PRONTO'
      Origin = 'ESTIMATIVA_PRONTO'
    end
    object cdsOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 100
    end
    object cdsSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object cdsGERA_MATPRIMA: TStringField
      FieldName = 'GERA_MATPRIMA'
      Origin = 'GERA_MATPRIMA'
      FixedChar = True
      Size = 1
    end
    object cdsUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object cdsLOTE_ACERTO: TStringField
      FieldName = 'LOTE_ACERTO'
      Origin = 'LOTE_ACERTO'
      FixedChar = True
      Size = 1
    end
    object cdsfdqryLoteItens: TDataSetField
      FieldName = 'fdqryLoteItens'
    end
    object cdsAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      Size = 50
    end
  end
  inherited actMaster: TActionList
    Left = 472
    Top = 120
    object actAddItem: TAction
      Caption = 'INCLUIR '#13#10'ITEM'
      OnExecute = actAddItemExecute
    end
    object actAutorizar: TAction
      Caption = 'AUTORIZAR'
      OnExecute = actAutorizarExecute
    end
    object actAutorizado: TAction
      Caption = 'AUTORIZADO'
      OnExecute = actAutorizadoExecute
    end
    object actExcItem: TAction
      OnExecute = actExcItemExecute
    end
  end
  object dsLoteItens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsfdqryLoteItens
    Params = <>
    BeforeEdit = dsLoteItensBeforeDelete
    BeforeDelete = dsLoteItensBeforeDelete
    Left = 586
    Top = 327
    object dsLoteItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object dsLoteItensID_LOTE: TStringField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object dsLoteItensCODPRO: TIntegerField
      FieldName = 'CODPRO'
      Required = True
    end
    object dsLoteItensQTDE: TFMTBCDField
      DisplayLabel = 'QUANTIDADE'
      FieldName = 'QTDE'
      Required = True
      DisplayFormat = '#,##0.0000 KG'
      Precision = 18
      Size = 3
    end
    object dsLoteItensQTDE_FECHADA: TFMTBCDField
      FieldName = 'QTDE_FECHADA'
      Required = True
      Precision = 18
      Size = 3
    end
    object dsLoteItensCOD_UM: TIntegerField
      FieldName = 'COD_UM'
    end
    object dsLoteItensENTSAI: TStringField
      DisplayLabel = 'ENTRADA/SA'#205'DA'
      FieldName = 'ENTSAI'
      Size = 15
    end
    object dsLoteItensDESCRI_ITEM: TStringField
      DisplayLabel = 'ITEM'
      FieldName = 'DESCRI_ITEM'
      Size = 100
    end
  end
  object sItens: TDataSource
    DataSet = dsLoteItens
    Left = 588
    Top = 378
  end
end

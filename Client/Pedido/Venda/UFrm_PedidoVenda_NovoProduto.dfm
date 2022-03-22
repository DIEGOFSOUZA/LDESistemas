inherited Frm_PedidoVenda_NovoProduto: TFrm_PedidoVenda_NovoProduto
  Caption = 'Frm_PedidoVenda_NovoProduto'
  ClientHeight = 571
  ClientWidth = 688
  Visible = False
  ExplicitWidth = 688
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 688
    ExplicitWidth = 688
    inherited lblTitulo: TLabel
      Width = 663
      Caption = '    CRIA'#199#195'O DE NOVO PRODUTO'
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
    Height = 541
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlTop: TPanel
      Left = 0
      Top = 113
      Width = 688
      Height = 137
      Align = alTop
      TabOrder = 1
      object Label4: TLabel
        Left = 29
        Top = 25
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
        Top = 73
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
        Top = 73
        Width = 89
        Height = 17
        Caption = 'UNIT'#193'RIO* (R$)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 287
        Top = 73
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
      object lblUnidade: TLabel
        Left = 515
        Top = 47
        Width = 17
        Height = 17
        Caption = 'KG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTitContato: TLabel
        Left = 1
        Top = 1
        Width = 686
        Height = 20
        Align = alTop
        AutoSize = False
        Caption = '    INSUMOS'
        Color = 10114859
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        OnMouseMove = lblTituloMouseMove
        ExplicitLeft = 0
        ExplicitTop = -5
        ExplicitWidth = 862
      end
      object edpesMatPrima: TEdPesquisa
        Left = 23
        Top = 44
        Width = 488
        Height = 25
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'PRODUTO'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'NOME'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edpesMatPrimaPesquisa
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
        Campo.OnExit = edpesMatPrimaedtCampoExit
        TabOrder = 0
        TabStop = True
      end
      object edtQtde: TEdit
        Left = 29
        Top = 92
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
        OnExit = edtQtdeExit
        OnKeyPress = edtQtdeKeyPress
      end
      object edtUnitario: TEdit
        Left = 158
        Top = 92
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
        OnExit = edtUnitarioExit
        OnKeyDown = edtUnitarioKeyDown
        OnKeyPress = edtQtdeKeyPress
      end
      object edtTotal: TEdit
        Left = 287
        Top = 92
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
        Left = 547
        Top = 85
        Width = 92
        Height = 32
        Cursor = crHandPoint
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
          Caption = 'ADICIONAR'
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
          OnClick = actAdicionarExecute
          ExplicitWidth = 71
          ExplicitHeight = 17
        end
      end
    end
    object pnlBotton: TPanel
      Left = 0
      Top = 492
      Width = 688
      Height = 49
      Align = alBottom
      TabOrder = 3
      object pnlGravar: TPanel
        Left = 581
        Top = 9
        Width = 92
        Height = 32
        Cursor = crHandPoint
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
          OnClick = actIncluirPedidoExecute
          ExplicitWidth = 71
          ExplicitHeight = 34
        end
      end
      object pnlCancelar: TPanel
        Left = 464
        Top = 9
        Width = 85
        Height = 32
        Cursor = crHandPoint
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
          OnClick = actSairExecute
          ExplicitWidth = 59
          ExplicitHeight = 15
        end
      end
    end
    object pnlClient: TPanel
      Left = 0
      Top = 250
      Width = 688
      Height = 242
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object pnlClientBotton: TPanel
        Left = 0
        Top = 217
        Width = 688
        Height = 25
        Align = alBottom
        BevelOuter = bvNone
        Color = 16764573
        ParentBackground = False
        TabOrder = 2
        object Label6: TLabel
          Left = 330
          Top = 4
          Width = 209
          Height = 17
          Caption = 'PRE'#199'O DE CUSTO = SUBTOTAL (R$)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblItensSubTotal: TLabel
          Left = 541
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
        Width = 648
        Height = 217
        Align = alClient
        DataSource = dsProdutoComposicao
        DrawingStyle = gdsGradient
        GradientEndColor = 13864803
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
            FieldName = 'MATERIAL'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UND'
            Title.Alignment = taCenter
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTO_UNIT'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTO_TOTAL'
            Width = 100
            Visible = True
          end>
      end
      object pnlClientRight: TPanel
        Left = 648
        Top = 0
        Width = 40
        Height = 217
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object pnlPagtoExcDup: TPanel
          Left = 4
          Top = 96
          Width = 32
          Height = 32
          Cursor = crHandPoint
          BevelOuter = bvNone
          Caption = 'pnlAddMovimentacao'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object imgPagtoExcDup: TImage
            Left = 0
            Top = 0
            Width = 32
            Height = 32
            Hint = 'excluir duplicatas'
            Align = alClient
            ParentShowHint = False
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
              A44944415478DA63641860C038EA8021E780FFFFFF4B00A97D40AC8926751D88
              9D1819195F50C501408BFE53D5A740404D07A0F8164FA890EF006447E0D24C08
              10A37FD40143CB0194F2471D30EA8051078C3A60D401143B805430EA006A38E0
              29909202621BA0194749B4DC06481D06E2A740BD32E43AA01D485590E37B24D0
              06744035B90E6003528D401C070D09520028F41682F4031DF08B2C07D0038C3A
              60C01D00000CE73E30020C91510000000049454E44AE426082}
            ShowHint = True
            Stretch = True
            OnClick = actLimparInsumosExecute
            ExplicitLeft = 2
          end
        end
      end
    end
    object pnlTopProduto: TPanel
      Left = 0
      Top = 0
      Width = 688
      Height = 113
      Align = alTop
      TabOrder = 0
      object Label5: TLabel
        Left = 29
        Top = 9
        Width = 73
        Height = 17
        Caption = 'DESCRI'#199#195'O*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 29
        Top = 59
        Width = 60
        Height = 17
        Caption = 'UNIDADE*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 382
        Top = 59
        Width = 72
        Height = 17
        Caption = 'PRE'#199'O* (R$)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 29
        Top = 28
        Width = 580
        Height = 25
        DataField = 'NOME'
        DataSource = dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbpsqsUnidade: TDBPesquisa
        Left = 23
        Top = 78
        Width = 338
        Height = 25
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 3
        Titulo.Height = 13
        Titulo.Caption = ' '
        ConsultaTabela.Tabela = 'UNIDADE'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'SIGLA'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        Mostrar.Left = 87
        Mostrar.Top = 0
        Mostrar.Width = 250
        Mostrar.Height = 25
        Mostrar.TabStop = False
        Mostrar.DataField = 'UNIDADE'
        Mostrar.DataSource = dsProduto
        Mostrar.Font.Charset = ANSI_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -13
        Mostrar.Font.Name = 'Segoe UI Semibold'
        Mostrar.Font.Style = [fsBold]
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 5
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 25
        Campo.CharCase = ecUpperCase
        Campo.DataField = 'COD_UNIDADE'
        Campo.DataSource = dsProduto
        Campo.Font.Charset = ANSI_CHARSET
        Campo.Font.Color = clWindowText
        Campo.Font.Height = -13
        Campo.Font.Name = 'Segoe UI Semibold'
        Campo.Font.Style = [fsBold]
        Campo.ParentFont = False
        Campo.TabOrder = 0
        OnPesquisa = dbpsqsUnidadePesquisa
        TabOrder = 1
        TabStop = True
      end
      object DBEdit1: TDBEdit
        Left = 382
        Top = 78
        Width = 106
        Height = 25
        DataField = 'PRECO_VENDA'
        DataSource = dsProduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  inherited actlst1: TActionList
    Left = 200
    Top = 344
    object actIncluirPedido: TAction
      Caption = 'actIncluirPedido'
      OnExecute = actIncluirPedidoExecute
    end
    object actAdicionar: TAction
      Caption = 'actAdicionar'
      OnExecute = actAdicionarExecute
    end
    object actLimparInsumos: TAction
      Caption = 'actLimparInsumos'
      OnExecute = actLimparInsumosExecute
    end
  end
  object cdsProdutoComposicao: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 
      'select pc.ID_PRODUTO, pc.ID_MATPRIMA, pc.QTDE, pc.CUSTO_UNIT, pc' +
      '.CUSTO_TOTAL,'#13#10'p.nome material,coalesce(u2.sigla,u.sigla)UND'#13#10'fr' +
      'om PRODUTO_COMPOSICAO pc'#13#10'left join produto p on (p.codigo = pc.' +
      'id_matprima)'#13#10'left join unidade u on (u.codigo=p.cod_unidade)'#13#10'l' +
      'eft join unidade u2 on (u2.codigo=p.conv_unidade)'#13#10'where 1=2'
    FieldDefs = <
      item
        Name = 'ID_PRODUTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_MATPRIMA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'QTDE'
        DataType = ftFMTBcd
        Precision = 18
        Size = 5
      end
      item
        Name = 'CUSTO_UNIT'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CUSTO_TOTAL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'MATERIAL'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'UND'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    StoreDefs = True
    AfterInsert = cdsProdutoComposicaoAfterInsert
    OnCalcFields = cdsProdutoComposicaoCalcFields
    Left = 376
    Top = 344
    object cdsProdutoComposicaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = []
    end
    object cdsProdutoComposicaoID_MATPRIMA: TIntegerField
      FieldName = 'ID_MATPRIMA'
      Required = True
    end
    object cdsProdutoComposicaoQTDE: TFMTBCDField
      DisplayLabel = 'QUANTIDADE'
      FieldName = 'QTDE'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 5
    end
    object cdsProdutoComposicaoCUSTO_UNIT: TFMTBCDField
      DisplayLabel = 'UNIT'#193'RIO (R$)'
      FieldName = 'CUSTO_UNIT'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsProdutoComposicaoCUSTO_TOTAL: TFMTBCDField
      DisplayLabel = 'TOTAL (R$)'
      FieldName = 'CUSTO_TOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsProdutoComposicaoMATERIAL: TStringField
      FieldName = 'MATERIAL'
      Size = 100
    end
    object cdsProdutoComposicaoUND: TStringField
      FieldName = 'UND'
      Size = 10
    end
    object cdsProdutoComposicaoSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      DisplayName = ''
      Expression = 'sum(CUSTO_TOTAL)'
    end
  end
  object dsProdutoComposicao: TDataSource
    DataSet = cdsProdutoComposicao
    Left = 376
    Top = 400
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select CODIGO, NOME, PRECO_VENDA, COD_UNIDADE, PRECO_CUSTO, ULTI' +
      'MA_ALTERACAO,'#13#10'cast('#39#39' as varchar(10))unidade'#13#10'from PRODUTO  '#13#10'w' +
      'here 1=2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    AfterInsert = cdsProdutoAfterInsert
    BeforePost = cdsProdutoBeforePost
    Left = 269
    Top = 344
    object cdsProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsProdutoPRECO_VENDA: TCurrencyField
      FieldName = 'PRECO_VENDA'
      Required = True
      DisplayFormat = '##0.00'
      currency = False
    end
    object cdsProdutoCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
    end
    object cdsProdutoPRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoULTIMA_ALTERACAO: TStringField
      FieldName = 'ULTIMA_ALTERACAO'
      Size = 200
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 264
    Top = 400
  end
end

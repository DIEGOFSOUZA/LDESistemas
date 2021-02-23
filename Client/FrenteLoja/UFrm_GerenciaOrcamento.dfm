inherited Frm_GerenciaOrcamento: TFrm_GerenciaOrcamento
  Caption = 'Frm_GerenciaOrcamento'
  ClientHeight = 535
  ClientWidth = 783
  OnActivate = FormActivate
  ExplicitWidth = 783
  ExplicitHeight = 535
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 783
    ExplicitWidth = 783
    inherited lblTitulo: TLabel
      Width = 758
      Caption = '   AUTORIZA'#199#195'O DE OR'#199'AMENTO'
      ExplicitWidth = 758
    end
    inherited pnlBotaoSair: TPanel
      Left = 758
      ExplicitLeft = 758
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 30
    Width = 783
    Height = 505
    Align = alClient
    BevelOuter = bvNone
    Color = 14803681
    ParentBackground = False
    TabOrder = 1
    object pnlOrcamentos: TPanel
      Left = 0
      Top = 0
      Width = 783
      Height = 280
      Align = alTop
      BorderStyle = bsSingle
      ParentColor = True
      TabOrder = 0
      object Label5: TLabel
        Left = 20
        Top = 5
        Width = 33
        Height = 17
        Caption = 'Filtrar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object dbgrdOrcamentos: TDBGrid
        Left = 1
        Top = 64
        Width = 777
        Height = 211
        Align = alBottom
        DataSource = dsOrcamentos
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
            Alignment = taCenter
            Expanded = False
            FieldName = 'EMISSAO'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MOTIVO'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORMAPAGTO'
            Width = 230
            Visible = True
          end>
      end
      object cbbFiltro: TComboBox
        Left = 20
        Top = 26
        Width = 189
        Height = 21
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ItemIndex = 0
        ParentFont = False
        TabOrder = 1
        Text = 'Or'#231'amentos n'#227'o Autorizados'
        OnChange = actLocalizarExecute
        Items.Strings = (
          'Or'#231'amentos n'#227'o Autorizados'
          'Or'#231'amentos Autorizados')
      end
      object pnlLocalizar: TPanel
        Left = 234
        Top = 17
        Width = 65
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 2
        Visible = False
        object btnLocalizar: TSpeedButton
          Left = 0
          Top = 0
          Width = 65
          Height = 30
          Action = actLocalizar
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 40
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
    object pnlDetalheOrcamento: TPanel
      Left = 0
      Top = 280
      Width = 783
      Height = 225
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object pnlAcoes: TPanel
        Left = 680
        Top = 0
        Width = 103
        Height = 225
        Align = alRight
        BorderStyle = bsSingle
        ParentColor = True
        TabOrder = 0
        object pnlAutorizar: TPanel
          Left = 2
          Top = 5
          Width = 95
          Height = 35
          Caption = 'pnlIncRecebimento'
          Color = 4868682
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object btnAutorizar: TSpeedButton
            Left = 1
            Top = 1
            Width = 93
            Height = 33
            Action = actAutorizar
            Align = alClient
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = 2
            ExplicitTop = -1
          end
        end
      end
      object pnlDetail: TPanel
        Left = 0
        Top = 0
        Width = 680
        Height = 225
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 1
        object lbl2: TLabel
          Left = 0
          Top = 0
          Width = 680
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '     DADOS DO OR'#199'AMENTO'
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
          ExplicitTop = 8
        end
        object Label1: TLabel
          Left = 32
          Top = 40
          Width = 62
          Height = 17
          Caption = 'Liberado ?'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 112
          Top = 40
          Width = 187
          Height = 17
          Caption = 'Cadastro - Usu'#225'rio/Data e Hora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 312
          Top = 40
          Width = 191
          Height = 17
          Caption = 'Libera'#231#227'o - Usu'#225'rio/Data e Hora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 32
          Top = 104
          Width = 141
          Height = 17
          Caption = 'Justificativa Vendedor(a)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 32
          Top = 61
          Width = 62
          Height = 25
          DataField = 'LIBERADO'
          DataSource = dsOrcamentos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 112
          Top = 61
          Width = 187
          Height = 25
          DataField = 'USUARIO'
          DataSource = dsOrcamentos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 312
          Top = 61
          Width = 187
          Height = 25
          DataField = 'USU_LIBEROU'
          DataSource = dsOrcamentos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBMemo1: TDBMemo
          Left = 32
          Top = 125
          Width = 467
          Height = 89
          DataField = 'JUSTIFICATIVA'
          DataSource = dsOrcamentos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
  end
  inherited actlst1: TActionList
    Left = 440
    Top = 328
    object actAutorizar: TAction
      Caption = 'AUTORIZAR'
      OnExecute = actAutorizarExecute
    end
    object actLocalizar: TAction
      Caption = 'Pesquisar'
      OnExecute = actLocalizarExecute
    end
  end
  object cdsOrcamentos: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT a.EMISSAO,a.LIBERADO,a.SOLICITACAO justificativa,a.TIPO_L' +
      'IBERACAO motivo,'#13#10'a.USUARIO,a.USU_LIBEROU,'#13#10'b.NOME_RAZAO cliente' +
      ',c.DESCRICAO formapagto,a.ID,'#13#10'sum(d.VTOTAL) valor'#13#10'FROM ORCAMEN' +
      'TO a'#13#10'left outer join CLIENTE b on (b.CODIGO=a.ID_CLIENTE)'#13#10'left' +
      ' outer join CONDPAGTO c on (c.CODIGO=a.ID_FORMAPAGTO)'#13#10'left oute' +
      'r join ORCAMENTO_ITEM d on (d.ID_ORCAMENTO=a.ID)'#13#10'where 1=2'#13#10'gro' +
      'up by 1,2,3,4,5,6,7,8,9;'
    FieldDefs = <
      item
        Name = 'EMISSAO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'LIBERADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'JUSTIFICATIVA'
        DataType = ftMemo
      end
      item
        Name = 'MOTIVO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'USU_LIBEROU'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CLIENTE'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FORMAPAGTO'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'VALOR'
        Attributes = [faReadonly]
        DataType = ftFMTBcd
        Precision = 18
        Size = 5
      end>
    IndexDefs = <
      item
        Name = 'EMISSAO'
        Fields = 'EMISSAO'
        Options = [ixDescending]
      end>
    IndexName = 'EMISSAO'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    StoreDefs = True
    Left = 512
    Top = 326
    object cdsOrcamentosEMISSAO: TDateField
      DisplayLabel = 'DATA DE EMISS'#195'O'
      FieldName = 'EMISSAO'
      Required = True
    end
    object cdsOrcamentosLIBERADO: TStringField
      FieldName = 'LIBERADO'
      FixedChar = True
      Size = 3
    end
    object cdsOrcamentosJUSTIFICATIVA: TMemoField
      FieldName = 'JUSTIFICATIVA'
      BlobType = ftMemo
    end
    object cdsOrcamentosMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 50
    end
    object cdsOrcamentosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object cdsOrcamentosUSU_LIBEROU: TStringField
      FieldName = 'USU_LIBEROU'
      Size = 100
    end
    object cdsOrcamentosCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ReadOnly = True
      Size = 100
    end
    object cdsOrcamentosFORMAPAGTO: TStringField
      DisplayLabel = 'FORMA DE PAGTO.'
      FieldName = 'FORMAPAGTO'
      ReadOnly = True
      Size = 100
    end
    object cdsOrcamentosVALOR: TFMTBCDField
      DisplayLabel = 'VALOR R$'
      FieldName = 'VALOR'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 5
    end
    object cdsOrcamentosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsOrcamentos: TDataSource
    DataSet = cdsOrcamentos
    Left = 616
    Top = 326
  end
end

inherited FrmCad_Servico: TFrmCad_Servico
  Caption = 'Cadastro de Servi'#231'os'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Caption = '         CADASTRO DE SERVI'#199'O'
  end
  inherited pnlFundo0: TPanel
    inherited pnlFundo1: TPanel
      object Label1: TLabel [0]
        Left = 10
        Top = 41
        Width = 49
        Height = 17
        Caption = 'CODIGO'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [1]
        Left = 10
        Top = 91
        Width = 73
        Height = 17
        Caption = 'DESCRI'#199#195'O*'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [2]
        Left = 10
        Top = 141
        Width = 72
        Height = 17
        Caption = 'CUSTO* (R$)'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [3]
        Left = 178
        Top = 141
        Width = 71
        Height = 17
        Caption = 'VALOR* (R$)'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel [4]
        Left = 13
        Top = 191
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
      object Label20: TLabel [5]
        Left = 390
        Top = 45
        Width = 98
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'SITUA'#199#194'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      inherited Panel4: TPanel
        TabOrder = 6
      end
      object DBEdit1: TDBEdit
        Left = 10
        Top = 62
        Width = 134
        Height = 25
        DataField = 'CODIGO'
        DataSource = ds
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
        Left = 10
        Top = 112
        Width = 480
        Height = 25
        DataField = 'NOME'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 10
        Top = 162
        Width = 134
        Height = 25
        DataField = 'PRECO_CUSTO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 178
        Top = 162
        Width = 134
        Height = 25
        DataField = 'PRECO_VENDA'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object dbpsqsUnidade: TDBPesquisa
        Left = 6
        Top = 212
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
        Mostrar.DataField = 'SIGLA'
        Mostrar.DataSource = ds
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
        Campo.DataSource = ds
        Campo.Font.Charset = ANSI_CHARSET
        Campo.Font.Color = clWindowText
        Campo.Font.Height = -13
        Campo.Font.Name = 'Segoe UI Semibold'
        Campo.Font.Style = [fsBold]
        Campo.ParentFont = False
        Campo.TabOrder = 0
        OnPesquisa = dbpsqsUnidadePesquisa
        TabOrder = 5
        TabStop = True
      end
      object dbcbbSITUACAO: TDBComboBox
        Left = 390
        Top = 64
        Width = 100
        Height = 25
        Style = csDropDownList
        Color = clWhite
        DataField = 'SITUACAO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'ATIVO'
          'INATIVO')
        ParentFont = False
        TabOrder = 1
        TabStop = False
      end
    end
  end
  inherited cds: TClientDataSet
    CommandText = 
      'select P.CODIGO, P.NOME, P.PRECO_VENDA, P.COD_UNIDADE,'#13#10'P.PRECO_' +
      'CUSTO, P.SITUACAO, U.SIGLA,P.ULTIMA_ALTERACAO'#13#10'from PRODUTO P'#13#10'l' +
      'eft join UNIDADE U on (U.CODIGO = P.COD_UNIDADE)'#13#10'where 1=2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    AfterInsert = cdsAfterInsert
    BeforePost = cdsBeforePost
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsPRECO_VENDA: TCurrencyField
      FieldName = 'PRECO_VENDA'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsCOD_UNIDADE: TIntegerField
      FieldName = 'COD_UNIDADE'
    end
    object cdsPRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '#,##0.00'
    end
    object cdsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Required = True
      Size = 10
    end
    object cdsSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object cdsULTIMA_ALTERACAO: TStringField
      FieldName = 'ULTIMA_ALTERACAO'
      Size = 200
    end
  end
end

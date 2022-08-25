inherited Frm_TipoNotaEntrada: TFrm_TipoNotaEntrada
  Caption = 'Frm_Historico'
  ClientHeight = 269
  ExplicitHeight = 269
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Caption = '        CADASTRO DE HIST'#211'RICO'
    ExplicitTop = 2
  end
  inherited pnlFundo0: TPanel
    Height = 239
    ExplicitHeight = 239
    inherited Panel1: TPanel
      inherited pnlSair: TPanel
        TabOrder = 6
      end
      inherited pnlGravar: TPanel
        TabOrder = 5
      end
      inherited pnlCancelar: TPanel
        TabOrder = 4
      end
      inherited pnlExcluir: TPanel
        TabOrder = 2
      end
      inherited pnlEditar: TPanel
        TabOrder = 1
      end
      inherited pnlAdicionar: TPanel
        TabOrder = 0
      end
    end
    inherited pnlFundo1: TPanel
      Height = 164
      ExplicitHeight = 164
      object Label1: TLabel [0]
        Left = 230
        Top = 22
        Width = 78
        Height = 17
        Caption = 'Identifica'#231#227'o*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [1]
        Left = 62
        Top = 51
        Width = 62
        Height = 17
        Caption = 'Descri'#231#227'o*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [2]
        Left = 28
        Top = 80
        Width = 96
        Height = 17
        Caption = 'D'#233'bito/Cr'#233'dito *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [3]
        Left = 81
        Top = 22
        Width = 43
        Height = 17
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      inherited Panel4: TPanel
        Top = 143
        TabOrder = 5
        ExplicitTop = 143
      end
      object DBEdit1: TDBEdit
        Left = 312
        Top = 19
        Width = 77
        Height = 25
        CharCase = ecUpperCase
        DataField = 'CHAVE'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 128
        Top = 48
        Width = 365
        Height = 25
        DataField = 'DESCRICAO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBComboBox1: TDBComboBox
        Left = 128
        Top = 77
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        Color = clWhite
        DataField = 'DEBITO_CREDITO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'D'#233'bito'
          'Cr'#233'dito')
        ParentFont = False
        TabOrder = 3
      end
      object dbpsqsGrupo: TDBPesquisa
        Left = 9
        Top = 103
        Width = 451
        Height = 27
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 116
        Titulo.Height = 17
        Titulo.Caption = 'Grupo do hist'#243'rico*'
        Titulo.Font.Charset = ANSI_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -13
        Titulo.Font.Name = 'Segoe UI'
        Titulo.Font.Style = []
        Titulo.ParentFont = False
        ConsultaTabela.Tabela = 'HISTORICO_GRUPO'
        ConsultaTabela.Pesquisa = 'codigo'
        ConsultaTabela.Mostrar = 'descri'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        Mostrar.Left = 200
        Mostrar.Top = 0
        Mostrar.Width = 250
        Mostrar.Height = 25
        Mostrar.TabStop = False
        Mostrar.DataField = 'GRUPO'
        Mostrar.DataSource = ds
        Mostrar.Font.Charset = ANSI_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -13
        Mostrar.Font.Name = 'Segoe UI Semibold'
        Mostrar.Font.Style = [fsBold]
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 118
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 25
        Campo.CharCase = ecUpperCase
        Campo.DataField = 'ID_GRUPO'
        Campo.DataSource = ds
        Campo.Font.Charset = ANSI_CHARSET
        Campo.Font.Color = clWindowText
        Campo.Font.Height = -13
        Campo.Font.Name = 'Segoe UI Semibold'
        Campo.Font.Style = [fsBold]
        Campo.ParentFont = False
        Campo.TabOrder = 0
        OnPesquisa = dbpsqsGrupoPesquisa
        TabOrder = 4
        TabStop = True
      end
      object DBEdit3: TDBEdit
        Left = 128
        Top = 19
        Width = 77
        Height = 25
        DataField = 'ID'
        DataSource = ds
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  inherited ds: TDataSource
    Left = 392
    Top = 152
  end
  inherited cds: TClientDataSet
    CommandText = 
      'select a.*,b.descri grupo'#13#10'from HISTORICO a'#13#10'left outer join HIS' +
      'TORICO_GRUPO b on (b.codigo = a.id_grupo)'#13#10'where 1 = 2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = cdsAfterInsert
    Left = 392
    Top = 104
    object cdsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 6
    end
    object cdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cdsDEBITO_CREDITO: TStringField
      FieldName = 'DEBITO_CREDITO'
      Required = True
      Size = 10
    end
    object cdsID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 30
    end
  end
  inherited actMaster: TActionList
    Left = 448
    Top = 112
  end
end

inherited Frm_Transportadora: TFrm_Transportadora
  Caption = 'Cadastro de Transportadora'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [1]
    Left = 0
    Top = 30
    Width = 585
    Height = 515
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados da Transportadora'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 3
        Top = 23
        Width = 130
        Height = 13
        Caption = 'Pessoa F'#237'sica / Juridica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 5
        Top = 47
        Width = 39
        Height = 13
        Caption = 'Nome*'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 4
        Top = 73
        Width = 20
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbinscestadual: TLabel
        Left = 3
        Top = 103
        Width = 103
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbinscmunicipal: TLabel
        Left = 3
        Top = 130
        Width = 108
        Height = 13
        Caption = 'Inscri'#231#227'o Municipal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBComboBox1: TDBComboBox
        Left = 147
        Top = 15
        Width = 145
        Height = 21
        Style = csDropDownList
        DataField = 'TIPO_PESSOA'
        DataSource = ds
        Items.Strings = (
          'Pessoa Fisica'
          'Pessoa Juridica')
        TabOrder = 0
        OnChange = DBComboBox1Change
      end
      object DBEdit1: TDBEdit
        Left = 148
        Top = 42
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RAZAO'
        DataSource = ds
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 148
        Top = 69
        Width = 238
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CPF'
        DataSource = ds
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 149
        Top = 100
        Width = 238
        Height = 21
        CharCase = ecUpperCase
        DataField = 'INSC_ESTADUAL'
        DataSource = ds
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 149
        Top = 127
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        DataField = 'INSC_MUNICIPAL'
        DataSource = ds
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados Adicionais'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label12: TLabel
        Left = 11
        Top = 24
        Width = 49
        Height = 13
        Caption = 'Telefone'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 11
        Top = 48
        Width = 39
        Height = 13
        Caption = 'Celular'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 11
        Top = 78
        Width = 22
        Height = 13
        Caption = 'Site'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 11
        Top = 106
        Width = 42
        Height = 13
        Caption = 'E-mail*'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit10: TDBEdit
        Left = 155
        Top = 21
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CONTATO_FONE'
        DataSource = ds
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 155
        Top = 45
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CONTATO_CEL'
        DataSource = ds
        TabOrder = 1
      end
      object DBEdit12: TDBEdit
        Left = 155
        Top = 75
        Width = 328
        Height = 21
        DataField = 'CONTATO_SITE'
        DataSource = ds
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 147
        Top = 102
        Width = 341
        Height = 21
        DataField = 'CONTATO_EMAIL'
        DataSource = ds
        TabOrder = 3
      end
      object DBPesquisa1: TDBPesquisa
        Left = 11
        Top = 129
        Width = 399
        Height = 21
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 64
        Titulo.Height = 13
        Titulo.Caption = 'Fornecedor'
        Titulo.Font.Charset = DEFAULT_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -11
        Titulo.Font.Name = 'Tahoma'
        Titulo.Font.Style = [fsBold]
        Titulo.ParentFont = False
        ConsultaTabela.Tabela = 'FABRICANTE'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'RAZAO_NOME'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        Mostrar.Left = 148
        Mostrar.Top = 0
        Mostrar.Width = 250
        Mostrar.Height = 21
        Mostrar.TabStop = False
        Mostrar.DataField = 'FORNECEDOR'
        Mostrar.DataSource = ds
        Mostrar.Font.Charset = DEFAULT_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -11
        Mostrar.Font.Name = 'Tahoma'
        Mostrar.Font.Style = []
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 66
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.DataField = 'CODFORNECEDOR'
        Campo.DataSource = ds
        Campo.TabOrder = 0
        OnPesquisa = DBPesquisa1Pesquisa
        TabOrder = 4
        TabStop = True
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 3
      object Label22: TLabel
        Left = 3
        Top = 16
        Width = 20
        Height = 13
        Caption = 'CEP'
        FocusControl = DBEdit17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 3
        Top = 70
        Width = 44
        Height = 13
        Caption = 'N'#250'mero'
        FocusControl = DBEdit19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 3
        Top = 104
        Width = 79
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 3
        Top = 127
        Width = 34
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 2
        Top = 154
        Width = 38
        Height = 13
        Caption = 'Cidade'
        FocusControl = DBEdit22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit17: TDBEdit
        Left = 121
        Top = 13
        Width = 134
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEP'
        DataSource = ds
        TabOrder = 0
      end
      object DBEdit18: TDBEdit
        Left = 121
        Top = 40
        Width = 341
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERECO'
        DataSource = ds
        TabOrder = 1
      end
      object DBEdit19: TDBEdit
        Left = 121
        Top = 67
        Width = 134
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMERO'
        DataSource = ds
        TabOrder = 2
      end
      object DBEdit20: TDBEdit
        Left = 121
        Top = 94
        Width = 341
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COMPLEMENTO'
        DataSource = ds
        TabOrder = 3
      end
      object DBEdit21: TDBEdit
        Left = 121
        Top = 124
        Width = 341
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = ds
        TabOrder = 4
      end
      object DBEdit22: TDBEdit
        Left = 121
        Top = 151
        Width = 341
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = ds
        TabOrder = 5
      end
      object DBPesquisa2: TDBPesquisa
        Left = 3
        Top = 182
        Width = 457
        Height = 21
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 122
        Titulo.Height = 13
        Titulo.Caption = 'Estado                            '
        Titulo.Font.Charset = DEFAULT_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -11
        Titulo.Font.Name = 'Tahoma'
        Titulo.Font.Style = [fsBold]
        Titulo.ParentFont = False
        ConsultaTabela.Tabela = 'ESTADO'
        ConsultaTabela.Pesquisa = 'sigla'
        ConsultaTabela.Mostrar = 'nome'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        Mostrar.Left = 206
        Mostrar.Top = 0
        Mostrar.Width = 250
        Mostrar.Height = 21
        Mostrar.TabStop = False
        Mostrar.DataField = 'ESTADO'
        Mostrar.DataSource = ds
        Mostrar.Font.Charset = DEFAULT_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -11
        Mostrar.Font.Name = 'Tahoma'
        Mostrar.Font.Style = []
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 124
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.DataField = 'COD_EST'
        Campo.DataSource = ds
        Campo.TabOrder = 0
        OnPesquisa = DBPesquisa2Pesquisa
        TabOrder = 6
        TabStop = True
      end
      object DBPesquisa3: TDBPesquisa
        Left = 3
        Top = 218
        Width = 457
        Height = 21
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 122
        Titulo.Height = 13
        Titulo.Caption = 'Pa'#237's                                 '
        Titulo.Font.Charset = DEFAULT_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -11
        Titulo.Font.Name = 'Tahoma'
        Titulo.Font.Style = [fsBold]
        Titulo.ParentFont = False
        ConsultaTabela.Tabela = 'PAIS'
        ConsultaTabela.Pesquisa = 'codigo'
        ConsultaTabela.Mostrar = 'nome'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        Mostrar.Left = 206
        Mostrar.Top = 0
        Mostrar.Width = 250
        Mostrar.Height = 21
        Mostrar.TabStop = False
        Mostrar.DataField = 'PAIS'
        Mostrar.DataSource = ds
        Mostrar.Font.Charset = DEFAULT_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -11
        Mostrar.Font.Name = 'Tahoma'
        Mostrar.Font.Style = []
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 124
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.DataField = 'COD_PAIS'
        Campo.DataSource = ds
        Campo.TabOrder = 0
        OnPesquisa = DBPesquisa3Pesquisa
        TabOrder = 7
        TabStop = True
      end
    end
  end
  inherited ds: TDataSource
    Left = 224
    Top = 272
  end
  inherited cds: TClientDataSet
    CommandText = 
      'select t.*, f.razao_nome fornecedor, e.nome estado, p.nome pais ' +
      'from transportadora t  left outer join fabricante f on (f.codigo' +
      ' = t.codfornecedor)  left outer join ESTADO e on (e.sigla = f.co' +
      'd_est) left outer join PAIS p on (p.codigo = f.cod_pais) where t' +
      '.codigo = 1   '
    AfterInsert = cdsAfterInsert
    Left = 184
    Top = 280
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'RAZAO'
      Size = 60
    end
    object cdsFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 30
    end
    object cdsCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object cdsCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object cdsCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
    end
    object cdsISENTO_ICMS: TStringField
      FieldName = 'ISENTO_ICMS'
      Origin = 'ISENTO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = 'INSC_ESTADUAL'
      Size = 15
    end
    object cdsINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Origin = 'INSC_MUNICIPAL'
    end
    object cdsMODAL: TStringField
      FieldName = 'MODAL'
      Origin = 'MODAL'
    end
    object cdsCONTATO_FONE: TStringField
      FieldName = 'CONTATO_FONE'
      Origin = 'CONTATO_FONE'
      Size = 15
    end
    object cdsCONTATO_CEL: TStringField
      FieldName = 'CONTATO_CEL'
      Origin = 'CONTATO_CEL'
      Size = 15
    end
    object cdsCONTATO_EMAIL: TStringField
      FieldName = 'CONTATO_EMAIL'
      Origin = 'CONTATO_EMAIL'
      Size = 40
    end
    object cdsCONTATO_NOME: TStringField
      FieldName = 'CONTATO_NOME'
      Origin = 'CONTATO_NOME'
    end
    object cdsCONTATO_SITE: TStringField
      FieldName = 'CONTATO_SITE'
      Origin = 'CONTATO_SITE'
      Size = 50
    end
    object cdsCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object cdsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 45
    end
    object cdsNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object cdsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 45
    end
    object cdsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object cdsCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 40
    end
    object cdsCOD_PAIS: TIntegerField
      FieldName = 'COD_PAIS'
      Origin = 'COD_PAIS'
    end
    object cdsCOD_EST: TStringField
      FieldName = 'COD_EST'
      Origin = 'COD_EST'
      FixedChar = True
      Size = 2
    end
    object cdsFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'RAZAO_NOME'
      ProviderFlags = []
      Size = 60
    end
    object cdsESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 30
    end
    object cdsPAIS: TStringField
      FieldName = 'PAIS'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 40
    end
  end
  inherited actMaster: TActionList
    Left = 136
    Top = 264
  end
end

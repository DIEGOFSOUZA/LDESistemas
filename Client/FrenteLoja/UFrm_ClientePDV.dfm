object Frm_ClientePDV: TFrm_ClientePDV
  Left = 0
  Top = 0
  ClientHeight = 553
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 553
    Align = alClient
    TabOrder = 0
    object pnlConsulta: TPanel
      Left = 1
      Top = 1
      Width = 493
      Height = 58
      Align = alTop
      ParentColor = True
      TabOrder = 0
      object imgConfirma: TImage
        Left = 397
        Top = 20
        Width = 16
        Height = 16
        Hint = 'Confirma o Cliente'
        ParentShowHint = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF61000000097048597300000B1300000B1301009A9C18
          000001354944415478DAA5D33148824114C0F1F76D394890368443041108B665
          6D0D36D9D0D010B6D9A8E054D462530D21CDD91034AA34441114410E6D95BB10
          4108D1E4D21EE4FFE87D721DA7143DF80DF77D77EFBB7BDFBB40FC318A254CE9
          F81577F8702706CE388E7DE4708F677D3E8345D45146D79720896B3CA2684FB2
          92579146166D3B8179D9C2018E657814B08339F391308159348635F95D9CE90E
          0B8116AC8369CFB6ED184103E7B8C20B264D8255E4B1326471149778C3063E75
          7C6A126C62025B9845440B19460C377840095FFAFC10EF6E8205CD9CD73F92C0
          AD6EBBECECAA9FC03DC23C2E50D12F1EE96437FA47F01531A585324D75E2591C
          B78BF8EFDF1866FC4B236DCB7747767DADFCA493DC9E18D77A980E5C16A795ED
          B3ED615DFC97A9865D197099EC3085CDC8CFEBDC14CF75EE013ADA49B5B7F30B
          3F0000000049454E44AE426082}
        ShowHint = True
        OnClick = imgConfirmaClick
      end
      object imgAdd: TImage
        Left = 437
        Top = 13
        Width = 32
        Height = 32
        Hint = 'Adicionar Cliente'
        ParentShowHint = False
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000473424954080808087C0864880000000970
          48597300000B1300000B1301009A9C18000001AF4944415478DAEDD7CF2B0461
          1CC7F159362549C94128243F23CAC9553950D88BB87070401191FC0F0E1BB2F9
          799072C065519CE40F50C2819036A1B84849A4FC7A3FCDA86DDBE97966F79936
          B5DF7AD5ECF33C3DF399D9D9EFB41E23C1E54906F84F01B2310E1F4AACB16B04
          E1C7B39B01CA70807C9BF93B345A81B40748C5316A24EBC49A7AFCE80ED08C3D
          C5FD9AB0AF3BC0042615F713CF885F778001CC2BEED78F25DD01C4531F54DCAF
          1D3BBA030C22A0B85F1F9623C6C41DCCC52316620920365D540CD08B9588B113
          D4E21475B1042844082992755F28C2BDEE00A236D12159B3812EEBD817363E65
          05BBC168D8F8969300239896AC19C6AC75ACD28C3C4E0254E14CB2A602976E05
          10B58E4E9BB93574877DD6FE15882AC785CD9C783B866CE6B43C84A2C46FF9C1
          662E074F6E0728C595CD5CB161DEE268157723CA421BC6A25D81554798C1365E
          1C5C946D002F5AD18316A429EEF76198AFEE55ECE2D369800C0C19E66F3ACFC9
          954429D11145EF98C3BB4A8006C3EC7805719E38B26E0DB38B1ECA029CA352F3
          C9FF4A34B16A598037A4BB14E01599B200DF867BFF13C49BD22B0B90904A0648
          78805FABAA51213A1203890000000049454E44AE426082}
        ShowHint = True
        OnClick = imgAddClick
      end
      object edpProduto: TEdPesquisa
        Left = 1
        Top = 26
        Width = 392
        Height = 21
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'PRODUTO'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'NOME'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edpProdutoPesquisa
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 57
        Titulo.Height = 17
        Titulo.Caption = 'Produto: '
        Titulo.Font.Charset = ANSI_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -13
        Titulo.Font.Name = 'Segoe UI Semibold'
        Titulo.Font.Style = [fsBold]
        Titulo.ParentFont = False
        Mostrar.Left = 141
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
        Campo.Left = 59
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.TabOrder = 0
        Campo.OnKeyPress = edpProdutoedtCampoKeyPress
        TabOrder = 1
        TabStop = True
      end
      object edpCliente: TEdPesquisa
        Left = 10
        Top = 18
        Width = 383
        Height = 21
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'CLIENTE'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'NOME_RAZAO'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edpClientePesquisa
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 48
        Titulo.Height = 17
        Titulo.Caption = 'Cliente: '
        Titulo.Font.Charset = ANSI_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -13
        Titulo.Font.Name = 'Segoe UI Semibold'
        Titulo.Font.Style = [fsBold]
        Titulo.ParentFont = False
        Mostrar.Left = 132
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
        Campo.Left = 50
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.TabOrder = 0
        Campo.OnKeyPress = edpClienteedtCampoKeyPress
        TabOrder = 0
        TabStop = True
      end
    end
    object pnlCadastro: TPanel
      Left = 1
      Top = 59
      Width = 493
      Height = 452
      Align = alClient
      ParentColor = True
      TabOrder = 1
      ExplicitTop = 58
      object lblTitulo: TLabel
        Left = 1
        Top = 1
        Width = 491
        Height = 30
        Align = alTop
        AutoSize = False
        Caption = '         Cadastro de Cliente'
        Color = 16748574
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitLeft = 2
        ExplicitTop = 9
        ExplicitWidth = 630
      end
      object Label1: TLabel
        Left = 18
        Top = 48
        Width = 111
        Height = 17
        Caption = 'TIPO DE PESSOA *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCPFCNPJ: TLabel
        Left = 194
        Top = 48
        Width = 33
        Height = 17
        Caption = 'CPF *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRgInsc: TLabel
        Left = 337
        Top = 48
        Width = 17
        Height = 17
        Caption = 'RG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDtNasc: TLabel
        Left = 17
        Top = 104
        Width = 136
        Height = 17
        Caption = 'DT  NASC.(ddmmaaaa)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNomeRazao: TLabel
        Left = 17
        Top = 154
        Width = 45
        Height = 17
        Caption = 'NOME*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbbPessoa: TComboBox
        Left = 18
        Top = 67
        Width = 145
        Height = 25
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = cbbPessoaChange
        Items.Strings = (
          'FISICA'
          'JURIDICA')
      end
      object edtCpfCnpj: TEdit
        Left = 194
        Top = 67
        Width = 121
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 1
        OnExit = edtCpfCnpjExit
      end
      object edtRGInsc: TEdit
        Left = 337
        Top = 67
        Width = 121
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 2
        OnExit = edtRGInscExit
      end
      object edtDtNasc: TEdit
        Left = 17
        Top = 123
        Width = 121
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 3
        OnExit = edtDtNascExit
      end
      object rgSexo: TRadioGroup
        Left = 179
        Top = 98
        Width = 279
        Height = 41
        Caption = 'SEXO'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Items.Strings = (
          'MASCULINO'
          'FEMININO')
        ParentFont = False
        TabOrder = 4
        TabStop = True
      end
      object edtNomeRazao: TEdit
        Left = 18
        Top = 175
        Width = 440
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object grpEndereco: TGroupBox
        Left = 18
        Top = 206
        Width = 441
        Height = 131
        Caption = 'ENDERE'#199'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object lblCep: TLabel
          Left = 9
          Top = 21
          Width = 33
          Height = 17
          Caption = 'CEP *'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblLogradouro: TLabel
          Left = 97
          Top = 21
          Width = 76
          Height = 17
          Caption = 'ENDERE'#199'O *'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNumero: TLabel
          Left = 393
          Top = 21
          Width = 16
          Height = 17
          Caption = 'N'#186
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblComplemento: TLabel
          Left = 9
          Top = 70
          Width = 96
          Height = 17
          Caption = 'COMPLEMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblBairro: TLabel
          Left = 130
          Top = 70
          Width = 47
          Height = 17
          Caption = 'BAIRRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCidade: TLabel
          Left = 258
          Top = 70
          Width = 46
          Height = 17
          Caption = 'CIDADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUF: TLabel
          Left = 402
          Top = 70
          Width = 26
          Height = 17
          Caption = 'UF *'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtCep: TEdit
          Left = 9
          Top = 40
          Width = 75
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
          OnExit = edtCepExit
        end
        object edtLogradouro: TEdit
          Left = 97
          Top = 39
          Width = 285
          Height = 25
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object edtNumero: TEdit
          Left = 393
          Top = 40
          Width = 40
          Height = 25
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtComplemento: TEdit
          Left = 9
          Top = 89
          Width = 116
          Height = 25
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object edtBairro: TEdit
          Left = 130
          Top = 89
          Width = 123
          Height = 25
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object cbbUF: TComboBox
          Left = 401
          Top = 89
          Width = 40
          Height = 25
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Items.Strings = (
            'AC'
            'AL'
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO')
        end
        object cbbCidades: TComboBox
          Left = 258
          Top = 89
          Width = 136
          Height = 25
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
      object grpContato: TGroupBox
        Left = 17
        Top = 359
        Width = 441
        Height = 85
        Caption = 'CONTATO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object lblFone: TLabel
          Left = 15
          Top = 24
          Width = 61
          Height = 17
          Caption = 'TELEFONE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblCelular: TLabel
          Left = 123
          Top = 24
          Width = 53
          Height = 17
          Caption = 'CELULAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblEmail: TLabel
          Left = 230
          Top = 24
          Width = 38
          Height = 17
          Caption = 'EMAIL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtFoneDDD: TEdit
          Left = 7
          Top = 43
          Width = 22
          Height = 25
          Alignment = taRightJustify
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
        end
        object edtFone: TEdit
          Left = 35
          Top = 43
          Width = 70
          Height = 25
          Alignment = taRightJustify
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
        end
        object edtCelularDDD: TEdit
          Left = 114
          Top = 43
          Width = 22
          Height = 25
          Alignment = taRightJustify
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 2
        end
        object edtCelular: TEdit
          Left = 142
          Top = 43
          Width = 80
          Height = 25
          Alignment = taRightJustify
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 3
        end
        object edtEmail: TEdit
          Left = 230
          Top = 43
          Width = 204
          Height = 25
          CharCase = ecLowerCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 511
      Width = 493
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 2
      object btnGravar: TButton
        Left = 292
        Top = 5
        Width = 90
        Height = 32
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ImageIndex = 3
        Images = DM.il2
        ParentFont = False
        TabOrder = 0
        OnClick = btnGravarClick
      end
      object btnCancelar: TButton
        Left = 391
        Top = 5
        Width = 90
        Height = 32
        Caption = 'Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ImageIndex = 4
        Images = DM.il2
        ParentFont = False
        TabOrder = 1
        OnClick = btnCancelarClick
      end
    end
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    CommandText = 'select a.* from CLIENTE a '#13#10'where 1 = 2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 429
    Top = 410
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object cdsClienteRG_INSC: TStringField
      FieldName = 'RG_INSC'
      Size = 30
    end
    object cdsClienteNOME_RAZAO: TStringField
      FieldName = 'NOME_RAZAO'
      Size = 100
    end
    object cdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsClienteDATA_NASC: TStringField
      FieldName = 'DATA_NASC'
      Size = 10
    end
    object cdsClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object cdsClienteEST_CIVIL: TStringField
      FieldName = 'EST_CIVIL'
      Size = 15
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 45
    end
    object cdsClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClienteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object cdsClienteDDD_FONE: TStringField
      FieldName = 'DDD_FONE'
      Size = 3
    end
    object cdsClienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsClienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsClienteDDD_CEL: TStringField
      FieldName = 'DDD_CEL'
      Size = 3
    end
    object cdsClienteCEL: TStringField
      FieldName = 'CEL'
      Size = 15
    end
    object cdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
    object cdsClienteSITE: TStringField
      FieldName = 'SITE'
      Size = 30
    end
    object cdsClienteCOD_RAMOATIVIDADE: TIntegerField
      FieldName = 'COD_RAMOATIVIDADE'
    end
    object cdsClienteCOD_REPRESENTANTE: TIntegerField
      FieldName = 'COD_REPRESENTANTE'
    end
    object cdsClientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
    end
    object cdsClienteDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
  end
end

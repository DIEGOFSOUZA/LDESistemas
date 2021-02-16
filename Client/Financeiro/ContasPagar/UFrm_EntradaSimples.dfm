inherited Frm_EntradaSimples: TFrm_EntradaSimples
  ActiveControl = Panel1
  Caption = 'Frm_EntradaSimples'
  ClientWidth = 972
  Visible = False
  OnShow = FormShow
  ExplicitWidth = 972
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 972
    Caption = '         Adicionar documento'
    ExplicitWidth = 972
  end
  inherited pnlFundo0: TPanel
    Width = 972
    ExplicitWidth = 972
    inherited pnlFundo1: TPanel
      Width = 889
      ExplicitLeft = 82
      ExplicitTop = 1
      ExplicitWidth = 889
      inherited Panel4: TPanel
        Width = 887
        ExplicitWidth = 887
      end
      object pnlUserInclusao: TPanel
        Left = 1
        Top = 1
        Width = 887
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlUserInclusao'
        Color = 10114859
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        object lblDataInclusao: TLabel
          Left = 10
          Top = 4
          Width = 189
          Height = 17
          AutoSize = False
          Caption = 'Data da inclus'#227'o: 13/06/2020'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblUsuarioInclusao: TLabel
          Left = 209
          Top = 4
          Width = 163
          Height = 17
          Caption = 'Usu'#225'rio: ADMINISTRADOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
      object pnlDados: TPanel
        Left = 1
        Top = 26
        Width = 887
        Height = 120
        Align = alTop
        Caption = 'pnlDados'
        ShowCaption = False
        TabOrder = 2
        object Label1: TLabel
          Left = 23
          Top = 45
          Width = 57
          Height = 17
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 34
          Top = 74
          Width = 46
          Height = 17
          Caption = 'N'#186' Doc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 459
          Top = 44
          Width = 70
          Height = 17
          Caption = 'Observa'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 226
          Top = 74
          Width = 54
          Height = 17
          Caption = 'Valor R$*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object dbpsqsFornecedor: TDBPesquisa
          Left = 5
          Top = 12
          Width = 411
          Height = 27
          Titulo.Left = 0
          Titulo.Top = 3
          Titulo.Width = 76
          Titulo.Height = 17
          Titulo.Caption = 'Fornecedor* '
          Titulo.Font.Charset = ANSI_CHARSET
          Titulo.Font.Color = clWindowText
          Titulo.Font.Height = -13
          Titulo.Font.Name = 'Segoe UI'
          Titulo.Font.Style = []
          Titulo.ParentFont = False
          ConsultaTabela.Tabela = 'fabricante'
          ConsultaTabela.Pesquisa = 'codigo'
          ConsultaTabela.Mostrar = 'razao_nome'
          ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
          Mostrar.Left = 160
          Mostrar.Top = 0
          Mostrar.Width = 250
          Mostrar.Height = 25
          Mostrar.TabStop = False
          Mostrar.DataField = 'FORNECEDOR'
          Mostrar.DataSource = ds
          Mostrar.Font.Charset = ANSI_CHARSET
          Mostrar.Font.Color = clBlue
          Mostrar.Font.Height = -13
          Mostrar.Font.Name = 'Segoe UI Semibold'
          Mostrar.Font.Style = [fsBold]
          Mostrar.ParentFont = False
          Mostrar.ReadOnly = True
          Mostrar.TabOrder = 1
          Campo.Left = 78
          Campo.Top = 0
          Campo.Width = 57
          Campo.Height = 21
          Campo.CharCase = ecUpperCase
          Campo.DataField = 'CODFOR'
          Campo.DataSource = ds
          Campo.TabOrder = 0
          OnPesquisa = dbpsqsFornecedorPesquisa
          TabOrder = 0
          TabStop = True
        end
        object DBEdit1: TDBEdit
          Left = 88
          Top = 42
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
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 88
          Top = 71
          Width = 105
          Height = 25
          DataField = 'N_NF'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnKeyPress = DBEdit2KeyPress
        end
        object DBMemo1: TDBMemo
          Left = 535
          Top = 42
          Width = 285
          Height = 48
          DataField = 'OBS'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit3: TDBEdit
          Left = 284
          Top = 71
          Width = 105
          Height = 25
          DataField = 'TOTNOTA'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnExit = DBEdit3Exit
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object pnlDuplicata: TPanel
        Left = 1
        Top = 146
        Width = 887
        Height = 340
        Align = alTop
        Caption = 'pnlDuplicata'
        ShowCaption = False
        TabOrder = 3
        object pnlTitDuplicata: TPanel
          Left = 1
          Top = 1
          Width = 885
          Height = 25
          Align = alTop
          BevelOuter = bvNone
          Caption = 'pnlUserInclusao'
          Color = 10114859
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object lbl1: TLabel
            Left = 10
            Top = 4
            Width = 189
            Height = 17
            AutoSize = False
            Caption = 'Duplicata'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object dbgrdParcela: TDBGrid
          Left = 1
          Top = 56
          Width = 885
          Height = 283
          Align = alClient
          DataSource = sParcela
          DrawingStyle = gdsGradient
          GradientEndColor = 13864803
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 4
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI Semibold'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'NDUP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DVENC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VDUP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAIXA_DATA'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAIXA_VALOR'
              ReadOnly = True
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BAIXA_USUARIO'
              ReadOnly = True
              Visible = True
            end>
        end
        object pnlAddDoc: TPanel
          Left = 512
          Top = 32
          Width = 120
          Height = 25
          BevelOuter = bvNone
          Caption = 'pnlAddMovimentacao'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 1
          TabStop = True
          OnClick = actGerarDupExecute
          object imglAddDoc: TImage
            Left = 2
            Top = 0
            Width = 25
            Height = 25
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
              00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000001
              E94944415478DACD96CB2B44611887CF71499428762C28B94449CA1FA02899EC
              E4B291612116944B4821915B1865E3962D4B97054A6CAD48B9CC2CCC46167259
              A1A8F1BC3953C731976F0C9AAF9E7E73E67DDFEF37DFF58CAEFD43D323C6C4E3
              F1E420659001A9F0086ED8D575FD3224133A3B422E286C319E2B90112836A589
              41124419CFA73040CDB6AAC9357202F5B00AB5700B2BB0012E3A7B252F86CFD9
              50056D906EC41B893FAB98B8201A4A61113A287C093095F1C820F4C0B1D4598D
              7C9964188FED24CFABAC99516B47966544D4D5AA98EC439F29E4A6F05EC16812
              E9061BF93B2A23313799EB35059304C40977E417F933A943127DD41F52E4549C
              36998131C8A5E6EA9BC96F344C0A9033CDB4A67F6122DBFB151C98747E312158
              89641170FC82D103B2455F0D5693191922C4117C0FC320D618C92CFD74594DC4
              600EF2099E8761E27F4D08E621D2791FC1F1304CFA9151CDDFEE2241EEAD14C8
              0E74950430503A2736640B2648EAFD81C91422EBE0FFC41B89EB48353493B81A
              824113B2A405BBBB4C433E80129886215FD7B7257F18E44C04BF852D85328A1A
              B88105D894F9A68337639BCADB52DE27AD90063203F6A0EF131F66724065A714
              7ABF82274836D5CA661930AF4148262633F9D5E590A97DEE3EB9F6E5C6DEF36E
              D3402D72FEAD84DB3E007CE4D21A209D50970000000049454E44AE426082}
            Stretch = True
            OnClick = actGerarDupExecute
          end
          object lbllAddDoc: TLabel
            Left = 31
            Top = 6
            Width = 84
            Height = 13
            Caption = 'Gerar duplicatas'
            Color = 7237230
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
            OnClick = actGerarDupExecute
          end
        end
        object pnlExcDup: TPanel
          Left = 648
          Top = 32
          Width = 122
          Height = 25
          BevelOuter = bvNone
          Caption = 'pnlAddMovimentacao'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 2
          OnClick = actExcDupExecute
          object imgExcDup: TImage
            Left = -1
            Top = 0
            Width = 25
            Height = 25
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
            Stretch = True
            OnClick = actExcDupExecute
          end
          object lblExcDup: TLabel
            Left = 28
            Top = 6
            Width = 85
            Height = 13
            Caption = 'Excluir duplicata'
            Color = 7237230
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
            OnClick = actExcDupExecute
          end
        end
        object dbnvgrParcela: TDBNavigator
          Left = 1
          Top = 26
          Width = 885
          Height = 30
          DataSource = sParcela
          VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
          Align = alTop
          Hints.Strings = (
            '')
          ParentShowHint = False
          ConfirmDelete = False
          ShowHint = False
          TabOrder = 3
          TabStop = True
          OnClick = dbnvgrParcelaClick
        end
      end
    end
  end
  inherited ds: TDataSource
    Left = 136
    Top = 344
  end
  inherited cds: TClientDataSet
    Active = True
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    ProviderName = 'dspEntrada'
    RemoteServer = DM.dspRemotoNotaEntrada
    AfterInsert = cdsAfterInsert
    AfterEdit = cdsAfterEdit
    AfterCancel = cdsAfterCancel
    Left = 136
    Top = 296
    object cdsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCODFOR: TIntegerField
      FieldName = 'CODFOR'
      Origin = 'CODFOR'
    end
    object cdsID_CONDPAGTO: TIntegerField
      FieldName = 'ID_CONDPAGTO'
      Origin = 'ID_CONDPAGTO'
    end
    object cdsID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
      Origin = 'ID_HISTORICO'
    end
    object cdsID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object cdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object cdsEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      Required = True
    end
    object cdsENTRADA: TDateField
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      Required = True
    end
    object cdsBASEICMS: TCurrencyField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
    end
    object cdsVALORICMS: TCurrencyField
      FieldName = 'VALORICMS'
      Origin = 'VALORICMS'
    end
    object cdsTOTPRODUTO: TCurrencyField
      FieldName = 'TOTPRODUTO'
      Origin = 'TOTPRODUTO'
    end
    object cdsFRETE: TCurrencyField
      FieldName = 'FRETE'
      Origin = 'FRETE'
    end
    object cdsSEGURO: TCurrencyField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
    end
    object cdsOUTRAS: TCurrencyField
      FieldName = 'OUTRAS'
      Origin = 'OUTRAS'
    end
    object cdsVALORIPI: TCurrencyField
      FieldName = 'VALORIPI'
      Origin = 'VALORIPI'
    end
    object cdsTOTNOTA: TCurrencyField
      FieldName = 'TOTNOTA'
      Origin = 'TOTNOTA'
      DisplayFormat = '#,##0.00'
    end
    object cdsOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object cdsDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object cdsN_NF: TIntegerField
      FieldName = 'N_NF'
      Origin = 'N_NF'
    end
    object cdsCNF: TIntegerField
      FieldName = 'CNF'
      Origin = 'CNF'
    end
    object cdsINDPAG: TIntegerField
      FieldName = 'INDPAG'
      Origin = 'INDPAG'
    end
    object cdsMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 2
    end
    object cdsSERIE: TIntegerField
      FieldName = 'SERIE'
      Origin = 'SERIE'
    end
    object cdsDSAIENT: TDateField
      FieldName = 'DSAIENT'
      Origin = 'DSAIENT'
    end
    object cdsHSAIENT: TTimeField
      FieldName = 'HSAIENT'
      Origin = 'HSAIENT'
    end
    object cdsTPNF: TStringField
      FieldName = 'TPNF'
      Origin = 'TPNF'
      FixedChar = True
      Size = 1
    end
    object cdsFINNFE: TIntegerField
      FieldName = 'FINNFE'
      Origin = 'FINNFE'
    end
    object cdsVBCST: TFMTBCDField
      FieldName = 'VBCST'
      Origin = 'VBCST'
      Precision = 18
      Size = 2
    end
    object cdsVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Origin = 'VDESC'
      Precision = 18
      Size = 2
    end
    object cdsVII: TFMTBCDField
      FieldName = 'VII'
      Origin = 'VII'
      Precision = 18
      Size = 2
    end
    object cdsVPIS: TFMTBCDField
      FieldName = 'VPIS'
      Origin = 'VPIS'
      Precision = 18
      Size = 2
    end
    object cdsVCOFINS: TFMTBCDField
      FieldName = 'VCOFINS'
      Origin = 'VCOFINS'
      Precision = 18
      Size = 2
    end
    object cdsMODFRETE: TStringField
      FieldName = 'MODFRETE'
      Origin = 'MODFRETE'
      Size = 50
    end
    object cdsINFCPL: TStringField
      FieldName = 'INFCPL'
      Origin = 'INFCPL'
      Size = 60
    end
    object cdsQVOL: TIntegerField
      FieldName = 'QVOL'
      Origin = 'QVOL'
    end
    object cdsESP: TStringField
      FieldName = 'ESP'
      Origin = 'ESP'
      Size = 60
    end
    object cdsMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 60
    end
    object cdsNVOL: TStringField
      FieldName = 'NVOL'
      Origin = 'NVOL'
      Size = 60
    end
    object cdsPESOL: TFMTBCDField
      FieldName = 'PESOL'
      Origin = 'PESOL'
      Precision = 18
      Size = 3
    end
    object cdsPESOB: TFMTBCDField
      FieldName = 'PESOB'
      Origin = 'PESOB'
      Precision = 18
      Size = 3
    end
    object cdsUFEMBARQ: TStringField
      FieldName = 'UFEMBARQ'
      Origin = 'UFEMBARQ'
      FixedChar = True
      Size = 2
    end
    object cdsXLOCEMBARQ: TStringField
      FieldName = 'XLOCEMBARQ'
      Origin = 'XLOCEMBARQ'
      Size = 60
    end
    object cdsADICINFCPL: TMemoField
      FieldName = 'ADICINFCPL'
      Origin = 'ADICINFCPL'
      BlobType = ftMemo
    end
    object cdsADICINFADFISCO: TMemoField
      FieldName = 'ADICINFADFISCO'
      Origin = 'ADICINFADFISCO'
      BlobType = ftMemo
    end
    object cdsVST: TFMTBCDField
      FieldName = 'VST'
      Origin = 'VST'
      Precision = 18
      Size = 2
    end
    object cdsCOMPRA_XNCOMPRA: TStringField
      FieldName = 'COMPRA_XNCOMPRA'
      Origin = 'COMPRA_XNCOMPRA'
      Size = 22
    end
    object cdsCOMPRA_XPED: TStringField
      FieldName = 'COMPRA_XPED'
      Origin = 'COMPRA_XPED'
      Size = 60
    end
    object cdsCOMPRA_XCONT: TStringField
      FieldName = 'COMPRA_XCONT'
      Origin = 'COMPRA_XCONT'
      Size = 60
    end
    object cdsISSQN_VSERV: TFMTBCDField
      FieldName = 'ISSQN_VSERV'
      Origin = 'ISSQN_VSERV'
      Precision = 18
      Size = 2
    end
    object cdsISSQN_VBC: TFMTBCDField
      FieldName = 'ISSQN_VBC'
      Origin = 'ISSQN_VBC'
      Precision = 18
      Size = 2
    end
    object cdsISSQN_VISS: TFMTBCDField
      FieldName = 'ISSQN_VISS'
      Origin = 'ISSQN_VISS'
      Precision = 18
      Size = 2
    end
    object cdsISSQN_VPIS: TFMTBCDField
      FieldName = 'ISSQN_VPIS'
      Origin = 'ISSQN_VPIS'
      Precision = 18
      Size = 2
    end
    object cdsISSQN_VCOFINS: TFMTBCDField
      FieldName = 'ISSQN_VCOFINS'
      Origin = 'ISSQN_VCOFINS'
      Precision = 18
      Size = 2
    end
    object cdsIMPORTADA: TStringField
      FieldName = 'IMPORTADA'
      Origin = 'IMPORTADA'
      FixedChar = True
      Size = 1
    end
    object cdsCHAVE: TStringField
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 100
    end
    object cdsTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      Origin = 'TIPO_NOTA'
      Size = 10
    end
    object cdsTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 10
    end
    object cdsDT_ENTREGA: TDateField
      FieldName = 'DT_ENTREGA'
      Origin = 'DT_ENTREGA'
    end
    object cdsNAT_OPERACAO: TStringField
      FieldName = 'NAT_OPERACAO'
      Origin = 'NAT_OPERACAO'
      Size = 50
    end
    object cdsTOT_IPI: TFMTBCDField
      FieldName = 'TOT_IPI'
      Origin = 'TOT_IPI'
      Precision = 18
      Size = 2
    end
    object cdsTR_PLACA: TStringField
      FieldName = 'TR_PLACA'
      Origin = 'TR_PLACA'
    end
    object cdsTR_PLACAUF: TStringField
      FieldName = 'TR_PLACAUF'
      Origin = 'TR_PLACAUF'
      FixedChar = True
      Size = 2
    end
    object cdsTR_RAZAO: TStringField
      FieldName = 'TR_RAZAO'
      Origin = 'TR_RAZAO'
      Size = 100
    end
    object cdsTR_CPFCNPJ: TStringField
      FieldName = 'TR_CPFCNPJ'
      Origin = 'TR_CPFCNPJ'
    end
    object cdsTR_INSC: TStringField
      FieldName = 'TR_INSC'
      Origin = 'TR_INSC'
      Size = 30
    end
    object cdsTR_CEP: TStringField
      FieldName = 'TR_CEP'
      Origin = 'TR_CEP'
    end
    object cdsTR_ENDERECO: TStringField
      FieldName = 'TR_ENDERECO'
      Origin = 'TR_ENDERECO'
      Size = 100
    end
    object cdsLOG: TMemoField
      FieldName = 'LOG'
      Origin = '"LOG"'
      BlobType = ftMemo
    end
    object cdsTR_ANTT: TStringField
      FieldName = 'TR_ANTT'
      Origin = 'TR_ANTT'
      Size = 30
    end
    object cdsFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 60
    end
    object cdsfdqryEntrada_Pagar: TDataSetField
      FieldName = 'fdqryEntrada_Pagar'
    end
    object cdsfdqryEntrada_Item: TDataSetField
      FieldName = 'fdqryEntrada_Item'
    end
  end
  inherited actMaster: TActionList
    Left = 280
    Top = 304
    object actGerarDup: TAction
      Caption = 'actGerarDup'
      OnExecute = actGerarDupExecute
    end
    object actExcDup: TAction
      Caption = 'actExcDup'
      OnExecute = actExcDupExecute
    end
  end
  object dsParcela: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsfdqryEntrada_Pagar
    Params = <>
    BeforeInsert = dsParcelaBeforeInsert
    BeforeEdit = dsParcelaBeforeDelete
    BeforeDelete = dsParcelaBeforeDelete
    Left = 184
    Top = 296
    object dsParcelaID_NOTAENTRADA: TIntegerField
      FieldName = 'ID_NOTAENTRADA'
      Origin = 'ID_NOTAENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsParcelaNFAT: TIntegerField
      FieldName = 'NFAT'
      Origin = 'NFAT'
    end
    object dsParcelaVDESC: TBCDField
      FieldName = 'VDESC'
      Origin = 'VDESC'
      Precision = 18
      Size = 2
    end
    object dsParcelaVJUROS: TBCDField
      FieldName = 'VJUROS'
      Origin = 'VJUROS'
      Precision = 18
      Size = 2
    end
    object dsParcelaVDUP: TBCDField
      FieldName = 'VDUP'
      Origin = 'VDUP'
      Precision = 18
      Size = 2
    end
    object dsParcelaNDUP: TIntegerField
      FieldName = 'NDUP'
      Origin = 'NDUP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsParcelaDVENC: TDateField
      FieldName = 'DVENC'
      Origin = 'DVENC'
      Required = True
    end
    object dsParcelaINDPAG: TStringField
      FieldName = 'INDPAG'
      Origin = 'INDPAG'
      Size = 10
    end
    object dsParcelaTPAG: TStringField
      FieldName = 'TPAG'
      Origin = 'TPAG'
      Size = 10
    end
    object dsParcelaBAIXA_DATA: TDateField
      FieldName = 'BAIXA_DATA'
      Origin = 'BAIXA_DATA'
    end
    object dsParcelaBAIXA_VALOR: TBCDField
      FieldName = 'BAIXA_VALOR'
      Origin = 'BAIXA_VALOR'
      Precision = 18
      Size = 2
    end
    object dsParcelaBAIXA_USUARIO: TStringField
      FieldName = 'BAIXA_USUARIO'
      Origin = 'BAIXA_USUARIO'
    end
    object dsParcelaID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
      Origin = 'ID_HISTORICO'
    end
    object dsParcelaID_CONTA: TStringField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
      FixedChar = True
      Size = 5
    end
    object dsParcelaID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = 'ID_CAIXA'
    end
    object dsParcelaCHEQUE_NUMERO: TIntegerField
      FieldName = 'CHEQUE_NUMERO'
      Origin = 'CHEQUE_NUMERO'
    end
    object dsParcelaID_PAGTO: TIntegerField
      FieldName = 'ID_PAGTO'
      Origin = 'ID_PAGTO'
    end
    object dsParcelaFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'FORMA'
      Size = 50
    end
  end
  object sParcela: TDataSource
    DataSet = dsParcela
    OnStateChange = dsStateChange
    Left = 184
    Top = 344
  end
end

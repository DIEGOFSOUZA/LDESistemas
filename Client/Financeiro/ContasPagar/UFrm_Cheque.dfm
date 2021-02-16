inherited Frm_Cheque: TFrm_Cheque
  Caption = 'Frm_Cheque'
  ExplicitTop = -56
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Caption = '         Cadastro e consulta de cheque'
  end
  inherited pnlFundo: TPanel
    inherited pgc: TPageControl
      inherited tsLista: TTabSheet
        Caption = 'Consultar'
        inherited pnlPesquisa: TPanel
          Height = 73
          BevelOuter = bvNone
          ExplicitTop = 1
          ExplicitHeight = 73
          object Label7: TLabel
            Left = 58
            Top = 36
            Width = 104
            Height = 17
            Caption = 'Emiss'#227'o per'#237'odo*'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object edpsqsListaConta: TEdPesquisa
            Left = 95
            Top = 7
            Width = 374
            Height = 25
            PermitirBranco = Sim
            ConsultaTabela.Tabela = 'CONTA_BANCARIA'
            ConsultaTabela.Pesquisa = 'id'
            ConsultaTabela.Mostrar = 'bco_nome'
            ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
            OnPesquisa = edpsqsListaContaPesquisa
            Titulo.Left = 0
            Titulo.Top = 3
            Titulo.Width = 39
            Titulo.Height = 17
            Titulo.Caption = 'Conta*'
            Titulo.Font.Charset = ANSI_CHARSET
            Titulo.Font.Color = clWindowText
            Titulo.Font.Height = -13
            Titulo.Font.Name = 'Segoe UI'
            Titulo.Font.Style = []
            Titulo.ParentFont = False
            Mostrar.Left = 123
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
            Campo.Left = 41
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
            TabOrder = 0
            TabStop = True
          end
          object dtp1: TDateTimePicker
            Left = 172
            Top = 36
            Width = 104
            Height = 25
            Date = 44053.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.415504259261069800
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object dtp2: TDateTimePicker
            Left = 280
            Top = 36
            Width = 104
            Height = 25
            Date = 44053.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.415504259261069800
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object pnlLocaliza: TPanel
            Left = 396
            Top = 36
            Width = 120
            Height = 30
            BevelOuter = bvNone
            Color = 7024384
            ParentBackground = False
            TabOrder = 3
            object btnCancelar: TSpeedButton
              Left = 0
              Top = 0
              Width = 120
              Height = 30
              Action = actBuscar
              Align = alClient
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              ExplicitWidth = 81
            end
            object imgLocaliza: TImage
              Left = 0
              Top = 2
              Width = 25
              Height = 25
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
                00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000001
                FD4944415478DAE595CD2B65611CC7CF89A4BC242F0D16329486525336D3C43F
                204A0A69CA4B19212C34C8628A228BCB86C58CF7B794BA59C84BF68A85C550CA
                2C46A46610530C1183EBF3EB9CC5ED74CFB90F49E4D4A76FE7DCDFF7F9DEE73C
                CFF33BBAF60497FE7A423C1E4F08926392046FE0047EC234CCEABAFEFF41210C
                2EBF7D8636888533D88063888764903FB0078D044D9ABE8F4804F70B8E211406
                23C3500C6BD00A8B182FBD6A829002F802EF610C2AC02DF7D4BEB50D31673001
                9FA0071A30DC38CC381069876618822895904AA40F5C1436A92E2EBE5EA4164E
                E1AF6D88B9C8BF601F3228BC55183C0B4905797D9D100A3B4E2145C814E45134
                A338836F4895E5B163C8B804408CF722FB098946C22D8FAFF1EFDA85ACC833AE
                0FAA6BA1725943643BCAA28D3C7440C6906D2DE764C067C8635C84AC22978464
                DACD240109B4F8FE6138520C90437C08D378CAEC42B691448BF73B866AC5907C
                CDE8678578DCFE42A44FB5C0156C6258520808407E4024A4E039770A91B61006
                BD14D6DF632DBA910628C737EAFD9BAF1069887FA006FAA10ED3959F19746846
                EF9AA0B6C45A631722DB70104A611DBAC06DE9C2B2C8D99AD1A1D3410E72A5AF
                436C0D11D33185CBE6BD746217C481BCE32DF86DBED234CDF89EC8FD57A7B3A5
                F265942D9D0BB273DE41041C6846239D8739022E9CC6781EDFF817137207EEAA
                C61ACAB26F4B0000000049454E44AE426082}
              Stretch = True
            end
          end
        end
        inherited pnlGrids: TPanel
          Top = 73
          Height = 409
          ExplicitTop = 73
          ExplicitHeight = 409
          object lbl2: TLabel [0]
            Left = 0
            Top = 0
            Width = 575
            Height = 18
            Align = alTop
            AutoSize = False
            Caption = '  Dados do cheque'
            Color = 10114859
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
            ExplicitTop = -4
          end
          object Label8: TLabel [1]
            Left = 0
            Top = 288
            Width = 575
            Height = 18
            Align = alTop
            AutoSize = False
            Caption = '  Duplicata vinculada ao cheque'
            Color = 10114859
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
            ExplicitTop = 220
          end
          inherited dbgrdParcela: TDBGrid
            Top = 306
            Height = 86
            TabStop = False
            Align = alTop
            DataSource = sListaDetail
            Columns = <
              item
                Expanded = False
                FieldName = 'DOC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PARCELA'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENCTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FORNECEDOR'
                Visible = True
              end>
          end
          object dbgrd2: TDBGrid
            Left = 0
            Top = 18
            Width = 575
            Height = 270
            TabStop = False
            Align = alTop
            DataSource = sLista
            DrawingStyle = gdsGradient
            GradientEndColor = 13864803
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnTitleClick = dbgrdParcelaTitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'NUM_CHEQUE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DT_EMISSAO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DT_COMPENSA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMINAL'
                Visible = True
              end>
          end
        end
      end
      inherited tsCrud: TTabSheet
        Caption = 'Cadastrar'
        object pnlFundoCadastro: TPanel [1]
          Left = 64
          Top = 0
          Width = 511
          Height = 482
          Align = alClient
          BevelOuter = bvNone
          Color = 14803681
          ParentBackground = False
          TabOrder = 1
          object Label2: TLabel
            Left = 22
            Top = 106
            Width = 87
            Height = 25
            AutoSize = False
            Caption = 'N'#186' do cheque*'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label1: TLabel
            Left = 22
            Top = 73
            Width = 107
            Height = 25
            AutoSize = False
            Caption = 'Data de emiss'#227'o*'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label3: TLabel
            Left = 227
            Top = 73
            Width = 134
            Height = 25
            AutoSize = False
            Caption = 'Data de compensa'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label4: TLabel
            Left = 270
            Top = 106
            Width = 58
            Height = 25
            AutoSize = False
            Caption = 'Valor R$*'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label5: TLabel
            Left = 22
            Top = 139
            Width = 58
            Height = 25
            AutoSize = False
            Caption = 'Nominal*'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label6: TLabel
            Left = 25
            Top = 172
            Width = 73
            Height = 17
            AutoSize = False
            Caption = 'Observa'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object lblLeitura: TLabel
            Left = 0
            Top = 0
            Width = 511
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = 'Apenas leitura - Duplicata vinculada: Doc. 012 | Duplicata: 001'
            Color = 10114859
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
            Visible = False
            ExplicitWidth = 385
          end
          object dbpsqsConta: TDBPesquisa
            Left = 68
            Top = 40
            Width = 374
            Height = 25
            Titulo.Left = 0
            Titulo.Top = 3
            Titulo.Width = 39
            Titulo.Height = 17
            Titulo.Caption = 'Conta*'
            Titulo.Font.Charset = ANSI_CHARSET
            Titulo.Font.Color = clWindowText
            Titulo.Font.Height = -13
            Titulo.Font.Name = 'Segoe UI'
            Titulo.Font.Style = []
            Titulo.ParentFont = False
            ConsultaTabela.Tabela = 'CONTA_BANCARIA'
            ConsultaTabela.Pesquisa = 'ID'
            ConsultaTabela.Mostrar = 'BCO_NOME'
            ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
            Mostrar.Left = 123
            Mostrar.Top = 0
            Mostrar.Width = 250
            Mostrar.Height = 25
            Mostrar.TabStop = False
            Mostrar.DataField = 'BCO_NOME'
            Mostrar.DataSource = sPrincipal
            Mostrar.Font.Charset = ANSI_CHARSET
            Mostrar.Font.Color = clBlue
            Mostrar.Font.Height = -13
            Mostrar.Font.Name = 'Segoe UI'
            Mostrar.Font.Style = []
            Mostrar.ParentFont = False
            Mostrar.ReadOnly = True
            Mostrar.TabOrder = 1
            Campo.Left = 41
            Campo.Top = 0
            Campo.Width = 57
            Campo.Height = 25
            Campo.CharCase = ecUpperCase
            Campo.DataField = 'ID_BANCO'
            Campo.DataSource = sPrincipal
            Campo.Font.Charset = ANSI_CHARSET
            Campo.Font.Color = clWindowText
            Campo.Font.Height = -13
            Campo.Font.Name = 'Segoe UI'
            Campo.Font.Style = []
            Campo.ParentFont = False
            Campo.TabOrder = 0
            OnPesquisa = dbpsqsContaPesquisa
            TabOrder = 0
            TabStop = True
          end
          object DBEdit1: TDBEdit
            Left = 114
            Top = 106
            Width = 121
            Height = 25
            DataField = 'NUM_CHEQUE'
            DataSource = sPrincipal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit2: TDBEdit
            Left = 133
            Top = 73
            Width = 90
            Height = 25
            DataField = 'DT_EMISSAO'
            DataSource = sPrincipal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnKeyPress = DBEdit2KeyPress
          end
          object DBEdit3: TDBEdit
            Left = 365
            Top = 73
            Width = 90
            Height = 25
            DataField = 'DT_COMPENSA'
            DataSource = sPrincipal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyPress = DBEdit2KeyPress
          end
          object DBEdit4: TDBEdit
            Left = 332
            Top = 106
            Width = 121
            Height = 25
            DataField = 'VALOR'
            DataSource = sPrincipal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = DBEdit4KeyPress
          end
          object DBEdit5: TDBEdit
            Left = 84
            Top = 139
            Width = 393
            Height = 25
            CharCase = ecUpperCase
            DataField = 'NOMINAL'
            DataSource = sPrincipal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object dbmmo: TDBMemo
            Left = 25
            Top = 197
            Width = 452
            Height = 108
            DataField = 'OBS'
            DataSource = sPrincipal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
        end
        inherited pnl1: TPanel
          TabOrder = 2
        end
      end
    end
  end
  inherited dsLista: TClientDataSet
    CommandText = 
      'SELECT  r.NUM_CHEQUE, r.DT_EMISSAO,'#13#10'r.DT_COMPENSA, r.VALOR, r.N' +
      'OMINAL '#13#10'FROM CHEQUE r '#13#10'left outer join CONTA_BANCARIA a on (a.' +
      'ID = r.ID_BANCO) '#13#10'where 1 = 2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterScroll = dsListaAfterScroll
    object dsListaNUM_CHEQUE: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'N'#186' cheque'
      FieldName = 'NUM_CHEQUE'
      Origin = 'NUM_CHEQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsListaDT_EMISSAO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
      Required = True
    end
    object dsListaDT_COMPENSA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Compensa'#231#227'o'
      FieldName = 'DT_COMPENSA'
      Origin = 'DT_COMPENSA'
      Required = True
    end
    object dsListaVALOR: TFMTBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object dsListaNOMINAL: TStringField
      DisplayLabel = 'Nominal'
      FieldName = 'NOMINAL'
      Origin = 'NOMINAL'
      Size = 30
    end
  end
  inherited dsPrincipal: TClientDataSet
    CommandText = 
      'SELECT r.ID_BANCO, r.NUM_CHEQUE, r.DT_EMISSAO, r.DT_COMPENSA, r.' +
      'VALOR,'#13#10'    r.NOMINAL, r.OBS,a.BCO_NOME'#13#10'FROM CHEQUE r'#13#10'left out' +
      'er join CONTA_BANCARIA a on (a.ID = r.ID_BANCO)'#13#10'where 1 = 2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = dsPrincipalAfterInsert
    object dsPrincipalID_BANCO: TStringField
      FieldName = 'ID_BANCO'
      Required = True
      FixedChar = True
      Size = 5
    end
    object dsPrincipalNUM_CHEQUE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'NUM_CHEQUE'
      Required = True
    end
    object dsPrincipalDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Required = True
    end
    object dsPrincipalDT_COMPENSA: TDateField
      FieldName = 'DT_COMPENSA'
      Required = True
    end
    object dsPrincipalVALOR: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object dsPrincipalNOMINAL: TStringField
      FieldName = 'NOMINAL'
      Size = 30
    end
    object dsPrincipalOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object dsPrincipalBCO_NOME: TStringField
      FieldName = 'BCO_NOME'
      Size = 40
    end
  end
  inherited actMaster: TActionList
    object actBuscar: TAction
      Caption = '        Localizar(Ctrl+F2)'
      ShortCut = 16497
      OnExecute = actBuscarExecute
    end
  end
  object dsListaDetail: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select a.ID_NOTAENTRADA doc, a.NDUP parcela,a.DVENC vencto,a.VDU' +
      'P valor,'#13#10'c.razao_nome fornecedor'#13#10'from NOTA_ENTRADA b '#13#10'left ou' +
      'ter join NOTA_ENTRADA_PAGAR a on (a.ID_NOTAENTRADA = b.ID) '#13#10'lef' +
      't outer join FABRICANTE c on (c.CODIGO = b.CODFOR) '#13#10'where 1 = 2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 189
    Top = 301
    object dsListaDetailDOC: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'N'#186' Doc.'
      FieldName = 'DOC'
      Origin = 'DOC'
    end
    object dsListaDetailPARCELA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
      DisplayFormat = '000'
    end
    object dsListaDetailVENCTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Vencimento'
      FieldName = 'VENCTO'
      Origin = 'VENCTO'
    end
    object dsListaDetailVALOR: TFMTBCDField
      DisplayLabel = 'Valor da baixa R$'
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object dsListaDetailFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 60
    end
  end
  object sListaDetail: TDataSource
    DataSet = dsListaDetail
    Left = 189
    Top = 365
  end
end

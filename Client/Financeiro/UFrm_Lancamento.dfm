inherited Frm_Lancamento: TFrm_Lancamento
  Caption = 'Frm_Lancamento'
  ClientWidth = 600
  ExplicitTop = -56
  ExplicitWidth = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 600
    Caption = '   Lan'#231'amento em conta'
    ExplicitWidth = 508
  end
  inherited imgFechar: TImage
    Left = 563
    Width = 33
    Anchors = [akTop, akRight, akBottom]
    ExplicitLeft = 471
    ExplicitWidth = 33
  end
  inherited pnlFundo: TPanel
    Width = 600
    ExplicitWidth = 600
    inherited pgc: TPageControl
      Width = 598
      ActivePage = tsCrud
      OnChange = pgcChange
      OnDrawTab = pgcDrawTab
      ExplicitWidth = 598
      inherited tsLista: TTabSheet
        Caption = 'Lan'#231'amentos'
        ExplicitWidth = 590
        inherited pnlPesquisa: TPanel
          Width = 590
          Height = 73
          ExplicitWidth = 590
          ExplicitHeight = 73
          object Label1: TLabel
            Left = 86
            Top = 37
            Width = 46
            Height = 17
            Caption = 'Per'#237'odo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object edpsqsListaConta: TEdPesquisa
            Left = 91
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
            Left = 136
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
            Left = 244
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
            Left = 360
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
              Action = actLancamentos
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
              OnClick = actLancamentosExecute
            end
          end
        end
        inherited pnlGrids: TPanel
          Top = 73
          Width = 590
          Height = 409
          ExplicitTop = 73
          ExplicitWidth = 590
          ExplicitHeight = 409
          inherited dbgrdParcela: TDBGrid
            Width = 590
            Height = 409
            OnDblClick = dbgrdParcelaDblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'DC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTMOVTO'
                Title.Alignment = taCenter
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOC'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Width = 160
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'RAZAO_NOME'
                Visible = True
              end>
          end
        end
      end
      inherited tsCrud: TTabSheet
        Caption = 'Cadastrar'
        ExplicitWidth = 590
        inherited Panel1: TPanel
          inherited pnlLocalizar: TPanel
            Visible = False
          end
        end
        inherited pnl1: TPanel
          Width = 526
          TabOrder = 2
          ExplicitLeft = 64
          ExplicitTop = 0
          ExplicitWidth = 526
          ExplicitHeight = 482
        end
        object pnlCrud: TPanel
          Left = 64
          Top = 0
          Width = 526
          Height = 482
          Align = alClient
          BevelOuter = bvNone
          Color = 14803681
          ParentBackground = False
          TabOrder = 1
          ExplicitLeft = 62
          ExplicitTop = 1
          object Label2: TLabel
            Left = 22
            Top = 143
            Width = 87
            Height = 25
            AutoSize = False
            Caption = 'Data emiss'#227'o*'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label3: TLabel
            Left = 238
            Top = 143
            Width = 50
            Height = 25
            AutoSize = False
            Caption = 'N'#186' Doc.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
          end
          object Label4: TLabel
            Left = 243
            Top = 174
            Width = 56
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
            Left = 26
            Top = 176
            Width = 93
            Height = 25
            AutoSize = False
            Caption = 'D'#233'bito/Cr'#233'dito*'
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
            Top = 207
            Width = 73
            Height = 25
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
          object dbpsqsConta: TDBPesquisa
            Left = 50
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
            Campo.DataField = 'ID_CONTA'
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
          object dbpsqsHist: TDBPesquisa
            Left = 37
            Top = 73
            Width = 387
            Height = 25
            Titulo.Left = 0
            Titulo.Top = 3
            Titulo.Width = 52
            Titulo.Height = 17
            Titulo.Caption = 'Hist'#243'rico'
            Titulo.Font.Charset = ANSI_CHARSET
            Titulo.Font.Color = clWindowText
            Titulo.Font.Height = -13
            Titulo.Font.Name = 'Segoe UI'
            Titulo.Font.Style = []
            Titulo.ParentFont = False
            ConsultaTabela.Tabela = 'HISTORICO'
            ConsultaTabela.Pesquisa = 'id'
            ConsultaTabela.Mostrar = 'descricao'
            ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
            Mostrar.Left = 136
            Mostrar.Top = 0
            Mostrar.Width = 250
            Mostrar.Height = 25
            Mostrar.TabStop = False
            Mostrar.DataField = 'DESCRICAO'
            Mostrar.DataSource = sPrincipal
            Mostrar.Font.Charset = ANSI_CHARSET
            Mostrar.Font.Color = clBlue
            Mostrar.Font.Height = -13
            Mostrar.Font.Name = 'Segoe UI'
            Mostrar.Font.Style = []
            Mostrar.ParentFont = False
            Mostrar.ReadOnly = True
            Mostrar.TabOrder = 1
            Campo.Left = 54
            Campo.Top = 0
            Campo.Width = 57
            Campo.Height = 25
            Campo.CharCase = ecUpperCase
            Campo.DataField = 'ID_HISTORICO'
            Campo.DataSource = sPrincipal
            Campo.Font.Charset = ANSI_CHARSET
            Campo.Font.Color = clWindowText
            Campo.Font.Height = -13
            Campo.Font.Name = 'Segoe UI'
            Campo.Font.Style = []
            Campo.ParentFont = False
            Campo.TabOrder = 0
            OnPesquisa = dbpsqsHistPesquisa
            TabOrder = 1
            TabStop = True
          end
          object dbpsqsForn: TDBPesquisa
            Left = 22
            Top = 106
            Width = 402
            Height = 25
            Titulo.Left = 0
            Titulo.Top = 3
            Titulo.Width = 67
            Titulo.Height = 17
            Titulo.Caption = 'Fornecedor'
            Titulo.Font.Charset = ANSI_CHARSET
            Titulo.Font.Color = clWindowText
            Titulo.Font.Height = -13
            Titulo.Font.Name = 'Segoe UI'
            Titulo.Font.Style = []
            Titulo.ParentFont = False
            ConsultaTabela.Tabela = 'FABRICANTE'
            ConsultaTabela.Pesquisa = 'codigo'
            ConsultaTabela.Mostrar = 'razao_nome'
            ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
            Mostrar.Left = 151
            Mostrar.Top = 0
            Mostrar.Width = 250
            Mostrar.Height = 25
            Mostrar.TabStop = False
            Mostrar.DataField = 'RAZAO_NOME'
            Mostrar.DataSource = sPrincipal
            Mostrar.Font.Charset = ANSI_CHARSET
            Mostrar.Font.Color = clBlue
            Mostrar.Font.Height = -13
            Mostrar.Font.Name = 'Segoe UI'
            Mostrar.Font.Style = []
            Mostrar.ParentFont = False
            Mostrar.ReadOnly = True
            Mostrar.TabOrder = 1
            Campo.Left = 69
            Campo.Top = 0
            Campo.Width = 57
            Campo.Height = 25
            Campo.CharCase = ecUpperCase
            Campo.DataField = 'ID_FORNECEDOR'
            Campo.DataSource = sPrincipal
            Campo.Font.Charset = ANSI_CHARSET
            Campo.Font.Color = clWindowText
            Campo.Font.Height = -13
            Campo.Font.Name = 'Segoe UI'
            Campo.Font.Style = []
            Campo.ParentFont = False
            Campo.TabOrder = 0
            OnPesquisa = dbpsqsFornPesquisa
            TabOrder = 2
            TabStop = True
          end
          object dbedtEmissao: TDBEdit
            Left = 113
            Top = 143
            Width = 121
            Height = 25
            DataField = 'DTMOVTO'
            DataSource = sPrincipal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit1: TDBEdit
            Left = 292
            Top = 143
            Width = 121
            Height = 25
            DataField = 'DOC'
            DataSource = sPrincipal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit2: TDBEdit
            Left = 303
            Top = 176
            Width = 110
            Height = 25
            DataField = 'VALOR'
            DataSource = sPrincipal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnKeyPress = DBEdit2KeyPress
          end
          object DBComboBox1: TDBComboBox
            Left = 123
            Top = 177
            Width = 110
            Height = 22
            Style = csOwnerDrawFixed
            DataField = 'DC'
            DataSource = sPrincipal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            Items.Strings = (
              'D'#233'bito'
              'Cr'#233'dito')
            ParentFont = False
            TabOrder = 5
          end
          object dbmmo: TDBMemo
            Left = 25
            Top = 236
            Width = 397
            Height = 103
            DataField = 'OBS'
            DataSource = sPrincipal
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
        end
      end
    end
  end
  inherited dsLista: TClientDataSet
    CommandText = 
      'SELECT r.ID, r.ID_CONTA, r.DTMOVTO, r.DOC, r.VALOR,'#13#10'r.ID_HISTOR' +
      'ICO, r.DC,b.DESCRICAO,c.RAZAO_NOME '#13#10'FROM LANCAMENTO r '#13#10'left ou' +
      'ter join HISTORICO b on (b.ID = r.ID_HISTORICO) '#13#10'left outer joi' +
      'n FABRICANTE c on (c.CODIGO = r.ID_FORNECEDOR) '#13#10'where 1 = 2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    object dsListaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object dsListaID_CONTA: TStringField
      FieldName = 'ID_CONTA'
      Required = True
      FixedChar = True
      Size = 5
    end
    object dsListaDTMOVTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data'
      FieldName = 'DTMOVTO'
      Required = True
    end
    object dsListaDOC: TStringField
      DisplayLabel = 'N'#186' Doc.'
      FieldName = 'DOC'
      Size = 10
    end
    object dsListaVALOR: TFMTBCDField
      Alignment = taLeftJustify
      DisplayLabel = 'Valor R$'
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object dsListaID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object dsListaDC: TStringField
      Alignment = taCenter
      DisplayLabel = 'D'#233'b./Cr'#233'd.'
      FieldName = 'DC'
      Required = True
      FixedChar = True
      Size = 8
    end
    object dsListaDESCRICAO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 60
    end
    object dsListaRAZAO_NOME: TStringField
      DisplayLabel = 'Cliente/Fornecedor'
      FieldName = 'RAZAO_NOME'
      ReadOnly = True
      Size = 60
    end
  end
  inherited dsPrincipal: TClientDataSet
    CommandText = 
      'SELECT r.ID, r.ID_CONTA, r.DTMOVTO, r.DOC, r.VALOR, r.ID_HISTORI' +
      'CO, r.DC, r.OBS,'#13#10'    r.ID_FORNECEDOR,a.BCO_NOME,b.DESCRICAO,c.R' +
      'AZAO_NOME'#13#10'FROM LANCAMENTO r'#13#10'left outer join CONTA_BANCARIA a o' +
      'n (a.ID = r.ID_CONTA)'#13#10'left outer join HISTORICO b on (b.ID = r.' +
      'ID_HISTORICO)'#13#10'left outer join FABRICANTE c on (c.CODIGO = r.ID_' +
      'FORNECEDOR)'#13#10'where 1=2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = dsPrincipalAfterInsert
    object dsPrincipalID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '000'
    end
    object dsPrincipalID_CONTA: TStringField
      Alignment = taRightJustify
      FieldName = 'ID_CONTA'
      Required = True
      FixedChar = True
      Size = 5
    end
    object dsPrincipalDTMOVTO: TDateField
      FieldName = 'DTMOVTO'
      Required = True
    end
    object dsPrincipalDOC: TStringField
      FieldName = 'DOC'
      Size = 10
    end
    object dsPrincipalVALOR: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object dsPrincipalID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
    end
    object dsPrincipalOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object dsPrincipalID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object dsPrincipalDC: TStringField
      FieldName = 'DC'
      Required = True
      FixedChar = True
      Size = 8
    end
    object dsPrincipalBCO_NOME: TStringField
      FieldName = 'BCO_NOME'
      Size = 40
    end
    object dsPrincipalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object dsPrincipalRAZAO_NOME: TStringField
      FieldName = 'RAZAO_NOME'
      Size = 60
    end
  end
  inherited actMaster: TActionList
    object actLancamentos: TAction
      Caption = '       Localizar (Ctrl+F2)'
      ShortCut = 16497
      OnExecute = actLancamentosExecute
    end
  end
end

inherited Frm_NF_Entrada: TFrm_NF_Entrada
  Caption = 'Frm_NF_Entrada'
  ClientHeight = 640
  ClientWidth = 803
  ExplicitWidth = 803
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 803
    Caption = '         NOTA FISCAL - ENTRADA'
    ExplicitWidth = 1200
  end
  inherited pnlFundo0: TPanel
    Width = 803
    Height = 610
    ExplicitWidth = 803
    ExplicitHeight = 610
    inherited Panel1: TPanel
      Height = 608
      ExplicitHeight = 608
      inherited pnlSair: TPanel
        Top = 529
        ExplicitTop = 529
      end
      inherited pnlGravar: TPanel
        Top = 444
        ExplicitTop = 444
      end
      inherited pnlCancelar: TPanel
        Top = 359
        ExplicitTop = 359
      end
      inherited pnlLocalizar: TPanel
        Top = 274
        ExplicitTop = 274
      end
      inherited pnlExcluir: TPanel
        Top = 189
        ExplicitTop = 189
      end
      inherited pnlEditar: TPanel
        Top = 104
        ExplicitTop = 104
      end
      inherited pnlAdicionar: TPanel
        Top = 19
        ExplicitTop = 19
      end
    end
    inherited pnlFundo1: TPanel
      Width = 720
      Height = 608
      ExplicitWidth = 720
      ExplicitHeight = 608
      inherited Panel4: TPanel
        Top = 587
        Width = 718
        TabOrder = 3
        ExplicitTop = 587
        ExplicitWidth = 718
      end
      object pnlDados: TPanel
        Left = 1
        Top = 1
        Width = 718
        Height = 159
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        TabStop = True
        object Label1: TLabel
          Left = 92
          Top = 24
          Width = 75
          Height = 15
          Caption = 'TIPO DE NOTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 175
          Top = 24
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
        object Label5: TLabel
          Left = 588
          Top = 24
          Width = 113
          Height = 15
          Caption = 'DADOS DA ENTRADA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 0
          Top = 0
          Width = 718
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '        Dados Gerais'
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
          ExplicitLeft = 2
          ExplicitTop = -1
          ExplicitWidth = 710
        end
        object Label32: TLabel
          Left = 92
          Top = 68
          Width = 50
          Height = 15
          Caption = 'N'#218'MERO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 298
          Top = 68
          Width = 142
          Height = 15
          Caption = 'NATUREZA DA OPERA'#199#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 224
          Top = 68
          Width = 28
          Height = 15
          Caption = 'S'#201'RIE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label51: TLabel
          Left = 282
          Top = 24
          Width = 85
          Height = 15
          Caption = 'CHAVE DA NF-E'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 90
          Top = 114
          Width = 87
          Height = 15
          Caption = 'CLASSIFICA'#199#195'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object dtpEmissao: TDateTimePicker
          Left = 175
          Top = 41
          Width = 103
          Height = 22
          Date = 44165.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.387094571757188500
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = dtpEmissaoChange
        end
        object dbmmoLog: TDBMemo
          Left = 585
          Top = 41
          Width = 125
          Height = 67
          TabStop = False
          DataField = 'LOG'
          DataSource = ds
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object pnlNumNF: TPanel
          Left = -3
          Top = 20
          Width = 94
          Height = 88
          BevelOuter = bvNone
          Color = 7024384
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsItalic]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object lblNumNF: TLabel
            Left = 2
            Top = 19
            Width = 90
            Height = 50
            Alignment = taCenter
            AutoSize = False
            Layout = tlCenter
            WordWrap = True
          end
        end
        object DBEdit2: TDBEdit
          Left = 92
          Top = 85
          Width = 121
          Height = 23
          DataField = 'N_NF'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnChange = DBEdit2Change
        end
        object DBEdit3: TDBEdit
          Left = 224
          Top = 85
          Width = 53
          Height = 23
          DataField = 'SERIE'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBComboBox3: TDBComboBox
          Left = 92
          Top = 41
          Width = 79
          Height = 23
          Style = csDropDownList
          DataField = 'TIPO_NOTA'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Items.Strings = (
            'NF-E')
          ParentFont = False
          TabOrder = 1
          TabStop = False
        end
        object DBComboBox5: TDBComboBox
          Left = 298
          Top = 85
          Width = 249
          Height = 23
          Style = csDropDownList
          DataField = 'NAT_OPERACAO'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Items.Strings = (
            'COMPRA DENTRO DO ESTADO'
            'COMPRA FORA DO ESTADO'
            'OUTRAS ENTRADAS PARA FORA DO ESTADO')
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit4: TDBEdit
          Left = 282
          Top = 41
          Width = 299
          Height = 23
          DataField = 'CHAVE'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = DBEdit2Change
        end
        object dbpsqsClass: TDBPesquisa
          Left = 85
          Top = 131
          Width = 339
          Height = 25
          Titulo.Left = 0
          Titulo.Top = 3
          Titulo.Width = 4
          Titulo.Height = 17
          Titulo.Caption = ' '
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
          Mostrar.Left = 88
          Mostrar.Top = 0
          Mostrar.Width = 250
          Mostrar.Height = 25
          Mostrar.TabStop = False
          Mostrar.DataField = 'HISTORICO'
          Mostrar.DataSource = ds
          Mostrar.Font.Charset = ANSI_CHARSET
          Mostrar.Font.Color = clBlue
          Mostrar.Font.Height = -13
          Mostrar.Font.Name = 'Segoe UI'
          Mostrar.Font.Style = []
          Mostrar.ParentFont = False
          Mostrar.ReadOnly = True
          Mostrar.TabOrder = 1
          Campo.Left = 6
          Campo.Top = 0
          Campo.Width = 57
          Campo.Height = 25
          Campo.CharCase = ecUpperCase
          Campo.DataField = 'ID_HISTORICO'
          Campo.DataSource = ds
          Campo.Font.Charset = ANSI_CHARSET
          Campo.Font.Color = clWindowText
          Campo.Font.Height = -13
          Campo.Font.Name = 'Segoe UI'
          Campo.Font.Style = []
          Campo.ParentFont = False
          Campo.TabOrder = 0
          OnPesquisa = dbpsqsClassPesquisa
          TabOrder = 8
          TabStop = True
        end
      end
      object pnlFornecedor: TPanel
        Left = 1
        Top = 160
        Width = 718
        Height = 180
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        TabStop = True
        object Label6: TLabel
          Left = 34
          Top = 57
          Width = 52
          Height = 15
          Caption = 'FANTASIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 382
          Top = 57
          Width = 53
          Height = 15
          Caption = 'CPF/CNPJ'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 34
          Top = 97
          Width = 21
          Height = 15
          Caption = 'CEP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 322
          Top = 97
          Width = 59
          Height = 15
          Caption = 'ENDERE'#199'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 570
          Top = 97
          Width = 50
          Height = 15
          Caption = 'N'#218'MERO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 34
          Top = 137
          Width = 41
          Height = 15
          Caption = 'BAIRRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 217
          Top = 137
          Width = 87
          Height = 15
          Caption = 'COMPLEMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 505
          Top = 57
          Width = 107
          Height = 15
          Caption = 'RG/INSC. ESTADUAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 158
          Top = 97
          Width = 14
          Height = 15
          Caption = 'UF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 180
          Top = 97
          Width = 41
          Height = 15
          Caption = 'CIDADE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TLabel
          Left = 0
          Top = 0
          Width = 718
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '        Fornecedor'
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
          ExplicitWidth = 1115
        end
        object DBPesquisa2: TDBPesquisa
          Left = 34
          Top = 28
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
          Mostrar.DataField = 'FORNECEDOR'
          Mostrar.DataSource = ds
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
          Campo.DataField = 'CODFOR'
          Campo.DataSource = ds
          Campo.Font.Charset = ANSI_CHARSET
          Campo.Font.Color = clWindowText
          Campo.Font.Height = -13
          Campo.Font.Name = 'Segoe UI'
          Campo.Font.Style = []
          Campo.ParentFont = False
          Campo.TabOrder = 0
          Campo.OnChange = DBPesquisa2edtCampoChange
          OnPesquisa = DBPesquisa2Pesquisa
          TabOrder = 1
          TabStop = True
        end
        object pnlAddFornecedor: TPanel
          Left = 2
          Top = 22
          Width = 25
          Height = 25
          BevelOuter = bvNone
          Caption = 'pnlIncluiCondPagto'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object imglAddFornecedor: TImage
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            Align = alClient
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
              00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000002
              2F4944415478DACD964F4854511487EF8BA46C93586E2C2117CD180911D242D7
              4165E15609A3C52818812E8C62723304A538126244822608A2FB2C9DA86DB810
              4A90467B2D0A54C845519B1A289CBEC3BBC29BEB7DCE1B46C5071F67BCE777EE
              EFFE79EF5E1DB5078FB36F4CB2D96C0DE1129C8272F8015FE1B5E338CB4599D0
              F955C24338A79B36E0171C8503BA6D017A309B29C884CE4B0963D002ABF0145E
              804B67FFC81FE477149AE0369C80298891FF93D7441BBC857A4842C256E8D31F
              110DDC8139B868EA6D2632A26668433C1666CF745D8C300293D4B5069AE83D78
              09FD08EF8535F0D527F58C1AA99F0D32914D3C0EA76D4B44BE8A700566C9AF04
              2C9D0BEBE4EBB69820384348431C415FC0482F8B8118A1490568E284475083E6
              9369D2451884B324D34598D41216A10BCD9069F298D00987E535F5B59F9451E9
              3F2FE851DE8779DDB68C7ED5A72F216464C0B4779B26E3846B248E1923EB203C
              DB66BF6F51336CD4C889304DFB4DDB4C64C90EEDE64C36F7A496E4C71DD8934E
              344F4C1319ED928C92646F1126324B39EFA268DC1C132DF840A8800882DF960E
              C27C279FE19BF53BD1A246C22B4822BAAB0A7CA81F20749B33B59D5D93CA3B7D
              DB113E2FC0A04D7967D7047537FCB9A053F80D34808C2C615B3A63891EE819BC
              53DE299CD9D6C467340AD7614DE5DE277FF56BEABF4F2A65067AF619B3BF7C37
              A3BC4DF25D9CDF6C829F50E6AB7DAFBC9B3115D44FD83B3EA2BC3BBE1AE444F8
              0E5F9477C7BBF9EAF7CF7F2BC53EFF01783E0429E0295A060000000049454E44
              AE426082}
            ExplicitLeft = 8
            ExplicitTop = 8
            ExplicitWidth = 105
            ExplicitHeight = 105
          end
          object btnlAddFornecedor: TSpeedButton
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            Action = actAddFornecedor
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
        object edtFantasia: TEdit
          Left = 34
          Top = 75
          Width = 343
          Height = 23
          TabStop = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object edtCPFCNPJ: TEdit
          Left = 382
          Top = 75
          Width = 119
          Height = 23
          TabStop = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edtRGINSC: TEdit
          Left = 505
          Top = 75
          Width = 115
          Height = 23
          TabStop = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object edtCEP: TEdit
          Left = 34
          Top = 114
          Width = 119
          Height = 23
          TabStop = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object edtUF: TEdit
          Left = 155
          Top = 114
          Width = 21
          Height = 23
          TabStop = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object edtCidade: TEdit
          Left = 178
          Top = 114
          Width = 138
          Height = 23
          TabStop = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object edtEndereco: TEdit
          Left = 318
          Top = 114
          Width = 253
          Height = 23
          TabStop = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object edtNumero: TEdit
          Left = 573
          Top = 114
          Width = 50
          Height = 23
          TabStop = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object edtBairro: TEdit
          Left = 34
          Top = 154
          Width = 181
          Height = 23
          TabStop = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object edtComplemento: TEdit
          Left = 217
          Top = 154
          Width = 150
          Height = 23
          TabStop = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
      end
      object pnlPages: TPanel
        Left = 1
        Top = 340
        Width = 718
        Height = 247
        Align = alClient
        Caption = 'pnlPages'
        Color = 14803681
        ParentBackground = False
        ShowCaption = False
        TabOrder = 2
        TabStop = True
        object pgc1: TPageControl
          Left = 1
          Top = 1
          Width = 716
          Height = 245
          ActivePage = tsProdutoServico
          Align = alClient
          TabOrder = 0
          object tsProdutoServico: TTabSheet
            Caption = 'PRODUTOS/SERVI'#199'OS'
            object pnlItens: TPanel
              Left = 0
              Top = 8
              Width = 693
              Height = 198
              Caption = 'pnlItens'
              ShowCaption = False
              TabOrder = 0
              object pnlProdAdd: TPanel
                Left = 1
                Top = 1
                Width = 691
                Height = 50
                Align = alTop
                Caption = 'pnlProdAdd'
                Color = 13337441
                ParentBackground = False
                ShowCaption = False
                TabOrder = 0
                object pnlAdd: TPanel
                  Left = 596
                  Top = 1
                  Width = 94
                  Height = 48
                  Align = alRight
                  BevelOuter = bvNone
                  Caption = 'pnlAdd'
                  Color = 7024384
                  ParentBackground = False
                  ShowCaption = False
                  TabOrder = 4
                  TabStop = True
                  object btnAddItem: TSpeedButton
                    Left = 0
                    Top = 0
                    Width = 94
                    Height = 48
                    Action = actAddItem
                    Align = alClient
                    Flat = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -13
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    ExplicitLeft = 6
                    ExplicitTop = -5
                  end
                end
                object pnlTotalItem: TPanel
                  Left = 517
                  Top = 1
                  Width = 79
                  Height = 48
                  Align = alRight
                  BevelOuter = bvNone
                  Caption = 'pnlTotalItem'
                  Color = 10114859
                  ParentBackground = False
                  ShowCaption = False
                  TabOrder = 3
                  object Label53: TLabel
                    Left = 12
                    Top = 4
                    Width = 56
                    Height = 15
                    Caption = 'TOTAL (R$)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object lblTotItem: TLabel
                    Left = 0
                    Top = 20
                    Width = 79
                    Height = 25
                    Alignment = taCenter
                    AutoSize = False
                    Caption = '0,00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -19
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                end
                object pnlVlUnitario: TPanel
                  Left = 438
                  Top = 1
                  Width = 79
                  Height = 48
                  Align = alRight
                  BevelOuter = bvNone
                  Caption = 'pnlTotalItem'
                  Color = 10114859
                  ParentBackground = False
                  ShowCaption = False
                  TabOrder = 2
                  object lbl8: TLabel
                    Left = 2
                    Top = 4
                    Width = 76
                    Height = 15
                    Caption = 'UNIT'#193'RIO (R$)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -12
                    Font.Name = 'Segoe UI'
                    Font.Style = []
                    ParentFont = False
                  end
                  object lblUnitario: TLabel
                    Left = 20
                    Top = 20
                    Width = 38
                    Height = 25
                    Alignment = taCenter
                    Caption = '0,00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -19
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object edtVUn: TEdit
                    Left = 0
                    Top = 23
                    Width = 79
                    Height = 25
                    Align = alBottom
                    Alignment = taCenter
                    BorderStyle = bsNone
                    Color = 10114859
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    Text = '0,00'
                    OnChange = edtVUnChange
                    OnClick = edtVUnClick
                    OnExit = edtVUnExit
                    OnKeyPress = edtVUnKeyPress
                  end
                end
                object pnlQtde: TPanel
                  Left = 323
                  Top = 1
                  Width = 115
                  Height = 48
                  Align = alRight
                  BevelOuter = bvNone
                  Caption = 'pnlTotalItem'
                  Color = 10114859
                  ParentBackground = False
                  ShowCaption = False
                  TabOrder = 1
                  TabStop = True
                  object btnMais: TSpeedButton
                    Left = 92
                    Top = 4
                    Width = 23
                    Height = 18
                    Action = actMais
                    Flat = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -19
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    Layout = blGlyphBottom
                    ParentFont = False
                  end
                  object btnMenos: TSpeedButton
                    Left = 92
                    Top = 26
                    Width = 23
                    Height = 18
                    Action = actMenos
                    Flat = True
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -21
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    Layout = blGlyphBottom
                    ParentFont = False
                  end
                  object lblUM: TLabel
                    Left = 6
                    Top = 29
                    Width = 30
                    Height = 17
                    Alignment = taCenter
                    AutoSize = False
                    Caption = 'UN'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -13
                    Font.Name = 'Segoe UI Semibold'
                    Font.Style = [fsBold]
                    ParentFont = False
                    Visible = False
                  end
                  object edtQtde: TEdit
                    Left = 0
                    Top = 0
                    Width = 92
                    Height = 25
                    Alignment = taCenter
                    BorderStyle = bsNone
                    Color = 10114859
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWhite
                    Font.Height = -16
                    Font.Name = 'Segoe UI'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    Text = '1,0000'
                    OnClick = edtQtdeClick
                    OnExit = edtQtdeExit
                    OnKeyPress = edtQtdeKeyPress
                  end
                  object pnlUM: TPanel
                    Left = 39
                    Top = 26
                    Width = 20
                    Height = 20
                    BevelOuter = bvNone
                    Caption = 'pnlIncluiCondPagto'
                    Color = 10114859
                    ParentBackground = False
                    ShowCaption = False
                    TabOrder = 1
                    object imgUM: TImage
                      Left = 0
                      Top = 0
                      Width = 20
                      Height = 20
                      Align = alClient
                      Picture.Data = {
                        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
                        00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000000
                        F24944415478DAED93BD0E014114464D23D169240A0FA0A052E81414E84449A5
                        9368A9141E40A3942854D45488205151F300FA7D03918C2359C966E367668408
                        7B93936FF766F79E99D9ACF07DA0C47F4AA49429A20F1521C4FA5D921C31813C
                        92A927F1245F2E6128B3847C26713FA72CE1C50831861A0336F724F412440F8A
                        F40EBA9218B1043F6419B0754BB84F723D8323A4E9ED4D8E2B4AAC20001741F0
                        2A010BE670820C829DD137B921EA400B9A50571128496C519C5840C8D1B65404
                        CA12D78EC23A022D8963470328AB0AB425B6E8E13FA12C61508928E82E801AB1
                        80A1AAA441540D245D24ED978FCBA47E477206E0D7841AF68DB1B00000000049
                        454E44AE426082}
                      Stretch = True
                      ExplicitLeft = 8
                      ExplicitTop = 8
                      ExplicitWidth = 105
                      ExplicitHeight = 105
                    end
                    object btnUM: TSpeedButton
                      Left = 0
                      Top = 0
                      Width = 20
                      Height = 20
                      Align = alClient
                      Flat = True
                      OnClick = btnUMClick
                      ExplicitLeft = -2
                      ExplicitTop = 3
                      ExplicitWidth = 25
                      ExplicitHeight = 25
                    end
                  end
                end
                object pnlItem: TPanel
                  Left = 1
                  Top = 1
                  Width = 322
                  Height = 48
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'pnlItem'
                  ShowCaption = False
                  TabOrder = 0
                  object edpsqsProduto: TEdPesquisa
                    Left = -2
                    Top = 14
                    Width = 321
                    Height = 21
                    PermitirBranco = Sim
                    ConsultaTabela.Tabela = 'PRODUTO'
                    ConsultaTabela.Pesquisa = 'codigo'
                    ConsultaTabela.Mostrar = 'nome'
                    ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
                    OnPesquisa = edpsqsProdutoPesquisa
                    Titulo.Left = 0
                    Titulo.Top = 3
                    Titulo.Width = 3
                    Titulo.Height = 13
                    Titulo.Caption = ' '
                    Titulo.Visible = False
                    Mostrar.Left = 70
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
                    Campo.Left = 5
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
              object pnlFundoGrid: TPanel
                Left = 1
                Top = 51
                Width = 691
                Height = 146
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object pnlRightGrid: TPanel
                  Left = 596
                  Top = 0
                  Width = 95
                  Height = 146
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object pnlExcItem: TPanel
                    Left = 11
                    Top = 10
                    Width = 25
                    Height = 25
                    BevelOuter = bvNone
                    Caption = 'pnlIncluiCondPagto'
                    Color = 7024384
                    ParentBackground = False
                    ShowCaption = False
                    TabOrder = 0
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
                  object pnlEditarItem: TPanel
                    Left = 11
                    Top = 42
                    Width = 25
                    Height = 25
                    BevelOuter = bvNone
                    Caption = 'pnlIncluiCondPagto'
                    Color = 7024384
                    ParentBackground = False
                    ShowCaption = False
                    TabOrder = 1
                    TabStop = True
                    object imgEditarItem: TImage
                      Left = 0
                      Top = 0
                      Width = 25
                      Height = 25
                      Align = alClient
                      Picture.Data = {
                        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
                        003008060000005702F98700000006624B474400FF00FF00FFA0BDA793000005
                        424944415478DACD9A7B8815551CC7CF6DAD10DF0FC4CAF2B16A0AE63353D717
                        6986BB8A226666E52BA13585CD35FF51A4021184FEC98AE8A5A495083EB174CD
                        55774B4D50B020509412A33F2A8BD24A2B5FDBF7EBFC467EF73873E7CCDDB973
                        F7C08F1FF7CC6FE67CBE67CE9CF33B3337639A506968681801370E7627EC2B58
                        6D269369C8754EA6D8D0027E17DC87B059D6A1C3B0E91071BEC90A007C09DC26
                        D8932121A7618F42C44F4D55C0AB70AF44849D848D83885F9AA28016707B6063
                        224203EF44510400FA21B8E180795F7EB786FB9C7511A7DE7627521700D8C102
                        DB01B604306F2811FB60C3222E917527521500C832E30D97367E15AC0A306FC9
                        F13622E291884B9D1411E7D316F018DC2E58735D6D89682B2286465CEE106C6C
                        318650922226145C00604AE138CEE701F0D798226A610FE7B8FCCA820A00444F
                        B83A5817D8B7B0F13145B4131143429A78A96002D0786FB883B0FB54F57AC02D
                        5031AE22F6C306DB4DC0FA1744001A7D50E0EF55D54CCECA01F6A715EB22A2BD
                        F1EE8416F1368E2F4E5C001AEB23F0F7A8EA2302FF97C4F0E13C83DF17638AE0
                        9D1804DB067B0AC7AE252A008DF415F8CE39E047C1D5186F2E7F3CA6082E7ECB
                        612B50778575890908E9790E9B890A9E0BD95E582B397EC2702ACC647E97E3CC
                        87B8D0B5B044DC5AB1ED92880034DC0FEE00AC93AA662E5FA1E0474ACFB7B24E
                        3F66BCD9E96FD73B91A800C76163F7BC2EEB60CF23F686BAA67D27AEC31621E6
                        BD4405A0A101C67BB03A26051F2082DBCB6711B32588216F016860A0F1A6360D
                        FF256C921A0E84E7B0691D7009F6E6427FCF2BCFD05A81D58BDD0DFC3E18C691
                        978010787BCC8F909E0F82FF0056E9F7BC2C7A5CB1B96E9C325ECEFFB30B4B6C
                        0192CF13BEBDAAFE427AFE9203FCBBB01754CF072D7ADFC086729E4F54001A1B
                        24F01DAC9E2F57C326173C77600B55CFF782ABB7E0F9C02E40CC8644EF4048CF
                        DBF04324A69D233C878DCE9508FF1C6236BA72390910B07D163C37141509C3CF
                        47CC47AEF04E0242C0E2C257AA311F06CFFDC2C771E02305844C83363C87D6FE
                        46C2CF45CC2771E1730A88016F3F177EB1E7796E6EEA03E0E72066533EF0A102
                        D0D868B8DD267BF564AE33058D5D9618A6C47C2EDA065C82394B9505EFEFCCFC
                        7215360B31DBF2850F1420E399E9C0DD79C2BF097B51C1974ACF6B78A6C2CCE7
                        7734063E4CC03B7095AA8AE941855AA4B81670CC070D1B7B91EA2AF0DD2CF899
                        88D9D958F8DB04A041FEFE0176BF549D810D4463FFC871BE21A80DE979E6EB4B
                        AC9EAF53D7F2E19F40CCA749C00709608EF3B5AA5A83C6963BF43CEFDA22879E
                        9F81985D49C107095801B75A558D41838750CF99E3B8C9DE6DF9851964B582EF
                        213DFF808AF9D7781F2AF624091F24800F6F99FCFC03D6C94FA8708C7939F3FF
                        6AD8D312F33A6CA903FC34C4EC4D1A3E4B001A676ACC14B644AA36A351FB930F
                        E3A6C36D253C8E57AB7A42D7C3BAABF0FF8C37E63F2B04BC2D600E9CCE006707
                        2DEDF26E9F39CBD208783EF85311575B28785BC066B899F2932B646734FE5B80
                        803BACFD6B3781EFAAC2B85E70DD385048F85B0200D10C8EDB387F7A3C8AC6CB
                        A24E0EE9F9D4E0B580B102E2979701B02A049ACF08BFA254C0E699ECDC868BDD
                        649C5B6F522ABE80D7E096A9FA73C6FB02724E8E7307C60FD0DC644F31D9AF50
                        FC7259E0EBD282D702F89AAFAF75EC3B187746E5C6FBE45392E33A9C46B927AE
                        4913FEA60099BBBFCFF3FC1F8DF7EE6603E08FA60DEF0BA832DE6AEA5238FB30
                        D5E0BCCE7CE644D47F19D210B01D7E5A8E980BC6FB2CCAFD414DD0D45A6C015C
                        AC9EB1EAF97289BDCCE171D8E5FD4C310570A3B106D6D2781B97DD003E5B6C30
                        D7F23F0ECDAB9ED7385FD80000000049454E44AE426082}
                      Stretch = True
                      ExplicitLeft = 8
                      ExplicitTop = 8
                      ExplicitWidth = 105
                      ExplicitHeight = 105
                    end
                    object btnEditarItem: TSpeedButton
                      Left = 0
                      Top = 0
                      Width = 25
                      Height = 25
                      Action = actEditarItem
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
                object pnlFundoGrid1: TPanel
                  Left = 0
                  Top = 0
                  Width = 596
                  Height = 146
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object pnlSubTotal: TPanel
                    Left = 0
                    Top = 112
                    Width = 596
                    Height = 34
                    Align = alBottom
                    BevelOuter = bvNone
                    TabOrder = 1
                    object Label4: TLabel
                      Left = 460
                      Top = 0
                      Width = 120
                      Height = 17
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'SUBTOTAL (R$)'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                    end
                    object lblSubTotal: TLabel
                      Left = 460
                      Top = 17
                      Width = 120
                      Height = 17
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'SUBTOTAL'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                  end
                  object pnlGrid: TPanel
                    Left = 0
                    Top = 0
                    Width = 596
                    Height = 112
                    Align = alClient
                    BevelOuter = bvNone
                    Caption = 'pnlGrid'
                    ShowCaption = False
                    TabOrder = 0
                    object pnlAlocaGrid: TPanel
                      Left = 0
                      Top = 0
                      Width = 596
                      Height = 112
                      Align = alClient
                      BevelOuter = bvNone
                      TabOrder = 0
                      object dbgrdItens: TDBGrid
                        Left = 0
                        Top = 0
                        Width = 596
                        Height = 112
                        Align = alClient
                        DataSource = sGridItens
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
                        OnDblClick = dbgrdItensDblClick
                        Columns = <
                          item
                            Expanded = False
                            FieldName = 'PRODUTO_SERVICO'
                            Width = 207
                            Visible = True
                          end
                          item
                            Alignment = taCenter
                            Expanded = False
                            FieldName = 'QUANTIDADE'
                            Title.Alignment = taCenter
                            Width = 90
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'UNITARIO'
                            Width = 90
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'VALORDESCONTO'
                            Width = 90
                            Visible = True
                          end
                          item
                            Expanded = False
                            FieldName = 'TOTAL'
                            Width = 90
                            Visible = True
                          end>
                      end
                    end
                  end
                end
              end
              object cbbUM: TComboBox
                Left = 329
                Top = 54
                Width = 57
                Height = 25
                Style = csDropDownList
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                Visible = False
                OnClick = cbbUMClick
              end
            end
          end
          object tsTotal: TTabSheet
            Caption = 'TOTAIS'
            ImageIndex = 1
            object pnlTotais: TPanel
              Left = 0
              Top = 0
              Width = 708
              Height = 217
              Align = alClient
              BevelOuter = bvNone
              Color = 14803681
              ParentBackground = False
              TabOrder = 0
              object Label16: TLabel
                Left = 16
                Top = 16
                Width = 116
                Height = 15
                Caption = 'PRODUTOS/SERVI'#199'OS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 16
                Top = 107
                Width = 109
                Height = 15
                Caption = 'VALOR NOTA FISCAL'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label22: TLabel
                Left = 146
                Top = 16
                Width = 31
                Height = 15
                Caption = 'FRETE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label24: TLabel
                Left = 146
                Top = 59
                Width = 44
                Height = 15
                Caption = 'SEGURO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label25: TLabel
                Left = 146
                Top = 107
                Width = 100
                Height = 15
                Caption = 'OUTRAS DESPESAS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label26: TLabel
                Left = 16
                Top = 59
                Width = 105
                Height = 15
                Caption = 'VALOR DESCONTOS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 276
                Top = 16
                Width = 13
                Height = 15
                Caption = 'IPI'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label20: TLabel
                Left = 276
                Top = 59
                Width = 16
                Height = 15
                Caption = 'PIS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label21: TLabel
                Left = 276
                Top = 107
                Width = 41
                Height = 15
                Caption = 'COFINS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label27: TLabel
                Left = 405
                Top = 16
                Width = 52
                Height = 15
                Caption = 'B.C. ICMS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label28: TLabel
                Left = 405
                Top = 59
                Width = 67
                Height = 15
                Caption = 'VALOR ICMS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label29: TLabel
                Left = 533
                Top = 16
                Width = 144
                Height = 15
                Caption = 'B.C. ICMS SUB. TRIBUT'#193'RIA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label30: TLabel
                Left = 533
                Top = 59
                Width = 159
                Height = 15
                Caption = 'VALOR ICMS SUB. TRIBUT'#193'RIA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit13: TDBEdit
                Left = 16
                Top = 33
                Width = 119
                Height = 23
                DataField = 'TOTPRODUTO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit14: TDBEdit
                Left = 16
                Top = 124
                Width = 119
                Height = 23
                DataField = 'TOTNOTA'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 10
              end
              object DBEdit18: TDBEdit
                Left = 146
                Top = 33
                Width = 119
                Height = 23
                DataField = 'FRETE'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit19: TDBEdit
                Left = 146
                Top = 76
                Width = 119
                Height = 23
                DataField = 'SEGURO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
              end
              object DBEdit20: TDBEdit
                Left = 146
                Top = 124
                Width = 119
                Height = 23
                DataField = 'OUTRAS'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 11
              end
              object DBEdit21: TDBEdit
                Left = 16
                Top = 76
                Width = 119
                Height = 23
                DataField = 'VDESC'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
              end
              object DBEdit15: TDBEdit
                Left = 276
                Top = 33
                Width = 119
                Height = 23
                DataField = 'TOT_IPI'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit16: TDBEdit
                Left = 276
                Top = 76
                Width = 119
                Height = 23
                DataField = 'VPIS'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
              end
              object DBEdit17: TDBEdit
                Left = 276
                Top = 124
                Width = 119
                Height = 23
                DataField = 'VCOFINS'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 12
              end
              object DBEdit22: TDBEdit
                Left = 405
                Top = 33
                Width = 119
                Height = 23
                DataField = 'BASEICMS'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit23: TDBEdit
                Left = 405
                Top = 76
                Width = 119
                Height = 23
                DataField = 'VALORICMS'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 8
              end
              object DBEdit24: TDBEdit
                Left = 533
                Top = 33
                Width = 119
                Height = 23
                DataField = 'VBCST'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
              end
              object DBEdit25: TDBEdit
                Left = 533
                Top = 76
                Width = 119
                Height = 23
                DataField = 'VST'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 9
              end
            end
          end
          object tsTransportador: TTabSheet
            Caption = 'TRANSPORTADOR'
            ImageIndex = 2
            object pnlTransportador: TPanel
              Left = 0
              Top = 0
              Width = 708
              Height = 217
              Align = alClient
              BevelOuter = bvNone
              Color = 14803681
              ParentBackground = False
              TabOrder = 0
              object Label35: TLabel
                Left = 11
                Top = 51
                Width = 68
                Height = 15
                Caption = 'Tipo de Frete'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label36: TLabel
                Left = 235
                Top = 51
                Width = 71
                Height = 15
                Caption = 'C'#243'digo ANTT'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label37: TLabel
                Left = 327
                Top = 51
                Width = 86
                Height = 15
                Caption = 'Placa do Ve'#237'culo'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label38: TLabel
                Left = 419
                Top = 51
                Width = 55
                Height = 15
                Caption = 'UF Ve'#237'culo'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label39: TLabel
                Left = 11
                Top = 96
                Width = 21
                Height = 15
                Caption = 'CEP'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label40: TLabel
                Left = 134
                Top = 96
                Width = 49
                Height = 15
                Caption = 'Endere'#231'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label41: TLabel
                Left = 11
                Top = 144
                Width = 62
                Height = 15
                Caption = 'Quantidade'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label42: TLabel
                Left = 99
                Top = 144
                Width = 39
                Height = 15
                Caption = 'Esp'#233'cie'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label43: TLabel
                Left = 203
                Top = 144
                Width = 33
                Height = 15
                Caption = 'Marca'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label44: TLabel
                Left = 307
                Top = 144
                Width = 62
                Height = 15
                Caption = 'Numera'#231#227'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label45: TLabel
                Left = 411
                Top = 144
                Width = 78
                Height = 15
                Caption = 'Peso Bruto(kg)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label46: TLabel
                Left = 515
                Top = 144
                Width = 89
                Height = 15
                Caption = 'Peso L'#237'quido(kg)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label47: TLabel
                Left = 527
                Top = 51
                Width = 53
                Height = 15
                Caption = 'CNPJ/CPF'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label48: TLabel
                Left = 527
                Top = 96
                Width = 94
                Height = 15
                Caption = 'Inscri'#231#227'o Estadual'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label55: TLabel
                Left = 11
                Top = 5
                Width = 109
                Height = 15
                Caption = 'Nome / Raz'#227'o Social'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object DBComboBox1: TDBComboBox
                Left = 11
                Top = 68
                Width = 222
                Height = 23
                Style = csDropDownList
                DataField = 'MODFRETE'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                Items.Strings = (
                  'POR CONTA DO EMITENTE'
                  'POR CONTA DO DESTINAT'#193'RIO/REMETENTE'
                  'POR CONTA DE TERCEIROS'
                  'SEM FRETE')
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit26: TDBEdit
                Left = 235
                Top = 68
                Width = 90
                Height = 23
                DataField = 'TR_ANTT'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit27: TDBEdit
                Left = 327
                Top = 68
                Width = 90
                Height = 23
                DataField = 'TR_PLACA'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
              object DBComboBox2: TDBComboBox
                Left = 419
                Top = 68
                Width = 46
                Height = 23
                Style = csDropDownList
                DataField = 'TR_PLACAUF'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                Items.Strings = (
                  'AC'
                  'AL'
                  'AP'
                  'AM'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MT'
                  'MS'
                  'MG'
                  'PA'
                  'PB'
                  'PR'
                  'PE'
                  'PI'
                  'RJ'
                  'RN'
                  'RS'
                  'RO'
                  'RR'
                  'SC'
                  'SP'
                  'SE'
                  'TO')
                ParentFont = False
                TabOrder = 4
              end
              object DBEdit28: TDBEdit
                Left = 11
                Top = 113
                Width = 121
                Height = 23
                DataField = 'TR_CEP'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
              end
              object DBEdit29: TDBEdit
                Left = 134
                Top = 113
                Width = 391
                Height = 23
                DataField = 'TR_ENDERECO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
              end
              object DBEdit30: TDBEdit
                Left = 7
                Top = 161
                Width = 86
                Height = 23
                DataField = 'QVOL'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 9
              end
              object DBEdit31: TDBEdit
                Left = 99
                Top = 161
                Width = 102
                Height = 23
                DataField = 'ESP'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 10
              end
              object DBEdit32: TDBEdit
                Left = 203
                Top = 161
                Width = 102
                Height = 23
                DataField = 'MARCA'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 11
              end
              object DBEdit33: TDBEdit
                Left = 307
                Top = 161
                Width = 102
                Height = 23
                DataField = 'NVOL'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 12
              end
              object DBEdit34: TDBEdit
                Left = 411
                Top = 161
                Width = 102
                Height = 23
                DataField = 'PESOB'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 13
              end
              object DBEdit35: TDBEdit
                Left = 515
                Top = 161
                Width = 102
                Height = 23
                DataField = 'PESOL'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 14
              end
              object DBEdit36: TDBEdit
                Left = 527
                Top = 68
                Width = 102
                Height = 23
                DataField = 'TR_CPFCNPJ'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
              end
              object DBEdit37: TDBEdit
                Left = 527
                Top = 113
                Width = 102
                Height = 23
                DataField = 'TR_INSC'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 8
              end
              object DBEdit1: TDBEdit
                Left = 11
                Top = 22
                Width = 391
                Height = 23
                CharCase = ecUpperCase
                DataField = 'TR_RAZAO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object tsCobranca: TTabSheet
            Caption = 'COBRAN'#199'A'
            ImageIndex = 3
            object pnlPagamento: TPanel
              Left = 0
              Top = 0
              Width = 708
              Height = 217
              Align = alClient
              Caption = 'pnlPagamento'
              ParentColor = True
              ShowCaption = False
              TabOrder = 0
              object pnlPag0: TPanel
                Left = 1
                Top = 1
                Width = 706
                Height = 215
                Align = alClient
                BevelOuter = bvNone
                Caption = 'pnlPag0'
                ShowCaption = False
                TabOrder = 0
                object pnlPagLeft: TPanel
                  Left = 0
                  Top = 0
                  Width = 200
                  Height = 215
                  Align = alLeft
                  Caption = 'pnlPagLeft'
                  ShowCaption = False
                  TabOrder = 0
                  object pnlPagTotal: TPanel
                    Left = 1
                    Top = 1
                    Width = 198
                    Height = 41
                    Align = alTop
                    Caption = 'pnlPagTotal'
                    ShowCaption = False
                    TabOrder = 0
                    object Label34: TLabel
                      Left = 53
                      Top = 0
                      Width = 122
                      Height = 17
                      Caption = 'TOTAL A PAGAR (R$)'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object lblPagTotal: TLabel
                      Left = 145
                      Top = 19
                      Width = 35
                      Height = 21
                      Alignment = taRightJustify
                      Caption = '0,00'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -16
                      Font.Name = 'Segoe UI Black'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                  end
                  object pnlPagParcelamento: TPanel
                    Left = 1
                    Top = 42
                    Width = 198
                    Height = 142
                    Align = alClient
                    Caption = 'pnlPagTotal'
                    ShowCaption = False
                    TabOrder = 1
                    object Label31: TLabel
                      Left = 46
                      Top = 4
                      Width = 134
                      Height = 15
                      Caption = 'FORMA DE PAGAMENTO'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label49: TLabel
                      Left = 90
                      Top = 48
                      Width = 90
                      Height = 15
                      Caption = 'PARCELAMENTO'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label50: TLabel
                      Left = 118
                      Top = 94
                      Width = 62
                      Height = 15
                      Caption = 'VALOR (R$)'
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object cbbFormaPagto: TComboBox
                      Left = 0
                      Top = 21
                      Width = 180
                      Height = 23
                      Style = csDropDownList
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 0
                      OnChange = cbbFormaPagtoChange
                      OnDropDown = cbbFormaPagtoDropDown
                    end
                    object cbbParcelamento: TComboBox
                      Left = 0
                      Top = 65
                      Width = 180
                      Height = 23
                      Style = csDropDownList
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 1
                    end
                    object edtPagValor: TEdit
                      Left = 0
                      Top = 111
                      Width = 180
                      Height = 23
                      Alignment = taRightJustify
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -12
                      Font.Name = 'Segoe UI Semibold'
                      Font.Style = [fsBold]
                      ParentColor = True
                      ParentFont = False
                      TabOrder = 2
                      Text = '0,00'
                      OnExit = edtPagValorExit
                      OnKeyPress = edtPagValorKeyPress
                    end
                  end
                  object pnlPagGerar: TPanel
                    Left = 1
                    Top = 184
                    Width = 198
                    Height = 30
                    Align = alBottom
                    BevelOuter = bvNone
                    Caption = 'pnlAdd'
                    Color = 7024384
                    ParentBackground = False
                    ShowCaption = False
                    TabOrder = 2
                    object btnPagGerar: TSpeedButton
                      Left = 0
                      Top = 0
                      Width = 198
                      Height = 30
                      Action = actGerarDuplicatas
                      Align = alClient
                      Flat = True
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWhite
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = [fsBold]
                      ParentFont = False
                      ExplicitLeft = -2
                      ExplicitTop = 1
                      ExplicitWidth = 199
                      ExplicitHeight = 50
                    end
                  end
                end
                object pnlGridPagamento: TPanel
                  Left = 200
                  Top = 0
                  Width = 506
                  Height = 215
                  Align = alClient
                  BevelOuter = bvNone
                  Caption = 'pnlGridPagamento'
                  Color = 14803681
                  ParentBackground = False
                  ShowCaption = False
                  TabOrder = 1
                  object pnlGridDuplicatas: TPanel
                    Left = 0
                    Top = 0
                    Width = 407
                    Height = 215
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 0
                    object pnlExcDup: TPanel
                      Left = 0
                      Top = 179
                      Width = 407
                      Height = 36
                      Align = alBottom
                      BevelOuter = bvNone
                      Caption = 'pnlExcDup'
                      ShowCaption = False
                      TabOrder = 1
                      object pnlbtnExcDup: TPanel
                        Left = 128
                        Top = 3
                        Width = 150
                        Height = 30
                        BevelOuter = bvNone
                        Caption = 'pnlAdd'
                        Color = 7024384
                        ParentBackground = False
                        ShowCaption = False
                        TabOrder = 0
                        object btnExcDup: TSpeedButton
                          Left = 0
                          Top = 0
                          Width = 150
                          Height = 30
                          Action = actExcluirDuplicatas
                          Align = alClient
                          Flat = True
                          Font.Charset = ANSI_CHARSET
                          Font.Color = clWhite
                          Font.Height = -13
                          Font.Name = 'Segoe UI'
                          Font.Style = [fsBold]
                          ParentFont = False
                          ExplicitLeft = 2
                          ExplicitWidth = 199
                          ExplicitHeight = 56
                        end
                      end
                    end
                    object dbgrdPagto: TDBGrid
                      Left = 0
                      Top = 0
                      Width = 407
                      Height = 171
                      DataSource = sGridDup
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
                      OnDblClick = dbgrdPagtoDblClick
                      Columns = <
                        item
                          Expanded = False
                          FieldName = 'FORMA'
                          Title.Font.Charset = ANSI_CHARSET
                          Title.Font.Color = clWindowText
                          Title.Font.Height = -12
                          Title.Font.Name = 'Segoe UI'
                          Title.Font.Style = [fsBold]
                          Width = 190
                          Visible = True
                        end
                        item
                          Alignment = taCenter
                          Expanded = False
                          FieldName = 'DVENC'
                          Title.Alignment = taCenter
                          Title.Font.Charset = ANSI_CHARSET
                          Title.Font.Color = clWindowText
                          Title.Font.Height = -12
                          Title.Font.Name = 'Segoe UI'
                          Title.Font.Style = [fsBold]
                          Width = 100
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'VDUP'
                          Title.Font.Charset = ANSI_CHARSET
                          Title.Font.Color = clWindowText
                          Title.Font.Height = -12
                          Title.Font.Name = 'Segoe UI'
                          Title.Font.Style = [fsBold]
                          Width = 90
                          Visible = True
                        end>
                    end
                  end
                end
              end
            end
          end
          object tsAnotacao: TTabSheet
            Caption = 'ANOTA'#199#213'ES'
            ImageIndex = 4
            object pnlAnotacao: TPanel
              Left = 0
              Top = 0
              Width = 708
              Height = 217
              Align = alClient
              BevelOuter = bvNone
              Color = 14803681
              ParentBackground = False
              TabOrder = 0
              object DBMemo1: TDBMemo
                Left = 0
                Top = 24
                Width = 700
                Height = 177
                DataField = 'OBS'
                DataSource = ds
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  inherited ds: TDataSource
    Left = 656
    Top = 224
  end
  inherited cds: TClientDataSet
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODFOR'
        DataType = ftInteger
      end
      item
        Name = 'ID_CONDPAGTO'
        DataType = ftInteger
      end
      item
        Name = 'ID_HISTORICO'
        DataType = ftInteger
      end
      item
        Name = 'ID_USUARIO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EMISSAO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'ENTRADA'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'BASEICMS'
        DataType = ftCurrency
      end
      item
        Name = 'VALORICMS'
        DataType = ftCurrency
      end
      item
        Name = 'TOTPRODUTO'
        DataType = ftCurrency
      end
      item
        Name = 'FRETE'
        DataType = ftCurrency
      end
      item
        Name = 'SEGURO'
        DataType = ftCurrency
      end
      item
        Name = 'OUTRAS'
        DataType = ftCurrency
      end
      item
        Name = 'VALORIPI'
        DataType = ftCurrency
      end
      item
        Name = 'TOTNOTA'
        DataType = ftCurrency
      end
      item
        Name = 'OBS'
        DataType = ftMemo
      end
      item
        Name = 'DATA_HORA'
        DataType = ftTimeStamp
      end
      item
        Name = 'N_NF'
        DataType = ftInteger
      end
      item
        Name = 'CNF'
        DataType = ftInteger
      end
      item
        Name = 'INDPAG'
        DataType = ftInteger
      end
      item
        Name = 'MODELO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'SERIE'
        DataType = ftInteger
      end
      item
        Name = 'DSAIENT'
        DataType = ftDate
      end
      item
        Name = 'HSAIENT'
        DataType = ftTime
      end
      item
        Name = 'TPNF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FINNFE'
        DataType = ftInteger
      end
      item
        Name = 'VBCST'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VDESC'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VII'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VPIS'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VCOFINS'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'MODFRETE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'INFCPL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'QVOL'
        DataType = ftInteger
      end
      item
        Name = 'ESP'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'MARCA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NVOL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PESOL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 3
      end
      item
        Name = 'PESOB'
        DataType = ftFMTBcd
        Precision = 18
        Size = 3
      end
      item
        Name = 'UFEMBARQ'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'XLOCEMBARQ'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ADICINFCPL'
        DataType = ftMemo
      end
      item
        Name = 'ADICINFADFISCO'
        DataType = ftMemo
      end
      item
        Name = 'VST'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'COMPRA_XNCOMPRA'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'COMPRA_XPED'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'COMPRA_XCONT'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ISSQN_VSERV'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'ISSQN_VBC'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'ISSQN_VISS'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'ISSQN_VPIS'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'ISSQN_VCOFINS'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'IMPORTADA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CHAVE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TIPO_NOTA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DT_ENTREGA'
        DataType = ftDate
      end
      item
        Name = 'NAT_OPERACAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TOT_IPI'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'TR_PLACA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TR_PLACAUF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TR_RAZAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TR_CPFCNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TR_INSC'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'TR_CEP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TR_ENDERECO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'LOG'
        DataType = ftMemo
      end
      item
        Name = 'TR_ANTT'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FORNECEDOR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'HISTORICO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'fdqryEntrada_Pagar'
        DataType = ftDataSet
      end
      item
        Name = 'fdqryEntrada_Item'
        DataType = ftDataSet
      end>
    ProviderName = 'dspEntrada'
    StoreDefs = True
    AfterInsert = cdsAfterInsert
    AfterCancel = cdsAfterCancel
    Left = 656
    Top = 180
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
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsVALORICMS: TCurrencyField
      FieldName = 'VALORICMS'
      Origin = 'VALORICMS'
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsTOTPRODUTO: TCurrencyField
      FieldName = 'TOTPRODUTO'
      Origin = 'TOTPRODUTO'
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsFRETE: TCurrencyField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      OnChange = cdsVDESCChange
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsSEGURO: TCurrencyField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      OnChange = cdsVDESCChange
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsOUTRAS: TCurrencyField
      FieldName = 'OUTRAS'
      Origin = 'OUTRAS'
      OnChange = cdsVDESCChange
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsVALORIPI: TCurrencyField
      FieldName = 'VALORIPI'
      Origin = 'VALORIPI'
      DisplayFormat = 'R$ #,##0.00'
    end
    object cdsTOTNOTA: TCurrencyField
      FieldName = 'TOTNOTA'
      Origin = 'TOTNOTA'
      DisplayFormat = 'R$ #,##0.00'
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
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Origin = 'VDESC'
      OnChange = cdsVDESCChange
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsVII: TFMTBCDField
      FieldName = 'VII'
      Origin = 'VII'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsVPIS: TFMTBCDField
      FieldName = 'VPIS'
      Origin = 'VPIS'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsVCOFINS: TFMTBCDField
      FieldName = 'VCOFINS'
      Origin = 'VCOFINS'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
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
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsPESOB: TFMTBCDField
      FieldName = 'PESOB'
      Origin = 'PESOB'
      DisplayFormat = '#,##0.000'
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
      OnChange = cdsVDESCChange
      DisplayFormat = 'R$ #,##0.00'
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
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsISSQN_VBC: TFMTBCDField
      FieldName = 'ISSQN_VBC'
      Origin = 'ISSQN_VBC'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsISSQN_VISS: TFMTBCDField
      FieldName = 'ISSQN_VISS'
      Origin = 'ISSQN_VISS'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsISSQN_VPIS: TFMTBCDField
      FieldName = 'ISSQN_VPIS'
      Origin = 'ISSQN_VPIS'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsISSQN_VCOFINS: TFMTBCDField
      FieldName = 'ISSQN_VCOFINS'
      Origin = 'ISSQN_VCOFINS'
      DisplayFormat = 'R$ #,##0.00'
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
    object cdsID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
      Origin = 'ID_HISTORICO'
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
      OnChange = cdsVDESCChange
      DisplayFormat = 'R$ #,##0.00'
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
    object cdsfdqryEntrada_Pagar: TDataSetField
      FieldName = 'fdqryEntrada_Pagar'
    end
    object cdsfdqryEntrada_Item: TDataSetField
      FieldName = 'fdqryEntrada_Item'
    end
    object cdsLOG: TMemoField
      FieldName = 'LOG'
      Origin = '"LOG"'
      BlobType = ftMemo
    end
    object cdsMODFRETE: TStringField
      FieldName = 'MODFRETE'
      Origin = 'MODFRETE'
      Size = 50
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
    object cdsHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 60
    end
  end
  inherited actMaster: TActionList
    Left = 612
    Top = 177
    object actGerarDuplicatas: TAction
      Caption = 'GERAR DUPLICATAS'
      OnExecute = actGerarDuplicatasExecute
    end
    object actExcluirDuplicatas: TAction
      Caption = 'EXCLUIR DUPLICATAS'
      OnExecute = actExcluirDuplicatasExecute
    end
    object actAddItem: TAction
      Caption = 'INCLUIR '#13#10'ITEM'
      OnExecute = actAddItemExecute
    end
    object actMais: TAction
      Caption = '+'
      OnExecute = actMaisExecute
    end
    object actMenos: TAction
      Caption = '-'
      OnExecute = actMenosExecute
    end
    object actExcItem: TAction
      Hint = 'Excluir Item'
      OnExecute = actExcItemExecute
    end
    object actEditarItem: TAction
      Enabled = False
      Hint = 'Editar o Item'
      OnExecute = actEditarItemExecute
    end
    object actAddFornecedor: TAction
      Hint = 'Novo Fornecedor'
      OnExecute = actAddFornecedorExecute
    end
  end
  object sGridDup: TDataSource
    DataSet = dsPagar
    Left = 729
    Top = 467
  end
  object sGridItens: TDataSource
    DataSet = dsItem
    Left = 601
    Top = 453
  end
  object dsItem: TClientDataSet
    Aggregates = <>
    DataSetField = cdsfdqryEntrada_Item
    FieldDefs = <
      item
        Name = 'ID_NOTAENTRADA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ORDEM'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
      end
      item
        Name = 'NCM'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ST'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'QTRIB'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'UNIDADE_TRIB'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DESCONTO'
        DataType = ftFMTBcd
        Precision = 9
        Size = 5
      end
      item
        Name = 'VALORDESCONTO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALORFRETE'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALOROUTRAS'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'XPED'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'CPROD'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CEAN'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CFOP'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'VALORSEGURO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'VALORACESSORIAS'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'IPI_BC'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'IPI_VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'IPI_ST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'IPI_STVAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'IPI_ALIQ'
        DataType = ftCurrency
      end
      item
        Name = 'IPI_CST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'PIS_BC'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'PIS_VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'PIS_ST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'PIS_ALIQST'
        DataType = ftCurrency
      end
      item
        Name = 'PIS_STVAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'PIS_ALIQ'
        DataType = ftCurrency
      end
      item
        Name = 'PIS_CST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COFINS_BC'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'COFINS_VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'COFINS_ST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'COFINS_ALIQST'
        DataType = ftCurrency
      end
      item
        Name = 'COFINS_STVAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'COFINS_ALIQ'
        DataType = ftCurrency
      end
      item
        Name = 'COFINS_CST'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'II_VBC'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'II_VDESPADU'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'II_VII'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'II_VIOF'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'DI_NDI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DI_DATA'
        DataType = ftDate
      end
      item
        Name = 'DI_LOCDESEMBARC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DI_UFDESEMBARC'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DI_DATADESEMBARC'
        DataType = ftDate
      end
      item
        Name = 'DI_CODEXPORTADOR'
        DataType = ftInteger
      end
      item
        Name = 'VUNTRIB'
        DataType = ftFMTBcd
        Precision = 18
        Size = 10
      end
      item
        Name = 'N_DRAW'
        DataType = ftInteger
      end
      item
        Name = 'N_RE'
        DataType = ftInteger
      end
      item
        Name = 'QEXPORT'
        DataType = ftBCD
        Precision = 18
        Size = 3
      end
      item
        Name = 'CHNFE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ICMS_CST'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ICMS_BC'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_PREDBC'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_ALIQ'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_VALOR'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_ORIGEM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ICMS_PREDBCST'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_VALORBCST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_ALIQST'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_VALORST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_CSOSN'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ICMS_VBCUFDEST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_PFCPUFDEST'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_PICMSUFDEST'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_PICMSINTER'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_PICMSINTERPART'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_VFCPUFDEST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_VICMSUFDEST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_VICMSUFREMET'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_MODBC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ICMS_MODBCST'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ICMS_UFST'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ICMS_PBCOP'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_VBCSTRET'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_VICMSSTRET'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_MOTDESICMS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ICMS_PCREDSN'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_VCREDICMSSN'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_VBCSTDEST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_VICMSSTDEST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_VICMSDESON'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_VICMSOP'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_PDIF'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_VICMSDIF'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_VBCFCP'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_PFCP'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_VFCP'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_VBCFCPST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_PFCPST'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_VFCPST'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_VBCFCPSTRET'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_PFCPSTRET'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_VFCPSTRET'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_PREDBCEFET'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_VBCEFET'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ICMS_PST'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_PICMSEFET'
        DataType = ftCurrency
      end
      item
        Name = 'ICMS_VICMSEFET'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'DESCPROMOCIONAL'
        DataType = ftCurrency
      end
      item
        Name = 'DESCNORMAL'
        DataType = ftCurrency
      end
      item
        Name = 'PROD_ESPECIF'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COMB_PRODANP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'COMB_CODIF'
        DataType = ftString
        Size = 21
      end
      item
        Name = 'COMB_QTEMP'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'COMB_UFCONS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'COMB_CIDE_QBCPROD'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'COMB_CIDE_ALIQPROD'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end
      item
        Name = 'COMB_CIDE_VCIDE'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'ID_HISTORICO'
        DataType = ftInteger
      end
      item
        Name = 'PRODUTO_SERVICO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'QUANTIDADE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SUBTOTAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'TOTAL'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'QTDE_INFORMADA'
        DataType = ftBCD
        Precision = 18
        Size = 3
      end
      item
        Name = 'UNITARIO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 10
      end
      item
        Name = 'PRECO_CUSTO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 10
      end
      item
        Name = 'QTDE'
        DataType = ftBCD
        Precision = 18
        Size = 4
      end>
    IndexDefs = <
      item
        Name = 'ORDEM'
        Fields = 'ORDEM'
        Options = [ixDescending]
      end>
    IndexName = 'ORDEM'
    Params = <>
    StoreDefs = True
    BeforeEdit = dsItemBeforeDelete
    BeforeDelete = dsItemBeforeDelete
    Left = 699
    Top = 176
    object dsItemID_NOTAENTRADA: TIntegerField
      FieldName = 'ID_NOTAENTRADA'
      Origin = 'ID_NOTAENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsItemORDEM: TSmallintField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object dsItemNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object dsItemST: TStringField
      FieldName = 'ST'
      Origin = 'ST'
      Size = 3
    end
    object dsItemQTRIB: TBCDField
      FieldName = 'QTRIB'
      Origin = 'QTRIB'
      Precision = 18
    end
    object dsItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 3
    end
    object dsItemUNIDADE_TRIB: TStringField
      FieldName = 'UNIDADE_TRIB'
      Origin = 'UNIDADE_TRIB'
      FixedChar = True
      Size = 10
    end
    object dsItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 9
      Size = 5
    end
    object dsItemVALORDESCONTO: TBCDField
      DisplayLabel = 'DESCONTO (R$)'
      FieldName = 'VALORDESCONTO'
      Origin = 'VALORDESCONTO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemVALORFRETE: TBCDField
      FieldName = 'VALORFRETE'
      Origin = 'VALORFRETE'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemVALOROUTRAS: TBCDField
      FieldName = 'VALOROUTRAS'
      Origin = 'VALOROUTRAS'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemXPED: TStringField
      FieldName = 'XPED'
      Origin = 'XPED'
      Size = 15
    end
    object dsItemCPROD: TStringField
      FieldName = 'CPROD'
      Origin = 'CPROD'
      Size = 60
    end
    object dsItemCEAN: TStringField
      FieldName = 'CEAN'
      Origin = 'CEAN'
      Size = 60
    end
    object dsItemCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object dsItemVALORSEGURO: TBCDField
      FieldName = 'VALORSEGURO'
      Origin = 'VALORSEGURO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemVALORACESSORIAS: TBCDField
      FieldName = 'VALORACESSORIAS'
      Origin = 'VALORACESSORIAS'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemIPI_BC: TBCDField
      FieldName = 'IPI_BC'
      Origin = 'IPI_BC'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemIPI_VALOR: TBCDField
      FieldName = 'IPI_VALOR'
      Origin = 'IPI_VALOR'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemIPI_ST: TBCDField
      FieldName = 'IPI_ST'
      Origin = 'IPI_ST'
      Precision = 18
      Size = 2
    end
    object dsItemIPI_STVAL: TBCDField
      FieldName = 'IPI_STVAL'
      Origin = 'IPI_STVAL'
      Precision = 18
      Size = 2
    end
    object dsItemIPI_ALIQ: TCurrencyField
      FieldName = 'IPI_ALIQ'
      Origin = 'IPI_ALIQ'
      DisplayFormat = '#,##0.000'
    end
    object dsItemIPI_CST: TStringField
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
      Size = 2
    end
    object dsItemPIS_BC: TBCDField
      FieldName = 'PIS_BC'
      Origin = 'PIS_BC'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemPIS_VALOR: TBCDField
      FieldName = 'PIS_VALOR'
      Origin = 'PIS_VALOR'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemPIS_ST: TBCDField
      FieldName = 'PIS_ST'
      Origin = 'PIS_ST'
      Precision = 18
      Size = 2
    end
    object dsItemPIS_ALIQST: TCurrencyField
      FieldName = 'PIS_ALIQST'
      Origin = 'PIS_ALIQST'
      DisplayFormat = '#,##0.000'
    end
    object dsItemPIS_STVAL: TBCDField
      FieldName = 'PIS_STVAL'
      Origin = 'PIS_STVAL'
      Precision = 18
      Size = 2
    end
    object dsItemPIS_ALIQ: TCurrencyField
      FieldName = 'PIS_ALIQ'
      Origin = 'PIS_ALIQ'
      DisplayFormat = '#,##0.000'
    end
    object dsItemPIS_CST: TStringField
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      Size = 2
    end
    object dsItemCOFINS_BC: TBCDField
      FieldName = 'COFINS_BC'
      Origin = 'COFINS_BC'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemCOFINS_VALOR: TBCDField
      FieldName = 'COFINS_VALOR'
      Origin = 'COFINS_VALOR'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemCOFINS_ST: TBCDField
      FieldName = 'COFINS_ST'
      Origin = 'COFINS_ST'
      Precision = 18
      Size = 2
    end
    object dsItemCOFINS_ALIQST: TCurrencyField
      FieldName = 'COFINS_ALIQST'
      Origin = 'COFINS_ALIQST'
      DisplayFormat = '#,##0.000'
    end
    object dsItemCOFINS_STVAL: TBCDField
      FieldName = 'COFINS_STVAL'
      Origin = 'COFINS_STVAL'
      Precision = 18
      Size = 2
    end
    object dsItemCOFINS_ALIQ: TCurrencyField
      FieldName = 'COFINS_ALIQ'
      Origin = 'COFINS_ALIQ'
      DisplayFormat = '#,##0.000'
    end
    object dsItemCOFINS_CST: TStringField
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
      Size = 2
    end
    object dsItemII_VBC: TBCDField
      FieldName = 'II_VBC'
      Origin = 'II_VBC'
      Precision = 18
      Size = 2
    end
    object dsItemII_VDESPADU: TBCDField
      FieldName = 'II_VDESPADU'
      Origin = 'II_VDESPADU'
      Precision = 18
      Size = 2
    end
    object dsItemII_VII: TBCDField
      FieldName = 'II_VII'
      Origin = 'II_VII'
      Precision = 18
      Size = 2
    end
    object dsItemII_VIOF: TBCDField
      FieldName = 'II_VIOF'
      Origin = 'II_VIOF'
      Precision = 18
      Size = 2
    end
    object dsItemDI_NDI: TStringField
      FieldName = 'DI_NDI'
      Origin = 'DI_NDI'
    end
    object dsItemDI_DATA: TDateField
      FieldName = 'DI_DATA'
      Origin = 'DI_DATA'
    end
    object dsItemDI_LOCDESEMBARC: TStringField
      FieldName = 'DI_LOCDESEMBARC'
      Origin = 'DI_LOCDESEMBARC'
      Size = 60
    end
    object dsItemDI_UFDESEMBARC: TStringField
      FieldName = 'DI_UFDESEMBARC'
      Origin = 'DI_UFDESEMBARC'
      Size = 2
    end
    object dsItemDI_DATADESEMBARC: TDateField
      FieldName = 'DI_DATADESEMBARC'
      Origin = 'DI_DATADESEMBARC'
    end
    object dsItemDI_CODEXPORTADOR: TIntegerField
      FieldName = 'DI_CODEXPORTADOR'
      Origin = 'DI_CODEXPORTADOR'
    end
    object dsItemVUNTRIB: TFMTBCDField
      FieldName = 'VUNTRIB'
      Origin = 'VUNTRIB'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 10
    end
    object dsItemN_DRAW: TIntegerField
      FieldName = 'N_DRAW'
      Origin = 'N_DRAW'
    end
    object dsItemN_RE: TIntegerField
      FieldName = 'N_RE'
      Origin = 'N_RE'
    end
    object dsItemQEXPORT: TBCDField
      FieldName = 'QEXPORT'
      Origin = 'QEXPORT'
      Precision = 18
      Size = 3
    end
    object dsItemCHNFE: TStringField
      FieldName = 'CHNFE'
      Origin = 'CHNFE'
      Size = 50
    end
    object dsItemICMS_CST: TStringField
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      Size = 100
    end
    object dsItemICMS_ORIGEM: TStringField
      FieldName = 'ICMS_ORIGEM'
      Origin = 'ICMS_ORIGEM'
      Size = 50
    end
    object dsItemICMS_BC: TBCDField
      FieldName = 'ICMS_BC'
      Origin = 'ICMS_BC'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_PREDBC: TCurrencyField
      FieldName = 'ICMS_PREDBC'
      Origin = 'ICMS_PREDBC'
      DisplayFormat = '#,##0.000'
    end
    object dsItemICMS_ALIQ: TCurrencyField
      FieldName = 'ICMS_ALIQ'
      Origin = 'ICMS_ALIQ'
      DisplayFormat = '#,##0.000'
    end
    object dsItemICMS_VALOR: TBCDField
      FieldName = 'ICMS_VALOR'
      Origin = 'ICMS_VALOR'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_PREDBCST: TCurrencyField
      FieldName = 'ICMS_PREDBCST'
      Origin = 'ICMS_PREDBCST'
      DisplayFormat = '#,##0.000'
    end
    object dsItemICMS_VALORBCST: TBCDField
      FieldName = 'ICMS_VALORBCST'
      Origin = 'ICMS_VALORBCST'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_ALIQST: TCurrencyField
      FieldName = 'ICMS_ALIQST'
      Origin = 'ICMS_ALIQST'
      DisplayFormat = '#,##0.000'
    end
    object dsItemICMS_VALORST: TBCDField
      FieldName = 'ICMS_VALORST'
      Origin = 'ICMS_VALORST'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_CSOSN: TStringField
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
      Size = 5
    end
    object dsItemICMS_VBCUFDEST: TBCDField
      FieldName = 'ICMS_VBCUFDEST'
      Origin = 'ICMS_VBCUFDEST'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_PFCPUFDEST: TCurrencyField
      FieldName = 'ICMS_PFCPUFDEST'
      Origin = 'ICMS_PFCPUFDEST'
    end
    object dsItemICMS_PICMSUFDEST: TCurrencyField
      FieldName = 'ICMS_PICMSUFDEST'
      Origin = 'ICMS_PICMSUFDEST'
    end
    object dsItemICMS_PICMSINTER: TCurrencyField
      FieldName = 'ICMS_PICMSINTER'
      Origin = 'ICMS_PICMSINTER'
    end
    object dsItemICMS_PICMSINTERPART: TCurrencyField
      FieldName = 'ICMS_PICMSINTERPART'
      Origin = 'ICMS_PICMSINTERPART'
    end
    object dsItemICMS_VFCPUFDEST: TBCDField
      FieldName = 'ICMS_VFCPUFDEST'
      Origin = 'ICMS_VFCPUFDEST'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_VICMSUFDEST: TBCDField
      FieldName = 'ICMS_VICMSUFDEST'
      Origin = 'ICMS_VICMSUFDEST'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_VICMSUFREMET: TBCDField
      FieldName = 'ICMS_VICMSUFREMET'
      Origin = 'ICMS_VICMSUFREMET'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_MODBC: TStringField
      FieldName = 'ICMS_MODBC'
      Origin = 'ICMS_MODBC'
      FixedChar = True
      Size = 1
    end
    object dsItemICMS_MODBCST: TStringField
      FieldName = 'ICMS_MODBCST'
      Origin = 'ICMS_MODBCST'
      FixedChar = True
      Size = 1
    end
    object dsItemICMS_UFST: TStringField
      FieldName = 'ICMS_UFST'
      Origin = 'ICMS_UFST'
      FixedChar = True
      Size = 2
    end
    object dsItemICMS_PBCOP: TBCDField
      FieldName = 'ICMS_PBCOP'
      Origin = 'ICMS_PBCOP'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_VBCSTRET: TBCDField
      FieldName = 'ICMS_VBCSTRET'
      Origin = 'ICMS_VBCSTRET'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_VICMSSTRET: TBCDField
      FieldName = 'ICMS_VICMSSTRET'
      Origin = 'ICMS_VICMSSTRET'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_MOTDESICMS: TStringField
      FieldName = 'ICMS_MOTDESICMS'
      Origin = 'ICMS_MOTDESICMS'
      FixedChar = True
      Size = 2
    end
    object dsItemICMS_PCREDSN: TCurrencyField
      FieldName = 'ICMS_PCREDSN'
      Origin = 'ICMS_PCREDSN'
    end
    object dsItemICMS_VCREDICMSSN: TBCDField
      FieldName = 'ICMS_VCREDICMSSN'
      Origin = 'ICMS_VCREDICMSSN'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_VBCSTDEST: TBCDField
      FieldName = 'ICMS_VBCSTDEST'
      Origin = 'ICMS_VBCSTDEST'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_VICMSSTDEST: TBCDField
      FieldName = 'ICMS_VICMSSTDEST'
      Origin = 'ICMS_VICMSSTDEST'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_VICMSDESON: TBCDField
      FieldName = 'ICMS_VICMSDESON'
      Origin = 'ICMS_VICMSDESON'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_VICMSOP: TBCDField
      FieldName = 'ICMS_VICMSOP'
      Origin = 'ICMS_VICMSOP'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_PDIF: TCurrencyField
      FieldName = 'ICMS_PDIF'
      Origin = 'ICMS_PDIF'
    end
    object dsItemICMS_VICMSDIF: TBCDField
      FieldName = 'ICMS_VICMSDIF'
      Origin = 'ICMS_VICMSDIF'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_VBCFCP: TBCDField
      FieldName = 'ICMS_VBCFCP'
      Origin = 'ICMS_VBCFCP'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_PFCP: TCurrencyField
      FieldName = 'ICMS_PFCP'
      Origin = 'ICMS_PFCP'
    end
    object dsItemICMS_VFCP: TBCDField
      FieldName = 'ICMS_VFCP'
      Origin = 'ICMS_VFCP'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_VBCFCPST: TBCDField
      FieldName = 'ICMS_VBCFCPST'
      Origin = 'ICMS_VBCFCPST'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_PFCPST: TCurrencyField
      FieldName = 'ICMS_PFCPST'
      Origin = 'ICMS_PFCPST'
    end
    object dsItemICMS_VFCPST: TBCDField
      FieldName = 'ICMS_VFCPST'
      Origin = 'ICMS_VFCPST'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_VBCFCPSTRET: TBCDField
      FieldName = 'ICMS_VBCFCPSTRET'
      Origin = 'ICMS_VBCFCPSTRET'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_PFCPSTRET: TCurrencyField
      FieldName = 'ICMS_PFCPSTRET'
      Origin = 'ICMS_PFCPSTRET'
    end
    object dsItemICMS_VFCPSTRET: TBCDField
      FieldName = 'ICMS_VFCPSTRET'
      Origin = 'ICMS_VFCPSTRET'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_PREDBCEFET: TCurrencyField
      FieldName = 'ICMS_PREDBCEFET'
      Origin = 'ICMS_PREDBCEFET'
    end
    object dsItemICMS_VBCEFET: TBCDField
      FieldName = 'ICMS_VBCEFET'
      Origin = 'ICMS_VBCEFET'
      Precision = 18
      Size = 2
    end
    object dsItemICMS_PST: TCurrencyField
      FieldName = 'ICMS_PST'
      Origin = 'ICMS_PST'
    end
    object dsItemICMS_PICMSEFET: TCurrencyField
      FieldName = 'ICMS_PICMSEFET'
      Origin = 'ICMS_PICMSEFET'
    end
    object dsItemICMS_VICMSEFET: TBCDField
      FieldName = 'ICMS_VICMSEFET'
      Origin = 'ICMS_VICMSEFET'
      Precision = 18
      Size = 2
    end
    object dsItemDESCPROMOCIONAL: TCurrencyField
      FieldName = 'DESCPROMOCIONAL'
      Origin = 'DESCPROMOCIONAL'
    end
    object dsItemDESCNORMAL: TCurrencyField
      FieldName = 'DESCNORMAL'
      Origin = 'DESCNORMAL'
    end
    object dsItemPROD_ESPECIF: TStringField
      FieldName = 'PROD_ESPECIF'
      Origin = 'PROD_ESPECIF'
    end
    object dsItemCOMB_PRODANP: TStringField
      FieldName = 'COMB_PRODANP'
      Origin = 'COMB_PRODANP'
      Size = 9
    end
    object dsItemCOMB_CODIF: TStringField
      FieldName = 'COMB_CODIF'
      Origin = 'COMB_CODIF'
      Size = 21
    end
    object dsItemCOMB_QTEMP: TBCDField
      FieldName = 'COMB_QTEMP'
      Origin = 'COMB_QTEMP'
      Precision = 18
    end
    object dsItemCOMB_UFCONS: TStringField
      FieldName = 'COMB_UFCONS'
      Origin = 'COMB_UFCONS'
      FixedChar = True
      Size = 2
    end
    object dsItemCOMB_CIDE_QBCPROD: TBCDField
      FieldName = 'COMB_CIDE_QBCPROD'
      Origin = 'COMB_CIDE_QBCPROD'
      Precision = 18
    end
    object dsItemCOMB_CIDE_ALIQPROD: TBCDField
      FieldName = 'COMB_CIDE_ALIQPROD'
      Origin = 'COMB_CIDE_ALIQPROD'
      Precision = 18
    end
    object dsItemCOMB_CIDE_VCIDE: TBCDField
      FieldName = 'COMB_CIDE_VCIDE'
      Origin = 'COMB_CIDE_VCIDE'
      Precision = 18
      Size = 2
    end
    object dsItemID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
      Origin = 'ID_HISTORICO'
    end
    object dsItemPRODUTO_SERVICO: TStringField
      DisplayLabel = 'PRODUTO / SERVI'#199'O'
      FieldName = 'PRODUTO_SERVICO'
      Origin = 'PRODUTO_SERVICO'
      Size = 50
    end
    object dsItemQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object dsItemSUBTOTAL: TBCDField
      DisplayLabel = 'TOTAL (R$)'
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemTOTAL: TBCDField
      DisplayLabel = 'TOTAL (R$)'
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsItemQTDE_INFORMADA: TBCDField
      FieldName = 'QTDE_INFORMADA'
      Origin = 'QTDE_INFORMADA'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object dsItemUNITARIO: TFMTBCDField
      DisplayLabel = 'UNIT'#193'RIO R$'
      FieldName = 'UNITARIO'
      Origin = 'UNITARIO'
      DisplayFormat = '#,##0.0000000000'
      Precision = 18
      Size = 10
    end
    object dsItemPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 10
    end
    object dsItemQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      DisplayFormat = '#,##0.0000'
      Precision = 18
    end
  end
  object dsPagar: TClientDataSet
    Aggregates = <>
    DataSetField = cdsfdqryEntrada_Pagar
    Params = <>
    BeforeEdit = dsItemBeforeDelete
    BeforeDelete = dsItemBeforeDelete
    Left = 747
    Top = 176
    object dsPagarID_NOTAENTRADA: TIntegerField
      FieldName = 'ID_NOTAENTRADA'
      Origin = 'ID_NOTAENTRADA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsPagarNFAT: TIntegerField
      FieldName = 'NFAT'
      Origin = 'NFAT'
    end
    object dsPagarVDESC: TBCDField
      FieldName = 'VDESC'
      Origin = 'VDESC'
      Precision = 18
      Size = 2
    end
    object dsPagarVJUROS: TBCDField
      FieldName = 'VJUROS'
      Origin = 'VJUROS'
      Precision = 18
      Size = 2
    end
    object dsPagarVDUP: TBCDField
      DisplayLabel = 'VALOR(R$)'
      FieldName = 'VDUP'
      Origin = 'VDUP'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object dsPagarNDUP: TIntegerField
      FieldName = 'NDUP'
      Origin = 'NDUP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsPagarDVENC: TDateField
      DisplayLabel = 'VENCIMENTO'
      FieldName = 'DVENC'
      Origin = 'DVENC'
      Required = True
    end
    object dsPagarINDPAG: TStringField
      FieldName = 'INDPAG'
      Origin = 'INDPAG'
      Size = 10
    end
    object dsPagarTPAG: TStringField
      FieldName = 'TPAG'
      Origin = 'TPAG'
      Size = 10
    end
    object dsPagarBAIXA_DATA: TDateField
      FieldName = 'BAIXA_DATA'
      Origin = 'BAIXA_DATA'
    end
    object dsPagarBAIXA_VALOR: TBCDField
      FieldName = 'BAIXA_VALOR'
      Origin = 'BAIXA_VALOR'
      Precision = 18
      Size = 2
    end
    object dsPagarBAIXA_USUARIO: TStringField
      FieldName = 'BAIXA_USUARIO'
      Origin = 'BAIXA_USUARIO'
    end
    object dsPagarID_HISTORICO: TIntegerField
      FieldName = 'ID_HISTORICO'
      Origin = 'ID_HISTORICO'
    end
    object dsPagarID_CONTA: TStringField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
      FixedChar = True
      Size = 5
    end
    object dsPagarID_CAIXA: TIntegerField
      FieldName = 'ID_CAIXA'
      Origin = 'ID_CAIXA'
    end
    object dsPagarCHEQUE_NUMERO: TIntegerField
      FieldName = 'CHEQUE_NUMERO'
      Origin = 'CHEQUE_NUMERO'
    end
    object dsPagarID_PAGTO: TIntegerField
      FieldName = 'ID_PAGTO'
      Origin = 'ID_PAGTO'
    end
    object dsPagarFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'FORMA'
      Size = 50
    end
  end
end

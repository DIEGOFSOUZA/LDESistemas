inherited Pdr_NotaFiscal: TPdr_NotaFiscal
  BorderStyle = bsNone
  Caption = 'Pdr_NotaFiscal'
  ClientHeight = 600
  ClientWidth = 1335
  ExplicitWidth = 1335
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 1335
    Height = 600
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1200
    ExplicitHeight = 680
    object pnlleft: TPanel
      Left = 1
      Top = 1
      Width = 700
      Height = 598
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object pnlDados: TPanel
        Left = 0
        Top = 0
        Width = 700
        Height = 137
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 712
        object Label1: TLabel
          Left = 112
          Top = 40
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
        object Label2: TLabel
          Left = 224
          Top = 40
          Width = 25
          Height = 15
          Caption = 'TIPO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 352
          Top = 40
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
        object Label4: TLabel
          Left = 464
          Top = 40
          Width = 98
          Height = 15
          Caption = 'DATA DE ENTREGA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 576
          Top = 40
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
          Width = 700
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
          Left = 112
          Top = 84
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
        object Label33: TLabel
          Left = 244
          Top = 84
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
        object cbbTipoNF: TComboBox
          Left = 112
          Top = 57
          Width = 105
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'NF-E'
          Items.Strings = (
            'NF-E')
        end
        object ComboBox1: TComboBox
          Left = 224
          Top = 57
          Width = 102
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
          Text = 'SELECIONE'
          Items.Strings = (
            'SELECIONE'
            'ENTRADA'
            'SAIDA')
        end
        object dtpEmissao: TDateTimePicker
          Left = 352
          Top = 61
          Width = 103
          Height = 22
          Date = 44165.000000000000000000
          Time = 0.387094571757188500
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DateTimePicker1: TDateTimePicker
          Left = 464
          Top = 61
          Width = 103
          Height = 22
          Date = 44165.000000000000000000
          Time = 0.387094571757188500
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dbmmoLog: TDBMemo
          Left = 573
          Top = 61
          Width = 121
          Height = 50
          TabOrder = 4
        end
        object pnlNumNF: TPanel
          Left = 0
          Top = 20
          Width = 109
          Height = 117
          Align = alLeft
          BevelOuter = bvNone
          Caption = '1'
          Color = 7024384
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Segoe UI Black'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit2: TDBEdit
          Left = 112
          Top = 101
          Width = 121
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit3: TDBEdit
          Left = 244
          Top = 101
          Width = 53
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
      end
      object pnlClienteFornecedor: TPanel
        Left = 0
        Top = 137
        Width = 700
        Height = 145
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlClienteFornecedor'
        ShowCaption = False
        TabOrder = 1
        ExplicitWidth = 712
        object Label6: TLabel
          Left = 0
          Top = 0
          Width = 700
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '        Emitente'
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
          ExplicitLeft = -21
          ExplicitTop = -1
          ExplicitWidth = 710
        end
        object pgcCliente: TPageControl
          Left = 0
          Top = 20
          Width = 700
          Height = 125
          ActivePage = tsFaturamento
          Align = alTop
          TabOrder = 0
          ExplicitWidth = 712
          object tsDados: TTabSheet
            Caption = 'Dados'
            ImageIndex = 2
            ExplicitWidth = 704
            object pnlCliTopo: TPanel
              Left = 0
              Top = 0
              Width = 692
              Height = 97
              Align = alClient
              Caption = 'pnlCliTopo'
              Color = 14803681
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              ExplicitWidth = 704
              object Label7: TLabel
                Left = 9
                Top = 52
                Width = 68
                Height = 15
                Caption = 'CPF ou CNPJ'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 145
                Top = 52
                Width = 44
                Height = 15
                Caption = 'RG ou IE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label9: TLabel
                Left = 287
                Top = 52
                Width = 34
                Height = 15
                Caption = 'E-mail'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label10: TLabel
                Left = 521
                Top = 52
                Width = 44
                Height = 15
                Caption = 'Telefone'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 17
                Top = 15
                Width = 143
                Height = 17
                Caption = 'Pessoa F'#237'sica ou Jur'#237'dica'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object DBPesquisa2: TDBPesquisa
                Left = 240
                Top = 18
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
                Mostrar.Left = 151
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
                Campo.Left = 69
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
              object DBEdit4: TDBEdit
                Left = 9
                Top = 69
                Width = 121
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 287
                Top = 69
                Width = 194
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit7: TDBEdit
                Left = 521
                Top = 69
                Width = 121
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit5: TDBEdit
                Left = 145
                Top = 69
                Width = 121
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
              end
              object dbrgrpPJPF: TDBRadioGroup
                Left = 8
                Top = 17
                Width = 131
                Height = 33
                Columns = 2
                Items.Strings = (
                  'Jur'#237'dica'
                  'F'#237'sica')
                TabOrder = 5
              end
            end
          end
          object tsFaturamento: TTabSheet
            Caption = 'Ende'#231'o para Faturamento'
            ExplicitWidth = 704
            object pnlCliEnderecos: TPanel
              Left = 0
              Top = 0
              Width = 692
              Height = 89
              Align = alTop
              BevelOuter = bvLowered
              Caption = 'pnlCliEnderecos'
              Color = 14803681
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              ExplicitWidth = 704
              object Label11: TLabel
                Left = 1
                Top = 1
                Width = 690
                Height = 20
                Align = alTop
                AutoSize = False
                Caption = '        Endere'#231'o para faturamento'
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = False
                Layout = tlCenter
                ExplicitLeft = 0
                ExplicitTop = 3
                ExplicitWidth = 669
              end
              object Label12: TLabel
                Left = 9
                Top = 29
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
              object Label13: TLabel
                Left = 145
                Top = 29
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
              object Label14: TLabel
                Left = 287
                Top = 29
                Width = 14
                Height = 15
                Caption = 'N'#186
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label15: TLabel
                Left = 353
                Top = 29
                Width = 77
                Height = 15
                Caption = 'Complemento'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 520
                Top = 29
                Width = 31
                Height = 15
                Caption = 'Bairro'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit8: TDBEdit
                Left = 9
                Top = 46
                Width = 121
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit9: TDBEdit
                Left = 145
                Top = 46
                Width = 121
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit10: TDBEdit
                Left = 287
                Top = 46
                Width = 50
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit11: TDBEdit
                Left = 353
                Top = 46
                Width = 159
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit12: TDBEdit
                Left = 520
                Top = 46
                Width = 121
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
              end
              object pnlSalvar: TPanel
                Left = 650
                Top = 25
                Width = 25
                Height = 25
                BevelOuter = bvNone
                Caption = 'pnlIncluiCondPagto'
                Color = 7024384
                ParentBackground = False
                ShowCaption = False
                TabOrder = 5
                TabStop = True
                object imgSalvar: TImage
                  Left = 0
                  Top = 0
                  Width = 25
                  Height = 25
                  Align = alClient
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
                    00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000001
                    304944415478DA6364A003601C9E96FCFFFF9F0948F19361CE4F4646C66FC45A
                    2201A49E9361C93B2076055A748E144B7600F101209602E23C205E0DC467A1CA
                    5CA0B81188B580381488FF00F1275C16E1B2A412A8B803C83700B2CF03712290
                    BF00AAA60148D503B120100700F17C903C10F700313310BB01D59EA6C81234F5
                    09504B0C8118149FBBA1520A40F59F49B50464C1712CC16D09C4208B0C81EA2F
                    00D55703D92D402C09E4BF20D512420066490590DD4EAA256C40B60C11963C01
                    AAFF45962544188E1E4764F9A418C86621C2FC3F40F5BDE45AF21DC8E620C292
                    1F40F59C9458B21C888BF158D00BC491945AB200C8CEC4130FD38154C2A82534
                    B704560A838A0850E9BB1E4FC40702B13110D700B103107B106B09A500AF25E4
                    D68CE8E023D0927F582DA115183E960000E094FF1A9677B21D0000000049454E
                    44AE426082}
                  ExplicitLeft = 8
                  ExplicitTop = 8
                  ExplicitWidth = 105
                  ExplicitHeight = 105
                end
                object btnSalvar: TSpeedButton
                  Left = 0
                  Top = 0
                  Width = 25
                  Height = 25
                  Align = alClient
                  Flat = True
                  ExplicitLeft = 1
                  ExplicitTop = 7
                  ExplicitWidth = 23
                  ExplicitHeight = 23
                end
              end
            end
          end
          object tsEntrega: TTabSheet
            Caption = 'Endere'#231'o de entrega'
            ImageIndex = 1
            ExplicitWidth = 704
            object pnlEndEntrega: TPanel
              Left = 0
              Top = 0
              Width = 692
              Height = 89
              Align = alTop
              BevelOuter = bvLowered
              Caption = 'pnlCliEnderecos'
              Color = 14803681
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              ExplicitWidth = 704
              object lbl1: TLabel
                Left = 1
                Top = 1
                Width = 690
                Height = 20
                Align = alTop
                AutoSize = False
                Caption = '        Endere'#231'o de entrega'
                Color = clBtnFace
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -15
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                Transparent = False
                Layout = tlCenter
                ExplicitLeft = 2
                ExplicitTop = 9
                ExplicitWidth = 677
              end
              object lbl3: TLabel
                Left = 9
                Top = 29
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
              object lbl4: TLabel
                Left = 145
                Top = 29
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
              object lbl5: TLabel
                Left = 287
                Top = 29
                Width = 14
                Height = 15
                Caption = 'N'#186
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object lbl6: TLabel
                Left = 353
                Top = 29
                Width = 77
                Height = 15
                Caption = 'Complemento'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object lbl7: TLabel
                Left = 520
                Top = 29
                Width = 31
                Height = 15
                Caption = 'Bairro'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object dbedt1: TDBEdit
                Left = 9
                Top = 46
                Width = 121
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object dbedt2: TDBEdit
                Left = 145
                Top = 46
                Width = 121
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object dbedt3: TDBEdit
                Left = 287
                Top = 46
                Width = 50
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
              object dbedt4: TDBEdit
                Left = 353
                Top = 46
                Width = 159
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
              end
              object dbedt5: TDBEdit
                Left = 520
                Top = 46
                Width = 121
                Height = 23
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
              end
              object pnlSalvarEntrega: TPanel
                Left = 650
                Top = 25
                Width = 25
                Height = 25
                BevelOuter = bvNone
                Caption = 'pnlIncluiCondPagto'
                Color = 7024384
                ParentBackground = False
                ShowCaption = False
                TabOrder = 5
                TabStop = True
                object imgSalvarEntrega: TImage
                  Left = 0
                  Top = 0
                  Width = 25
                  Height = 25
                  Align = alClient
                  Picture.Data = {
                    0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
                    00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000001
                    304944415478DA6364A003601C9E96FCFFFF9F0948F19361CE4F4646C66FC45A
                    2201A49E9361C93B2076055A748E144B7600F101209602E23C205E0DC467A1CA
                    5CA0B81188B580381488FF00F1275C16E1B2A412A8B803C83700B2CF03712290
                    BF00AAA60148D503B120100700F17C903C10F700313310BB01D59EA6C81234F5
                    09504B0C8118149FBBA1520A40F59F49B50464C1712CC16D09C4208B0C81EA2F
                    00D55703D92D402C09E4BF20D512420066490590DD4EAA256C40B60C11963C01
                    AAFF45962544188E1E4764F9A418C86621C2FC3F40F5BDE45AF21DC8E620C292
                    1F40F59C9458B21C888BF158D00BC491945AB200C8CEC4130FD38154C2A82534
                    B704560A838A0850E9BB1E4FC40702B13110D700B103107B106B09A500AF25E4
                    D68CE8E023D0927F582DA115183E960000E094FF1A9677B21D0000000049454E
                    44AE426082}
                  ExplicitLeft = 8
                  ExplicitTop = 8
                  ExplicitWidth = 105
                  ExplicitHeight = 105
                end
                object btnSalvarEntrega: TSpeedButton
                  Left = 0
                  Top = 0
                  Width = 25
                  Height = 25
                  Align = alClient
                  Flat = True
                  ExplicitLeft = 1
                  ExplicitTop = 7
                  ExplicitWidth = 23
                  ExplicitHeight = 23
                end
              end
            end
          end
        end
      end
      object pnlCFOP: TPanel
        Left = 0
        Top = 282
        Width = 700
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitLeft = 4
        ExplicitTop = 284
        object Label18: TLabel
          Left = 13
          Top = 22
          Width = 117
          Height = 15
          Caption = 'Natureza de Opera'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 0
          Top = 0
          Width = 700
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '        Configura'#231#245'es opera'#231#227'o'
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
        object ComboBox2: TComboBox
          Left = 13
          Top = 39
          Width = 249
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'COMPRA DENTRO DO ESTADO'
          Items.Strings = (
            'COMPRA DENTRO DO ESTADO'
            'COMPRA FORA DO ESTADO'
            'OUTRAS ENTRADAS PARA FORA DO ESTADO')
        end
        object DBPesquisa1: TDBPesquisa
          Left = 273
          Top = 37
          Width = 413
          Height = 25
          Titulo.Left = 0
          Titulo.Top = 3
          Titulo.Width = 78
          Titulo.Height = 17
          Titulo.Caption = 'CFOP padr'#227'o'
          Titulo.Font.Charset = ANSI_CHARSET
          Titulo.Font.Color = clWindowText
          Titulo.Font.Height = -13
          Titulo.Font.Name = 'Segoe UI'
          Titulo.Font.Style = []
          Titulo.ParentFont = False
          Mostrar.Left = 162
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
          Campo.Left = 80
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
          TabOrder = 1
          TabStop = True
        end
      end
      object pnlFreteOutros: TPanel
        Left = 0
        Top = 545
        Width = 700
        Height = 116
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlFreteOutros'
        ShowCaption = False
        TabOrder = 3
        ExplicitWidth = 712
        object Label19: TLabel
          Left = 12
          Top = 2
          Width = 50
          Height = 15
          Caption = 'Desconto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 36
          Top = 25
          Width = 26
          Height = 15
          Caption = 'Frete'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 194
          Top = 2
          Width = 86
          Height = 15
          Caption = 'Outros despesas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 418
          Top = 6
          Width = 85
          Height = 13
          Caption = 'TOTAL FINAL (R$)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblTotFinal: TLabel
          Left = 505
          Top = 4
          Width = 100
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 243
          Top = 25
          Width = 37
          Height = 15
          Caption = 'Seguro'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Panel2: TPanel
          Left = 604
          Top = 0
          Width = 96
          Height = 116
          Align = alRight
          BevelOuter = bvNone
          Caption = 'pnlSubTotal'
          Color = 14803681
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          ExplicitLeft = 616
          object Panel5: TPanel
            Left = 7
            Top = 0
            Width = 89
            Height = 116
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnlAcaoGrid'
            ShowCaption = False
            TabOrder = 0
            ExplicitLeft = 262
          end
        end
        object DBEdit13: TDBEdit
          Left = 64
          Top = 0
          Width = 121
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit14: TDBEdit
          Left = 64
          Top = 23
          Width = 121
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit15: TDBEdit
          Left = 282
          Top = 0
          Width = 121
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit1: TDBEdit
          Left = 282
          Top = 23
          Width = 121
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
      object pnlItens: TPanel
        Left = 0
        Top = 347
        Width = 700
        Height = 198
        Align = alTop
        Caption = 'pnlItens'
        ShowCaption = False
        TabOrder = 4
        ExplicitWidth = 712
        object Label24: TLabel
          Left = 1
          Top = 1
          Width = 698
          Height = 15
          Align = alTop
          AutoSize = False
          Caption = '        Itens'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitLeft = -4
          ExplicitTop = 0
        end
        object pnlProdAdd: TPanel
          Left = 1
          Top = 16
          Width = 698
          Height = 50
          Align = alTop
          Caption = 'pnlProdAdd'
          Color = 13337441
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          ExplicitWidth = 710
          object pnlAdd: TPanel
            Left = 603
            Top = 1
            Width = 94
            Height = 48
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnlAdd'
            Color = 7024384
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            ExplicitLeft = 615
            object btnAddItem: TSpeedButton
              Left = 0
              Top = 0
              Width = 94
              Height = 48
              Align = alClient
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitTop = -2
            end
          end
          object pnlTotalItem: TPanel
            Left = 524
            Top = 1
            Width = 79
            Height = 48
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnlTotalItem'
            Color = 10114859
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
            ExplicitLeft = 536
            object Label25: TLabel
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
              Left = 21
              Top = 20
              Width = 38
              Height = 25
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
            Left = 445
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
            ExplicitLeft = 457
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
              Left = 21
              Top = 20
              Width = 38
              Height = 25
              Caption = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object pnlQtde: TPanel
            Left = 347
            Top = 1
            Width = 98
            Height = 48
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnlTotalItem'
            Color = 10114859
            ParentBackground = False
            ShowCaption = False
            TabOrder = 3
            ExplicitLeft = 359
            object btnMais: TSpeedButton
              Left = 69
              Top = 4
              Width = 23
              Height = 18
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
              Left = 69
              Top = 30
              Width = 23
              Height = 18
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
            end
            object edtQtde: TEdit
              Left = 4
              Top = 0
              Width = 29
              Height = 25
              Alignment = taCenter
              BorderStyle = bsNone
              Color = 10114859
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              NumbersOnly = True
              ParentFont = False
              TabOrder = 0
              Text = '0'
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
              TabStop = True
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
            Width = 346
            Height = 48
            Align = alClient
            BevelOuter = bvNone
            Caption = 'pnlItem'
            ShowCaption = False
            TabOrder = 4
            ExplicitWidth = 358
            object edpsqsProduto: TEdPesquisa
              Left = 12
              Top = 14
              Width = 321
              Height = 21
              PermitirBranco = Sim
              Titulo.Left = 0
              Titulo.Top = 3
              Titulo.Width = 3
              Titulo.Height = 13
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
              TabOrder = 0
              TabStop = True
            end
          end
        end
        object pnlGrid: TPanel
          Left = 1
          Top = 66
          Width = 698
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          Caption = 'pnlGrid'
          ShowCaption = False
          TabOrder = 2
          ExplicitWidth = 710
          object pnlAcaoGrid: TPanel
            Left = 603
            Top = 0
            Width = 95
            Height = 100
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnlAcaoGrid'
            ShowCaption = False
            TabOrder = 0
            ExplicitLeft = 615
          end
          object pnlAlocaGrid: TPanel
            Left = 0
            Top = 0
            Width = 603
            Height = 100
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 615
            object dbgrd1: TDBGrid
              Left = 0
              Top = 0
              Width = 603
              Height = 100
              Align = alClient
              DrawingStyle = gdsGradient
              GradientEndColor = 13864803
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
            end
          end
        end
        object cbbUM: TComboBox
          Left = 331
          Top = 72
          Width = 57
          Height = 21
          Color = clBtnFace
          TabOrder = 1
          Text = 'cbbUM'
          Visible = False
        end
        object pnlSubTotal: TPanel
          Left = 348
          Top = 166
          Width = 351
          Height = 31
          Align = alRight
          BevelOuter = bvNone
          Caption = 'pnlSubTotal'
          ShowCaption = False
          TabOrder = 3
          ExplicitLeft = 360
          object pnlSubTot: TPanel
            Left = 136
            Top = 0
            Width = 120
            Height = 31
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnlTotalItem'
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            object lbl9: TLabel
              Left = 36
              Top = 0
              Width = 73
              Height = 13
              Caption = 'SUBTOTAL (R$)'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object lblSubTotal: TLabel
              Left = 32
              Top = 13
              Width = 77
              Height = 17
              Alignment = taRightJustify
              AutoSize = False
              Caption = '0,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object pnl1: TPanel
            Left = 256
            Top = 0
            Width = 95
            Height = 31
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnlAcaoGrid'
            ShowCaption = False
            TabOrder = 1
          end
        end
      end
    end
    object pnlRight: TPanel
      Left = 699
      Top = 1
      Width = 635
      Height = 598
      Align = alRight
      Caption = 'pnlRight'
      ShowCaption = False
      TabOrder = 1
      ExplicitLeft = 724
      object pnlPagamento: TPanel
        Left = 1
        Top = 347
        Width = 633
        Height = 250
        Align = alBottom
        Caption = 'pnlPagamento'
        ParentColor = True
        ShowCaption = False
        TabOrder = 0
        ExplicitWidth = 658
        object Label27: TLabel
          Left = 1
          Top = 1
          Width = 631
          Height = 18
          Align = alTop
          AutoSize = False
          Caption = '        Pagamento'
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitLeft = 5
          ExplicitWidth = 656
        end
        object pnlPag0: TPanel
          Left = 1
          Top = 19
          Width = 631
          Height = 230
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnlPag0'
          ShowCaption = False
          TabOrder = 0
          ExplicitWidth = 469
          ExplicitHeight = 289
          object pnlPagLeft: TPanel
            Left = 0
            Top = 0
            Width = 201
            Height = 230
            Align = alLeft
            Caption = 'pnlPagLeft'
            ShowCaption = False
            TabOrder = 0
            ExplicitHeight = 289
            object pnlPagTotal: TPanel
              Left = 1
              Top = 1
              Width = 199
              Height = 60
              Align = alTop
              Caption = 'pnlPagTotal'
              ShowCaption = False
              TabOrder = 0
              object Label28: TLabel
                Left = 64
                Top = 8
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
                Left = 151
                Top = 31
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
              Top = 61
              Width = 199
              Height = 118
              Align = alClient
              Caption = 'pnlPagTotal'
              ShowCaption = False
              TabOrder = 1
              ExplicitHeight = 177
              object Label29: TLabel
                Left = 37
                Top = 16
                Width = 149
                Height = 17
                Caption = 'FORMA DE PAGAMENTO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label30: TLabel
                Left = 87
                Top = 72
                Width = 99
                Height = 17
                Caption = 'PARCELAMENTO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label31: TLabel
                Left = 119
                Top = 120
                Width = 67
                Height = 17
                Caption = 'VALOR (R$)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object cbbFormaPagto: TComboBox
                Left = 6
                Top = 35
                Width = 180
                Height = 25
                Style = csDropDownList
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object ComboBox3: TComboBox
                Left = 6
                Top = 91
                Width = 180
                Height = 25
                Style = csDropDownList
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object edtPagValor: TEdit
                Left = 6
                Top = 144
                Width = 180
                Height = 25
                Alignment = taRightJustify
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentColor = True
                ParentFont = False
                TabOrder = 2
                Text = '0,00'
              end
            end
            object pnlPagGerar: TPanel
              Left = 1
              Top = 179
              Width = 199
              Height = 50
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'pnlAdd'
              Color = 7024384
              ParentBackground = False
              ShowCaption = False
              TabOrder = 2
              ExplicitTop = 238
              object btnPagGerar: TSpeedButton
                Left = 0
                Top = 0
                Width = 199
                Height = 50
                Align = alClient
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitLeft = 2
                ExplicitHeight = 56
              end
            end
          end
          object pnlGridPagamento: TPanel
            Left = 201
            Top = 0
            Width = 430
            Height = 230
            Align = alClient
            BevelOuter = bvNone
            Caption = 'pnlGridPagamento'
            ShowCaption = False
            TabOrder = 1
            ExplicitWidth = 268
            ExplicitHeight = 289
            object pnlTitPagto: TPanel
              Left = 0
              Top = 0
              Width = 430
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              Caption = 'pnlTitPagto'
              Color = clWhite
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              ExplicitWidth = 268
            end
            object pnlExcDup: TPanel
              Left = 0
              Top = 180
              Width = 430
              Height = 50
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'pnlExcDup'
              ShowCaption = False
              TabOrder = 1
              ExplicitTop = 239
              ExplicitWidth = 268
              object pnlbtnExcDup: TPanel
                Left = 74
                Top = 10
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
              Top = 41
              Width = 430
              Height = 139
              Align = alClient
              DrawingStyle = gdsGradient
              GradientEndColor = 13864803
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 2
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
            end
          end
        end
      end
      object pnlTransporte: TPanel
        Left = 1
        Top = 137
        Width = 633
        Height = 210
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitTop = 126
        ExplicitWidth = 658
        object Label34: TLabel
          Left = 0
          Top = 0
          Width = 633
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '  TRANSPORTADOR/VOLUMES TRANSPORTADOS'
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
          ExplicitWidth = 471
        end
        object Label35: TLabel
          Left = 11
          Top = 54
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
          Left = 239
          Top = 54
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
          Left = 335
          Top = 54
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
          Left = 431
          Top = 54
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
          Top = 99
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
          Top = 99
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
          Top = 147
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
          Top = 147
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
          Top = 147
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
          Top = 147
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
          Top = 147
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
          Top = 147
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
          Top = 54
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
          Top = 99
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
        object dbpsqsTransporte: TDBPesquisa
          Left = 11
          Top = 24
          Width = 426
          Height = 25
          Titulo.Left = 0
          Titulo.Top = 3
          Titulo.Width = 91
          Titulo.Height = 17
          Titulo.Caption = 'Transportadora'
          Titulo.Font.Charset = ANSI_CHARSET
          Titulo.Font.Color = clWindowText
          Titulo.Font.Height = -13
          Titulo.Font.Name = 'Segoe UI'
          Titulo.Font.Style = []
          Titulo.ParentFont = False
          Mostrar.Left = 175
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
          Campo.Left = 93
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
        object DBComboBox1: TDBComboBox
          Left = 11
          Top = 71
          Width = 222
          Height = 23
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
        object DBEdit16: TDBEdit
          Left = 235
          Top = 71
          Width = 90
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit17: TDBEdit
          Left = 327
          Top = 71
          Width = 90
          Height = 23
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
          Top = 71
          Width = 106
          Height = 23
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
          TabOrder = 4
        end
        object DBEdit18: TDBEdit
          Left = 11
          Top = 116
          Width = 121
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit19: TDBEdit
          Left = 134
          Top = 116
          Width = 391
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit20: TDBEdit
          Left = 11
          Top = 164
          Width = 86
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit21: TDBEdit
          Left = 99
          Top = 164
          Width = 102
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit22: TDBEdit
          Left = 203
          Top = 164
          Width = 102
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit23: TDBEdit
          Left = 307
          Top = 164
          Width = 102
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit24: TDBEdit
          Left = 411
          Top = 164
          Width = 102
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit25: TDBEdit
          Left = 515
          Top = 164
          Width = 102
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit26: TDBEdit
          Left = 527
          Top = 71
          Width = 102
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit27: TDBEdit
          Left = 527
          Top = 116
          Width = 102
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
      end
    end
  end
  object actlst1: TActionList
    Left = 649
    Top = 434
  end
end

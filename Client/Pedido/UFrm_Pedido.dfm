inherited Frm_Pedido: TFrm_Pedido
  Caption = 'Frm_Pedido'
  ClientHeight = 638
  ClientWidth = 1200
  ExplicitWidth = 1200
  ExplicitHeight = 638
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 1200
    Height = 22
    Caption = '         PEDIDO DE VENDA'
    ExplicitTop = 0
    ExplicitWidth = 1200
    ExplicitHeight = 22
  end
  inherited pnlFundo0: TPanel
    Top = 22
    Width = 1200
    Height = 616
    Color = 14803681
    ParentBackground = False
    ExplicitTop = 22
    ExplicitWidth = 1200
    ExplicitHeight = 616
    inherited Panel1: TPanel
      Width = 1198
      Height = 64
      BevelOuter = bvNone
      ExplicitWidth = 1198
      ExplicitHeight = 64
      inherited pnlSair: TPanel
        Top = 2
        ExplicitTop = 2
      end
      inherited pnlGravar: TPanel
        Top = 2
        ExplicitTop = 2
      end
      inherited pnlCancelar: TPanel
        Top = 2
        ExplicitTop = 2
      end
      inherited pnlLocalizar: TPanel
        Top = 2
        ExplicitTop = 2
      end
      inherited pnlExcluir: TPanel
        Top = 2
        ExplicitTop = 2
      end
      inherited pnlEditar: TPanel
        Top = 2
        ExplicitTop = 2
      end
      inherited pnlAdicionar: TPanel
        Top = 2
        ExplicitTop = 2
      end
    end
    inherited pnlFundo1: TPanel
      Top = 65
      Width = 695
      Height = 550
      ExplicitTop = 65
      ExplicitWidth = 695
      ExplicitHeight = 550
      inherited Panel4: TPanel
        Top = 529
        Width = 693
        TabOrder = 4
        ExplicitTop = 529
        ExplicitWidth = 693
      end
      object pnlPedido: TPanel
        Left = 1
        Top = 1
        Width = 693
        Height = 108
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlPedido'
        ShowCaption = False
        TabOrder = 0
        object lbl2: TLabel
          Left = 0
          Top = 0
          Width = 693
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '        Pedido'
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
          OnMouseMove = lblTituloMouseMove
          ExplicitLeft = 9
          ExplicitTop = 1
          ExplicitWidth = 679
        end
        object Label1: TLabel
          Left = 16
          Top = 20
          Width = 61
          Height = 17
          Caption = 'N'#186' Pedido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 421
          Top = 20
          Width = 48
          Height = 17
          Caption = 'Emiss'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 421
          Top = 62
          Width = 45
          Height = 17
          Caption = 'Entrega'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 38
          Width = 121
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 421
          Top = 38
          Width = 121
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 421
          Top = 80
          Width = 121
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBPesquisa1: TDBPesquisa
          Left = 16
          Top = 80
          Width = 392
          Height = 25
          Titulo.Left = 0
          Titulo.Top = 3
          Titulo.Width = 57
          Titulo.Height = 17
          Titulo.Caption = 'Vendedor'
          Titulo.Font.Charset = ANSI_CHARSET
          Titulo.Font.Color = clWindowText
          Titulo.Font.Height = -13
          Titulo.Font.Name = 'Segoe UI'
          Titulo.Font.Style = []
          Titulo.ParentFont = False
          Mostrar.Left = 141
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
          Campo.Left = 59
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
          TabOrder = 2
          TabStop = True
        end
      end
      object pnlCliente: TPanel
        Left = 1
        Top = 109
        Width = 693
        Height = 130
        Align = alTop
        Caption = 'pnlCliente'
        ShowCaption = False
        TabOrder = 1
        object Label3: TLabel
          Left = 1
          Top = 1
          Width = 691
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '        Cliente'
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
          OnMouseMove = lblTituloMouseMove
          ExplicitLeft = -3
          ExplicitTop = 3
        end
        object pgcCliente: TPageControl
          Left = 1
          Top = 21
          Width = 691
          Height = 118
          ActivePage = tsDados
          Align = alTop
          TabOrder = 0
          object tsDados: TTabSheet
            Caption = 'Dados'
            ImageIndex = 2
            object pnlCliTopo: TPanel
              Left = 0
              Top = 0
              Width = 683
              Height = 90
              Align = alClient
              Caption = 'pnlCliTopo'
              Color = 14803681
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object Label5: TLabel
                Left = 9
                Top = 33
                Width = 73
                Height = 17
                Caption = 'CPF ou CNPJ'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label6: TLabel
                Left = 145
                Top = 33
                Width = 50
                Height = 17
                Caption = 'RG ou IE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 287
                Top = 33
                Width = 36
                Height = 17
                Caption = 'E-mail'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 521
                Top = 33
                Width = 49
                Height = 17
                Caption = 'Telefone'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object DBPesquisa2: TDBPesquisa
                Left = 8
                Top = 6
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
                Top = 51
                Width = 121
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 287
                Top = 51
                Width = 194
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit7: TDBEdit
                Left = 521
                Top = 51
                Width = 121
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object DBEdit5: TDBEdit
                Left = 145
                Top = 51
                Width = 121
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
            end
          end
          object tsFaturamento: TTabSheet
            Caption = 'Ende'#231'o para Faturamento'
            object pnlCliEnderecos: TPanel
              Left = 0
              Top = 0
              Width = 683
              Height = 89
              Align = alTop
              BevelOuter = bvLowered
              Caption = 'pnlCliEnderecos'
              Color = 14803681
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object Label9: TLabel
                Left = 1
                Top = 1
                Width = 681
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
                OnMouseMove = lblTituloMouseMove
                ExplicitLeft = 0
                ExplicitTop = 3
                ExplicitWidth = 669
              end
              object Label10: TLabel
                Left = 9
                Top = 29
                Width = 22
                Height = 17
                Caption = 'CEP'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 145
                Top = 29
                Width = 55
                Height = 17
                Caption = 'Endere'#231'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 287
                Top = 29
                Width = 16
                Height = 17
                Caption = 'N'#186
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label13: TLabel
                Left = 353
                Top = 29
                Width = 82
                Height = 17
                Caption = 'Complemento'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 520
                Top = 29
                Width = 35
                Height = 17
                Caption = 'Bairro'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit8: TDBEdit
                Left = 9
                Top = 48
                Width = 121
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit9: TDBEdit
                Left = 145
                Top = 48
                Width = 121
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit10: TDBEdit
                Left = 287
                Top = 48
                Width = 50
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit11: TDBEdit
                Left = 353
                Top = 48
                Width = 159
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object DBEdit12: TDBEdit
                Left = 520
                Top = 48
                Width = 121
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
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
                TabOrder = 0
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
            object pnlEndEntrega: TPanel
              Left = 0
              Top = 0
              Width = 683
              Height = 89
              Align = alTop
              BevelOuter = bvLowered
              Caption = 'pnlCliEnderecos'
              Color = 14803681
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object lbl1: TLabel
                Left = 1
                Top = 1
                Width = 681
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
                OnMouseMove = lblTituloMouseMove
                ExplicitLeft = 2
                ExplicitTop = 9
                ExplicitWidth = 677
              end
              object lbl3: TLabel
                Left = 9
                Top = 29
                Width = 22
                Height = 17
                Caption = 'CEP'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object lbl4: TLabel
                Left = 145
                Top = 29
                Width = 55
                Height = 17
                Caption = 'Endere'#231'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object lbl5: TLabel
                Left = 287
                Top = 29
                Width = 16
                Height = 17
                Caption = 'N'#186
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object lbl6: TLabel
                Left = 353
                Top = 29
                Width = 82
                Height = 17
                Caption = 'Complemento'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object lbl7: TLabel
                Left = 520
                Top = 29
                Width = 35
                Height = 17
                Caption = 'Bairro'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object dbedt1: TDBEdit
                Left = 9
                Top = 48
                Width = 121
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object dbedt2: TDBEdit
                Left = 145
                Top = 48
                Width = 121
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object dbedt3: TDBEdit
                Left = 287
                Top = 48
                Width = 50
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object dbedt4: TDBEdit
                Left = 353
                Top = 48
                Width = 159
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object dbedt5: TDBEdit
                Left = 520
                Top = 48
                Width = 121
                Height = 25
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
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
                TabOrder = 0
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
      object pnlItens: TPanel
        Left = 1
        Top = 239
        Width = 693
        Height = 198
        Align = alTop
        Caption = 'pnlItens'
        ShowCaption = False
        TabOrder = 2
        object Label15: TLabel
          Left = 1
          Top = 1
          Width = 691
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
          OnMouseMove = lblTituloMouseMove
          ExplicitWidth = 679
        end
        object pnlProdAdd: TPanel
          Left = 1
          Top = 16
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
            object btnAddItem: TSpeedButton
              Left = 0
              Top = 0
              Width = 94
              Height = 48
              Action = actAddPedido
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
            object Label16: TLabel
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
            Left = 340
            Top = 1
            Width = 98
            Height = 48
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnlTotalItem'
            Color = 10114859
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
            object btnMais: TSpeedButton
              Left = 69
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
              Left = 69
              Top = 30
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
                Action = actUM
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
            Width = 339
            Height = 48
            Align = alClient
            BevelOuter = bvNone
            Caption = 'pnlItem'
            ShowCaption = False
            TabOrder = 0
            object edpsqsProduto: TEdPesquisa
              Left = -20
              Top = 14
              Width = 344
              Height = 21
              PermitirBranco = Sim
              Titulo.Left = 0
              Titulo.Top = 3
              Titulo.Width = 26
              Titulo.Height = 13
              Titulo.Caption = 'Titulo'
              Titulo.Visible = False
              Mostrar.Left = 93
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
              Campo.Left = 28
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
          Width = 691
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          Caption = 'pnlGrid'
          ShowCaption = False
          TabOrder = 1
          object pnlAcaoGrid: TPanel
            Left = 596
            Top = 0
            Width = 95
            Height = 100
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnlAcaoGrid'
            ShowCaption = False
            TabOrder = 1
          end
          object pnlAlocaGrid: TPanel
            Left = 0
            Top = 0
            Width = 596
            Height = 100
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object dbgrd1: TDBGrid
              Left = 0
              Top = 0
              Width = 596
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
          TabOrder = 2
          Text = 'cbbUM'
          Visible = False
        end
        object pnlSubTotal: TPanel
          Left = 341
          Top = 166
          Width = 351
          Height = 31
          Align = alRight
          BevelOuter = bvNone
          Caption = 'pnlSubTotal'
          ShowCaption = False
          TabOrder = 3
          object pnlSubTot: TPanel
            Left = 177
            Top = 0
            Width = 79
            Height = 31
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnlTotalItem'
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            object lbl9: TLabel
              Left = 2
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
              Left = 0
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
      object pnlFreteOutros: TPanel
        Left = 1
        Top = 437
        Width = 693
        Height = 96
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlFreteOutros'
        ShowCaption = False
        TabOrder = 3
        object Panel2: TPanel
          Left = 342
          Top = 0
          Width = 351
          Height = 96
          Align = alRight
          BevelOuter = bvNone
          Caption = 'pnlSubTotal'
          Color = 14803681
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 256
            Height = 96
            Align = alClient
            BevelOuter = bvNone
            Caption = 'pnlTotalItem'
            ParentBackground = False
            ParentColor = True
            ShowCaption = False
            TabOrder = 0
            object Label17: TLabel
              Left = 22
              Top = 0
              Width = 55
              Height = 17
              Caption = 'Desconto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 84
              Top = 23
              Width = 29
              Height = 17
              Caption = 'Frete'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 32
              Top = 46
              Width = 81
              Height = 17
              Caption = 'Outros custos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 39
              Top = 75
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
              Left = 127
              Top = 72
              Width = 121
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
            object DBComboBox1: TDBComboBox
              Left = 83
              Top = 0
              Width = 41
              Height = 21
              Style = csDropDownList
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Items.Strings = (
                'R$'
                ' %')
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit13: TDBEdit
              Left = 127
              Top = 0
              Width = 121
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit14: TDBEdit
              Left = 127
              Top = 23
              Width = 121
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit15: TDBEdit
              Left = 127
              Top = 46
              Width = 121
              Height = 21
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
          object Panel5: TPanel
            Left = 256
            Top = 0
            Width = 95
            Height = 96
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
      Left = 696
      Top = 65
      Width = 503
      Height = 550
      Align = alRight
      Caption = 'pnlRight'
      ShowCaption = False
      TabOrder = 2
      object pnlPagamento: TPanel
        Left = 1
        Top = 240
        Width = 501
        Height = 309
        Align = alBottom
        Caption = 'pnlPagamento'
        ParentColor = True
        ShowCaption = False
        TabOrder = 0
        object Label21: TLabel
          Left = 1
          Top = 1
          Width = 499
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
          OnMouseMove = lblTituloMouseMove
        end
        object pnlPag0: TPanel
          Left = 1
          Top = 19
          Width = 499
          Height = 289
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnlPag0'
          ShowCaption = False
          TabOrder = 0
          object pnlPagLeft: TPanel
            Left = 0
            Top = 0
            Width = 201
            Height = 289
            Align = alLeft
            Caption = 'pnlPagLeft'
            ShowCaption = False
            TabOrder = 0
            object pnlPagTotal: TPanel
              Left = 1
              Top = 1
              Width = 199
              Height = 60
              Align = alTop
              Caption = 'pnlPagTotal'
              ShowCaption = False
              TabOrder = 0
              object Label22: TLabel
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
              Height = 177
              Align = alClient
              Caption = 'pnlPagTotal'
              ShowCaption = False
              TabOrder = 1
              object Label24: TLabel
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
              object Label25: TLabel
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
              object Label26: TLabel
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
              object ComboBox1: TComboBox
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
                OnKeyPress = edtPagValorKeyPress
              end
            end
            object pnlPagGerar: TPanel
              Left = 1
              Top = 238
              Width = 199
              Height = 50
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
                Width = 199
                Height = 50
                Action = actGeraContas
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
            Width = 298
            Height = 289
            Align = alClient
            BevelOuter = bvNone
            Caption = 'pnlGridPagamento'
            ShowCaption = False
            TabOrder = 1
            object pnlTitPagto: TPanel
              Left = 0
              Top = 0
              Width = 298
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              Caption = 'pnlTitPagto'
              Color = clWhite
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object Label27: TLabel
                Left = 15
                Top = 24
                Width = 82
                Height = 17
                AutoSize = False
                Caption = 'VENCIMENTO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label28: TLabel
                Left = 111
                Top = 24
                Width = 63
                Height = 17
                AutoSize = False
                Caption = 'VALOR(R$)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object pnlExcDup: TPanel
              Left = 0
              Top = 239
              Width = 298
              Height = 50
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'pnlExcDup'
              ShowCaption = False
              TabOrder = 2
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
                  Action = actExcDuplicatas
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
              Width = 298
              Height = 198
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
              TabOrder = 1
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
            end
          end
        end
      end
    end
  end
  inherited actMaster: TActionList
    Left = 736
    Top = 152
    object actAddPedido: TAction
      Caption = 'INCLUIR '#13#10'NO PEDIDO'
      OnExecute = actAddPedidoExecute
    end
    object actMais: TAction
      Caption = '+'
      OnExecute = actMaisExecute
    end
    object actMenos: TAction
      Caption = '-'
      OnExecute = actMenosExecute
    end
    object actUM: TAction
      OnExecute = actUMExecute
    end
    object actGeraContas: TAction
      Caption = 'GERAR CONTAS'
      OnExecute = actGeraContasExecute
    end
    object actExcDuplicatas: TAction
      Caption = 'EXCLUIR DUPLICATAS'
      OnExecute = actExcDuplicatasExecute
    end
  end
  object dsDuplicata: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 928
    Top = 287
  end
  object sDuplicata: TDataSource
    DataSet = dsDuplicata
    Left = 984
    Top = 295
  end
end

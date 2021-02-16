inherited Frm_Item: TFrm_Item
  BorderStyle = bsNone
  Caption = 'Frm_Item'
  ClientHeight = 406
  ClientWidth = 558
  Visible = False
  ExplicitWidth = 558
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo0: TPanel
    Left = 0
    Top = 0
    Width = 558
    Height = 406
    Align = alClient
    Color = 14803681
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 556
      Height = 30
      Align = alTop
      AutoSize = False
      Caption = '   N.F. ENTRADA - ALTERA'#199#195'O DE ITEM'
      Color = 7024384
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
      ExplicitWidth = 470
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 360
      Width = 556
      Height = 45
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'pnlRodape'
      Color = clWhite
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      ExplicitTop = 362
      object pnlCancelar: TPanel
        Left = 314
        Top = 5
        Width = 110
        Height = 35
        Caption = 'pnlIncRecebimento'
        Color = 4868682
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        object btnCancelar: TSpeedButton
          Left = 1
          Top = 1
          Width = 108
          Height = 33
          Action = actCancelar
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = -3
          ExplicitWidth = 278
          ExplicitHeight = 58
        end
      end
      object pnlSalvar: TPanel
        Left = 434
        Top = 5
        Width = 110
        Height = 35
        Caption = 'pnlIncRecebimento'
        Color = 3458443
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        object btnSalvar: TSpeedButton
          Left = 1
          Top = 1
          Width = 108
          Height = 33
          Action = actSalvar
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitTop = -3
          ExplicitWidth = 278
          ExplicitHeight = 58
        end
      end
      object pnlVlFinal: TPanel
        Left = 0
        Top = 0
        Width = 239
        Height = 45
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object Label36: TLabel
          Left = 14
          Top = 14
          Width = 87
          Height = 17
          Caption = 'VALOR FINAL:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVlFinal: TLabel
          Left = 103
          Top = 14
          Width = 43
          Height = 17
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object pnlDados: TPanel
      Left = 1
      Top = 31
      Width = 556
      Height = 130
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label10: TLabel
        Left = 241
        Top = 4
        Width = 69
        Height = 13
        Caption = 'QUANTIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 14
        Top = 4
        Width = 101
        Height = 13
        Caption = 'PRODUTO/SERVI'#199'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 370
        Top = 4
        Width = 50
        Height = 13
        Caption = 'UNIT'#193'RIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 320
        Top = 4
        Width = 48
        Height = 13
        Caption = 'UNIDADE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 457
        Top = 4
        Width = 58
        Height = 13
        Caption = 'DESCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 14
        Top = 44
        Width = 25
        Height = 13
        Caption = 'GTIN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 141
        Top = 46
        Width = 34
        Height = 13
        Caption = 'N.C.M.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 241
        Top = 46
        Width = 28
        Height = 13
        Caption = 'CFOP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 14
        Top = 87
        Width = 31
        Height = 13
        Caption = 'FRETE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 136
        Top = 87
        Width = 44
        Height = 13
        Caption = 'SEGURO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 258
        Top = 87
        Width = 97
        Height = 13
        Caption = 'OUTRAS DESPESAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 380
        Top = 87
        Width = 118
        Height = 13
        Caption = 'DESPESAS ACESS'#211'RIAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 14
        Top = 19
        Width = 225
        Height = 21
        DataField = 'PRODUTO_SERVICO'
        DataSource = sItem
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 241
        Top = 19
        Width = 77
        Height = 21
        DataField = 'QTDE'
        DataSource = sItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 320
        Top = 19
        Width = 48
        Height = 21
        DataField = 'UNIDADE'
        DataSource = sItem
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 370
        Top = 19
        Width = 85
        Height = 21
        DataField = 'UNITARIO'
        DataSource = sItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 457
        Top = 19
        Width = 85
        Height = 21
        DataField = 'VALORDESCONTO'
        DataSource = sItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 14
        Top = 59
        Width = 114
        Height = 23
        DataField = 'CEAN'
        DataSource = sItem
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 137
        Top = 61
        Width = 102
        Height = 21
        DataField = 'NCM'
        DataSource = sItem
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 241
        Top = 61
        Width = 77
        Height = 21
        DataField = 'CFOP'
        DataSource = sItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 14
        Top = 102
        Width = 120
        Height = 21
        DataField = 'VALORFRETE'
        DataSource = sItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 136
        Top = 102
        Width = 120
        Height = 21
        DataField = 'VALORSEGURO'
        DataSource = sItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 258
        Top = 102
        Width = 120
        Height = 21
        DataField = 'VALOROUTRAS'
        DataSource = sItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit12: TDBEdit
        Left = 380
        Top = 102
        Width = 120
        Height = 21
        DataField = 'VALORACESSORIAS'
        DataSource = sItem
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
    end
    object pnlPages: TPanel
      Left = 1
      Top = 161
      Width = 556
      Height = 199
      Align = alClient
      BevelOuter = bvNone
      Caption = 'pnlPages'
      Color = 14803681
      ParentBackground = False
      ShowCaption = False
      TabOrder = 2
      object pgc1: TPageControl
        Left = 0
        Top = 0
        Width = 556
        Height = 199
        ActivePage = tsICMS
        Align = alClient
        MultiLine = True
        TabOrder = 0
        TabWidth = 120
        object tsICMS: TTabSheet
          Caption = 'I.C.M.S.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          object pnlICMS: TPanel
            Left = 0
            Top = 0
            Width = 548
            Height = 171
            Align = alClient
            BevelOuter = bvNone
            Color = 14803681
            ParentBackground = False
            TabOrder = 0
            object pnlCSOSN: TPanel
              Left = 0
              Top = 0
              Width = 548
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Label23: TLabel
                Left = 10
                Top = 1
                Width = 51
                Height = 13
                Caption = 'C.S.O.S.N.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object DBComboBox2: TDBComboBox
                Left = 10
                Top = 17
                Width = 451
                Height = 21
                Style = csDropDownList
                DataField = 'ICMS_CSOSN'
                DataSource = sItem
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Items.Strings = (
                  '101  - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito.'
                  '102  - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito.'
                  
                    '103  - Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita' +
                    ' bruta.'
                  
                    '201  - Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito ' +
                    'e com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria. '
                  
                    '202  - Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito ' +
                    'e com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria. '
                  
                    '203  - Isen'#231#227'o do ICMS nos Simples Nacional para faixa de receit' +
                    'a bruta e com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria. '
                  '300  - Imune.'
                  '400  -  N'#227'o tributada pelo Simples Nacional.'
                  
                    '500  - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria(su' +
                    'bstitu'#237'do) ou por antecipa'#231#227'o.'
                  '900  -  Outros.')
                ParentFont = False
                TabOrder = 0
              end
            end
            object pnlICMSDados: TPanel
              Left = 0
              Top = 41
              Width = 548
              Height = 130
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label13: TLabel
                Left = 10
                Top = 0
                Width = 166
                Height = 13
                Caption = 'ORIGEM MERCADORIA/SERVI'#199'O'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 219
                Top = 0
                Width = 162
                Height = 13
                Caption = 'C'#211'DIGO SITUA'#199#194'O TRIBUT'#193'RIA'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label15: TLabel
                Left = 10
                Top = 42
                Width = 91
                Height = 13
                Caption = 'VL BASE C'#193'LCULO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 132
                Top = 42
                Width = 67
                Height = 13
                Caption = '% AL'#205'QUOTA '
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 254
                Top = 42
                Width = 86
                Height = 13
                Caption = '% REDU'#199#194'O B.C.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 376
                Top = 42
                Width = 41
                Height = 13
                Caption = 'VL ICMS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 10
                Top = 85
                Width = 112
                Height = 13
                Caption = 'VL BASE C'#193'LCULO S.T.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label20: TLabel
                Left = 132
                Top = 85
                Width = 85
                Height = 13
                Caption = '% AL'#205'QUOTA S.T.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label21: TLabel
                Left = 254
                Top = 85
                Width = 107
                Height = 13
                Caption = '% REDU'#199#194'O B.C. S.T.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label22: TLabel
                Left = 376
                Top = 85
                Width = 62
                Height = 13
                Caption = 'VL ICMS S.T.'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object dbcbbCST: TDBComboBox
                Left = 219
                Top = 15
                Width = 319
                Height = 21
                Style = csDropDownList
                DataField = 'ICMS_CST'
                DataSource = sItem
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Items.Strings = (
                  '00 - Tributada Integralmente'
                  
                    '10 - Tributada e com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ri' +
                    'a'
                  '20 - Com redu'#231#227'o de base de c'#225'lculo'
                  
                    '30 - Isenta ou n'#227'o tributada e com cobran'#231'a do ICMS por Substitu' +
                    'i'#231#227'o Tribut'#225'ria'
                  '40 - Isenta'
                  '41 - N'#227'o Tributada'
                  '50 - Suspen'#231#227'o'
                  '60 - ICMS cobrado anteriormente por Substitui'#231#227'o Tribut'#225'ria'
                  
                    '70 - Com redu'#231#227'o de base de c'#225'lculo e cobran'#231'a do ICMS por Subst' +
                    'itui'#231#227'o Tribut'#225'ria'
                  '90 - Outros')
                ParentFont = False
                TabOrder = 0
              end
              object DBComboBox1: TDBComboBox
                Left = 10
                Top = 15
                Width = 207
                Height = 21
                Style = csDropDownList
                DataField = 'ICMS_ORIGEM'
                DataSource = sItem
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                Items.Strings = (
                  '0 - Nacional;'
                  '1 - Estrangeira - Importa'#231#227'o direta;'
                  '2 - Estrangeira - Adquirida no mercado interno')
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit13: TDBEdit
                Left = 10
                Top = 57
                Width = 120
                Height = 21
                DataField = 'ICMS_BC'
                DataSource = sItem
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit14: TDBEdit
                Left = 132
                Top = 57
                Width = 120
                Height = 21
                DataField = 'ICMS_ALIQ'
                DataSource = sItem
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit15: TDBEdit
                Left = 254
                Top = 57
                Width = 120
                Height = 21
                DataField = 'ICMS_PREDBC'
                DataSource = sItem
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object DBEdit16: TDBEdit
                Left = 376
                Top = 57
                Width = 120
                Height = 21
                DataField = 'ICMS_VALOR'
                DataSource = sItem
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object DBEdit17: TDBEdit
                Left = 10
                Top = 101
                Width = 120
                Height = 21
                DataField = 'ICMS_VALORBCST'
                DataSource = sItem
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
              end
              object DBEdit18: TDBEdit
                Left = 132
                Top = 101
                Width = 120
                Height = 21
                DataField = 'ICMS_ALIQST'
                DataSource = sItem
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 7
              end
              object DBEdit19: TDBEdit
                Left = 254
                Top = 101
                Width = 120
                Height = 21
                DataField = 'ICMS_PREDBCST'
                DataSource = sItem
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
              end
              object DBEdit20: TDBEdit
                Left = 376
                Top = 100
                Width = 120
                Height = 21
                DataField = 'ICMS_VALORST'
                DataSource = sItem
                Enabled = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 9
              end
            end
          end
        end
        object tsIPI: TTabSheet
          Caption = 'I.P.I.'
          ImageIndex = 1
          object pnlIPI: TPanel
            Left = 0
            Top = 0
            Width = 548
            Height = 171
            Align = alClient
            BevelOuter = bvNone
            Color = 14803681
            ParentBackground = False
            TabOrder = 0
            object Label24: TLabel
              Left = 18
              Top = 8
              Width = 162
              Height = 13
              Caption = 'C'#211'DIGO SITUA'#199#194'O TRIBUT'#193'RIA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label25: TLabel
              Left = 18
              Top = 50
              Width = 91
              Height = 13
              Caption = 'VL BASE C'#193'LCULO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label26: TLabel
              Left = 140
              Top = 50
              Width = 67
              Height = 13
              Caption = '% AL'#205'QUOTA '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label27: TLabel
              Left = 262
              Top = 50
              Width = 27
              Height = 13
              Caption = 'VL IPI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object DBComboBox3: TDBComboBox
              Left = 18
              Top = 23
              Width = 271
              Height = 21
              Style = csDropDownList
              DataField = 'IPI_CST'
              DataSource = sItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Items.Strings = (
                '00 - Entrada com recupera'#231#227'o de cr'#233'dito'
                '01 - Entrada tributada com aliquota zero'
                '02 - Entrada Isenta'
                '03 - Entrada n'#227'o-tributada'
                '04 - Entrada Imune'
                '05 - Entrada com Suspens'#227'o'
                '49 - Outras entradas'
                '50 - Sa'#237'da tributada'
                '51 - Sa'#237'da tributada com aliquota zero'
                '52 - Sa'#237'da Isenta'
                '53 - Sa'#237'da n'#227'o-tributada'
                '54 - Sa'#237'da Imune'
                '55 - Sa'#237'da com Suspens'#227'o'
                '99 - Outras Sa'#237'das')
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit21: TDBEdit
              Left = 18
              Top = 65
              Width = 120
              Height = 21
              DataField = 'IPI_BC'
              DataSource = sItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object dbedtIPI_ALIQ: TDBEdit
              Left = 140
              Top = 65
              Width = 120
              Height = 21
              DataField = 'IPI_ALIQ'
              DataSource = sItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit23: TDBEdit
              Left = 262
              Top = 65
              Width = 120
              Height = 21
              DataField = 'IPI_VALOR'
              DataSource = sItem
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
        end
        object tsPIS: TTabSheet
          Caption = 'P.I.S.'
          ImageIndex = 2
          object pnlPIS: TPanel
            Left = 0
            Top = 0
            Width = 548
            Height = 171
            Align = alClient
            BevelOuter = bvNone
            Color = 14803681
            ParentBackground = False
            TabOrder = 0
            object Label28: TLabel
              Left = 18
              Top = 8
              Width = 162
              Height = 13
              Caption = 'C'#211'DIGO SITUA'#199#194'O TRIBUT'#193'RIA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 18
              Top = 50
              Width = 91
              Height = 13
              Caption = 'VL BASE C'#193'LCULO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 140
              Top = 50
              Width = 67
              Height = 13
              Caption = '% AL'#205'QUOTA '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label31: TLabel
              Left = 262
              Top = 50
              Width = 30
              Height = 13
              Caption = 'VL PIS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object DBComboBox4: TDBComboBox
              Left = 18
              Top = 23
              Width = 520
              Height = 21
              Style = csDropDownList
              DataField = 'PIS_CST'
              DataSource = sItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Items.Strings = (
                
                  '01 - Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = valor da opera'#231#227'o al' +
                  #237'quota normal(cumulativo/n'#227'o cumulativo));'
                
                  '02 - Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = valor da opera'#231#227'o al' +
                  #237'quota diferenciada)) ;'
                
                  '03 - Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = quantidade vendida x' +
                  ' aliquota por unidade de produto);'
                
                  '04 - Opera'#231#227'o Tribut'#225'vel (tributa'#231#227'o monof'#225'stica (al'#237'quota zero)' +
                  ');'
                '06 - Opera'#231#227'o Tribut'#225'vel (al'#237'quota zero);'
                '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o;'
                '08 - Opera'#231#227'o Sem Incid'#234'ncia da Contribui'#231#227'o;'
                '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o;'
                '49 - Outras opera'#231#245'es de sa'#237'da;'
                
                  '50 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita Tributadas no Mercado Interno;'
                
                  '51 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita N'#227'o-Tributadas no Mercado Interno;'
                
                  '52 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita de Exporta'#231#227'o;'
                
                  '53 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                  'tadas e N'#227'o-Tributadas no Mercado Interno;'
                
                  '54 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                  'tadas no Mercado Interno e de Exporta'#231#227'o;'
                
                  '55 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-T' +
                  'ributadas no Mercado Interno e de Exporta'#231#227'o;'
                
                  '56 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                  'tadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o;'
                
                  '60 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas Tributadas no Mercado Interno;'
                
                  '61 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas N'#227'o-Tributadas no Mercado Interno;'
                
                  '62 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas de Exporta'#231#227'o;'
                
                  '63 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas Tributadas e N'#227'o-Tributada no Mercado Interno' +
                  ';'
                
                  '64 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas Tributadas no Mercado Interno e de Exporta'#231#227'o' +
                  ';'
                
                  '65 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas N'#227'o-Tributadas no Mercado Interno e de Export' +
                  'a'#231#227'o;'
                
                  '66 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas Tributadas e N'#227'o-Tributadas no Mercado Intern' +
                  'o, e de Exporta'#231#227'o;'
                '67 - Cr'#233'dito Presumido - Outras Opera'#231#245'es;'
                '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito;'
                '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o;'
                '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o;'
                '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero;'
                '74 - Opera'#231#227'o de Aquisi'#231#227'o; sem Incid'#234'ncia da Contribui'#231#227'o;'
                '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria;'
                '98 - Outras Opera'#231#245'es de Entrada;'
                '99 - Outras Opera'#231#245'es;')
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit24: TDBEdit
              Left = 18
              Top = 65
              Width = 120
              Height = 21
              DataField = 'PIS_BC'
              DataSource = sItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit25: TDBEdit
              Left = 140
              Top = 65
              Width = 120
              Height = 21
              DataField = 'PIS_ALIQ'
              DataSource = sItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit26: TDBEdit
              Left = 262
              Top = 65
              Width = 120
              Height = 21
              DataField = 'PIS_VALOR'
              DataSource = sItem
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
        end
        object tsCOFINS: TTabSheet
          Caption = 'C.O.F.I.N.S.'
          ImageIndex = 3
          object pnlCOFINS: TPanel
            Left = 0
            Top = 0
            Width = 548
            Height = 171
            Align = alClient
            BevelOuter = bvNone
            Color = 14803681
            ParentBackground = False
            TabOrder = 0
            object Label32: TLabel
              Left = 18
              Top = 8
              Width = 162
              Height = 13
              Caption = 'C'#211'DIGO SITUA'#199#194'O TRIBUT'#193'RIA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 18
              Top = 50
              Width = 91
              Height = 13
              Caption = 'VL BASE C'#193'LCULO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label34: TLabel
              Left = 140
              Top = 50
              Width = 67
              Height = 13
              Caption = '% AL'#205'QUOTA '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 262
              Top = 50
              Width = 54
              Height = 13
              Caption = 'VL COFINS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object cofins: TDBComboBox
              Left = 18
              Top = 23
              Width = 520
              Height = 21
              Style = csDropDownList
              DataField = 'COFINS_CST'
              DataSource = sItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              Items.Strings = (
                
                  '01 - Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = valor da opera'#231#227'o al' +
                  #237'quota normal(cumulativo/n'#227'o cumulativo));'
                
                  '02 - Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = valor da opera'#231#227'o al' +
                  #237'quota diferenciada)) ;'
                
                  '03 - Opera'#231#227'o Tribut'#225'vel (base de c'#225'lculo = quantidade vendida x' +
                  ' aliquota por unidade de produto);'
                
                  '04 - Opera'#231#227'o Tribut'#225'vel (tributa'#231#227'o monof'#225'stica (al'#237'quota zero)' +
                  ');'
                '06 - Opera'#231#227'o Tribut'#225'vel (al'#237'quota zero);'
                '07 - Opera'#231#227'o Isenta da Contribui'#231#227'o;'
                '08 - Opera'#231#227'o Sem Incid'#234'ncia da Contribui'#231#227'o;'
                '09 - Opera'#231#227'o com Suspens'#227'o da Contribui'#231#227'o;'
                '49 - Outras opera'#231#245'es de sa'#237'da;'
                
                  '50 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita Tributadas no Mercado Interno;'
                
                  '51 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita N'#227'o-Tributadas no Mercado Interno;'
                
                  '52 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada Exclusivamente a' +
                  ' Receita de Exporta'#231#227'o;'
                
                  '53 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                  'tadas e N'#227'o-Tributadas no Mercado Interno;'
                
                  '54 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                  'tadas no Mercado Interno e de Exporta'#231#227'o;'
                
                  '55 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas N'#227'o-T' +
                  'ributadas no Mercado Interno e de Exporta'#231#227'o;'
                
                  '56 - Opera'#231#227'o com Direito a Cr'#233'dito - Vinculada a Receitas Tribu' +
                  'tadas e N'#227'o-Tributadas no Mercado Interno, e de Exporta'#231#227'o;'
                
                  '60 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas Tributadas no Mercado Interno;'
                
                  '61 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas N'#227'o-Tributadas no Mercado Interno;'
                
                  '62 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas de Exporta'#231#227'o;'
                
                  '63 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas Tributadas e N'#227'o-Tributada no Mercado Interno' +
                  ';'
                
                  '64 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas Tributadas no Mercado Interno e de Exporta'#231#227'o' +
                  ';'
                
                  '65 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas N'#227'o-Tributadas no Mercado Interno e de Export' +
                  'a'#231#227'o;'
                
                  '66 - Cr'#233'dito Presumido - Opera'#231#227'o de Aquisi'#231#227'o Vinculada Exclusi' +
                  'vamente a Receitas Tributadas e N'#227'o-Tributadas no Mercado Intern' +
                  'o, e de Exporta'#231#227'o;'
                '67 - Cr'#233'dito Presumido - Outras Opera'#231#245'es;'
                '70 - Opera'#231#227'o de Aquisi'#231#227'o sem Direito a Cr'#233'dito;'
                '71 - Opera'#231#227'o de Aquisi'#231#227'o com Isen'#231#227'o;'
                '72 - Opera'#231#227'o de Aquisi'#231#227'o com Suspens'#227'o;'
                '73 - Opera'#231#227'o de Aquisi'#231#227'o a Al'#237'quota Zero;'
                '74 - Opera'#231#227'o de Aquisi'#231#227'o; sem Incid'#234'ncia da Contribui'#231#227'o;'
                '75 - Opera'#231#227'o de Aquisi'#231#227'o por Substitui'#231#227'o Tribut'#225'ria;'
                '98 - Outras Opera'#231#245'es de Entrada;'
                '99 - Outras Opera'#231#245'es;')
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit27: TDBEdit
              Left = 18
              Top = 65
              Width = 120
              Height = 21
              DataField = 'COFINS_BC'
              DataSource = sItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit28: TDBEdit
              Left = 140
              Top = 65
              Width = 120
              Height = 21
              DataField = 'COFINS_ALIQ'
              DataSource = sItem
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit29: TDBEdit
              Left = 262
              Top = 65
              Width = 120
              Height = 21
              DataField = 'COFINS_VALOR'
              DataSource = sItem
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  object actlst1: TActionList
    Left = 472
    Top = 176
    object actCancelar: TAction
      Caption = 'CANCELAR'
      OnExecute = actCancelarExecute
    end
    object actSalvar: TAction
      Caption = 'SALVAR'
      OnExecute = actSalvarExecute
    end
  end
  object sItem: TDataSource
    DataSet = Frm_NF_Entrada.dsItem
    Left = 512
    Top = 176
  end
end

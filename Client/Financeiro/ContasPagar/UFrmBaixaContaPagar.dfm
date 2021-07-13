inherited FrmBaixaContaPagar: TFrmBaixaContaPagar
  BorderStyle = bsNone
  BorderWidth = 2
  Caption = 'FrmBaixaContaPagar'
  ClientHeight = 383
  ClientWidth = 446
  Visible = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 450
  ExplicitHeight = 387
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 446
    Height = 383
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 396
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 444
      Height = 128
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Enabled = False
      ParentBackground = False
      TabOrder = 0
      object lbl1: TLabel
        Left = 0
        Top = 0
        Width = 444
        Height = 22
        Align = alTop
        AutoSize = False
        Caption = '  Informa'#231#245'es do T'#237'tulo'
        Color = 10114859
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 459
      end
      object Label2: TLabel
        Left = 23
        Top = 40
        Width = 67
        Height = 17
        Caption = 'Fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 11
        Top = 69
        Width = 79
        Height = 17
        Caption = 'Data emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 345
        Top = 40
        Width = 22
        Height = 17
        Caption = 'N.F.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 180
        Top = 69
        Width = 97
        Height = 17
        Caption = 'Data vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 36
        Top = 98
        Width = 54
        Height = 17
        Caption = 'Duplicata'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 247
        Top = 98
        Width = 30
        Height = 17
        Caption = 'Valor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtFornecedor: TEdit
        Left = 94
        Top = 37
        Width = 247
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'edtFornecedor'
      end
      object edtDtEmissao: TEdit
        Left = 94
        Top = 66
        Width = 82
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'edtFornecedor'
      end
      object edtDtVenc: TEdit
        Left = 278
        Top = 66
        Width = 80
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = 'edtFornecedor'
      end
      object edtNF: TEdit
        Left = 371
        Top = 37
        Width = 61
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'edtFornecedor'
      end
      object edtDupl: TEdit
        Left = 94
        Top = 95
        Width = 68
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = 'edtFornecedor'
      end
      object edtValor: TEdit
        Left = 278
        Top = 95
        Width = 105
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Text = 'edtFornecedor'
      end
    end
    object pnlBotao: TPanel
      Left = 1
      Top = 338
      Width = 444
      Height = 44
      Align = alBottom
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      ExplicitTop = 333
      object pnlCancelar: TPanel
        Left = 244
        Top = 2
        Width = 100
        Height = 40
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 1
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 40
          Action = actCancelar
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExplicitWidth = 81
          ExplicitHeight = 30
        end
      end
      object pnlBtnBaixar: TPanel
        Left = 100
        Top = 2
        Width = 100
        Height = 40
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 0
        object btnBaixar: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 40
          Action = actBaixar
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExplicitLeft = -6
          ExplicitTop = -1
        end
      end
    end
    object pnlBaixa: TPanel
      Left = 1
      Top = 129
      Width = 444
      Height = 209
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Enabled = False
      ParentBackground = False
      TabOrder = 1
      TabStop = True
      ExplicitTop = 137
      object pnlDadosBaixa: TPanel
        Left = 0
        Top = 0
        Width = 444
        Height = 159
        Align = alTop
        TabOrder = 0
        ExplicitTop = -2
        object Label8: TLabel
          Left = 16
          Top = 35
          Width = 74
          Height = 17
          Caption = 'Data pagto.*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 169
          Top = 35
          Width = 89
          Height = 17
          Caption = 'Valor pago R$*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 16
          Top = 123
          Width = 74
          Height = 17
          Caption = 'Desconto R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 164
          Top = 123
          Width = 88
          Height = 17
          Caption = 'Juros/Multa R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lblTitBaixa: TLabel
          Left = 1
          Top = 1
          Width = 442
          Height = 22
          Align = alTop
          AutoSize = False
          Caption = '  Dados da baixa'
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitLeft = 2
          ExplicitTop = 9
        end
        object edtValBaixa: TEdit
          Left = 258
          Top = 32
          Width = 91
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = edtValBaixaExit
        end
        object edtVlDesconto: TEdit
          Left = 94
          Top = 120
          Width = 66
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnExit = edtVlDescontoExit
          OnKeyPress = edtVlDescontoKeyPress
        end
        object edtVlJuros: TEdit
          Left = 256
          Top = 120
          Width = 66
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnExit = edtVlJurosExit
          OnKeyPress = edtVlDescontoKeyPress
        end
        object edpsqsHistorico: TEdPesquisa
          Left = 34
          Top = 61
          Width = 392
          Height = 25
          PermitirBranco = Sim
          ConsultaTabela.Tabela = 'historico'
          ConsultaTabela.Pesquisa = 'id'
          ConsultaTabela.Mostrar = 'descricao'
          ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
          OnPesquisa = edpsqsHistoricoPesquisa
          Titulo.Left = 0
          Titulo.Top = 3
          Titulo.Width = 57
          Titulo.Height = 17
          Titulo.Caption = 'Hist'#243'rico*'
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
          Mostrar.Font.Color = clBlack
          Mostrar.Font.Height = -13
          Mostrar.Font.Name = 'Segoe UI Semibold'
          Mostrar.Font.Style = [fsBold]
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
          Campo.Font.Name = 'Segoe UI Semibold'
          Campo.Font.Style = [fsBold]
          Campo.ParentFont = False
          Campo.TabOrder = 0
          TabOrder = 2
          TabStop = True
        end
        object edpsqsConta: TEdPesquisa
          Left = 52
          Top = 91
          Width = 374
          Height = 25
          PermitirBranco = Sim
          ConsultaTabela.Tabela = 'CONTA_BANCARIA'
          ConsultaTabela.Pesquisa = 'id'
          ConsultaTabela.Mostrar = 'bco_nome'
          ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
          OnPesquisa = edpsqsContaPesquisa
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
          TabOrder = 3
          TabStop = True
        end
        object edtDtBaixa: TMaskEdit
          Left = 96
          Top = 32
          Width = 72
          Height = 25
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          OnExit = edtDtBaixaExit
        end
      end
      object pnlCheque: TPanel
        Left = 0
        Top = 159
        Width = 444
        Height = 39
        Align = alTop
        TabOrder = 1
        ExplicitTop = 164
        object Label15: TLabel
          Left = 26
          Top = 10
          Width = 62
          Height = 17
          Caption = 'N'#186' cheque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 207
          Top = 10
          Width = 131
          Height = 17
          Caption = 'Data de compensa'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtNumCheque: TEdit
          Left = 94
          Top = 7
          Width = 109
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
        end
        object edtCompensa: TMaskEdit
          Left = 345
          Top = 7
          Width = 72
          Height = 25
          TabStop = False
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
      end
    end
  end
  object s1: TDataSource
    DataSet = Frm_ContasPagar.dsPagar
    Left = 393
    Top = 225
  end
  object actlst1: TActionList
    Left = 369
    Top = 271
    object actBaixar: TAction
      Caption = 'PAGAR'
      OnExecute = actBaixarExecute
    end
    object actRestaurar: TAction
      Caption = 'RESTAURAR'#13#10'A BAIXA'
    end
    object actCancelar: TAction
      Caption = 'VOLTAR'
      OnExecute = actCancelarExecute
    end
  end
end

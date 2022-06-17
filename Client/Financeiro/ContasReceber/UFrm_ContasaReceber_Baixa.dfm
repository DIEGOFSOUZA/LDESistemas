inherited Frm_ContasaReceber_Baixa: TFrm_ContasaReceber_Baixa
  BorderStyle = bsNone
  Caption = 'Frm_ContasaReceber_Baixa'
  ClientHeight = 300
  ClientWidth = 630
  Visible = False
  OnShow = FormShow
  ExplicitWidth = 630
  ExplicitHeight = 300
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 630
    Height = 300
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlDados: TPanel
      Left = 1
      Top = 1
      Width = 518
      Height = 298
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object pnlTitulo: TPanel
        Left = 0
        Top = 0
        Width = 518
        Height = 136
        Align = alTop
        BevelOuter = bvNone
        Color = 14803681
        Enabled = False
        ParentBackground = False
        TabOrder = 0
        object lbl1: TLabel
          Left = 0
          Top = 0
          Width = 518
          Height = 22
          Align = alTop
          AutoSize = False
          Caption = '  Dados do t'#237'tulo'
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
          ExplicitLeft = -3
          ExplicitWidth = 603
        end
        object Label8: TLabel
          Left = 23
          Top = 32
          Width = 56
          Height = 17
          Caption = 'Venda N'#186
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label2: TLabel
          Left = 166
          Top = 32
          Width = 48
          Height = 17
          Caption = 'Emiss'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label3: TLabel
          Left = 5
          Top = 70
          Width = 74
          Height = 17
          Caption = 'Duplicata N'#186
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label4: TLabel
          Left = 166
          Top = 70
          Width = 67
          Height = 17
          Caption = 'Vencimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label5: TLabel
          Left = 320
          Top = 70
          Width = 49
          Height = 17
          Caption = 'Valor R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label6: TLabel
          Left = 39
          Top = 98
          Width = 40
          Height = 25
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object edtVenda: TEdit
          Left = 83
          Top = 29
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edtEmissao: TEdit
          Left = 218
          Top = 29
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object edtDuplicata: TEdit
          Left = 83
          Top = 67
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object edtVencto: TEdit
          Left = 237
          Top = 67
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edtValorTit: TEdit
          Left = 373
          Top = 68
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object edtCliente: TEdit
          Left = 83
          Top = 99
          Width = 411
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
      end
      object pnlBaixa: TPanel
        Left = 0
        Top = 136
        Width = 518
        Height = 162
        Align = alClient
        BevelOuter = bvNone
        Color = 14803681
        ParentBackground = False
        TabOrder = 1
        TabStop = True
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 518
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
          ExplicitWidth = 603
        end
        object Label7: TLabel
          Left = 35
          Top = 94
          Width = 32
          Height = 17
          Caption = 'Data*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label9: TLabel
          Left = 347
          Top = 125
          Width = 54
          Height = 17
          Caption = 'Valor R$*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label10: TLabel
          Left = 9
          Top = 125
          Width = 58
          Height = 17
          Caption = 'JUROS R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label11: TLabel
          Left = 163
          Top = 125
          Width = 93
          Height = 17
          Caption = 'DESCONTOS R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object edpsqsHistorico: TEdPesquisa
          Left = 13
          Top = 33
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
          TabOrder = 0
          TabStop = True
        end
        object edpsqsConta: TEdPesquisa
          Left = 31
          Top = 62
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
          Mostrar.Font.Color = clBlack
          Mostrar.Font.Height = -13
          Mostrar.Font.Name = 'Segoe UI Semibold'
          Mostrar.Font.Style = [fsBold]
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
          Campo.Font.Name = 'Segoe UI Semibold'
          Campo.Font.Style = [fsBold]
          Campo.ParentFont = False
          Campo.TabOrder = 0
          TabOrder = 1
          TabStop = True
        end
        object edtValorBaixa: TEdit
          Left = 405
          Top = 122
          Width = 107
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnKeyPress = edtValorBaixaKeyPress
        end
        object dtpBaixa: TDateTimePicker
          Left = 71
          Top = 91
          Width = 104
          Height = 25
          Date = 44299.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.560257395831286000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edtJuros: TEdit
          Left = 71
          Top = 122
          Width = 79
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = edtJurosChange
          OnKeyPress = edtValorBaixaKeyPress
        end
        object edtDescontos: TEdit
          Left = 260
          Top = 122
          Width = 79
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnChange = edtDescontosChange
          OnKeyPress = edtValorBaixaKeyPress
        end
      end
    end
    object pnlAcoes: TPanel
      Left = 519
      Top = 1
      Width = 110
      Height = 298
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      TabStop = True
      object pnlCancelar: TPanel
        Left = 5
        Top = 170
        Width = 100
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 1
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 30
          Cursor = crHandPoint
          Action = actVoltar
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
        end
      end
      object pnlBtnBaixar: TPanel
        Left = 5
        Top = 98
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
          Cursor = crHandPoint
          Action = actEfetuarBaixa
          Align = alClient
          Caption = 'RECEBER'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExplicitLeft = 1
        end
      end
    end
  end
  object actlst1: TActionList
    Left = 481
    Top = 49
    object actEfetuarBaixa: TAction
      Caption = 'EFETUAR'#13#10'BAIXA'
      OnExecute = actEfetuarBaixaExecute
    end
    object actVoltar: TAction
      Caption = 'VOLTAR'
      OnExecute = actVoltarExecute
    end
  end
end

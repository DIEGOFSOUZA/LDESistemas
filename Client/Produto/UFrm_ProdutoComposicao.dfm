inherited Frm_ProdutoComposicao: TFrm_ProdutoComposicao
  BorderStyle = bsNone
  Caption = 'Frm_ProdutoComposicao'
  ClientHeight = 241
  ClientWidth = 599
  Visible = False
  ExplicitWidth = 599
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 599
    Height = 241
    Align = alClient
    TabOrder = 0
    object pnlMatPrima: TPanel
      Left = 1
      Top = 1
      Width = 597
      Height = 92
      Align = alTop
      TabOrder = 0
      object lbl1: TLabel
        Left = 459
        Top = 44
        Width = 39
        Height = 17
        Caption = 'Qtde.*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblUnidade: TLabel
        Left = 549
        Top = 44
        Width = 44
        Height = 17
        AutoSize = False
        Caption = 'KG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object edp1: TEdPesquisa
        Left = 20
        Top = 43
        Width = 435
        Height = 21
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'PRODUTO'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'NOME'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edp1Pesquisa
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 100
        Titulo.Height = 17
        Titulo.Caption = 'MAT'#201'RIA-PRIMA*'
        Titulo.Font.Charset = ANSI_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -13
        Titulo.Font.Name = 'Segoe UI'
        Titulo.Font.Style = []
        Titulo.ParentFont = False
        Mostrar.Left = 184
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
        Campo.Left = 102
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.TabOrder = 0
        TabOrder = 0
        TabStop = True
      end
      object edt1: TEdit
        Left = 500
        Top = 43
        Width = 47
        Height = 21
        TabOrder = 1
        OnEnter = edt1Enter
        OnKeyPress = edt1KeyPress
      end
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 199
      Width = 597
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnGravar: TButton
        Left = 380
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
        Left = 479
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
    object pnlFornecedor: TPanel
      Left = 1
      Top = 93
      Width = 597
      Height = 105
      Align = alTop
      TabOrder = 2
      object Label1: TLabel
        Left = 20
        Top = 36
        Width = 111
        Height = 17
        Caption = 'REF. FORNECEDOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 67
        Width = 128
        Height = 17
        Caption = 'PRE'#199'O DE CUSTO R$*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edp2: TEdPesquisa
        Left = 71
        Top = 6
        Width = 402
        Height = 21
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'FABRICANTE'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'RAZAO_NOME'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edp2Pesquisa
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
        Campo.Left = 69
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.TabOrder = 0
        TabOrder = 0
        TabStop = True
      end
      object edtRefFornecedor: TEdit
        Left = 139
        Top = 35
        Width = 410
        Height = 23
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtPreco: TEdit
        Left = 139
        Top = 66
        Width = 47
        Height = 23
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
end

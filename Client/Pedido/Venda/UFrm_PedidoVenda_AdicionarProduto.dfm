inherited Frm_PedidoVenda_AdicionarProduto: TFrm_PedidoVenda_AdicionarProduto
  Caption = 'Frm_PedidoVenda_AdicionarProduto'
  ClientHeight = 188
  ClientWidth = 556
  Visible = False
  ExplicitWidth = 556
  ExplicitHeight = 188
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 556
    ExplicitWidth = 556
    inherited lblTitulo: TLabel
      Width = 531
      Caption = '         ADICIONAR PRODUTO'
      Color = 10114859
      ExplicitLeft = -6
      ExplicitTop = -5
      ExplicitWidth = 758
    end
    inherited pnlBotaoSair: TPanel
      Left = 531
      Visible = False
      ExplicitLeft = 531
      ExplicitTop = 0
      ExplicitHeight = 30
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 30
    Width = 556
    Height = 158
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 556
      Height = 99
      Align = alTop
      TabOrder = 0
      object Label4: TLabel
        Left = 29
        Top = 1
        Width = 64
        Height = 17
        Caption = 'PRODUTO*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 29
        Top = 49
        Width = 85
        Height = 17
        Caption = 'QUANTIDADE*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 158
        Top = 49
        Width = 89
        Height = 17
        Caption = 'UNIT'#193'RIO* (R$)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 416
        Top = 49
        Width = 62
        Height = 17
        Caption = 'TOTAL (R$)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 287
        Top = 51
        Width = 94
        Height = 17
        Caption = 'DESCONTO (R$)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblUnidade: TLabel
        Left = 520
        Top = 23
        Width = 17
        Height = 17
        Caption = 'KG'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edpesMatPrima: TEdPesquisa
        Left = 23
        Top = 20
        Width = 488
        Height = 25
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'PRODUTO'
        ConsultaTabela.Pesquisa = 'CODIGO'
        ConsultaTabela.Mostrar = 'NOME'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edpesMatPrimaPesquisa
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 3
        Titulo.Height = 13
        Titulo.Caption = ' '
        Mostrar.Left = 87
        Mostrar.Top = 0
        Mostrar.Width = 400
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
        Campo.OnExit = edpesMatPrimaedtCampoExit
        TabOrder = 0
        TabStop = True
      end
      object edtQtde: TEdit
        Left = 29
        Top = 68
        Width = 121
        Height = 25
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        OnExit = edtQtdeExit
        OnKeyPress = edtQtdeKeyPress
      end
      object edtUnitario: TEdit
        Left = 158
        Top = 68
        Width = 121
        Height = 25
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '0,00'
        OnExit = edtUnitarioExit
        OnKeyPress = edtQtdeKeyPress
      end
      object edtTotal: TEdit
        Left = 416
        Top = 68
        Width = 121
        Height = 25
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        Text = '0,00'
      end
      object edtDesconto: TEdit
        Left = 287
        Top = 68
        Width = 121
        Height = 25
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = '0,00'
        OnExit = edtDescontoExit
        OnKeyPress = edtQtdeKeyPress
      end
    end
    object pnlBotton: TPanel
      Left = 0
      Top = 109
      Width = 556
      Height = 49
      Align = alBottom
      TabOrder = 1
      object pnlGravar: TPanel
        Left = 445
        Top = 9
        Width = 92
        Height = 32
        BevelOuter = bvNone
        Caption = 'pnlAddMovimentacao'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        object lblGravar: TLabel
          Left = 0
          Top = 0
          Width = 92
          Height = 32
          Align = alClient
          Alignment = taCenter
          Caption = 'INCLUIR'#13#10'NO PEDIDO'
          Color = 7237230
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          WordWrap = True
          OnClick = actIncluirPedidoExecute
          ExplicitWidth = 71
          ExplicitHeight = 34
        end
      end
      object pnlCancelar: TPanel
        Left = 328
        Top = 9
        Width = 85
        Height = 32
        BevelOuter = bvNone
        Caption = 'pnlAddMovimentacao'
        Color = 7024384
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        OnClick = actSairExecute
        object lblCancelar: TLabel
          Left = 0
          Top = 0
          Width = 85
          Height = 32
          Align = alClient
          Alignment = taCenter
          Caption = 'CANCELAR'
          Color = 7237230
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          OnClick = actSairExecute
          ExplicitWidth = 59
          ExplicitHeight = 15
        end
      end
    end
  end
  inherited actlst1: TActionList
    Left = 520
    Top = 16
    object actIncluirPedido: TAction
      Caption = 'actIncluirPedido'
      OnExecute = actIncluirPedidoExecute
    end
  end
end

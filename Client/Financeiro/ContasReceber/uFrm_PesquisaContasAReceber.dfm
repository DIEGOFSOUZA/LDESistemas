inherited Frm_PesquisaContasAReceber: TFrm_PesquisaContasAReceber
  Caption = 'Frm_PesquisaContasAReceber'
  ClientHeight = 458
  ClientWidth = 806
  OnCreate = FormCreate
  ExplicitWidth = 806
  ExplicitHeight = 458
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFundo: TPanel
    Width = 806
    Height = 458
    ExplicitWidth = 806
    ExplicitHeight = 458
    inherited pnlSemRegistro: TPanel
      Top = 96
      Width = 804
      Height = 338
      ExplicitTop = 96
      ExplicitWidth = 804
      ExplicitHeight = 338
    end
    inherited pnlTitulo: TPanel
      Width = 804
      ExplicitWidth = 804
      inherited lblTitulo: TLabel
        Width = 804
        Caption = '     FINANCEIRO - CONTAS A RECEBER'
        ExplicitWidth = 804
      end
      inherited imgFechar: TImage
        Left = 770
        ExplicitLeft = 770
      end
    end
    inherited pnlFiltroBotoes: TPanel
      Width = 804
      Height = 65
      ExplicitWidth = 804
      ExplicitHeight = 65
      inherited pnlFiltro: TPanel
        Width = 721
        Height = 63
        Font.Color = clWhite
        ParentFont = False
        ExplicitWidth = 721
        ExplicitHeight = 63
        object nbFiltros: TNotebook
          Left = 240
          Top = 28
          Width = 378
          Height = 32
          TabOrder = 1
          object TPage
            Left = 0
            Top = 0
            Caption = 'Cliente'
            object edpCliente: TEdPesquisa
              Left = 0
              Top = 4
              Width = 374
              Height = 30
              PermitirBranco = Sim
              ConsultaTabela.Tabela = 'CLIENTE'
              ConsultaTabela.Pesquisa = 'codigo'
              ConsultaTabela.Mostrar = 'nome_razao'
              ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
              OnPesquisa = edpClientePesquisa
              Titulo.Left = 0
              Titulo.Top = 3
              Titulo.Width = 39
              Titulo.Height = 17
              Titulo.Caption = 'Cliente'
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
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Origem'
            object cbbOrigem: TComboBox
              Left = 7
              Top = 4
              Width = 145
              Height = 25
              Style = csDropDownList
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ItemIndex = 0
              ParentFont = False
              TabOrder = 0
              Text = 'Vendas via PDV'
              Items.Strings = (
                'Vendas via PDV'
                'Vendas via Pedido')
            end
          end
        end
        object cbbFiltros: TComboBox
          Left = 240
          Top = 0
          Width = 81
          Height = 25
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 2
          TabStop = False
          Text = 'Sacado'
          OnClick = cbbFiltrosClick
          Items.Strings = (
            'Sacado'
            'Origem')
        end
        object pnlDatas: TPanel
          Left = 1
          Top = 1
          Width = 225
          Height = 61
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'pnlDatas'
          Color = 14803681
          ParentBackground = False
          ShowCaption = False
          TabOrder = 3
          object Label8: TLabel
            Left = 0
            Top = 0
            Width = 225
            Height = 17
            Align = alTop
            Alignment = taCenter
            Caption = 'Data de Vencimento'
            Color = 13337441
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlBottom
            ExplicitWidth = 122
          end
          object Label10: TLabel
            Left = 10
            Top = 16
            Width = 19
            Height = 17
            Caption = 'De:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 120
            Top = 15
            Width = 22
            Height = 17
            Caption = 'At'#233':'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object dtp1: TDateTimePicker
            Left = 10
            Top = 31
            Width = 95
            Height = 25
            Date = 44154.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.425332060192886300
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object dtp2: TDateTimePicker
            Left = 120
            Top = 31
            Width = 95
            Height = 25
            Date = 44154.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.425332060192886300
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      inherited pnlBotoes: TPanel
        Left = 722
        Height = 63
        ExplicitLeft = 722
        ExplicitHeight = 63
      end
    end
    inherited pnlRodape: TPanel
      Top = 434
      Width = 804
      ExplicitTop = 434
      ExplicitWidth = 804
    end
    inherited pnlGrid: TPanel
      Top = 96
      Width = 804
      Height = 338
      ExplicitTop = 96
      ExplicitWidth = 804
      ExplicitHeight = 338
      inherited pnlRodapeGrid: TPanel
        Top = 318
        Width = 802
        ExplicitTop = 318
        ExplicitWidth = 802
        inherited lblTotValor: TLabel
          Left = 620
          ExplicitLeft = 620
        end
        inherited lblTotSaldo: TLabel
          Left = 700
          ExplicitLeft = 700
        end
      end
      inherited dbgrd1: TDBGrid
        Width = 802
        Height = 317
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI Semibold'
        TitleFont.Style = [fsBold]
        OnCellClick = dbgrd1CellClick
        OnDrawColumnCell = dbgrd1DrawColumnCell
        OnDblClick = dbgrd1DblClick
        OnKeyPress = dbgrd1KeyPress
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SELECAO'
            Title.Alignment = taCenter
            Title.Caption = '  '
            Width = 25
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'STATUS'
            Title.Alignment = taCenter
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VENCIMENTO'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTA'
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Width = 190
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ORIGEM'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO'
            Title.Alignment = taRightJustify
            Width = 80
            Visible = True
          end>
      end
      object chkSelTudo: TCheckBox
        Left = 8
        Top = 4
        Width = 15
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = chkSelTudoClick
      end
    end
  end
  inherited dsGrid: TClientDataSet
    AggregatesActive = True
    CommandText = 
      'with CONSULTA as'#13#10'('#13#10'select b.DT_VENC,'#13#10'iif(b.DT_VENC < '#39'today'#39',' +
      #39'VENCIDA'#39','#39'A RECEBER'#39') status,a.ID_CLIENTE,d.NOME_RAZAO cliente,' +
      #13#10'cast('#39'CUPOM DE VENDA:['#39'||a.ID||'#39'] - '#39'||'#39'['#39'||b.FORMA_PAGTO||'#39']'#39 +
      ' as varchar(50))conta,'#13#10'cast('#39'VENDAS VIA PDV'#39'as varchar(20))orig' +
      'em,'#13#10'b.VALOR+(select coalesce(sum (c.VL_PAGO),0) from PDV_RECEBE' +
      'R_PARCIAL c where c.ID = b.ID and c.TIPO = b.TIPO and c.ORDEM = ' +
      'b.ORDEM)valor,'#13#10'b.VALOR saldo,b.tipo,b.id,b.ordem'#13#10'from PDV_MAST' +
      'ER a'#13#10'left outer join PDV_RECEBER b on (b.TIPO = a.TIPO and b.ID' +
      ' = a.ID)'#13#10'left outer join CLIENTE d on (d.CODIGO = a.ID_CLIENTE)' +
      #13#10'where b.DT_BAIXA is null'#13#10')'#13#10'select cast(0 as integer)selecao,' +
      'cast(dt_venc as date)vencimento, '#13#10'cast(status as varchar(10))st' +
      'atus,'#13#10'cast(id_cliente as integer)id_cliente,cliente,'#13#10'cast(cont' +
      'a as varchar(50))conta,cast(origem as varchar(20))origem,'#13#10'cast(' +
      'valor as numeric(10,2))valor,cast(saldo as numeric(10,2))saldo,'#13 +
      #10'tipo,id,ordem'#13#10'from CONSULTA '#13#10'where 1=2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    object dsGridSELECAO: TIntegerField
      FieldName = 'SELECAO'
      Required = True
    end
    object dsGridVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object dsGridSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 10
    end
    object dsGridID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object dsGridCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object dsGridCONTA: TStringField
      FieldName = 'CONTA'
      Size = 50
    end
    object dsGridORIGEM: TStringField
      FieldName = 'ORIGEM'
      Required = True
    end
    object dsGridVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridSALDO: TFMTBCDField
      FieldName = 'SALDO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object dsGridID: TIntegerField
      FieldName = 'ID'
    end
    object dsGridORDEM: TStringField
      FieldName = 'ORDEM'
      Size = 5
    end
    object dsGridTOT_VALOR: TAggregateField
      FieldName = 'TOT_VALOR'
      Active = True
      DisplayName = ''
      Expression = 'sum(valor)'
    end
    object dsGridTOT_SALDO: TAggregateField
      FieldName = 'TOT_SALDO'
      Active = True
      DisplayName = ''
      Expression = 'sum(saldo)'
    end
  end
end

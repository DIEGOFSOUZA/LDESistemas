inherited frmOrcamentoConsulta: TfrmOrcamentoConsulta
  BorderStyle = bsDialog
  Caption = 'Consulta  de or'#231'amentos (aperte F2 para localizar)'
  ClientHeight = 266
  ClientWidth = 742
  Visible = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 748
  ExplicitHeight = 295
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 266
    Align = alClient
    TabOrder = 0
    object dbgrd1: TDBGrid
      Left = 1
      Top = 71
      Width = 740
      Height = 194
      Align = alBottom
      DataSource = sGrid
      DrawingStyle = gdsGradient
      GradientEndColor = 13864803
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      PopupMenu = pm1
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = dbgrd1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID'
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'STATUS'
          Title.Alignment = taCenter
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Width = 220
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'EMISSAO'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGTO'
          Width = 300
          Visible = True
        end>
    end
    object pnlFiltro: TPanel
      Left = 1
      Top = 1
      Width = 740
      Height = 72
      Align = alTop
      TabOrder = 1
      object Label1: TLabel
        Left = 16
        Top = 14
        Width = 76
        Height = 17
        Caption = 'Localizar por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbbCampo: TComboBox
        Left = 16
        Top = 35
        Width = 151
        Height = 22
        Style = csOwnerDrawFixed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 1
        ParentFont = False
        TabOrder = 0
        Text = 'Status do or'#231'amento'
        OnChange = cbbCampoChange
        Items.Strings = (
          'N'#186' do or'#231'amento'
          'Status do or'#231'amento'
          'Cliente'
          'Data do or'#231'amento')
      end
      object nb1: TNotebook
        Left = 177
        Top = 23
        Width = 384
        Height = 43
        PageIndex = 1
        TabOrder = 1
        object TPage
          Left = 0
          Top = 0
          Caption = 'id'
          object edtId: TEdit
            Left = 3
            Top = 9
            Width = 49
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 0
            Text = '0'
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'status'
          object cbbStatus: TComboBox
            Left = 3
            Top = 11
            Width = 105
            Height = 22
            Style = csOwnerDrawFixed
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = 'EM ABERTO'
            Items.Strings = (
              'EM ABERTO'
              'VENDIDO'
              'CANCELADO')
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'cliente'
          object EdPesquisa1: TEdPesquisa
            Left = 3
            Top = 11
            Width = 374
            Height = 21
            PermitirBranco = Sim
            ConsultaTabela.Tabela = 'CLIENTE'
            ConsultaTabela.Pesquisa = 'codigo'
            ConsultaTabela.Mostrar = 'nome_razao'
            ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
            OnPesquisa = EdPesquisa1Pesquisa
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
            Campo.Left = 41
            Campo.Top = 0
            Campo.Width = 57
            Campo.Height = 21
            Campo.CharCase = ecUpperCase
            Campo.TabOrder = 0
            TabOrder = 0
            TabStop = True
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'emissao'
          object Label4: TLabel
            Left = 3
            Top = 13
            Width = 30
            Height = 17
            Caption = 'Data:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object dtp1: TDateTimePicker
            Left = 41
            Top = 9
            Width = 97
            Height = 25
            Date = 44096.000000000000000000
            Time = 0.696371493053447900
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object dtp2: TDateTimePicker
            Left = 146
            Top = 9
            Width = 97
            Height = 25
            Date = 44096.000000000000000000
            Time = 0.696616145833104400
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
    end
  end
  object dsGrid: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select a.ID,a.STATUS,a.ID_CLIENTE,c.NOME_RAZAO cliente,a.EMISSAO' +
      ','#13#10'iif (a.ID_FORMAPAGTO is null,'#39'A VISTA'#39',(select x.DESCRICAO fr' +
      'om CONDPAGTO x where x.CODIGO = a.ID_FORMAPAGTO)) pagto, '#13#10'cast(' +
      'sum(b.VTOTAL) as numeric(10,2)) total'#13#10'from ORCAMENTO a'#13#10'left ou' +
      'ter join ORCAMENTO_ITEM b on (b.ID_ORCAMENTO = a.ID)'#13#10'left outer' +
      ' join CLIENTE c on (c.CODIGO = a.ID_CLIENTE)'#13#10'where 1=2'#13#10'group b' +
      'y 1,2,3,4,5,a.ID_FORMAPAGTO'
    Params = <>
    ProviderName = 'DSPLer1'
    Left = 176
    Top = 112
    object dsGridID: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ID'
      Required = True
    end
    object dsGridSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
    end
    object dsGridCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      ReadOnly = True
      Size = 100
    end
    object dsGridEMISSAO: TDateField
      DisplayLabel = 'Data'
      FieldName = 'EMISSAO'
      Required = True
    end
    object dsGridTOTAL: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object dsGridPAGTO: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'PAGTO'
      ReadOnly = True
      Size = 100
    end
    object dsGridID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
  end
  object sGrid: TDataSource
    DataSet = dsGrid
    Left = 176
    Top = 176
  end
  object pm1: TPopupMenu
    Left = 360
    Top = 136
    object Cancelaroramento1: TMenuItem
      Caption = 'Cancelar or'#231'amento'
      OnClick = Cancelaroramento1Click
    end
  end
end

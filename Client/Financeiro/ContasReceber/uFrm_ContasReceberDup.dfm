inherited Frm_ContasReceberDup: TFrm_ContasReceberDup
  Caption = 'Frm_ContasReceberDup'
  ClientWidth = 752
  OnKeyDown = FormKeyDown
  ExplicitWidth = 752
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFundo: TPanel
    Width = 752
    ExplicitWidth = 752
    inherited pnlTitulo: TPanel
      Width = 750
      ExplicitWidth = 750
      inherited lblTitulo: TLabel
        Width = 750
        ExplicitWidth = 750
      end
    end
    inherited pnlRodape: TPanel
      Width = 750
      Visible = False
      ExplicitTop = 410
      ExplicitWidth = 750
      inherited pnlSalvar: TPanel
        Left = 570
        ExplicitLeft = 570
      end
    end
    inherited pnlCentro: TPanel
      Width = 750
      ExplicitWidth = 750
      inherited pnlRight: TPanel
        Left = 474
        ExplicitLeft = 474
        inherited edtJuros: TEdit
          OnExit = edtJurosExit
        end
        inherited edtDescontos: TEdit
          OnExit = edtDescontosExit
        end
        inherited edtVlRecebido: TEdit
          OnExit = edtVlRecebidoExit
        end
        inherited cbbConta: TComboBox
          OnChange = cbbContaChange
        end
        inherited cbbEfetuado: TComboBox
          OnChange = cbbEfetuadoChange
        end
      end
      inherited pnlLeft: TPanel
        Width = 474
        ExplicitWidth = 474
        inherited pnlRecebido: TPanel
          Width = 474
          ExplicitWidth = 474
          inherited Label8: TLabel
            Width = 474
          end
          inherited pnlGridRecebidos: TPanel
            Width = 474
            ExplicitWidth = 474
            inherited pnlGridRecRodape: TPanel
              Width = 474
              ExplicitWidth = 474
              inherited Label2: TLabel
                Height = 30
              end
              inherited lblSaldoAReceber: TLabel
                Left = 315
                Width = 152
                Alignment = taRightJustify
                AutoSize = False
                ExplicitLeft = 315
                ExplicitWidth = 152
              end
            end
            inherited dbgrdRecebidos: TDBGrid
              Width = 474
              DataSource = sRecebidos
              Font.Height = -12
              Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'DT_BAIXA'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -12
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'RECEBIDO'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -12
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCONTO'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -12
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'JUROS'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -12
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'FORMA'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -12
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 90
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CONTA'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -12
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 95
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LIXEIRA'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  Title.Caption = ' '
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -12
                  Title.Font.Name = 'Segoe UI'
                  Title.Font.Style = []
                  Width = 20
                  Visible = True
                end>
            end
          end
        end
        inherited pnlDadosDup: TPanel
          Width = 474
          ExplicitWidth = 474
        end
      end
    end
  end
  object dsRecebidos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 
      'select '#39'P'#39' tabela,a.codigo,a.ID,a.tipo,a.ordem,a.DT_BAIXA,'#13#10'a.VL' +
      '_PAGO recebido,a.DESCONTO,a.JUROS,'#13#10'case '#13#10'  when a.ID_HISTORICO' +
      ' = 48 then '#39'DINHEIRO'#39#13#10'  when a.ID_HISTORICO = 49 then '#39'CART'#195'O D' +
      'E D'#201'BITO'#39#13#10'  when a.ID_HISTORICO = 50 then '#39'CART'#195'O DE CR'#201'DITO'#39#13#10 +
      '  when a.ID_HISTORICO = 51 then '#39'CHEQUE'#39#13#10'  when a.ID_HISTORICO ' +
      '= 52 then '#39'BOLETO'#39#13#10'  when a.ID_HISTORICO = 65 then '#39'VALE'#39#13#10'  wh' +
      'en a.ID_HISTORICO = 46 then '#39'DEP'#211'SITO EM CONTA CORRENTE'#39#13#10'  when' +
      ' a.ID_HISTORICO = 64 then '#39'TRANSFER'#202'NCIA'#39#13#10'  when a.ID_HISTORICO' +
      ' = 66 then '#39'TEF'#39#13#10'  when a.ID_HISTORICO = 67 then '#39'PAGAMENTO DIG' +
      'ITAL'#39#13#10'end forma,c.BCO_NOME conta,cast(0 as integer)lixeira '#13#10'fr' +
      'om PDV_RECEBER_PARCIAL a '#13#10'left outer join HISTORICO b on (b.ID=' +
      'a.ID_HISTORICO) '#13#10'left outer join CONTA_BANCARIA c on (c.ID=a.ID' +
      '_CONTA) '#13#10'where a.TIPO='#39'0'#39' and a.ID=2602 and a.ORDEM='#39'01/01'#39
    FieldDefs = <
      item
        Name = 'TABELA'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ORDEM'
        Attributes = [faRequired]
        DataType = ftString
        Size = 5
      end
      item
        Name = 'DT_BAIXA'
        DataType = ftDate
      end
      item
        Name = 'RECEBIDO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'DESCONTO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'JUROS'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'FORMA'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 26
      end
      item
        Name = 'CONTA'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'LIXEIRA'
        Attributes = [faReadonly]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    StoreDefs = True
    Left = 145
    Top = 327
    object dsRecebidosTABELA: TStringField
      FieldName = 'TABELA'
      Origin = 'TABELA'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object dsRecebidosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dsRecebidosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object dsRecebidosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object dsRecebidosORDEM: TStringField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      Size = 5
    end
    object dsRecebidosDT_BAIXA: TDateField
      DisplayLabel = 'DATA'
      FieldName = 'DT_BAIXA'
      Origin = 'DT_BAIXA'
    end
    object dsRecebidosRECEBIDO: TFMTBCDField
      FieldName = 'RECEBIDO'
      Origin = 'VL_PAGO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsRecebidosDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsRecebidosJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object dsRecebidosFORMA: TStringField
      FieldName = 'FORMA'
      Origin = 'FORMA'
      ProviderFlags = []
      FixedChar = True
      Size = 26
    end
    object dsRecebidosCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'BCO_NOME'
      ProviderFlags = []
      Size = 40
    end
    object dsRecebidosLIXEIRA: TIntegerField
      Alignment = taCenter
      FieldName = 'LIXEIRA'
      Origin = 'LIXEIRA'
      ProviderFlags = []
    end
    object dsRecebidosTOT_RECEBIDO: TAggregateField
      FieldName = 'TOT_RECEBIDO'
      Active = True
      DisplayName = ''
      Expression = 'sum(RECEBIDO)'
    end
  end
  object sRecebidos: TDataSource
    DataSet = dsRecebidos
    Left = 209
    Top = 339
  end
end

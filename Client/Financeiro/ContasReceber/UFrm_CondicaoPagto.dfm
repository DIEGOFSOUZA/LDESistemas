inherited FRM_CondicaoPagto: TFRM_CondicaoPagto
  Caption = 'FRM_CondicaoPagto'
  ClientHeight = 389
  OnCreate = FormCreate
  ExplicitHeight = 389
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Caption = '         Cadastro de condi'#231#227'o de pagamento'
    ExplicitTop = -5
  end
  inherited pnlFundo0: TPanel
    Height = 359
    ExplicitHeight = 359
    inherited pnlFundo1: TPanel
      Height = 284
      ExplicitHeight = 284
      object Label1: TLabel [0]
        Left = 30
        Top = 13
        Width = 45
        Height = 15
        Caption = 'C'#211'DIGO'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [1]
        Left = 313
        Top = 72
        Width = 96
        Height = 15
        Caption = '% DE ACR'#201'SCIMO'
        FocusControl = DBEdit11
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [2]
        Left = 122
        Top = 13
        Width = 147
        Height = 15
        Caption = 'DESCRI'#199#195'O DA CONDI'#199#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      inherited Panel4: TPanel
        Top = 263
        TabOrder = 5
        ExplicitTop = 263
      end
      object DBEdit1: TDBEdit
        Left = 30
        Top = 29
        Width = 67
        Height = 23
        DataField = 'CODIGO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object pnlDias: TPanel
        Left = 6
        Top = 124
        Width = 520
        Height = 121
        TabOrder = 4
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 518
          Height = 21
          Align = alTop
          Caption = '    DIAS'
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitWidth = 52
        end
        object DBEdit2: TDBEdit
          Left = 19
          Top = 37
          Width = 40
          Height = 25
          DataField = 'COND1'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 79
          Top = 37
          Width = 40
          Height = 25
          DataField = 'COND2'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 139
          Top = 37
          Width = 40
          Height = 25
          DataField = 'COND3'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit5: TDBEdit
          Left = 199
          Top = 37
          Width = 40
          Height = 25
          DataField = 'COND4'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 259
          Top = 37
          Width = 40
          Height = 25
          DataField = 'COND5'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit7: TDBEdit
          Left = 319
          Top = 37
          Width = 40
          Height = 25
          DataField = 'COND6'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 379
          Top = 37
          Width = 40
          Height = 25
          DataField = 'COND7'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit9: TDBEdit
          Left = 439
          Top = 37
          Width = 40
          Height = 25
          DataField = 'COND8'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit10: TDBEdit
          Left = 199
          Top = 72
          Width = 40
          Height = 25
          DataField = 'COND12'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit12: TDBEdit
          Left = 379
          Top = 72
          Width = 40
          Height = 25
          DataField = 'COND15'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit13: TDBEdit
          Left = 319
          Top = 72
          Width = 40
          Height = 25
          DataField = 'COND14'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit14: TDBEdit
          Left = 259
          Top = 72
          Width = 40
          Height = 25
          DataField = 'COND13'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit15: TDBEdit
          Left = 139
          Top = 72
          Width = 40
          Height = 25
          DataField = 'COND11'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit16: TDBEdit
          Left = 79
          Top = 72
          Width = 40
          Height = 25
          DataField = 'COND10'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit17: TDBEdit
          Left = 19
          Top = 72
          Width = 40
          Height = 25
          DataField = 'COND9'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnKeyPress = DBEdit2KeyPress
        end
      end
      object dbrgrpAtivo: TDBRadioGroup
        Left = 79
        Top = 69
        Width = 185
        Height = 40
        Columns = 2
        DataField = 'ATIVO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Items.Strings = (
          'Ativo'
          'Inativo')
        ParentFont = False
        TabOrder = 2
        Values.Strings = (
          'A'
          'I')
      end
      object DBEdit11: TDBEdit
        Left = 313
        Top = 86
        Width = 134
        Height = 23
        DataField = 'PERCENT_ACRESCIMO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = DBEdit11KeyPress
      end
      object DBEdit18: TDBEdit
        Left = 122
        Top = 29
        Width = 325
        Height = 23
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  inherited ds: TDataSource
    Left = 80
    Top = 16
  end
  inherited cds: TClientDataSet
    CommandText = 'select a.*'#13#10'from CONDPAGTO a'#13#10'where 1 = 2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = cdsAfterInsert
    Left = 48
    Top = 14
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object cdsCOND1: TSmallintField
      FieldName = 'COND1'
    end
    object cdsCOND2: TSmallintField
      FieldName = 'COND2'
    end
    object cdsCOND3: TSmallintField
      FieldName = 'COND3'
    end
    object cdsCOND4: TSmallintField
      FieldName = 'COND4'
    end
    object cdsCOND5: TSmallintField
      FieldName = 'COND5'
    end
    object cdsCOND6: TSmallintField
      FieldName = 'COND6'
    end
    object cdsCOND7: TSmallintField
      FieldName = 'COND7'
    end
    object cdsCOND8: TSmallintField
      FieldName = 'COND8'
    end
    object cdsCOND9: TSmallintField
      FieldName = 'COND9'
    end
    object cdsCOND10: TSmallintField
      FieldName = 'COND10'
    end
    object cdsCOND11: TSmallintField
      FieldName = 'COND11'
    end
    object cdsCOND12: TSmallintField
      FieldName = 'COND12'
    end
    object cdsCOND13: TSmallintField
      FieldName = 'COND13'
    end
    object cdsCOND14: TSmallintField
      FieldName = 'COND14'
    end
    object cdsCOND15: TSmallintField
      FieldName = 'COND15'
    end
    object cdsATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPERCENT_ACRESCIMO: TCurrencyField
      FieldName = 'PERCENT_ACRESCIMO'
      DisplayFormat = '#,##0.000'
      currency = False
    end
    object cdsDIAS: TStringField
      FieldName = 'DIAS'
      Size = 104
    end
  end
  inherited actMaster: TActionList
    Left = 16
    Top = 16
  end
end

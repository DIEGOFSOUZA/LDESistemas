inherited Frm_ContaBancaria: TFrm_ContaBancaria
  Caption = 'Frm_ContaBancaria'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Caption = '         Cadastro de conta'
  end
  inherited pnlFundo0: TPanel
    inherited pnlFundo1: TPanel
      object Label1: TLabel [0]
        Left = 40
        Top = 19
        Width = 48
        Height = 17
        Caption = 'C'#243'digo*'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [1]
        Left = 48
        Top = 48
        Width = 40
        Height = 17
        Caption = 'Banco*'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [2]
        Left = 37
        Top = 77
        Width = 51
        Height = 17
        Caption = 'Ag'#234'ncia*'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [3]
        Left = 49
        Top = 106
        Width = 39
        Height = 17
        Caption = 'Conta*'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [4]
        Left = 142
        Top = 28
        Width = 152
        Height = 13
        Caption = 'Exemplo: 237 - BRADESCO S.A'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 93
        Top = 16
        Width = 43
        Height = 25
        DataField = 'BCO_NUMERO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 93
        Top = 45
        Width = 350
        Height = 25
        CharCase = ecUpperCase
        DataField = 'BCO_NOME'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 93
        Top = 74
        Width = 56
        Height = 25
        CharCase = ecUpperCase
        DataField = 'BCO_AGENCIA'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 93
        Top = 103
        Width = 160
        Height = 25
        CharCase = ecUpperCase
        DataField = 'BCO_CONTA'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  inherited cds: TClientDataSet
    CommandText = 'select a.* from CONTA_BANCARIA a'#13#10'where 1 = 2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = cdsAfterInsert
    object cdsID: TStringField
      FieldName = 'ID'
      Required = True
      FixedChar = True
      Size = 5
    end
    object cdsBCO_NUMERO: TStringField
      FieldName = 'BCO_NUMERO'
      Size = 3
    end
    object cdsBCO_NOME: TStringField
      FieldName = 'BCO_NOME'
      Size = 40
    end
    object cdsBCO_AGENCIA: TStringField
      FieldName = 'BCO_AGENCIA'
      Size = 4
    end
    object cdsBCO_CONTA: TStringField
      FieldName = 'BCO_CONTA'
      Size = 12
    end
  end
end

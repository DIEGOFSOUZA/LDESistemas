inherited Frm_ContaBancaria: TFrm_ContaBancaria
  Caption = 'Frm_ContaBancaria'
  ClientHeight = 343
  ExplicitHeight = 343
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Caption = '         CADASTRO DE CONTA'
  end
  inherited pnlFundo0: TPanel
    Height = 313
    inherited pnlFundo1: TPanel
      Height = 238
      ExplicitLeft = 2
      ExplicitHeight = 238
      object Label1: TLabel [0]
        Left = 30
        Top = 11
        Width = 54
        Height = 17
        Caption = 'C'#211'DIGO*'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [1]
        Left = 38
        Top = 40
        Width = 48
        Height = 17
        Caption = 'BANCO*'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [2]
        Left = 27
        Top = 69
        Width = 58
        Height = 17
        Caption = 'AG'#202'NCIA*'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel [3]
        Left = 39
        Top = 98
        Width = 47
        Height = 17
        Caption = 'CONTA*'
        FocusControl = DBEdit4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [4]
        Left = 137
        Top = 20
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
      inherited Panel4: TPanel
        Top = 217
        TabOrder = 5
      end
      object DBEdit1: TDBEdit
        Left = 88
        Top = 8
        Width = 43
        Height = 25
        DataField = 'BCO_NUMERO'
        DataSource = ds
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 88
        Top = 37
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
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 88
        Top = 66
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
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 88
        Top = 95
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
        TabOrder = 3
      end
      object pnlPix: TPanel
        Left = 1
        Top = 122
        Width = 524
        Height = 95
        Align = alBottom
        TabOrder = 4
        object Label6: TLabel
          Left = 68
          Top = 61
          Width = 39
          Height = 17
          Caption = 'CHAVE'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 17
          Top = 29
          Width = 90
          Height = 17
          Caption = 'TIPO DE CHAVE'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 1
          Top = 1
          Width = 522
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '  PIX'
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          OnMouseMove = lblTituloMouseMove
          ExplicitLeft = 2
          ExplicitTop = 9
        end
        object DBEdit5: TDBEdit
          Left = 111
          Top = 58
          Width = 350
          Height = 25
          CharCase = ecUpperCase
          DataField = 'PIX_CHAVE'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object dbcbbPixTipo: TDBComboBox
          Left = 111
          Top = 27
          Width = 159
          Height = 25
          Style = csDropDownList
          DataField = 'PIX_TIPO'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Items.Strings = (
            ''
            'CPF/CNPJ'
            'E-MAIL'
            'CELULAR')
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  inherited cds: TClientDataSet
    CommandText = 'select a.* from CONTA_BANCARIA a'#13#10'where 1 = 2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.dspRLer
    AfterInsert = cdsAfterInsert
    BeforePost = cdsBeforePost
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
    object cdsPIX_TIPO: TStringField
      FieldName = 'PIX_TIPO'
    end
    object cdsPIX_CHAVE: TStringField
      FieldName = 'PIX_CHAVE'
      Size = 50
    end
  end
end

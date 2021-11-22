inherited Frm_Usuario: TFrm_Usuario
  Caption = 'Frm_Usuario'
  ClientHeight = 333
  ClientWidth = 882
  ExplicitWidth = 882
  ExplicitHeight = 333
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 882
    Caption = '         Usu'#225'rios'
    Color = 4195840
    ExplicitWidth = 882
  end
  inherited pnlFundo0: TPanel
    Width = 882
    Height = 303
    ExplicitWidth = 882
    ExplicitHeight = 303
    inherited Panel1: TPanel
      Width = 880
      Color = 7024384
      ExplicitWidth = 880
    end
    inherited pnlFundo1: TPanel
      Width = 880
      Height = 228
      ExplicitWidth = 880
      ExplicitHeight = 228
      inherited Panel4: TPanel
        Top = 207
        Width = 878
        TabOrder = 1
        ExplicitTop = 207
        ExplicitWidth = 878
      end
      object pnlFields: TPanel
        Left = 1
        Top = 1
        Width = 878
        Height = 206
        Align = alClient
        Color = 14803681
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 13
          Top = 0
          Width = 41
          Height = 17
          Caption = 'Nome*'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 341
          Top = 0
          Width = 36
          Height = 17
          Caption = 'Email*'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 605
          Top = 0
          Width = 49
          Height = 17
          Caption = 'Telefone'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 13
          Top = 54
          Width = 200
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Perfil*'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 217
          Top = 76
          Width = 139
          Height = 17
          Caption = 'Administrador de pdv?*'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 414
          Top = 76
          Width = 68
          Height = 17
          Caption = 'Vendedor?*'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 13
          Top = 129
          Width = 37
          Height = 17
          Caption = 'Login*'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 341
          Top = 129
          Width = 170
          Height = 17
          Caption = 'Senha* (m'#237'nimo 8 caracteres)'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 815
          Top = 55
          Width = 50
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Ativo?*'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 13
          Top = 21
          Width = 324
          Height = 25
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 341
          Top = 21
          Width = 260
          Height = 25
          CharCase = ecLowerCase
          DataField = 'EMAIL'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 605
          Top = 21
          Width = 260
          Height = 25
          DataField = 'FONE'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBComboBox1: TDBComboBox
          Left = 13
          Top = 73
          Width = 200
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'PERFIL'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Administrador'
            'Auxiliar Administrativo'
            'Gerente'
            'Gerente + Administrativo'
            'Operador PDV'
            'Vendedor')
          ParentFont = False
          TabOrder = 4
        end
        object DBComboBox3: TDBComboBox
          Left = 360
          Top = 73
          Width = 50
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'ADMIN_PDV'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 5
        end
        object DBComboBox4: TDBComboBox
          Left = 486
          Top = 73
          Width = 50
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'VENDEDOR'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 6
          OnChange = DBComboBox4Change
        end
        object DBEdit4: TDBEdit
          Left = 13
          Top = 150
          Width = 324
          Height = 25
          CharCase = ecUpperCase
          DataField = 'USU_NOME'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit5: TDBEdit
          Left = 343
          Top = 150
          Width = 260
          Height = 25
          DataField = 'USU_SENHA'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 9
        end
        object pnlCodVenda: TPanel
          Left = 632
          Top = 54
          Width = 140
          Height = 131
          BevelOuter = bvNone
          TabOrder = 3
          Visible = False
          object Label10: TLabel
            Left = 5
            Top = 1
            Width = 131
            Height = 17
            Caption = 'C'#243'digo operador PDV'
            FocusControl = DBEdit6
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 5
            Top = 75
            Width = 57
            Height = 17
            Caption = 'Comiss'#227'o'
            FocusControl = DBEdit7
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit6: TDBEdit
            Left = 5
            Top = 19
            Width = 80
            Height = 25
            DataField = 'ID_VENDEDOR'
            DataSource = ds
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 5
            Top = 96
            Width = 130
            Height = 25
            DataField = 'COMISSAO'
            DataSource = ds
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object DBComboBox2: TDBComboBox
          Left = 815
          Top = 73
          Width = 50
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'ATIVO'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 7
          TabStop = False
        end
      end
    end
  end
  inherited ds: TDataSource
    Left = 712
    Top = 256
  end
  inherited cds: TClientDataSet
    CommandText = 'select a.* from USUARIO a'#13#10'where 1=2'
    RemoteServer = DM.dspRLer
    AfterInsert = cdsAfterInsert
    Left = 712
    Top = 208
    object cdsUSU_ID: TIntegerField
      FieldName = 'USU_ID'
      Required = True
    end
    object cdsUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Required = True
      Size = 40
    end
    object cdsUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Required = True
      Size = 40
    end
    object cdsEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsFONE: TStringField
      FieldName = 'FONE'
      EditMask = '!\(999\)0000-0000;1;_'
      Size = 15
    end
    object cdsPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 50
    end
    object cdsNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsADMIN_PDV: TStringField
      FieldName = 'ADMIN_PDV'
      FixedChar = True
      Size = 3
    end
    object cdsVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 3
    end
    object cdsCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 3
    end
    object cdsID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
  end
  inherited actMaster: TActionList
    Left = 768
    Top = 216
    inherited actExcluir: TAction
      Enabled = False
    end
  end
end

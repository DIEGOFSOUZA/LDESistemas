inherited Frm_Cidades: TFrm_Cidades
  Caption = 'Cadastro de Cidades'
  ClientWidth = 530
  OnCreate = FormCreate
  ExplicitWidth = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 530
    Caption = '         Cadastro de Cidades'
    ExplicitWidth = 530
  end
  inherited pnlFundo0: TPanel
    Width = 530
    ExplicitWidth = 530
    inherited pnlFundo1: TPanel
      Width = 447
      ExplicitWidth = 447
      inherited Panel4: TPanel
        Width = 445
        ExplicitWidth = 445
      end
      object UFrm_Cidades: TPanel
        Left = 1
        Top = 1
        Width = 445
        Height = 491
        Align = alClient
        TabOrder = 1
        object Label1: TLabel
          Left = 10
          Top = 26
          Width = 43
          Height = 16
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 10
          Top = 66
          Width = 111
          Height = 16
          Caption = 'C'#243'digo de Estado'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 10
          Top = 106
          Width = 43
          Height = 16
          Caption = 'Cidade'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 10
          Top = 146
          Width = 44
          Height = 16
          Caption = 'Estado'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 10
          Top = 186
          Width = 75
          Height = 16
          Caption = 'C'#243'digo IBGE'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 10
          Top = 228
          Width = 23
          Height = 16
          Caption = 'CEP'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 10
          Top = 42
          Width = 75
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = ds
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 10
          Top = 82
          Width = 75
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COD_UF'
          DataSource = ds
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 10
          Top = 122
          Width = 383
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = ds
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 10
          Top = 162
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = ds
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 10
          Top = 204
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COD_IBGE'
          DataSource = ds
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 10
          Top = 246
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = ds
          TabOrder = 5
        end
      end
    end
  end
  inherited ds: TDataSource
    Left = 416
    Top = 256
  end
  inherited cds: TClientDataSet
    CommandText = 'select * from CIDADES'#13#10' where codigo = 1'
    AfterInsert = cdsAfterInsert
    Left = 416
    Top = 208
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object cdsCOD_UF: TSmallintField
      FieldName = 'COD_UF'
      Origin = 'COD_UF'
    end
    object cdsNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object cdsUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object cdsCOD_IBGE: TStringField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
      Size = 10
    end
    object cdsCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '99.999-999;0'
      Size = 10
    end
  end
end

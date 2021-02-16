inherited Frm_Ramo: TFrm_Ramo
  Caption = 'Cadastro de Ramo de Atividade'
  ClientHeight = 206
  OnCreate = FormCreate
  ExplicitHeight = 206
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 96
    Width = 90
    Height = 13
    AutoSize = False
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 134
    Width = 107
    Height = 13
    Caption = 'Ramo de Atividade'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit2: TDBEdit [3]
    Left = 136
    Top = 131
    Width = 370
    Height = 21
    DataField = 'DESCRI'
    DataSource = ds
    TabOrder = 1
  end
  object DBEdit1: TDBEdit [4]
    Left = 136
    Top = 93
    Width = 65
    Height = 21
    TabStop = False
    DataField = 'CODIGO'
    DataSource = ds
    Enabled = False
    TabOrder = 2
  end
  inherited pnlFundo0: TPanel
    Height = 176
    inherited Panel1: TPanel
      ExplicitWidth = 512
    end
  end
  inherited ds: TDataSource
    Left = 384
    Top = 128
  end
  inherited cds: TClientDataSet
    CommandText = 'select * from RAMO_ATIVIDADE'#13#10'where codigo = 1'
    AfterInsert = cdsAfterInsert
    Left = 384
    Top = 80
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDESCRI: TStringField
      FieldName = 'DESCRI'
      Size = 50
    end
  end
  inherited actMaster: TActionList
    Left = 432
    Top = 80
  end
end

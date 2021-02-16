inherited Frm_GrupoFornecedor: TFrm_GrupoFornecedor
  Caption = 'Cadastro de Grupos de Fornecedor'
  ClientHeight = 336
  OnCreate = FormCreate
  ExplicitHeight = 336
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 117
    Width = 38
    Height = 13
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
    Top = 154
    Width = 96
    Height = 13
    Caption = 'Nome do Grupo *'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 197
    Width = 67
    Height = 13
    Caption = 'Observa'#231#227'o'
    FocusControl = DBMemo1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited lblTitulo: TLabel
    Caption = '         Cadastro de Grupos de Fornecedor'
  end
  object DBEdit1: TDBEdit [4]
    Left = 117
    Top = 114
    Width = 134
    Height = 21
    TabStop = False
    DataField = 'CODIGO'
    DataSource = ds
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 117
    Top = 151
    Width = 387
    Height = 21
    DataField = 'DESCRI'
    DataSource = ds
    TabOrder = 2
  end
  object DBMemo1: TDBMemo [6]
    Left = 16
    Top = 216
    Width = 480
    Height = 89
    DataField = 'OBS'
    DataSource = ds
    TabOrder = 3
  end
  inherited pnlFundo0: TPanel
    Height = 306
    inherited pnlFundo1: TPanel
      inherited Panel4: TPanel
        Top = 316
        ExplicitTop = 288
      end
    end
  end
  inherited ds: TDataSource
    Left = 400
    Top = 224
  end
  inherited cds: TClientDataSet
    CommandText = 'select * from GRUPO_FABRICANTE where codigo = 1'
    AfterInsert = cdsAfterInsert
    Left = 400
    Top = 176
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDESCRI: TStringField
      FieldName = 'DESCRI'
      Size = 50
    end
    object cdsOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
  end
  inherited actMaster: TActionList
    Left = 456
    Top = 184
  end
end

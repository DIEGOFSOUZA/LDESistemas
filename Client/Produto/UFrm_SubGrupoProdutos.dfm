inherited Frm_SubGrupoProdutos: TFrm_SubGrupoProdutos
  Caption = 'Cadastro Sub Grupo de Produtos'
  ClientHeight = 290
  ClientWidth = 514
  OnCreate = FormCreate
  ExplicitWidth = 514
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 117
    Width = 139
    Height = 16
    Caption = 'Nome do Sub-Grupo *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [1]
    Left = 16
    Top = 146
    Width = 77
    Height = 16
    Caption = 'Observa'#231#227'o'
    FocusControl = DBMemo1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited lblTitulo: TLabel
    Width = 514
    Caption = '         Cadastro Sub Grupo de Produtos'
    ExplicitWidth = 514
  end
  object DBEdit2: TDBEdit [3]
    Left = 139
    Top = 114
    Width = 367
    Height = 24
    DataField = 'DESCRI'
    DataSource = ds
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBMemo1: TDBMemo [4]
    Left = 16
    Top = 165
    Width = 490
    Height = 103
    DataField = 'OBS'
    DataSource = ds
    TabOrder = 2
  end
  inherited pnlFundo0: TPanel
    Width = 514
    Height = 260
    ExplicitWidth = 514
    ExplicitHeight = 260
    inherited Panel1: TPanel
      Width = 514
      ExplicitWidth = 514
    end
    inherited pnlFundo1: TPanel
      inherited Panel4: TPanel
        Top = 270
        Width = 514
        ExplicitTop = 270
        ExplicitWidth = 514
      end
    end
  end
  inherited cds: TClientDataSet
    CommandText = 'select * from SUBGRUPO_PROD where codigo = 1  '
    AfterInsert = cdsAfterInsert
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDESCRI: TStringField
      FieldName = 'DESCRI'
      Size = 45
    end
    object cdsOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
  end
end

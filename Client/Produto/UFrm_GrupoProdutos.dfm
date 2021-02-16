inherited Frm_GrupoProdutos: TFrm_GrupoProdutos
  Caption = 'Grupo de Produtos'
  ClientHeight = 317
  ClientWidth = 519
  OnCreate = FormCreate
  ExplicitWidth = 519
  ExplicitHeight = 317
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 519
    Caption = '         Grupo de Produtos'
    ExplicitWidth = 519
  end
  inherited pnlFundo0: TPanel
    Width = 519
    Height = 287
    ExplicitWidth = 519
    ExplicitHeight = 287
    inherited Panel1: TPanel
      Width = 517
      ExplicitWidth = 517
    end
    inherited pnlFundo1: TPanel
      Width = 517
      Height = 212
      ExplicitWidth = 517
      ExplicitHeight = 212
      object Label2: TLabel [0]
        Left = 16
        Top = 18
        Width = 118
        Height = 17
        Caption = 'NOME DO GRUPO *'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [1]
        Left = 16
        Top = 67
        Width = 80
        Height = 17
        Caption = 'OBSERVA'#199#194'O'
        FocusControl = DBMemo1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      inherited Panel4: TPanel
        Top = 191
        Width = 515
        ExplicitTop = 191
        ExplicitWidth = 515
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 38
        Width = 372
        Height = 25
        DataField = 'DESCRI'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 16
        Top = 86
        Width = 474
        Height = 103
        DataField = 'OBS'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  inherited ds: TDataSource
    Left = 432
    Top = 216
  end
  inherited cds: TClientDataSet
    CommandText = 'select * from GRUPO_PROD where codigo = 1  '
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = cdsAfterInsert
    Left = 432
    Top = 160
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
  inherited actMaster: TActionList
    Left = 480
    Top = 160
  end
end

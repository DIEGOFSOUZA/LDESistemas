inherited Frm_GrupoProdutos: TFrm_GrupoProdutos
  Caption = 'CADASTRO DE GRUPO DE PRODUTO'
  ClientHeight = 317
  ClientWidth = 519
  ExplicitWidth = 519
  ExplicitHeight = 317
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 519
    Caption = '         CADASTRO DE GRUPO DE PRODUTO'
    ExplicitWidth = 519
  end
  inherited pnlFundo0: TPanel
    Width = 519
    Height = 287
    ExplicitWidth = 519
    ExplicitHeight = 287
    inherited Panel1: TPanel
      Width = 517
      Color = 14803681
      ExplicitLeft = 2
      ExplicitTop = -4
      ExplicitWidth = 517
    end
    inherited pnlFundo1: TPanel
      Width = 517
      Height = 212
      ExplicitWidth = 517
      ExplicitHeight = 212
      inherited Panel4: TPanel
        Top = 191
        Width = 515
        TabOrder = 1
        ExplicitTop = 191
        ExplicitWidth = 515
      end
      object pnlCentro: TPanel
        Left = 1
        Top = 1
        Width = 515
        Height = 190
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlCentro'
        Color = 14803681
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = -2
        object Label2: TLabel
          Left = 122
          Top = 10
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
        object Label3: TLabel
          Left = 20
          Top = 59
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
        object Label1: TLabel
          Left = 20
          Top = 10
          Width = 80
          Height = 17
          Alignment = taCenter
          Caption = 'C'#211'DIGO *'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 20
          Top = 33
          Width = 80
          Height = 17
          Alignment = taCenter
          DataField = 'CODIGO'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 122
          Top = 30
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
          TabOrder = 0
        end
        object DBMemo1: TDBMemo
          Left = 20
          Top = 78
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
          TabOrder = 1
        end
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
      Alignment = taCenter
      FieldName = 'CODIGO'
      Required = True
      DisplayFormat = '000'
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

inherited Frm_SubGrupoProdutos: TFrm_SubGrupoProdutos
  Caption = 'Cadastro Sub Grupo de Produtos'
  ClientHeight = 317
  ClientWidth = 519
  ExplicitWidth = 519
  ExplicitHeight = 317
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
    Width = 519
    Caption = '         CADASTRO DE SUBGRUPO DE PRODUTO'
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
    Width = 519
    Height = 287
    ExplicitWidth = 514
    ExplicitHeight = 260
    inherited Panel1: TPanel
      Width = 517
      Color = 14803681
      ExplicitWidth = 512
    end
    inherited pnlFundo1: TPanel
      Width = 517
      Height = 212
      ExplicitWidth = 512
      ExplicitHeight = 185
      inherited Panel4: TPanel
        Top = 191
        Width = 515
        TabOrder = 1
        ExplicitTop = 164
        ExplicitWidth = 510
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
        ExplicitTop = 9
        object Label1: TLabel
          Left = 122
          Top = 10
          Width = 141
          Height = 17
          Caption = 'NOME DO SUBGRUPO *'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 20
          Top = 59
          Width = 80
          Height = 17
          Caption = 'OBSERVA'#199#194'O'
          FocusControl = DBMemo2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 20
          Top = 10
          Width = 71
          Height = 17
          Alignment = taCenter
          AutoSize = False
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
          Width = 73
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
        object DBEdit1: TDBEdit
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
        object DBMemo2: TDBMemo
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
  inherited cds: TClientDataSet
    CommandText = 'select * from SUBGRUPO_PROD where codigo = 1  '
    AfterInsert = cdsAfterInsert
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
end

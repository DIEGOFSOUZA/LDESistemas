inherited Frm_GrupoHistorico: TFrm_GrupoHistorico
  Caption = 'Cadastro de Grupo Historico'
  ClientHeight = 226
  ExplicitHeight = 226
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Caption = '         CADASTRO DE GRUPO DE HIST'#211'RICO'
  end
  inherited pnlFundo0: TPanel
    Height = 196
    ExplicitHeight = 196
    inherited Panel1: TPanel
      inherited pnlSair: TPanel
        TabOrder = 6
      end
      inherited pnlGravar: TPanel
        TabOrder = 5
      end
      inherited pnlCancelar: TPanel
        TabOrder = 4
      end
      inherited pnlExcluir: TPanel
        TabOrder = 2
      end
      inherited pnlEditar: TPanel
        TabOrder = 1
      end
      inherited pnlAdicionar: TPanel
        TabOrder = 0
      end
    end
    inherited pnlFundo1: TPanel
      Height = 121
      ExplicitHeight = 121
      object Label1: TLabel [0]
        Left = 81
        Top = 22
        Width = 43
        Height = 17
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [1]
        Left = 62
        Top = 51
        Width = 62
        Height = 17
        Caption = 'Descri'#231#227'o*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      inherited Panel4: TPanel
        Top = 100
        TabOrder = 2
        ExplicitTop = 100
      end
      object DBEdit1: TDBEdit
        Left = 128
        Top = 19
        Width = 77
        Height = 25
        CharCase = ecUpperCase
        DataField = 'CODIGO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 128
        Top = 48
        Width = 365
        Height = 25
        CharCase = ecUpperCase
        DataField = 'DESCRI'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  inherited ds: TDataSource
    Left = 408
    Top = 160
  end
  inherited cds: TClientDataSet
    CommandText = 'select a.* from HISTORICO_GRUPO a'#13#10'where 1=2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = cdsAfterInsert
    Left = 408
    Top = 112
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsDESCRI: TStringField
      FieldName = 'DESCRI'
      Required = True
      Size = 30
    end
  end
  inherited actMaster: TActionList
    Left = 464
    Top = 120
  end
end

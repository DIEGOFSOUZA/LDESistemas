inherited Frm_CadUnidade: TFrm_CadUnidade
  Caption = 'Frm_CadUnidade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Caption = '         UNIDADES DE MEDIDA'
  end
  inherited pnlFundo0: TPanel
    inherited pnlFundo1: TPanel
      object Label1: TLabel [0]
        Left = 20
        Top = 16
        Width = 12
        Height = 17
        Caption = 'ID'
        FocusControl = DBEdit1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [1]
        Left = 180
        Top = 16
        Width = 33
        Height = 17
        Caption = 'Sigla*'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [2]
        Left = 20
        Top = 72
        Width = 41
        Height = 17
        Caption = 'Nome*'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 20
        Top = 35
        Width = 134
        Height = 25
        DataField = 'CODIGO'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 180
        Top = 35
        Width = 134
        Height = 25
        CharCase = ecUpperCase
        DataField = 'SIGLA'
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 20
        Top = 91
        Width = 294
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
        TabOrder = 3
      end
    end
  end
  inherited cds: TClientDataSet
    CommandText = 'select a.* from unidade a where 1=2'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = cdsAfterInsert
    object cdsCODIGO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object cdsPADRAO: TStringField
      FieldName = 'PADRAO'
      FixedChar = True
      Size = 1
    end
  end
end

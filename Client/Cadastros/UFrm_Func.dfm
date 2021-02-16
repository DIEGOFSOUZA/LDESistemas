inherited Frm_Func: TFrm_Func
  Caption = 'Cadastro de Funcion'#225'rio'
  OnCreate = FormCreate
  ExplicitTop = -27
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Caption = '         Cadastro de Funcion'#225'rio'
  end
  inherited pnlFundo0: TPanel
    inherited Panel1: TPanel
      ParentColor = True
    end
    inherited pnlFundo1: TPanel
      inherited Panel4: TPanel
        ParentColor = True
      end
      object pgc1: TPageControl
        Left = 1
        Top = 1
        Width = 500
        Height = 491
        ActivePage = ts2
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 6
        ExplicitTop = -2
        object ts1: TTabSheet
          Caption = 'Dados'
          ExplicitLeft = 5
          ExplicitTop = 22
          object pnl2: TPanel
            Left = 0
            Top = 0
            Width = 492
            Height = 463
            Align = alClient
            Color = clWhite
            ParentBackground = False
            TabOrder = 0
            ExplicitLeft = 1
            ExplicitTop = -2
            object Label1: TLabel
              Left = 6
              Top = 16
              Width = 41
              Height = 13
              Caption = 'CODIGO'
              FocusControl = DBEdit1
            end
            object Label2: TLabel
              Left = 8
              Top = 96
              Width = 27
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdit2
            end
            object Label4: TLabel
              Left = 8
              Top = 136
              Width = 86
              Height = 13
              Caption = 'Setor de Trabalho'
              FocusControl = DBEdit4
            end
            object Label8: TLabel
              Left = 121
              Top = 16
              Width = 19
              Height = 13
              Caption = 'CPF'
              FocusControl = DBEdit5
            end
            object Label9: TLabel
              Left = 121
              Top = 56
              Width = 14
              Height = 13
              Caption = 'RG'
              FocusControl = DBEdit6
            end
            object Label3: TLabel
              Left = 8
              Top = 176
              Width = 45
              Height = 13
              Caption = 'Endere'#231'o'
              FocusControl = DBEdit3
            end
            object Label10: TLabel
              Left = 8
              Top = 216
              Width = 28
              Height = 13
              Caption = 'Bairro'
              FocusControl = DBEdit7
            end
            object Label11: TLabel
              Left = 8
              Top = 256
              Width = 33
              Height = 13
              Caption = 'Cidade'
              FocusControl = DBEdit8
            end
            object Label12: TLabel
              Left = 8
              Top = 296
              Width = 33
              Height = 13
              Caption = 'Estado'
              FocusControl = DBEdit9
            end
            object Label13: TLabel
              Left = 8
              Top = 336
              Width = 24
              Height = 13
              Caption = 'Fone'
              FocusControl = DBEdit10
            end
            object Label14: TLabel
              Left = 8
              Top = 376
              Width = 33
              Height = 13
              Caption = 'Celular'
              FocusControl = DBEdit11
            end
            object Label15: TLabel
              Left = 8
              Top = 416
              Width = 28
              Height = 13
              Caption = 'E-mail'
              FocusControl = DBEdit12
            end
            object DBEdit9: TDBEdit
              Left = 8
              Top = 312
              Width = 19
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ESTADO'
              DataSource = ds
              TabOrder = 0
            end
            object DBEdit1: TDBEdit
              Left = 6
              Top = 32
              Width = 75
              Height = 21
              DataField = 'CODIGO'
              DataSource = ds
              TabOrder = 1
            end
            object DBEdit2: TDBEdit
              Left = 8
              Top = 112
              Width = 428
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = ds
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 8
              Top = 152
              Width = 394
              Height = 21
              CharCase = ecUpperCase
              DataField = 'SETOR'
              DataSource = ds
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 121
              Top = 32
              Width = 199
              Height = 21
              DataField = 'CPF'
              DataSource = ds
              TabOrder = 4
            end
            object DBEdit6: TDBEdit
              Left = 121
              Top = 72
              Width = 199
              Height = 21
              DataField = 'RG'
              DataSource = ds
              TabOrder = 5
            end
            object DBEdit3: TDBEdit
              Left = 8
              Top = 192
              Width = 450
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ENDERECO'
              DataSource = ds
              TabOrder = 6
            end
            object DBEdit7: TDBEdit
              Left = 8
              Top = 232
              Width = 450
              Height = 21
              CharCase = ecUpperCase
              DataField = 'BAIRRO'
              DataSource = ds
              TabOrder = 7
            end
            object DBEdit8: TDBEdit
              Left = 8
              Top = 272
              Width = 450
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CIDADE'
              DataSource = ds
              TabOrder = 8
            end
            object DBEdit10: TDBEdit
              Left = 8
              Top = 352
              Width = 199
              Height = 21
              DataField = 'FONE'
              DataSource = ds
              TabOrder = 9
            end
            object DBEdit11: TDBEdit
              Left = 8
              Top = 392
              Width = 199
              Height = 21
              DataField = 'CEL'
              DataSource = ds
              TabOrder = 10
            end
            object DBEdit12: TDBEdit
              Left = 8
              Top = 432
              Width = 394
              Height = 21
              DataField = 'MAIL'
              DataSource = ds
              TabOrder = 11
            end
          end
        end
        object ts2: TTabSheet
          Caption = 'Observa'#231'oes'
          ImageIndex = 1
          object pnl1: TPanel
            Left = 0
            Top = 0
            Width = 492
            Height = 463
            Align = alClient
            Color = 14803681
            ParentBackground = False
            TabOrder = 0
            ExplicitLeft = 1
            ExplicitTop = 1
            object Label5: TLabel
              Left = 3
              Top = 118
              Width = 58
              Height = 13
              Caption = 'Advertencia'
              FocusControl = DBMemo1
            end
            object Label6: TLabel
              Left = 3
              Top = 227
              Width = 52
              Height = 13
              Caption = 'Suspen'#231#227'o'
              FocusControl = DBMemo2
            end
            object Label7: TLabel
              Left = 3
              Top = 8
              Width = 58
              Height = 13
              Caption = 'Observa'#231#227'o'
              FocusControl = DBMemo3
            end
            object DBMemo1: TDBMemo
              Left = 3
              Top = 132
              Width = 474
              Height = 89
              DataField = 'ADVERTENCIA'
              DataSource = ds
              TabOrder = 0
            end
            object DBMemo2: TDBMemo
              Left = 3
              Top = 243
              Width = 474
              Height = 89
              DataField = 'SUSPENCAO'
              DataSource = ds
              TabOrder = 1
            end
            object DBMemo3: TDBMemo
              Left = 3
              Top = 23
              Width = 474
              Height = 89
              DataField = 'OBS'
              DataSource = ds
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited ds: TDataSource
    Left = 376
    Top = 296
  end
  inherited cds: TClientDataSet
    CommandText = 'select * from FUNCIONARIO where codigo = 1'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = cdsAfterInsert
    Left = 376
    Top = 248
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 40
    end
    object cdsATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsSETOR: TStringField
      FieldName = 'SETOR'
      Origin = 'SETOR'
      Size = 30
    end
    object cdsADVERTENCIA: TMemoField
      FieldName = 'ADVERTENCIA'
      Origin = 'ADVERTENCIA'
      BlobType = ftMemo
    end
    object cdsSUSPENCAO: TMemoField
      FieldName = 'SUSPENCAO'
      Origin = 'SUSPENCAO'
      BlobType = ftMemo
    end
    object cdsOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object cdsCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      EditMask = '999.999.999-99;0'
      Size = 18
    end
    object cdsRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      EditMask = '99.999.999-99;0'
      Size = 15
    end
    object cdsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 45
    end
    object cdsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 45
    end
    object cdsCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 45
    end
    object cdsESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object cdsFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      EditMask = '(99)9999-9999;0'
      Size = 15
    end
    object cdsCEL: TStringField
      FieldName = 'CEL'
      Origin = 'CEL'
      EditMask = '(999)9999-9999;0'
      Size = 15
    end
    object cdsMAIL: TStringField
      FieldName = 'MAIL'
      Origin = 'MAIL'
      Size = 30
    end
    object cdsID_VENDEDOR: TIntegerField
      Alignment = taCenter
      FieldName = 'ID_VENDEDOR'
      Origin = 'ID_VENDEDOR'
    end
  end
  inherited actMaster: TActionList
    Left = 432
    Top = 256
  end
end

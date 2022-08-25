inherited Frm_GerOrcItens: TFrm_GerOrcItens
  Caption = 'Frm_GerOrcItens'
  ClientWidth = 764
  Visible = False
  OnKeyDown = FormKeyDown
  ExplicitWidth = 764
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 764
    Height = 25
    ExplicitWidth = 764
    ExplicitHeight = 25
    inherited lblTitulo: TLabel
      Width = 739
      Height = 25
      Caption = '         ITENS'
      Color = 4868682
      ExplicitTop = 0
      ExplicitWidth = 739
      ExplicitHeight = 20
    end
    inherited pnlBotaoSair: TPanel
      Left = 739
      Height = 25
      ExplicitLeft = 438
      ExplicitTop = 0
      ExplicitHeight = 30
    end
  end
  object pnlFundo0: TPanel [1]
    Left = 0
    Top = 25
    Width = 764
    Height = 184
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlFundo0'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = 104
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 41
    object dbgrdOrcamentos: TDBGrid
      Left = 0
      Top = 0
      Width = 764
      Height = 184
      Align = alClient
      DataSource = dsItens
      DrawingStyle = gdsGradient
      GradientEndColor = 6710886
      GradientStartColor = 14211288
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ORDEM'
          Title.Alignment = taCenter
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 160
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTDE'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VUNIT'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VDESC'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VTOTAL'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC_MAX'
          Width = 123
          Visible = True
        end>
    end
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select a.ordem, cast((a.qtde||'#39' '#39'||a.unid) as varchar(50)) qtde,' +
      ' a.vunit, a.vdesc, a.vtotal,'#13#10'b.nome,'#13#10'cast(iif(coalesce(b.desc_' +
      'maximo,0)>0,(a.vtotal*(b.desc_maximo/100)),0)as numeric(10,2))de' +
      'sc_max'#13#10'from orcamento_item a'#13#10'left join produto b on (b.codigo=' +
      'a.id_prod)'#13#10'where a.id_orcamento = 50;'#13#10
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 104
    Top = 86
    object cdsItensORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '##0'
    end
    object cdsItensNOME: TStringField
      DisplayLabel = 'PRODUTO'
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsItensQTDE: TStringField
      DisplayLabel = 'QUANTIDADE'
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cdsItensVUNIT: TFMTBCDField
      DisplayLabel = 'PRE'#199'O UNIT. R$'
      FieldName = 'VUNIT'
      Origin = 'VUNIT'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensVDESC: TFMTBCDField
      DisplayLabel = 'DESCONTO R$'
      FieldName = 'VDESC'
      Origin = 'VDESC'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensVTOTAL: TFMTBCDField
      DisplayLabel = 'SUBTOTAL R$'
      FieldName = 'VTOTAL'
      Origin = 'VTOTAL'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 5
    end
    object cdsItensDESC_MAX: TFMTBCDField
      DisplayLabel = 'DESC. MAX. PERMITIDO'
      FieldName = 'DESC_MAX'
      Origin = 'DESC_MAX'
      ProviderFlags = []
      ReadOnly = True
      OnGetText = cdsItensDESC_MAXGetText
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 152
    Top = 102
  end
end

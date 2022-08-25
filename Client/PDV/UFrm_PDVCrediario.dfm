inherited Frm_PDVCrediario: TFrm_PDVCrediario
  BorderStyle = bsNone
  Caption = 'CREDI'#193'RIO'
  ClientHeight = 366
  ClientWidth = 507
  Visible = False
  OnKeyDown = FormKeyDown
  ExplicitWidth = 507
  ExplicitHeight = 366
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 507
    Height = 30
    Align = alTop
    AutoSize = False
    Caption = '         Credi'#225'rio'
    Color = 16748574
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 528
  end
  object pnlFundo: TPanel
    Left = 0
    Top = 30
    Width = 507
    Height = 336
    Align = alClient
    TabOrder = 0
    object pnlTopo: TPanel
      Left = 1
      Top = 1
      Width = 505
      Height = 74
      Align = alTop
      TabOrder = 0
      object edpCondPagto: TEdPesquisa
        Left = 7
        Top = 9
        Width = 491
        Height = 21
        PermitirBranco = Sim
        ConsultaTabela.Tabela = 'CONDPAGTO'
        ConsultaTabela.Pesquisa = 'codigo'
        ConsultaTabela.Mostrar = 'dias'
        ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
        OnPesquisa = edpCondPagtoPesquisa
        Titulo.Left = 0
        Titulo.Top = 3
        Titulo.Width = 66
        Titulo.Height = 17
        Titulo.Caption = 'CONDICAO'
        Titulo.Font.Charset = ANSI_CHARSET
        Titulo.Font.Color = clWindowText
        Titulo.Font.Height = -13
        Titulo.Font.Name = 'Segoe UI'
        Titulo.Font.Style = []
        Titulo.ParentFont = False
        Mostrar.Left = 150
        Mostrar.Top = 0
        Mostrar.Width = 340
        Mostrar.Height = 21
        Mostrar.TabStop = False
        Mostrar.Font.Charset = DEFAULT_CHARSET
        Mostrar.Font.Color = clBlue
        Mostrar.Font.Height = -11
        Mostrar.Font.Name = 'Tahoma'
        Mostrar.Font.Style = []
        Mostrar.ParentFont = False
        Mostrar.ReadOnly = True
        Mostrar.TabOrder = 1
        Campo.Left = 68
        Campo.Top = 0
        Campo.Width = 57
        Campo.Height = 21
        Campo.CharCase = ecUpperCase
        Campo.TabOrder = 0
        TabOrder = 0
        TabStop = True
      end
      object chkPecentual: TCheckBox
        Left = 76
        Top = 36
        Width = 157
        Height = 17
        Caption = 'Aplicar % de acr'#233'scimo'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 1
      end
      object btnCalcular: TButton
        Left = 408
        Top = 36
        Width = 90
        Height = 32
        Action = actCalcular
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Images = DM.il2
        ParentFont = False
        TabOrder = 2
      end
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 292
      Width = 505
      Height = 43
      Align = alBottom
      TabOrder = 2
      object btnGravar: TButton
        Left = 311
        Top = 6
        Width = 90
        Height = 32
        Action = actOk
        Default = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Images = DM.il2
        ParentFont = False
        TabOrder = 1
      end
      object btnCancelar: TButton
        Left = 407
        Top = 5
        Width = 90
        Height = 32
        Action = actCancel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Images = DM.il2
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnlDias: TPanel
      Left = 1
      Top = 75
      Width = 505
      Height = 217
      Align = alClient
      TabOrder = 1
      object lblDT1: TLabel
        Left = 30
        Top = 29
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT2: TLabel
        Left = 131
        Top = 29
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT3: TLabel
        Left = 226
        Top = 29
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT4: TLabel
        Left = 320
        Top = 29
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT5: TLabel
        Left = 415
        Top = 29
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT6: TLabel
        Left = 26
        Top = 93
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT7: TLabel
        Left = 131
        Top = 93
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT8: TLabel
        Left = 226
        Top = 93
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT9: TLabel
        Left = 320
        Top = 93
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT10: TLabel
        Left = 415
        Top = 93
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT11: TLabel
        Left = 26
        Top = 157
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT12: TLabel
        Left = 131
        Top = 157
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT13: TLabel
        Left = 226
        Top = 157
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT14: TLabel
        Left = 320
        Top = 157
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDT15: TLabel
        Left = 415
        Top = 157
        Width = 59
        Height = 21
        Alignment = taCenter
        Caption = '09/11/19'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTitEndEntrega: TLabel
        Left = 1
        Top = 1
        Width = 503
        Height = 20
        Align = alTop
        AutoSize = False
        Caption = '         DATAS VENCIMENTO'
        Color = 16754511
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitLeft = 2
        ExplicitTop = 9
      end
      object edtDT1: TEdit
        Left = 16
        Top = 50
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TextHint = 'R$ 1500,45'
      end
      object edtDT2: TEdit
        Left = 112
        Top = 50
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TextHint = 'R$ 1500,45'
      end
      object edtDT3: TEdit
        Left = 208
        Top = 50
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TextHint = 'R$ 1500,45'
      end
      object edtDT4: TEdit
        Left = 304
        Top = 50
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        TextHint = 'R$ 1500,45'
      end
      object edtDT5: TEdit
        Left = 400
        Top = 50
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        TextHint = 'R$ 1500,45'
      end
      object edtDT6: TEdit
        Left = 16
        Top = 116
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        TextHint = 'R$ 1500,45'
      end
      object edtDT7: TEdit
        Left = 112
        Top = 116
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        TextHint = 'R$ 1500,45'
      end
      object edtDT8: TEdit
        Left = 208
        Top = 116
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        TextHint = 'R$ 1500,45'
      end
      object edtDT9: TEdit
        Left = 304
        Top = 116
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        TextHint = 'R$ 1500,45'
      end
      object edtDT10: TEdit
        Left = 400
        Top = 116
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        TextHint = 'R$ 1500,45'
      end
      object edtDT11: TEdit
        Left = 16
        Top = 178
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        TextHint = 'R$ 1500,45'
      end
      object edtDT12: TEdit
        Left = 112
        Top = 177
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        TextHint = 'R$ 1500,45'
      end
      object edtDT13: TEdit
        Left = 208
        Top = 177
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        TextHint = 'R$ 1500,45'
      end
      object edtDT14: TEdit
        Left = 304
        Top = 178
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        TextHint = 'R$ 1500,45'
      end
      object edtDT15: TEdit
        Left = 400
        Top = 177
        Width = 90
        Height = 29
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        TextHint = 'R$ 1500,45'
      end
    end
  end
  object actlst1: TActionList
    Images = DM.il2
    Left = 23
    Top = 63
    object actCalcular: TAction
      Caption = 'Calcular'
      ImageIndex = 6
      OnExecute = actCalcularExecute
    end
    object actOk: TAction
      Caption = 'OK'
      ImageIndex = 3
      OnExecute = actOkExecute
    end
    object actCancel: TAction
      Caption = 'Cancelar'
      ImageIndex = 4
      OnExecute = actCancelExecute
    end
  end
  object cdsParcelas: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'VENCTO'
        DataType = ftDate
      end
      item
        Name = 'VALOR'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 313
    Top = 83
    object cdsParcelasVENCTO: TDateField
      FieldName = 'VENCTO'
    end
    object cdsParcelasVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
  end
end

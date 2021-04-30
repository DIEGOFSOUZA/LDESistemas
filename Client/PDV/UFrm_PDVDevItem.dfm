inherited Frm_PDVDevItem: TFrm_PDVDevItem
  Caption = 'Frm_PDVDevItem'
  ClientHeight = 550
  ClientWidth = 883
  Visible = False
  ExplicitWidth = 883
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 883
    inherited lblTitulo: TLabel
      Width = 858
      Caption = '   DEVOLU'#199#195'O'
      ExplicitLeft = -6
      ExplicitTop = -4
      ExplicitWidth = 858
    end
    inherited pnlBotaoSair: TPanel
      Left = 858
    end
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 30
    Width = 883
    Height = 520
    Align = alClient
    Color = 14803681
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 152
    ExplicitTop = 192
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlRodape: TPanel
      Left = 1
      Top = 399
      Width = 881
      Height = 120
      Align = alBottom
      Color = 10461087
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 481
      object pnlTotais: TPanel
        Left = 1
        Top = 1
        Width = 288
        Height = 118
        Align = alLeft
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitHeight = 159
        object Label1: TLabel
          Left = 29
          Top = 19
          Width = 112
          Height = 21
          AutoSize = False
          Caption = 'VALOR INICIAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 29
          Top = 48
          Width = 112
          Height = 21
          AutoSize = False
          Caption = 'J'#193' DEVOLVIDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 29
          Top = 77
          Width = 112
          Height = 21
          AutoSize = False
          Caption = 'VALOR ATUAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVInicial: TLabel
          Left = 146
          Top = 19
          Width = 112
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 1.500,25'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVDevolvido: TLabel
          Left = 146
          Top = 48
          Width = 112
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 1.500,25'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblVAtual: TLabel
          Left = 146
          Top = 77
          Width = 112
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 1.500,25'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object pnlConfirmar: TPanel
        Left = 695
        Top = 1
        Width = 185
        Height = 118
        Align = alRight
        TabOrder = 2
        ExplicitLeft = 56
        ExplicitTop = 64
        ExplicitHeight = 41
        object pnlConfirma: TPanel
          Left = 17
          Top = 36
          Width = 150
          Height = 45
          BevelOuter = bvNone
          Caption = 'pnlIncluiCondPagto'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          TabStop = True
          object btnConfirma: TSpeedButton
            Left = 0
            Top = 0
            Width = 150
            Height = 45
            Cursor = crHandPoint
            Action = actConfirma
            Align = alClient
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            ExplicitLeft = 1
            ExplicitTop = 7
            ExplicitWidth = 23
            ExplicitHeight = 23
          end
        end
      end
      object pnlDevolv: TPanel
        Left = 289
        Top = 1
        Width = 406
        Height = 118
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 56
        ExplicitTop = 64
        ExplicitWidth = 185
        ExplicitHeight = 41
        object pnlDevCenter: TPanel
          Left = 13
          Top = 26
          Width = 380
          Height = 65
          BevelOuter = bvNone
          Color = 12342537
          ParentBackground = False
          TabOrder = 0
          object Label4: TLabel
            Left = 5
            Top = 22
            Width = 233
            Height = 21
            Alignment = taRightJustify
            Caption = 'DEVOLVENDO: R$ 1.500,25 EM:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object pnlOpcao: TPanel
            Left = 244
            Top = 0
            Width = 136
            Height = 65
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object cbbOpcao: TComboBox
              Left = 11
              Top = 18
              Width = 115
              Height = 29
              Style = csDropDownList
              Color = clBtnFace
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ItemIndex = 0
              ParentFont = False
              TabOrder = 0
              Text = 'SELECIONE'
              Items.Strings = (
                'SELECIONE'
                'VALE'
                'DINHEIRO')
            end
          end
        end
      end
    end
    object pnlCenter: TPanel
      Left = 1
      Top = 1
      Width = 881
      Height = 398
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 136
      ExplicitTop = 160
      ExplicitWidth = 185
      ExplicitHeight = 41
      object pnlCliente: TPanel
        Left = 409
        Top = 0
        Width = 472
        Height = 398
        Align = alClient
        TabOrder = 1
        ExplicitLeft = -1
        ExplicitTop = -5
        ExplicitWidth = 409
        ExplicitHeight = 480
        object lblTitPreco: TLabel
          Left = 1
          Top = 1
          Width = 470
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '      ITENS'
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          OnMouseMove = lblTituloMouseMove
          ExplicitTop = 5
          ExplicitWidth = 407
        end
        object pnlGrid: TPanel
          Left = 1
          Top = 21
          Width = 351
          Height = 376
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 320
          ExplicitHeight = 458
          object pnlTitVendas: TPanel
            Left = 0
            Top = 0
            Width = 351
            Height = 37
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label13: TLabel
              Left = 8
              Top = 19
              Width = 70
              Height = 17
              Caption = 'DESCRI'#199#195'O'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 270
              Top = 19
              Width = 41
              Height = 17
              Caption = 'SALDO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI Semibold'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object pnlGrid1: TPanel
            Left = 0
            Top = 37
            Width = 351
            Height = 339
            Align = alClient
            TabOrder = 1
            ExplicitLeft = 144
            ExplicitTop = 168
            ExplicitWidth = 185
            ExplicitHeight = 41
            object dbgrdVendas: TDBGrid
              Left = 1
              Top = 1
              Width = 349
              Height = 337
              Align = alClient
              DrawingStyle = gdsGradient
              GradientEndColor = 13864803
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              Options = [dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
            end
          end
        end
        object pnlQtdeADevolver: TPanel
          Left = 352
          Top = 21
          Width = 119
          Height = 376
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitHeight = 458
        end
      end
      object pnlItem: TPanel
        Left = 0
        Top = 0
        Width = 409
        Height = 398
        Align = alLeft
        TabOrder = 0
        ExplicitLeft = -5
        ExplicitTop = -5
        ExplicitHeight = 480
        object lbl1: TLabel
          Left = 1
          Top = 1
          Width = 407
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '      CONSUMIDOR'
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          OnMouseMove = lblTituloMouseMove
          ExplicitTop = 5
        end
        object Label5: TLabel
          Left = 24
          Top = 40
          Width = 55
          Height = 17
          Caption = 'CPF/CNPJ'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 184
          Top = 40
          Width = 60
          Height = 17
          Caption = 'TELEFONE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 24
          Top = 104
          Width = 41
          Height = 17
          Caption = 'E-MAIL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 24
          Top = 168
          Width = 22
          Height = 17
          Caption = 'CEP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 184
          Top = 168
          Width = 66
          Height = 17
          Caption = 'ENDERE'#199'O'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 24
          Top = 240
          Width = 44
          Height = 17
          Caption = 'BAIRRO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 184
          Top = 240
          Width = 56
          Height = 17
          Caption = 'N'#218'MERO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 21
          Top = 304
          Width = 95
          Height = 17
          Caption = 'COMPLEMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtCPFCNPJ: TEdit
          Left = 24
          Top = 61
          Width = 150
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = 'edtCPFCNPJ'
        end
        object edtTelefone: TEdit
          Left = 184
          Top = 61
          Width = 180
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = 'edtCPFCNPJ'
        end
        object edtEMAIL: TEdit
          Left = 24
          Top = 125
          Width = 340
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = 'edtCPFCNPJ'
        end
        object edtCEP: TEdit
          Left = 24
          Top = 189
          Width = 150
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = 'edtCPFCNPJ'
        end
        object edtENDERECO: TEdit
          Left = 184
          Top = 189
          Width = 180
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Text = 'edtCPFCNPJ'
        end
        object edtBairro: TEdit
          Left = 24
          Top = 261
          Width = 150
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = 'edtCPFCNPJ'
        end
        object edtNumero: TEdit
          Left = 184
          Top = 261
          Width = 180
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          Text = 'edtCPFCNPJ'
        end
        object edtCompl: TEdit
          Left = 21
          Top = 325
          Width = 343
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Text = 'edtCPFCNPJ'
        end
      end
    end
  end
  inherited actlst1: TActionList
    Left = 168
    Top = 416
    object actConfirma: TAction
      Caption = 'CONFIRMAR'
      OnExecute = actConfirmaExecute
    end
  end
  object dsItens: TDataSource
    Left = 571
    Top = 323
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select ID, TIPO, ORDEM, ID_PRODUTO, QTDE, QTDE_BAIXA, SALDO, DES' +
      'CRI_PROD, CLIENTE, CEP, CPF_CNPJ, TELEFONE1, EMAIL,'#13#10'       ENDE' +
      'RECO, BAIRRO, NUMERO, COMPLEMENTO, sum(VL_TOTAL) over() TOT_GERA' +
      'L, sum(TOT_DEV) over() TOTAL_DEV,'#13#10'       sum(VL_TOTAL - TOT_DEV' +
      ') over() TOT_ATUAL'#13#10'from (select A.ID, A.TIPO, A.ORDEM, A.ID_PRO' +
      'DUTO, A.QTDE, A.QTDE_BAIXA, A.VL_TOTAL,'#13#10'             cast(cast(' +
      '(A.QTDE - A.QTDE_DISPONIVEL) as integer) || '#39'/'#39' || cast(A.QTDE a' +
      's integer) as varchar(10)) SALDO, cast('#13#10'             case'#13#10'    ' +
      '           when A.QTDE_DISPONIVEL = 0 then A.VL_TOTAL'#13#10'         ' +
      '      when (A.QTDE > A.QTDE_DISPONIVEL) then ((A.QTDE - A.QTDE_D' +
      'ISPONIVEL) * (A.VL_TOTAL / A.QTDE))'#13#10'               else 0'#13#10'    ' +
      '         end as numeric(10,2)) TOT_DEV, P.NOME DESCRI_PROD, C.NO' +
      'ME_RAZAO CLIENTE, C.CEP, C.CPF_CNPJ, C.TELEFONE1,'#13#10'             ' +
      'C.EMAIL, C.ENDERECO, C.BAIRRO, C.NUMERO, C.COMPLEMENTO'#13#10'      fr' +
      'om PDV_ITENS A'#13#10'      left join PRODUTO P on (P.CODIGO = A.ID_PR' +
      'ODUTO)'#13#10'      left join PDV_MASTER PM on (PM.ID = A.ID and'#13#10'    ' +
      '        PM.TIPO = A.TIPO)'#13#10'      left join CLIENTE C on (C.CODIG' +
      'O = PM.ID_CLIENTE)'#13#10'      where 1=2)'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 515
    Top = 323
    object cdsItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsItensTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsItensORDEM: TIntegerField
      FieldName = 'ORDEM'
      Required = True
    end
    object cdsItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsItensQTDE: TCurrencyField
      FieldName = 'QTDE'
    end
    object cdsItensQTDE_BAIXA: TCurrencyField
      FieldName = 'QTDE_BAIXA'
    end
    object cdsItensSALDO: TStringField
      FieldName = 'SALDO'
      ReadOnly = True
      Size = 10
    end
    object cdsItensDESCRI_PROD: TStringField
      FieldName = 'DESCRI_PROD'
      ReadOnly = True
      Size = 100
    end
    object cdsItensCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ReadOnly = True
      Size = 100
    end
    object cdsItensCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 10
    end
    object cdsItensCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ReadOnly = True
    end
    object cdsItensTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      ReadOnly = True
      Size = 15
    end
    object cdsItensEMAIL: TStringField
      FieldName = 'EMAIL'
      ReadOnly = True
      Size = 70
    end
    object cdsItensENDERECO: TStringField
      FieldName = 'ENDERECO'
      ReadOnly = True
      Size = 45
    end
    object cdsItensBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ReadOnly = True
      Size = 30
    end
    object cdsItensNUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 10
    end
    object cdsItensCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ReadOnly = True
      Size = 30
    end
    object cdsItensTOT_GERAL: TFMTBCDField
      FieldName = 'TOT_GERAL'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object cdsItensTOTAL_DEV: TFMTBCDField
      FieldName = 'TOTAL_DEV'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object cdsItensTOT_ATUAL: TFMTBCDField
      FieldName = 'TOT_ATUAL'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
end

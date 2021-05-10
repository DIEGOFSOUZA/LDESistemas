inherited Frm_PDVDevItem: TFrm_PDVDevItem
  Caption = 'Frm_PDVDevItem'
  ClientHeight = 550
  ClientWidth = 883
  Visible = False
  ExplicitWidth = 883
  ExplicitHeight = 550
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDevolvidos: TPanel [0]
    Left = 0
    Top = 30
    Width = 883
    Height = 520
    Align = alClient
    Caption = 'ITENS J'#193' DEVOLVIDOS.'
    Color = 10461087
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = -6
    ExplicitTop = 103
    ExplicitWidth = 881
    ExplicitHeight = 398
  end
  inherited pnlTitulo: TPanel
    Width = 883
    ExplicitWidth = 883
    inherited lblTitulo: TLabel
      Width = 858
      Caption = '   DEVOLU'#199#195'O'
      ExplicitLeft = -6
      ExplicitTop = -4
      ExplicitWidth = 858
    end
    inherited pnlBotaoSair: TPanel
      Left = 858
      ExplicitLeft = 858
      ExplicitTop = 0
      ExplicitHeight = 30
    end
  end
  object pnlFundo: TPanel [2]
    Left = 0
    Top = 30
    Width = 883
    Height = 520
    Align = alClient
    Color = 14803681
    ParentBackground = False
    TabOrder = 2
    object pnlRodape: TPanel
      Left = 1
      Top = 399
      Width = 881
      Height = 120
      Align = alBottom
      Color = 10461087
      ParentBackground = False
      TabOrder = 1
      object pnlTotais: TPanel
        Left = 1
        Top = 1
        Width = 288
        Height = 118
        Align = alLeft
        TabOrder = 0
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
        object dbtxtTOT_ATUAL: TDBText
          Left = 146
          Top = 77
          Width = 112
          Height = 17
          Alignment = taRightJustify
          DataField = 'TOT_ATUAL'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtTOTAL_DEV: TDBText
          Left = 146
          Top = 48
          Width = 112
          Height = 17
          Alignment = taRightJustify
          DataField = 'TOTAL_DEV'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbtxtTOT_GERAL: TDBText
          Left = 146
          Top = 19
          Width = 112
          Height = 17
          Alignment = taRightJustify
          DataField = 'TOT_GERAL'
          DataSource = dsItens
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
        object pnlDevCenter: TPanel
          Left = 13
          Top = 26
          Width = 380
          Height = 65
          BevelOuter = bvNone
          Color = 12342537
          ParentBackground = False
          TabOrder = 0
          object lblDevolvendo: TLabel
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
      object pnlCliente: TPanel
        Left = 380
        Top = 0
        Width = 501
        Height = 398
        Align = alClient
        TabOrder = 1
        object lblTitPreco: TLabel
          Left = 1
          Top = 1
          Width = 499
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
          Width = 409
          Height = 376
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object pnlTitVendas: TPanel
            Left = 0
            Top = 0
            Width = 409
            Height = 37
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Label13: TLabel
              Left = 1
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
              Left = 304
              Top = 19
              Width = 78
              Height = 17
              Alignment = taCenter
              AutoSize = False
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
            Width = 409
            Height = 339
            Align = alClient
            TabOrder = 1
            object dbgrdItens: TDBGrid
              Left = 1
              Top = 1
              Width = 407
              Height = 337
              Align = alClient
              DataSource = dsItens
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
              OnDblClick = dbgrdItensDblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DESCRI_PROD'
                  Width = 297
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'SALDO'
                  Visible = True
                end>
            end
          end
        end
        object pnlQtdeADevolver: TPanel
          Left = 410
          Top = 21
          Width = 90
          Height = 376
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitLeft = 415
          ExplicitTop = 17
          object pnlQtde: TPanel
            Left = 2
            Top = 138
            Width = 86
            Height = 100
            TabOrder = 0
            Visible = False
            object Label16: TLabel
              Left = 1
              Top = 1
              Width = 84
              Height = 20
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              Caption = 'QTDE'
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
              ExplicitLeft = 2
              ExplicitTop = 9
            end
            object edtQtde: TEdit
              Left = 3
              Top = 30
              Width = 80
              Height = 25
              Alignment = taCenter
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              Text = '0'
              OnChange = edtQtdeChange
              OnKeyPress = edtQtdeKeyPress
            end
            object pnlOk: TPanel
              Left = 4
              Top = 66
              Width = 78
              Height = 30
              BevelOuter = bvNone
              Caption = 'pnlIncluiCondPagto'
              Color = 7024384
              ParentBackground = False
              ShowCaption = False
              TabOrder = 1
              TabStop = True
              object btnOk: TSpeedButton
                Left = 0
                Top = 0
                Width = 78
                Height = 30
                Cursor = crHandPoint
                Action = actOk
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
        end
      end
      object pnlItem: TPanel
        Left = 0
        Top = 0
        Width = 380
        Height = 398
        Align = alLeft
        Enabled = False
        TabOrder = 0
        object lbl1: TLabel
          Left = 1
          Top = 1
          Width = 378
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
          ExplicitWidth = 407
        end
        object Label5: TLabel
          Left = 20
          Top = 36
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
          Left = 180
          Top = 36
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
          Left = 20
          Top = 148
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
          Left = 20
          Top = 204
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
          Left = 108
          Top = 204
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
          Left = 20
          Top = 260
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
          Left = 280
          Top = 260
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
          Left = 20
          Top = 316
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
        object Label15: TLabel
          Left = 20
          Top = 92
          Width = 39
          Height = 17
          Caption = 'NOME'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 20
          Top = 57
          Width = 150
          Height = 25
          DataField = 'CPF_CNPJ'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 180
          Top = 57
          Width = 180
          Height = 25
          DataField = 'TELEFONE1'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 20
          Top = 169
          Width = 340
          Height = 25
          DataField = 'EMAIL'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 20
          Top = 337
          Width = 340
          Height = 25
          DataField = 'COMPLEMENTO'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit5: TDBEdit
          Left = 20
          Top = 225
          Width = 80
          Height = 25
          DataField = 'CEP'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 108
          Top = 225
          Width = 252
          Height = 25
          DataField = 'ENDERECO'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 20
          Top = 281
          Width = 251
          Height = 25
          DataField = 'BAIRRO'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 280
          Top = 281
          Width = 80
          Height = 25
          DataField = 'NUMERO'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 20
          Top = 113
          Width = 340
          Height = 25
          DataField = 'CLIENTE'
          DataSource = dsItens
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
    end
  end
  inherited actlst1: TActionList
    Left = 448
    Top = 322
    object actConfirma: TAction
      Caption = 'CONFIRMAR'
      OnExecute = actConfirmaExecute
    end
    object actOk: TAction
      Caption = 'OK'
      OnExecute = actOkExecute
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 571
    Top = 323
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    CommandText = 
      'select ID, TIPO, ORDEM, ID_PRODUTO, QTDE, QTDE_BAIXA, QTDE_DISPO' +
      'NIVEL, VL_TOTAL, SALDO, DESCRI_PROD, IDCLIENTE, CLIENTE, CEP, CP' +
      'F_CNPJ, TELEFONE1, EMAIL,'#13#10'       ENDERECO, BAIRRO, NUMERO, COMP' +
      'LEMENTO, sum(VL_TOTAL) over() TOT_GERAL, sum(TOT_DEV) over() TOT' +
      'AL_DEV,'#13#10'       sum(VL_TOTAL - TOT_DEV) over() TOT_ATUAL'#13#10'from (' +
      'select A.ID, A.TIPO, A.ORDEM, A.ID_PRODUTO, A.QTDE, A.QTDE_BAIXA' +
      ', A.QTDE_DISPONIVEL,A.VL_TOTAL,'#13#10'             cast(cast((A.QTDE ' +
      '- A.QTDE_DISPONIVEL) as integer) || '#39'/'#39' || cast(A.QTDE as intege' +
      'r) as varchar(10)) SALDO, cast('#13#10'             case'#13#10'            ' +
      '   when A.QTDE_DISPONIVEL = 0 then A.VL_TOTAL'#13#10'               wh' +
      'en (A.QTDE > A.QTDE_DISPONIVEL) then ((A.QTDE - A.QTDE_DISPONIVE' +
      'L) * (A.VL_TOTAL / A.QTDE))'#13#10'               else 0'#13#10'            ' +
      ' end as numeric(10,2)) TOT_DEV, P.NOME DESCRI_PROD, C.CODIGO IDC' +
      'LIENTE, C.NOME_RAZAO CLIENTE, C.CEP, C.CPF_CNPJ, C.TELEFONE1,'#13#10' ' +
      '            C.EMAIL, C.ENDERECO, C.BAIRRO, C.NUMERO, C.COMPLEMEN' +
      'TO'#13#10'      from PDV_ITENS A'#13#10'      left join PRODUTO P on (P.CODI' +
      'GO = A.ID_PRODUTO)'#13#10'      left join PDV_MASTER PM on (PM.ID = A.' +
      'ID and'#13#10'            PM.TIPO = A.TIPO)'#13#10'      left join CLIENTE C' +
      ' on (C.CODIGO = PM.ID_CLIENTE)'#13#10'      where 1=2)'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 511
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
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensTOTAL_DEV: TFMTBCDField
      FieldName = 'TOTAL_DEV'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensTOT_ATUAL: TFMTBCDField
      FieldName = 'TOT_ATUAL'
      ReadOnly = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsItensVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsItensIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      ReadOnly = True
    end
    object cdsItensQTDE_DISPONIVEL: TCurrencyField
      FieldName = 'QTDE_DISPONIVEL'
    end
  end
  object cdsItemSet: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ORDEM'
        DataType = ftInteger
      end
      item
        Name = 'ID_PROD'
        DataType = ftInteger
      end
      item
        Name = 'QTDE'
        DataType = ftFloat
      end
      item
        Name = 'QTDE_BAIXA'
        DataType = ftFloat
      end
      item
        Name = 'NOVA_QTDE_DISP'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 510
    Top = 265
    object cdsItemSetTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsItemSetID: TIntegerField
      FieldName = 'ID'
    end
    object cdsItemSetORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsItemSetID_PROD: TIntegerField
      FieldName = 'ID_PROD'
    end
    object cdsItemSetQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object cdsItemSetQTDE_BAIXA: TFloatField
      FieldName = 'QTDE_BAIXA'
    end
    object cdsItemSetNOVA_QTDE_DISP: TFloatField
      FieldName = 'NOVA_QTDE_DISP'
    end
  end
end

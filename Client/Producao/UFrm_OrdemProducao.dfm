inherited Frm_OrdemProducao: TFrm_OrdemProducao
  BorderWidth = 2
  Caption = 'Cadastro Ordem Produ'#231#227'o'
  ClientHeight = 645
  ClientWidth = 740
  OnKeyDown = FormKeyDown
  ExplicitWidth = 744
  ExplicitHeight = 649
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 740
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Caption = '         CADASTRO DE ORDEM DE PRODU'#199#195'O'
    ExplicitLeft = -5
    ExplicitTop = -2
    ExplicitWidth = 740
  end
  inherited pnlFundo0: TPanel
    Width = 740
    Height = 615
    ExplicitWidth = 740
    ExplicitHeight = 615
    inherited Panel1: TPanel
      Width = 738
      ExplicitWidth = 738
      inherited pnlSair: TPanel
        Left = 639
        ExplicitLeft = 639
      end
      inherited pnlGravar: TPanel
        Left = 541
        ExplicitLeft = 541
      end
      inherited pnlCancelar: TPanel
        Left = 443
        ExplicitLeft = 443
      end
      inherited pnlLocalizar: TPanel
        Left = 345
        ExplicitLeft = 345
      end
      inherited pnlExcluir: TPanel
        Left = 247
        ExplicitLeft = 247
      end
      inherited pnlEditar: TPanel
        Left = 149
        ExplicitLeft = 149
      end
      inherited pnlAdicionar: TPanel
        Left = 51
        ExplicitLeft = 51
      end
    end
    inherited pnlFundo1: TPanel
      Width = 738
      Height = 540
      ExplicitWidth = 738
      ExplicitHeight = 540
      object Panel2: TPanel [0]
        Left = 1
        Top = 1
        Width = 736
        Height = 136
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 14
          Top = 9
          Width = 32
          Height = 13
          Caption = 'Lote*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 196
          Top = 9
          Width = 53
          Height = 13
          Caption = 'Emissao*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 398
          Top = 39
          Width = 48
          Height = 13
          Caption = 'Validade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 573
          Top = 9
          Width = 42
          Height = 17
          Caption = 'Status:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label1: TLabel
          Left = 397
          Top = 9
          Width = 51
          Height = 13
          Caption = 'Entrega*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 107
          Top = 39
          Width = 140
          Height = 13
          Caption = 'Estimativa de finaliza'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object lblStatus: TLabel
          Left = 618
          Top = 9
          Width = 63
          Height = 17
          Caption = 'Finalizado'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label7: TLabel
          Left = 19
          Top = 58
          Width = 67
          Height = 13
          Caption = 'Observa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object mmo1: TMemo
          Left = 19
          Top = 75
          Width = 542
          Height = 48
          Lines.Strings = (
            'Memo1')
          TabOrder = 6
        end
        object dtpEmissao: TDateTimePicker
          Left = 255
          Top = 5
          Width = 99
          Height = 21
          Date = 43700.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.526207268521830000
          TabOrder = 0
        end
        object dtpEntrega: TDateTimePicker
          Left = 450
          Top = 6
          Width = 99
          Height = 21
          Date = 43700.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.526207268521830000
          TabOrder = 2
        end
        object dtpValidade: TDateTimePicker
          Left = 450
          Top = 36
          Width = 99
          Height = 21
          Date = 43700.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.526207268521830000
          TabOrder = 5
        end
        object dtpEstimativa: TDateTimePicker
          Left = 250
          Top = 36
          Width = 141
          Height = 21
          Date = 43700.000000000000000000
          Format = 'dd/MM/yyyy HH:mm:ss'
          Time = 0.526207268521830000
          TabOrder = 4
          Visible = False
        end
        object edtLote: TEdit
          Left = 48
          Top = 6
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          OnChange = edtLoteChange
        end
        object chkGeraMatPrima: TCheckBox
          Left = 574
          Top = 32
          Width = 111
          Height = 85
          Caption = 'GERAR RELA'#199'AO DE SAIDA DE MAT'#201'RIA-PRIMA'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 3
          WordWrap = True
        end
      end
      object Panel3: TPanel [1]
        Left = 1
        Top = 137
        Width = 736
        Height = 382
        Align = alClient
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 1
          Top = 77
          Width = 592
          Height = 304
          Align = alLeft
          DataSource = dsItens
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'CODPRO'
              Title.Caption = 'CODIGO'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'PRODUTO'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE'
              Title.Alignment = taRightJustify
              Title.Caption = 'QUANTIDADE'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'UM'
              Title.Caption = 'UNIDADE'
              Visible = True
            end>
        end
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 734
          Height = 76
          Align = alTop
          BorderStyle = bsSingle
          TabOrder = 0
          object PngAddProduto: TPngSpeedButton
            Left = 141
            Top = 7
            Width = 86
            Height = 28
            Caption = 'Adicionar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = PngAddProdutoClick
            PngImage.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000016A4944415478DA95D23F4BC3401806F0E792D6FE113A48774741B008
              0E7E03A5285511058BA88393E0A8B8BAB90B2A38B8140445C14567FD08E250A1
              0E8A5AAA31B1964B9334C9F936810A9A8277F07221DCFDEECD73618818B99D8C
              F8FDEE76EB8B45AD65DD80CD956D58BE8926D56169571E585FDA80F1E102994F
              948E8FE481D5C53568AF1E94AC8EF3935379A0B8B04C800B356BE0EAECB23B10
              15587B4CCFCF42AB12D067E0FAE2266A4980B2898361313755A4B078189AC783
              6A701BF5BA033F59C7937307DDD48016356153590AC4632204F2FB43A2509881
              AEB5828D61F21CDCB260098E075E4643D4828F55DA2DD3AC56E9E92D1E02637B
              83627C321F6C0A008F00D7A40E2C94DF2B30590D31E1FF9CDCA4CDBC5D6A0844
              65908CA7911EF5F1A237908EB5202A09C027809C60F668162C04BADD021BA18E
              9C1EA41C17E23E257F8D2C67C256624818A213981C30D084D3AB22FECC3A81C9
              01FDF69FC0A480A89FE6DF80CCF8067BECD811176622860000000049454E44AE
              426082}
          end
          object PngSpeedButton1: TPngSpeedButton
            Left = 250
            Top = 7
            Width = 86
            Height = 28
            Caption = 'Excluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = PngSpeedButton1Click
            PngImage.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000000473424954080808087C086488000000097048597300000B1300000B
              1301009A9C18000000AD4944415478DA6364A01030E29210ABFDEDFF9F81C110
              C4FECFF0FF172B13EBACE78D8C6F883640A4EEF7E4374DACB920B650FD3F3EA6
              7F7F72DE34B3B5E13540B4F67703928C03D0EA03D8F8FF98180EBC6D643D80D5
              05A275BFFFE3F5F47F86C6D7CDAC0D0873711900540894ADC7468F1A30120CF8
              F98781818919C83C08C4F6E834305FD4BC69626BC5698048EDEF2EC6FFFF0A19
              989858D0E5FE3130DC67FCF7D7FD4D0BC76D9C06900A00F8AE981170C6214400
              00000049454E44AE426082}
          end
          object Label8: TLabel
            Left = 411
            Top = 46
            Width = 56
            Height = 13
            Caption = 'Quantidade'
          end
          object edpProduto: TEdPesquisa
            Left = 20
            Top = 43
            Width = 373
            Height = 21
            PermitirBranco = Sim
            ConsultaTabela.Tabela = 'PRODUTO'
            ConsultaTabela.Pesquisa = 'CODIGO'
            ConsultaTabela.Mostrar = 'NOME'
            ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
            OnPesquisa = edpProdutoPesquisa
            Titulo.Left = 0
            Titulo.Top = 3
            Titulo.Width = 38
            Titulo.Height = 13
            Titulo.Caption = 'Produto'
            Mostrar.Left = 122
            Mostrar.Top = 0
            Mostrar.Width = 250
            Mostrar.Height = 21
            Mostrar.TabStop = False
            Mostrar.Enabled = False
            Mostrar.Font.Charset = DEFAULT_CHARSET
            Mostrar.Font.Color = clBlue
            Mostrar.Font.Height = -11
            Mostrar.Font.Name = 'Tahoma'
            Mostrar.Font.Style = []
            Mostrar.ParentFont = False
            Mostrar.ReadOnly = True
            Mostrar.TabOrder = 1
            Campo.Left = 40
            Campo.Top = 0
            Campo.Width = 57
            Campo.Height = 21
            Campo.CharCase = ecUpperCase
            Campo.Enabled = False
            Campo.TabOrder = 0
            TabOrder = 0
            TabStop = True
          end
          object edtQtde: TEdit
            Left = 469
            Top = 43
            Width = 121
            Height = 21
            Enabled = False
            TabOrder = 1
            Text = 'edtQtde'
            OnKeyPress = edtQtdeKeyPress
          end
        end
        object pnlEsquerda: TPanel
          Left = 638
          Top = 77
          Width = 97
          Height = 304
          Align = alRight
          BorderStyle = bsSingle
          TabOrder = 2
          object pnlFechaLote: TPanel
            Left = 19
            Top = 47
            Width = 60
            Height = 80
            BevelOuter = bvNone
            Caption = 'pnlAddMovimentacao'
            Color = 7024384
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            OnClick = actFinalizarLoteExecute
            object imgFechaLote: TImage
              Left = 6
              Top = 0
              Width = 48
              Height = 48
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
                003008060000005702F98700000006624B474400FF00FF00FFA0BDA793000001
                F64944415478DAED993D2C435114C7DF93AEBEBA7736548281C54E6D121F5DD0
                4E24564B0709ABA1B1194C12457C24266131130B430D56AC226A92E0F9BDB8E2
                A9D67BF7BEEA7D2FB927F9E724AFE79EFBFFDD773AB4D7B6621EB66E03910370
                1C27419A46F3282D1E97D11A2AD9B6FD1A5900CC274927A8BF4EC905CA00F118
                3900CCB790CED0804FE9391A04E23D6A0039D246C0F2190036FF1D005329D22A
                1A42AD92BD8FD09CD8631D8D48AE7F46A7A800EC8D3480307F85928A879362E3
                7B4FAF5BC53EEEF7A5875E77B20007A431C54D1B09E0C63EBD2665012A96FCD8
                78E318CD5ADF239409D1AB0240BB2C80F3A3900861403A82EE6F000C80013000
                CA06D3B4BC8E2500AD2748DBA848DB42AC003CE613E2D14A2D884802D0324B2A
                79CCBBE1FEC0E9A37D591B80DF3CFB989F62EDAEEAFEA101285B262DA23C25A5
                3A35D563E3C61BCAB1662BCCFEA10084F9258FA15F102AE69B02C0C7DDA44BEB
                8F91901D1B1D6F609CB453E374F3E845E5E49B0AE073CA96A570F24D0710B5B5
                DE8437029FBC16001F0869F35A00EA402899D706500561AB9AD70A20D666C59A
                405FD8C80134220C800130000620FE0061FFDC6D643CE1BF4316E09034AADBB9
                883D00B2B2005DD6E79D57A766F30FA8F7EBAE21308080702F268A6818B535D9
                B83BC2EE8DE7423DF3BE00710803A03B0C80EE883DC0071501A0408000782100
                00000049454E44AE426082}
              Stretch = True
              OnClick = actFinalizarLoteExecute
            end
            object lblFechaLote: TLabel
              Left = 0
              Top = 48
              Width = 60
              Height = 32
              Align = alBottom
              Alignment = taCenter
              AutoSize = False
              Caption = 'Finalizar lote'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
              WordWrap = True
              OnClick = actFinalizarLoteExecute
              ExplicitTop = 49
              ExplicitWidth = 48
            end
          end
          object pnlRelatorio: TPanel
            Left = 19
            Top = 172
            Width = 60
            Height = 80
            BevelOuter = bvNone
            Caption = 'pnlAddMovimentacao'
            Color = 7024384
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
            OnClick = actListarExecute
            object imgRelatorio: TImage
              Left = 6
              Top = 0
              Width = 48
              Height = 48
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
                003008060000005702F98700000006624B474400FF00FF00FFA0BDA793000003
                1A4944415478DAED9A5D884D5114C7F719A6E43B839944A449181229CD03E523
                E36324A289A1291E4849F2824CC983191EBC493CDD1821294214514692AF179F
                0FF232943184F1D58DE9FA2D7B9FBA71CFB873CFDCBBCEAD73EADF3A77EF7DD6
                5ABFB3F73967EF73AE678A7CF3822A52A9542966609EE27EF13CEF57BE011661
                AEE409A0152D01E26B210024C8BB5E4A5C7A758CDBBF819601F13DDF002D0459
                DF1BD9E37312E6595A51E89ED0021095A08926644F6801C8995FE592AF32217A
                420D009F73F83D322C842A802B0B05A10E101622120061202203902B44A40072
                81D002788D4E76D3B40235B8FD6E9F13DA4FE26CB7C5E470350A008331353D38
                642B9A1D19801C804F60D6C50031400C1003C40031400CA0049030765257B400
                92DF58F4991C3E1605807BA5296B8261A803B5133F15D43E1200C4927744AB91
                C4998FFAA555CB99BF8C8E91476BE400883305731C4D774549F4CDD81E6847C3
                511F5777016D249F0F910020C602CC3924EB8447683FBA889AD176637B447EAF
                457BD028F40AD590D34B5500FCCB9AF78E4B5E126EF45FB95377C807A0ACC595
                493B5986D6A217A89ABA4F2A006ECC3F3076D834E37FD75FF5FF00B8F2BEC65E
                0F0B8DBD26366901D4614EA3876816FEBBB201707515AE0706A02A2D804B98A5
                6805BECF67A80F0470F54D989D686FC101DC7DBE13C9592FC37732078019C6F6
                DE5D0D80D198364900BF3303DAF800D2534F3334916B61077AAB0120F7FDC7E8
                267EE705B4D98769CCC25D5203A05CCE1C7A82DFA9016D06197BA7290970D31F
                25509B068024F5DED84FB8E54193B4FFF8986BEC2BC7EB5A77217F9EBF19DF47
                73383E61EC347B9B1680BC2EBC85DEA0C9F8EFECC1B1D330F7D10F54A9399590
                FBFF7263E73A2BB3F972CF31231CB87CDDDCCD314D85FED02DDB6D0237E0BF8C
                FD7B683CBA86EA29EFE8261FB9E0CF2079C32DABB35A79826BFDD5600BC18F10
                A3D2D81E90332AC3E8303A6BEC1DEA27F5B22EA83676562AD74CA94BBECE1F76
                5A7FF6E8F21320CE50CC01B4C1D807D49F62073424ED18F92DB3D683E973272F
                AB7005D80099805983A4E7C719BBA091A1FBDCD827F2A94C43EC37AA25739F6C
                4396B40000000049454E44AE426082}
              Stretch = True
              OnClick = actListarExecute
            end
            object lblRelatorio: TLabel
              Left = 0
              Top = 46
              Width = 60
              Height = 34
              Align = alBottom
              Alignment = taCenter
              AutoSize = False
              Caption = 'Rela'#231#227'o de Materiais'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
              WordWrap = True
              OnClick = actListarExecute
              ExplicitTop = 55
            end
          end
        end
      end
      inherited Panel4: TPanel
        Top = 519
        Width = 736
        TabOrder = 2
        ExplicitTop = 519
        ExplicitWidth = 736
        object lblInfo: TLabel
          Left = 240
          Top = 4
          Width = 325
          Height = 13
          Caption = 'DUPLO CLIQUE NO ITEM PARA EFETUAR ENTRADA NO ESTOQUE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
      end
    end
  end
  inherited ds: TDataSource
    Left = 14
    Top = 62
  end
  inherited cds: TClientDataSet
    CommandText = 'SELECT a.*'#13#10'FROM LOTE a '#13#10'where 1 = 2'
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LOTE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMISSAO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'VALIDADE'
        DataType = ftDate
      end
      item
        Name = 'ENTREGA'
        DataType = ftDate
      end
      item
        Name = 'ESTIMATIVA_PRONTO'
        DataType = ftTimeStamp
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'GERA_MATPRIMA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LOTE_ACERTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    StoreDefs = True
    AfterInsert = cdsAfterInsert
    Left = 16
    Top = 16
    object cdsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLOTE: TStringField
      FieldName = 'LOTE'
      Required = True
    end
    object cdsEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Required = True
    end
    object cdsVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object cdsENTREGA: TDateField
      FieldName = 'ENTREGA'
    end
    object cdsESTIMATIVA_PRONTO: TSQLTimeStampField
      FieldName = 'ESTIMATIVA_PRONTO'
    end
    object cdsOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object cdsGERA_MATPRIMA: TStringField
      FieldName = 'GERA_MATPRIMA'
      FixedChar = True
      Size = 1
    end
    object cdsUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object cdsLOTE_ACERTO: TStringField
      FieldName = 'LOTE_ACERTO'
      FixedChar = True
      Size = 1
    end
  end
  inherited actMaster: TActionList
    Left = 80
    Top = 15
    object actFinalizarLote: TAction
      Caption = 'actFinalizarLote'
      OnExecute = actFinalizarLoteExecute
    end
    object actListar: TAction
      Caption = 'actListar'
      OnExecute = actListarExecute
    end
  end
  object cdsMatPrima: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT a.ID, a.ID_LOTE, a.ID_MATPRIMA, a.QTDE,a.QTDE_FECHADA'#13#10'FR' +
      'OM LOTE_MATPRIMA a'#13#10'where 1 = 2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    Left = 144
    Top = 16
    object cdsMatPrimaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMatPrimaID_LOTE: TStringField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object cdsMatPrimaID_MATPRIMA: TIntegerField
      FieldName = 'ID_MATPRIMA'
      Required = True
    end
    object cdsMatPrimaQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Required = True
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsMatPrimaQTDE_FECHADA: TFMTBCDField
      FieldName = 'QTDE_FECHADA'
      Required = True
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
  end
  object cdsItens: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    CommandText = 
      'SELECT a.*,b.NOME,'#13#10'cast('#39#39' as varchar(10)) UM '#13#10'FROM LOTE_ITENS' +
      ' a '#13#10'left outer join PRODUTO b on (b.CODIGO = a.CODPRO)'#13#10'where 1' +
      ' = 2'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = cdsItensAfterInsert
    BeforeDelete = cdsItensBeforeDelete
    Left = 48
    Top = 16
    object cdsItensID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsItensID_LOTE: TStringField
      FieldName = 'ID_LOTE'
      Required = True
    end
    object cdsItensCODPRO: TIntegerField
      FieldName = 'CODPRO'
      Required = True
    end
    object cdsItensNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsItensCOD_UM: TIntegerField
      FieldName = 'COD_UM'
    end
    object cdsItensUM: TStringField
      FieldName = 'UM'
      Size = 10
    end
    object cdsItensQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Required = True
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsItensQTDE_FECHADA: TFMTBCDField
      FieldName = 'QTDE_FECHADA'
      Required = True
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object cdsItensENTSAI: TStringField
      FieldName = 'ENTSAI'
      Size = 15
    end
    object cdsItensDESCRI_ITEM: TStringField
      FieldName = 'DESCRI_ITEM'
      Size = 100
    end
  end
  object dsItens: TDataSource
    DataSet = cdsItens
    Left = 48
    Top = 62
  end
end

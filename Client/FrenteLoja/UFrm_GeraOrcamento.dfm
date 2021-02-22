inherited Frm_GeraOrcamento: TFrm_GeraOrcamento
  Caption = 'Frm_GeraOrcamento'
  ClientHeight = 424
  ClientWidth = 548
  ExplicitWidth = 548
  ExplicitHeight = 424
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTitulo: TPanel
    Width = 548
    ExplicitWidth = 548
    inherited lblTitulo: TLabel
      Width = 523
      Caption = '         GERAR OR'#199'AMENTO'
      ExplicitWidth = 523
    end
    inherited pnlBotaoSair: TPanel
      Left = 523
      Visible = False
      ExplicitLeft = 523
      ExplicitTop = 0
      ExplicitHeight = 30
    end
  end
  object pnlFundo0: TPanel [1]
    Left = 0
    Top = 30
    Width = 548
    Height = 394
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object pnlTopo: TPanel
      Left = 0
      Top = 0
      Width = 548
      Height = 204
      Align = alClient
      BorderStyle = bsSingle
      Caption = 'pnlTopo'
      ShowCaption = False
      TabOrder = 0
      object Label4: TLabel
        Left = 13
        Top = 176
        Width = 222
        Height = 17
        Caption = 'Solicitar libera'#231#227'o do Administrador?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pnlTotPagar: TPanel
        Left = 5
        Top = 5
        Width = 130
        Height = 49
        Color = 14803681
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 9
          Top = 5
          Width = 118
          Height = 17
          Alignment = taRightJustify
          Caption = 'TOTAL A PAGAR(R$)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTotal: TLabel
          Left = 24
          Top = 24
          Width = 103
          Height = 21
          Margins.Right = 9
          Alignment = taRightJustify
          Caption = '1.235.756,20'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Black'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object pnlPagamento: TPanel
        Left = 5
        Top = 60
        Width = 532
        Height = 105
        TabOrder = 1
        object lbl2: TLabel
          Left = 1
          Top = 1
          Width = 530
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '    PAGAMENTO'
          Color = 10114859
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitLeft = 0
          ExplicitTop = 8
          ExplicitWidth = 680
        end
        object Label2: TLabel
          Left = 8
          Top = 32
          Width = 127
          Height = 17
          Caption = 'Forma de pagamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 184
          Top = 32
          Width = 79
          Height = 17
          Caption = 'Parcelamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object cbbFPagto: TComboBox
          Left = 8
          Top = 52
          Width = 145
          Height = 25
          Style = csDropDownList
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = 'A VISTA'
          Items.Strings = (
            'A VISTA'
            'CREDI'#193'RIO')
        end
        object edpesParc: TEdPesquisa
          Left = 180
          Top = 56
          Width = 338
          Height = 21
          PermitirBranco = Sim
          ConsultaTabela.Tabela = 'CONDPAGTO'
          ConsultaTabela.Pesquisa = 'codigo'
          ConsultaTabela.Mostrar = 'descricao'
          OnPesquisa = edpesParcPesquisa
          Titulo.Left = 0
          Titulo.Top = 3
          Titulo.Width = 3
          Titulo.Height = 13
          Titulo.Caption = ' '
          Mostrar.Left = 87
          Mostrar.Top = 0
          Mostrar.Width = 250
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
          Campo.Left = 5
          Campo.Top = 0
          Campo.Width = 57
          Campo.Height = 21
          Campo.CharCase = ecUpperCase
          Campo.TabOrder = 0
          TabOrder = 1
          TabStop = True
        end
      end
      object chkSolic: TCheckBox
        Left = 241
        Top = 176
        Width = 20
        Height = 17
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = chkSolicClick
      end
    end
    object pnlDetalhe: TPanel
      Left = 0
      Top = 204
      Width = 548
      Height = 150
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'pnlDetalhe'
      ShowCaption = False
      TabOrder = 1
      Visible = False
      object Label5: TLabel
        Left = 5
        Top = 5
        Width = 103
        Height = 17
        Caption = 'Tipo de libera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 166
        Top = 5
        Width = 188
        Height = 17
        Caption = 'Observa'#231#227'o para Administrador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object cbbTipoLib: TComboBox
        Left = 7
        Top = 26
        Width = 145
        Height = 25
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'INADIMPL'#202'NCIA'
        Items.Strings = (
          'INADIMPL'#202'NCIA'
          'DESCONTO'
          'OUTROS')
      end
      object mmo1: TMemo
        Left = 166
        Top = 26
        Width = 373
        Height = 119
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object pnlRodape: TPanel
      Left = 0
      Top = 354
      Width = 548
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = 'pnlRodape'
      ShowCaption = False
      TabOrder = 2
      object pnlBtnSalvar: TPanel
        Left = 352
        Top = 3
        Width = 80
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 0
        object btnBaixar: TSpeedButton
          Left = 0
          Top = 0
          Width = 80
          Height = 30
          Align = alClient
          Caption = '     Salvar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExplicitWidth = 81
        end
        object imgSalvar: TImage
          Left = 0
          Top = 2
          Width = 25
          Height = 25
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
            00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000002
            1A4944415478DADD964D48554114C7E796949119097E2222222D5CE9C668E547
            0A698B0295CC4DB6681184120F315DA44251066D42E905416F6560D05374A160
            F10A44282D6D518B681108D64AC454CCC5EB7798B9F0783C7877E6418B067E9C
            3373CF9CFF9D8F3B733DF50F8AF77F8AC4E3F14398930E79F63DCFDB0D2A5284
            D97010D9846684566C44E6200625D0032FC14FD06418812AE88003D8927684D6
            828A0C10FC807A35FE27B8463D6262863143700A2EC173B80A8FE070AA11598B
            24C5771B911AA9C282795441FCB6AD88082CA598EEB3204235C4AF123F887F0F
            8AA9FFB41549577C91DBF8F76D458EE09706105927FE8F934880E4C96BE43492
            107E96854E3D9CB715D9C3CFB61D11E503DC24C7FBA0222F2094944484A37006
            26E1097C855C680199B63CB8409ED7414422F83792E21E62FACCDB8EA7589B42
            CC1BA5374DA5B5086D7926668AF6CB29048E297DC81628BDFD475D443ACD1436
            D01EA3DE8AFF167FC7084C4399D2A7C03C14BA88F463647B4BEC09B3168BD00E
            134A1F9E3DF41923368CDF9DEE14BEABF4E91B4D08AB338B7B9A44DFE8731DFF
            29ECC0715FC0E413D1E64CEE935E923D36FD44286CDA7C81A3981FF0D1E566F4
            CC4865E7C899F5CBF4ADC2FF92906B58E92BA1CDE98E27412DE61D7C872B24FF
            9CF04C4630007760162E3AFF4890EC1CE615E428BDF0B201642334827C2733D0
            C50BFCCEE86F05A17CCC2D99122857FA0A5E86671045402E32F517550F357138
            BAB60D0000000049454E44AE426082}
        end
      end
      object pnlBtnCancel: TPanel
        Left = 440
        Top = 3
        Width = 80
        Height = 30
        BevelOuter = bvNone
        Color = 10897920
        ParentBackground = False
        TabOrder = 1
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 80
          Height = 30
          Align = alClient
          Caption = '     Cancelar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExplicitWidth = 81
        end
        object imgCancelar: TImage
          Left = 0
          Top = 2
          Width = 25
          Height = 25
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
            003008060000005702F98700000006624B474400FF00FF00FFA0BDA793000005
            2D4944415478DAD59A6B88555514C7F72D1F1F4A9B262B139AA10F294951969A
            85E4D454F421080B9CCC4749E64C0F5F885141D487C2A2889EA8A3C9A4E523C9
            08FA10F94AC3FCA0D993B088B0495067CC4716F4D2E9B7E6EC1BE7AEBBF79973
            EE39F7DCDAF06771F7597BADFD3F67EFB5D759E716CCFFBC15AA69BCA7A7A7AE
            D749A170EC3F4D80890E433483EBC0A56004385BA91D01DF81AFC076B0196207
            6A4680490F40DC09EE0113C069094D9C021F810EB016327FE54280899F8E6805
            8F800B2BBD01AA7582456019444E568D00931F83680757643471DDF680FB20B1
            2753024C5CF4E68167C080184364BD77816EF007A8070D60488CB17F8285E015
            88F4A426C0E4FB99E0AECF8850FB1D6C001F82AD38EEF4D83ADF041BFD56703B
            3833C2E672D0D6D7928A246027FF3698E851F919BC0896E2A83BC6DD0DDB1E64
            82BD2477FB3C8FDA3BA0258A8497805D36AF1BFF9D5F03E661BC2BC9C41D7EE4
            AC5864C9B8E6234F62966F394511988F78C173F947301AA387D34C5EF9BB0DB1
            120C765C9E8BAF976313C0D868C40E13BD61BF0037664C6214E20353BEA42410
            5CEB8A4E05871189F3BBC0A8183EBF04CD1993B8CC0427759DBAF429B85AEF07
            17810710AF396CCBB26974F457E349C8727AD731BF56FCB47B09D8F4E07B537E
            C2CA869D033681CB7322B118D1E6B8891787D30E4D603AE20D354842E5488936
            5C1F9217091B9DBE35E5FB611A3EDEF411D88A6852031E67C053211DC9323782
            AB1C7E33DD13F87A18F1ACEADE84FD9BCA08D894F827539A55CA09DBA00FA9BC
            9E843DEC24E53E23D42D59EC30EC1FD204A699200E87DB6A14A7788CE7456215
            62AAEA9E82EDD59AC032C44CA53803C58E08E35527818F16C45AD5DD8EDD564D
            E013C4354AB1D19798E54502FB434DB08CC26D0736C76B02126DEA434A47503A
            27A6936A9390B1E1B91CC6DEB9FF12404136EEDFA6342AED45E992044EAA4602
            DBBB4D69D4938DDC1F7BA78A0424813AAEC66D47614242475509B1D8DD82B85E
            750FC6D68928025B5068AEC059E624B0F931627C1401D712DA8DC298A404ACBD
            4C9713F6F69AA054536CA54BC82A79374AAD4960EBA829CD4EBB19DB9B62F415
            4687164FBC5A91C0C645881F54B7338CBA0EB24928AEAF94401624182FAFB42B
            54B7F32093E37A95525C89E2DD6908A425C158491926ABEEBBD05FA3095C80D8
            6F4A93B95F4D90389DA805095B8691778081A1EE93764E5D2504EC80CD881B94
            F185283F9F9680B59F28C4A2FF24E209A5B7119D9B8B3F340157462A4C476455
            228FFB24ECDDFFC694A637D2A672FD2D1F81FE2678A56C50839630E8FE2C08C4
            25015E052DEADA3E30DCFB4A698DCB7BE862DD0D2632F0BD9C48743A6EA23429
            FC2E0F77B808C826DE09C6AA4BB2919B92548E639088DA13BAC52BAB58C3575A
            12BAB025FBE1168C7C962189A827516C52D81A87DFCFF585A8D2A294515E725C
            FA054CAFC2729294B9D1A3F210FE5CB5AA3E8BBB52449AE9BA0C968247D34627
            1B6DE446B57854A4F2DDE61BDF57795DCA8CEBC01D1E15A9563C67822895E8B0
            B3139789C993AEF7A8491A33B9A2F2BA22B1C4B89F44B1FD668252E0FB601B0E
            0F7A6C4962D604A4AE231F380646D89427FC60AA0F1C21C7A237DB04773BCE27
            2679BF965078D4EACB1A9797F3BA186365C32EF0ADF98A0884884874927D1127
            EC55D2A42A3ECB156D32216049C892BA173C66FC512369DB079E062BE42D2BC9
            C0341FBA25ED9864820FDD920026FDD02D6B5B5ED63BC0FADC3E747BC8484491
            02805431E4AF06C34DF927558958F25783AFC13613FCD520D5F7B5CC0844103B
            ABD749A1703CADAD9A10C8A3FD0336BC474F86F49B260000000049454E44AE42
            6082}
          Stretch = True
        end
      end
    end
  end
  inherited actlst1: TActionList
    Left = 424
    Top = 320
    object actSalvar: TAction
      Caption = 'OK'
      OnExecute = actSalvarExecute
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
      OnExecute = actCancelarExecute
    end
  end
  object dsOrcamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcamento'
    Left = 34
    Top = 201
    object dsOrcamentoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object dsOrcamentoEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
      Required = True
    end
    object dsOrcamentoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object dsOrcamentoID_FORMAPAGTO: TIntegerField
      FieldName = 'ID_FORMAPAGTO'
      Origin = 'ID_FORMAPAGTO'
    end
    object dsOrcamentoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 50
    end
    object dsOrcamentoSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object dsOrcamentoDT_VALIDADE: TDateField
      FieldName = 'DT_VALIDADE'
      Origin = 'DT_VALIDADE'
    end
    object dsOrcamentoSOLICITACAO: TMemoField
      FieldName = 'SOLICITACAO'
      BlobType = ftMemo
    end
    object dsOrcamentoLIBERADO: TStringField
      FieldName = 'LIBERADO'
      FixedChar = True
      Size = 3
    end
    object dsOrcamentoTIPO_LIBERACAO: TStringField
      FieldName = 'TIPO_LIBERACAO'
      Size = 50
    end
    object dsOrcamentoUSU_LIBEROU: TStringField
      FieldName = 'USU_LIBEROU'
      Size = 100
    end
    object dsOrcamentofdqryOrPagar: TDataSetField
      FieldName = 'fdqryOrPagar'
    end
    object dsOrcamentofdqryOrItem: TDataSetField
      FieldName = 'fdqryOrItem'
    end
  end
  object dsOrItem: TClientDataSet
    Aggregates = <>
    DataSetField = dsOrcamentofdqryOrItem
    Params = <>
    Left = 33
    Top = 249
    object dsOrItemID_ORCAMENTO: TIntegerField
      FieldName = 'ID_ORCAMENTO'
      Origin = 'ID_ORCAMENTO'
      Required = True
    end
    object dsOrItemORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      Required = True
    end
    object dsOrItemID_PROD: TIntegerField
      FieldName = 'ID_PROD'
      Origin = 'ID_PROD'
      Required = True
    end
    object dsOrItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 18
      Size = 3
    end
    object dsOrItemVUNIT: TFMTBCDField
      FieldName = 'VUNIT'
      Origin = 'VUNIT'
      Precision = 18
      Size = 2
    end
    object dsOrItemVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Origin = 'VDESC'
      Precision = 18
      Size = 2
    end
    object dsOrItemUNID: TStringField
      FieldName = 'UNID'
      Origin = 'UNID'
      Size = 10
    end
    object dsOrItemQTDE_BAIXA: TFMTBCDField
      FieldName = 'QTDE_BAIXA'
      Precision = 18
      Size = 3
    end
  end
end

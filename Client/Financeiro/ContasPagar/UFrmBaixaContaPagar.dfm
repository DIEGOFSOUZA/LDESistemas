inherited FrmBaixaContaPagar: TFrmBaixaContaPagar
  BorderStyle = bsNone
  BorderWidth = 2
  Caption = 'FrmBaixaContaPagar'
  ClientHeight = 389
  ClientWidth = 446
  Visible = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  ExplicitWidth = 450
  ExplicitHeight = 393
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 446
    Height = 389
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 444
      Height = 136
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object lbl1: TLabel
        Left = 0
        Top = 0
        Width = 444
        Height = 22
        Align = alTop
        AutoSize = False
        Caption = '  Informa'#231#245'es do T'#237'tulo'
        Color = 10114859
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 459
      end
      object Label2: TLabel
        Left = 23
        Top = 40
        Width = 67
        Height = 17
        Caption = 'Fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 11
        Top = 69
        Width = 79
        Height = 17
        Caption = 'Data emiss'#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 345
        Top = 40
        Width = 22
        Height = 17
        Caption = 'N.F.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 180
        Top = 69
        Width = 97
        Height = 17
        Caption = 'Data vencimento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 36
        Top = 98
        Width = 54
        Height = 17
        Caption = 'Duplicata'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 166
        Top = 98
        Width = 49
        Height = 17
        Caption = 'Valor R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 94
        Top = 37
        Width = 247
        Height = 25
        DataField = 'FORNECEDOR'
        DataSource = s1
        Enabled = False
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
        Left = 96
        Top = 66
        Width = 80
        Height = 25
        DataField = 'EMISSAO'
        DataSource = s1
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 371
        Top = 37
        Width = 61
        Height = 25
        DataField = 'N_NF'
        DataSource = s1
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 281
        Top = 66
        Width = 80
        Height = 25
        DataField = 'DVENC'
        DataSource = s1
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 94
        Top = 95
        Width = 68
        Height = 25
        DataField = 'NDUP'
        DataSource = s1
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 219
        Top = 95
        Width = 121
        Height = 25
        DataField = 'VDUP'
        DataSource = s1
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
    end
    object pnlBotao: TPanel
      Left = 1
      Top = 348
      Width = 444
      Height = 40
      Align = alBottom
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object pnlCancelar: TPanel
        Left = 250
        Top = 3
        Width = 100
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 0
        object btnCancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
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
          OnClick = btnCancelarClick
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
          OnClick = btnCancelarClick
        end
      end
      object pnlBtnBaixar: TPanel
        Left = 106
        Top = 3
        Width = 100
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 1
        object btnBaixar: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 30
          Align = alClient
          Caption = '     Restaurar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          OnClick = btnBaixarClick
          ExplicitWidth = 81
        end
        object imgBaixar: TImage
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
          OnClick = btnBaixarClick
        end
      end
    end
    object pnlBaixa: TPanel
      Left = 1
      Top = 137
      Width = 444
      Height = 209
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      TabStop = True
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 444
        Height = 22
        Align = alTop
        AutoSize = False
        Caption = '  Dados da baixa'
        Color = 10114859
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitTop = -2
        ExplicitWidth = 386
      end
      object pnlDadosBaixa: TPanel
        Left = 0
        Top = 22
        Width = 444
        Height = 139
        Align = alTop
        TabOrder = 0
        object Label8: TLabel
          Left = 8
          Top = 11
          Width = 74
          Height = 17
          Caption = 'Data pagto.*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 161
          Top = 11
          Width = 89
          Height = 17
          Caption = 'Valor pago R$*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 316
          Top = 11
          Width = 45
          Height = 17
          Caption = 'Usu'#225'rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 8
          Top = 101
          Width = 74
          Height = 17
          Caption = 'Desconto R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 156
          Top = 101
          Width = 88
          Height = 17
          Caption = 'Juros/Multa R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtValBaixa: TEdit
          Left = 250
          Top = 8
          Width = 66
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = edtValBaixaExit
        end
        object edtusuario: TEdit
          Left = 361
          Top = 8
          Width = 66
          Height = 25
          TabStop = False
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object edtVlDesconto: TEdit
          Left = 86
          Top = 98
          Width = 66
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnExit = edtVlDescontoExit
          OnKeyPress = edtVlDescontoKeyPress
        end
        object edtVlJuros: TEdit
          Left = 248
          Top = 98
          Width = 66
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnExit = edtVlJurosExit
          OnKeyPress = edtVlDescontoKeyPress
        end
        object edpsqsHistorico: TEdPesquisa
          Left = 26
          Top = 37
          Width = 392
          Height = 25
          PermitirBranco = Sim
          ConsultaTabela.Tabela = 'historico'
          ConsultaTabela.Pesquisa = 'id'
          ConsultaTabela.Mostrar = 'descricao'
          ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
          OnPesquisa = edpsqsHistoricoPesquisa
          Titulo.Left = 0
          Titulo.Top = 3
          Titulo.Width = 57
          Titulo.Height = 17
          Titulo.Caption = 'Hist'#243'rico*'
          Titulo.Font.Charset = ANSI_CHARSET
          Titulo.Font.Color = clWindowText
          Titulo.Font.Height = -13
          Titulo.Font.Name = 'Segoe UI'
          Titulo.Font.Style = []
          Titulo.ParentFont = False
          Mostrar.Left = 141
          Mostrar.Top = 0
          Mostrar.Width = 250
          Mostrar.Height = 25
          Mostrar.TabStop = False
          Mostrar.Font.Charset = ANSI_CHARSET
          Mostrar.Font.Color = clBlack
          Mostrar.Font.Height = -13
          Mostrar.Font.Name = 'Segoe UI Semibold'
          Mostrar.Font.Style = [fsBold]
          Mostrar.ParentFont = False
          Mostrar.ReadOnly = True
          Mostrar.TabOrder = 1
          Campo.Left = 59
          Campo.Top = 0
          Campo.Width = 57
          Campo.Height = 25
          Campo.CharCase = ecUpperCase
          Campo.Font.Charset = ANSI_CHARSET
          Campo.Font.Color = clWindowText
          Campo.Font.Height = -13
          Campo.Font.Name = 'Segoe UI Semibold'
          Campo.Font.Style = [fsBold]
          Campo.ParentFont = False
          Campo.TabOrder = 0
          TabOrder = 3
          TabStop = True
        end
        object edpsqsConta: TEdPesquisa
          Left = 44
          Top = 67
          Width = 374
          Height = 25
          PermitirBranco = Sim
          ConsultaTabela.Tabela = 'CONTA_BANCARIA'
          ConsultaTabela.Pesquisa = 'id'
          ConsultaTabela.Mostrar = 'bco_nome'
          ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
          OnPesquisa = edpsqsContaPesquisa
          Titulo.Left = 0
          Titulo.Top = 3
          Titulo.Width = 39
          Titulo.Height = 17
          Titulo.Caption = 'Conta*'
          Titulo.Font.Charset = ANSI_CHARSET
          Titulo.Font.Color = clWindowText
          Titulo.Font.Height = -13
          Titulo.Font.Name = 'Segoe UI'
          Titulo.Font.Style = []
          Titulo.ParentFont = False
          Mostrar.Left = 123
          Mostrar.Top = 0
          Mostrar.Width = 250
          Mostrar.Height = 25
          Mostrar.TabStop = False
          Mostrar.Font.Charset = ANSI_CHARSET
          Mostrar.Font.Color = clBlue
          Mostrar.Font.Height = -13
          Mostrar.Font.Name = 'Segoe UI'
          Mostrar.Font.Style = []
          Mostrar.ParentFont = False
          Mostrar.ReadOnly = True
          Mostrar.TabOrder = 1
          Campo.Left = 41
          Campo.Top = 0
          Campo.Width = 57
          Campo.Height = 25
          Campo.CharCase = ecUpperCase
          Campo.Font.Charset = ANSI_CHARSET
          Campo.Font.Color = clWindowText
          Campo.Font.Height = -13
          Campo.Font.Name = 'Segoe UI'
          Campo.Font.Style = []
          Campo.ParentFont = False
          Campo.TabOrder = 0
          TabOrder = 4
          TabStop = True
        end
        object edtDtBaixa: TMaskEdit
          Left = 86
          Top = 8
          Width = 72
          Height = 25
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  /  /    '
          OnExit = edtDtBaixaExit
        end
      end
      object pnlCheque: TPanel
        Left = 0
        Top = 161
        Width = 444
        Height = 39
        Align = alTop
        TabOrder = 1
        object Label15: TLabel
          Left = 14
          Top = 13
          Width = 62
          Height = 17
          Caption = 'N'#186' cheque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 195
          Top = 13
          Width = 131
          Height = 17
          Caption = 'Data de compensa'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object edtNumCheque: TEdit
          Left = 82
          Top = 10
          Width = 109
          Height = 25
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
        end
        object edtCompensa: TMaskEdit
          Left = 333
          Top = 10
          Width = 72
          Height = 25
          EditMask = '!99/99/0000;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  /  /    '
        end
      end
    end
  end
  object s1: TDataSource
    DataSet = Frm_ContasPagar.dsPagar
    Left = 369
    Top = 105
  end
end

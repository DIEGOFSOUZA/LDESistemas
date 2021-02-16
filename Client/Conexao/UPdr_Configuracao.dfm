inherited Pdr_Configuracao: TPdr_Configuracao
  ActiveControl = edtEmpresaConf
  BorderStyle = bsNone
  Caption = 'Configura'#231#227'o do Sistema'
  ClientHeight = 419
  ClientWidth = 381
  Position = poScreenCenter
  ExplicitWidth = 381
  ExplicitHeight = 419
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 409
    Height = 419
    Align = alLeft
    Color = 13337441
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 1
      Top = 1
      Width = 407
      Height = 22
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Configurar conex'#227'o'
      Color = 7024384
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      ExplicitLeft = -23
    end
    object lblTitConexao: TLabel
      Left = 1
      Top = 23
      Width = 407
      Height = 22
      Align = alTop
      AutoSize = False
      Caption = '  Servi'#231'o'
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
      ExplicitLeft = 0
      ExplicitTop = 8
    end
    object lblTitFtp: TLabel
      Left = 1
      Top = 226
      Width = 407
      Height = 22
      Align = alBottom
      AutoSize = False
      Caption = '  Servi'#231'o atualiza'#231#227'o  -  FTP'
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
      ExplicitLeft = 2
      ExplicitTop = 9
      ExplicitWidth = 405
    end
    object pnlConfig: TPanel
      Left = 1
      Top = 45
      Width = 407
      Height = 181
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Label8: TLabel
        Left = 47
        Top = 15
        Width = 90
        Height = 17
        Caption = 'Empresa(.conf)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBanco: TLabel
        Left = 35
        Top = 128
        Width = 99
        Height = 34
        Caption = 'Alias / Caminho banco de dados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object lblPorta: TLabel
        Left = 50
        Top = 73
        Width = 87
        Height = 17
        Caption = 'Porta servidor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblProtocolo: TLabel
        Left = 78
        Top = 102
        Width = 59
        Height = 17
        Caption = 'Protocolo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblIpServidor: TLabel
        Left = 66
        Top = 44
        Width = 71
        Height = 17
        Caption = 'IP Servidor '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtEmpresaConf: TEdit
        Left = 141
        Top = 12
        Width = 200
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'Empresa.conf'
        OnKeyPress = edNomeArquivoKeyPress
      end
      object Button2: TButton
        Left = 345
        Top = 12
        Width = 26
        Height = 25
        Caption = '...'
        TabOrder = 1
        OnClick = Button2Click
      end
      object edtBanco: TEdit
        Left = 141
        Top = 140
        Width = 200
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'sistema'
        OnKeyPress = edNomeArquivoKeyPress
      end
      object edtPorta: TEdit
        Left = 142
        Top = 70
        Width = 42
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 3
        Text = '211'
        OnKeyPress = edNomeArquivoKeyPress
      end
      object cbbProtocolo: TComboBox
        Left = 141
        Top = 99
        Width = 71
        Height = 22
        Style = csOwnerDrawFixed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ItemIndex = 0
        ParentFont = False
        TabOrder = 4
        Text = 'TCP/IP'
        Items.Strings = (
          'TCP/IP'
          'HTTP')
      end
      object edtIpServidor: TEdit
        Left = 141
        Top = 41
        Width = 200
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Text = '127.0.0.1'
        OnKeyPress = edNomeArquivoKeyPress
      end
    end
    object pnlFTP: TPanel
      Left = 1
      Top = 248
      Width = 407
      Height = 126
      Align = alBottom
      TabOrder = 1
      object lblFtpIP: TLabel
        Left = 74
        Top = 10
        Width = 54
        Height = 17
        Caption = 'Nome/IP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblFtpPorta: TLabel
        Left = 95
        Top = 39
        Width = 33
        Height = 17
        Caption = 'Porta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 82
        Top = 68
        Width = 46
        Height = 17
        Caption = 'Usu'#225'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 91
        Top = 97
        Width = 37
        Height = 17
        Caption = 'Senha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtFtpIP: TEdit
        Left = 134
        Top = 7
        Width = 200
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '127.0.0.1'
        OnKeyPress = edNomeArquivoKeyPress
      end
      object edtFtpPorta: TEdit
        Left = 133
        Top = 36
        Width = 42
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 1
        Text = '21'
        OnKeyPress = edNomeArquivoKeyPress
      end
      object edtFtpUsuario: TEdit
        Left = 134
        Top = 65
        Width = 200
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edNomeArquivoKeyPress
      end
      object edtFtpSenha: TEdit
        Left = 133
        Top = 94
        Width = 201
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 3
        OnKeyPress = edNomeArquivoKeyPress
      end
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 374
      Width = 407
      Height = 44
      Align = alBottom
      TabOrder = 2
      object pnlSalvar: TPanel
        Left = 81
        Top = 7
        Width = 100
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 0
        object btnSalvar: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 30
          Align = alClient
          Caption = '     Salvar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          OnClick = btnSalvarClick
          ExplicitWidth = 81
        end
        object imgSalvar: TImage
          Left = 0
          Top = 2
          Width = 25
          Height = 25
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
            00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000001
            304944415478DA6364A003601C9E96FCFFFF9F0948F19361CE4F4646C66FC45A
            2201A49E9361C93B2076055A748E144B7600F101209602E23C205E0DC467A1CA
            5CA0B81188B580381488FF00F1275C16E1B2A412A8B803C83700B2CF03712290
            BF00AAA60148D503B120100700F17C903C10F700313310BB01D59EA6C81234F5
            09504B0C8118149FBBA1520A40F59F49B50464C1712CC16D09C4208B0C81EA2F
            00D55703D92D402C09E4BF20D512420066490590DD4EAA256C40B60C11963C01
            AAFF45962544188E1E4764F9A418C86621C2FC3F40F5BDE45AF21DC8E620C292
            1F40F59C9458B21C888BF158D00BC491945AB200C8CEC4130FD38154C2A82534
            B704560A838A0850E9BB1E4FC40702B13110D700B103107B106B09A500AF25E4
            D68CE8E023D0927F582DA115183E960000E094FF1A9677B21D0000000049454E
            44AE426082}
          OnClick = btnSalvarClick
        end
      end
      object pnlCancelar: TPanel
        Left = 225
        Top = 7
        Width = 100
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 1
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
          Font.Height = -16
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
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.conf'
    Filter = 'Arquivo de Configura'#231#227'o|*.conf|Todos os arquivo|*.*'
    Left = 264
    Top = 120
  end
end

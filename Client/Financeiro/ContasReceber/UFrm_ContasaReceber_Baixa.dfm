inherited Frm_ContasaReceber_Baixa: TFrm_ContasaReceber_Baixa
  BorderStyle = bsNone
  Caption = 'Frm_ContasaReceber_Baixa'
  ClientHeight = 271
  ClientWidth = 718
  Visible = False
  ExplicitWidth = 718
  ExplicitHeight = 271
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 271
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlDados: TPanel
      Left = 1
      Top = 1
      Width = 595
      Height = 269
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object pnlTitulo: TPanel
        Left = 0
        Top = 0
        Width = 595
        Height = 136
        Align = alTop
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object lbl1: TLabel
          Left = 0
          Top = 0
          Width = 595
          Height = 22
          Align = alTop
          AutoSize = False
          Caption = '  Dados do t'#237'tulo'
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
          ExplicitLeft = -3
          ExplicitWidth = 603
        end
        object Label8: TLabel
          Left = 9
          Top = 29
          Width = 76
          Height = 25
          AutoSize = False
          Caption = 'N'#186' da venda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label2: TLabel
          Left = 166
          Top = 29
          Width = 101
          Height = 25
          AutoSize = False
          Caption = 'Data de emiss'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label3: TLabel
          Left = 29
          Top = 67
          Width = 56
          Height = 25
          AutoSize = False
          Caption = 'Duplicata'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label4: TLabel
          Left = 166
          Top = 67
          Width = 120
          Height = 25
          AutoSize = False
          Caption = 'Data de vencimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label5: TLabel
          Left = 365
          Top = 67
          Width = 54
          Height = 25
          AutoSize = False
          Caption = 'Valor R$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label6: TLabel
          Left = 45
          Top = 98
          Width = 40
          Height = 25
          AutoSize = False
          Caption = 'Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object edtVenda: TEdit
          Left = 87
          Top = 29
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edtEmissao: TEdit
          Left = 267
          Top = 29
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object edtDuplicata: TEdit
          Left = 87
          Top = 67
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object edtVencto: TEdit
          Left = 286
          Top = 67
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edtValorTit: TEdit
          Left = 419
          Top = 68
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object edtCliente: TEdit
          Left = 85
          Top = 99
          Width = 411
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
      end
      object pnlBaixa: TPanel
        Left = 0
        Top = 136
        Width = 595
        Height = 128
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        TabStop = True
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 595
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
          ExplicitLeft = 2
          ExplicitTop = 9
          ExplicitWidth = 603
        end
        object Label7: TLabel
          Left = 6
          Top = 95
          Width = 85
          Height = 25
          AutoSize = False
          Caption = 'Data da baixa*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label9: TLabel
          Left = 182
          Top = 95
          Width = 106
          Height = 25
          AutoSize = False
          Caption = 'Valor da baixa R$*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object Label10: TLabel
          Left = 367
          Top = 95
          Width = 142
          Height = 25
          AutoSize = False
          Caption = 'Usu'#225'rio efetuou a baixa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
        end
        object edpsqsHistorico: TEdPesquisa
          Left = 4
          Top = 33
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
          TabOrder = 0
          TabStop = True
        end
        object edpsqsConta: TEdPesquisa
          Left = 22
          Top = 64
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
          Mostrar.Font.Color = clBlack
          Mostrar.Font.Height = -13
          Mostrar.Font.Name = 'Segoe UI Semibold'
          Mostrar.Font.Style = [fsBold]
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
          Campo.Font.Name = 'Segoe UI Semibold'
          Campo.Font.Style = [fsBold]
          Campo.ParentFont = False
          Campo.TabOrder = 0
          TabOrder = 1
          TabStop = True
        end
        object edtDataBaixa: TEdit
          Left = 91
          Top = 95
          Width = 91
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          TextHint = 'dd/mm/yyyy'
          OnChange = edtDataBaixaChange
          OnExit = edtDataBaixaExit
          OnKeyPress = edtDataBaixaKeyPress
        end
        object edtValorBaixa: TEdit
          Left = 288
          Top = 95
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnExit = edtValorBaixaExit
          OnKeyPress = edtValorBaixaKeyPress
        end
        object edtusuarioBaixa: TEdit
          Left = 509
          Top = 95
          Width = 79
          Height = 25
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
    object pnlAcoes: TPanel
      Left = 596
      Top = 1
      Width = 121
      Height = 269
      Align = alRight
      BevelOuter = bvNone
      Color = 13337441
      ParentBackground = False
      TabOrder = 1
      TabStop = True
      object pnlCancelar: TPanel
        Left = 13
        Top = 131
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
        Left = 13
        Top = 59
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
          Caption = '     Baixar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          OnClick = btnBaixarClick
          ExplicitLeft = -7
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
  end
end

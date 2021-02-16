inherited Frm_CondicoesPagto: TFrm_CondicoesPagto
  Caption = 'Frm_CondicoesPagto'
  ClientHeight = 476
  ClientWidth = 761
  ExplicitWidth = 761
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 761
    Caption = '         TIPO DE PAGAMENTO(VENDAS/COMPRAS)'
    ExplicitLeft = -2
    ExplicitTop = 2
    ExplicitWidth = 761
  end
  inherited pnlFundo0: TPanel
    Width = 761
    Height = 446
    ExplicitWidth = 761
    ExplicitHeight = 446
    inherited Panel1: TPanel
      Width = 759
      ExplicitWidth = 759
    end
    inherited pnlFundo1: TPanel
      Width = 759
      Height = 371
      ExplicitWidth = 759
      ExplicitHeight = 371
      inherited Panel4: TPanel
        Top = 350
        Width = 757
        ExplicitTop = 350
        ExplicitWidth = 757
      end
      object pnlCabecalho: TPanel
        Left = 1
        Top = 1
        Width = 757
        Height = 96
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 24
          Top = 16
          Width = 57
          Height = 17
          Caption = 'Descri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 24
          Top = 35
          Width = 345
          Height = 25
          CharCase = ecUpperCase
          DataField = 'DESCRI'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object dbrgrpAtivo: TDBRadioGroup
          Left = 393
          Top = 25
          Width = 112
          Height = 35
          Caption = 'Ativo?'
          Columns = 2
          DataField = 'ATIVO'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            'S'
            'N')
        end
        object dbrgrpUSO_PDV: TDBRadioGroup
          Left = 519
          Top = 25
          Width = 112
          Height = 35
          Caption = 'Uso em PDV?'
          Columns = 2
          DataField = 'USO_PDV'
          DataSource = ds
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            'S'
            'N')
        end
      end
      object pnlCondicaoBotao: TPanel
        Left = 1
        Top = 97
        Width = 757
        Height = 49
        Align = alTop
        ShowCaption = False
        TabOrder = 2
        object lblTitBanco: TLabel
          Left = 0
          Top = 0
          Width = 300
          Height = 20
          AutoSize = False
          Caption = '         CONDI'#199#213'ES DE PAGAMENTO'
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
          OnMouseMove = lblTituloMouseMove
        end
        object pnlIncluiCondPagto: TPanel
          Left = 539
          Top = 13
          Width = 205
          Height = 30
          Caption = 'pnlIncluiCondPagto'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object btnIncCondPagto: TSpeedButton
            Left = 1
            Top = 1
            Width = 203
            Height = 28
            Action = actIncCondPagto
            Align = alClient
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = -4
            ExplicitTop = 0
            ExplicitWidth = 148
            ExplicitHeight = 39
          end
        end
      end
      object pnlCondicao: TPanel
        Left = 1
        Top = 146
        Width = 757
        Height = 41
        Align = alTop
        ShowCaption = False
        TabOrder = 3
        Visible = False
        object Label4: TLabel
          Left = 24
          Top = -3
          Width = 63
          Height = 17
          Caption = 'Descri'#231#227'o*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 236
          Top = -3
          Width = 62
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Parcela(s)*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 301
          Top = -3
          Width = 60
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Intervalo*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 362
          Top = -3
          Width = 64
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = '1'#170' Parcela*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 428
          Top = -3
          Width = 60
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = '% Acr'#233'sc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 492
          Top = -3
          Width = 60
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Compras?'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 559
          Top = -3
          Width = 60
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Vendas?'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit2: TDBEdit
          Left = 24
          Top = 13
          Width = 209
          Height = 25
          DataField = 'DESCRI'
          DataSource = sDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 237
          Top = 13
          Width = 60
          Height = 25
          DataField = 'NUM_PARCELAS'
          DataSource = sDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 301
          Top = 13
          Width = 60
          Height = 25
          DataField = 'INTV_PARCELAS'
          DataSource = sDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit5: TDBEdit
          Left = 365
          Top = 13
          Width = 60
          Height = 25
          DataField = 'PRIMEIRA_PARC'
          DataSource = sDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 429
          Top = 13
          Width = 60
          Height = 25
          DataField = 'ACRESCIMO'
          DataSource = sDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyPress = DBEdit6KeyPress
        end
        object DBComboBox3: TDBComboBox
          Left = 493
          Top = 16
          Width = 60
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'USO_COMPRAS'
          DataSource = sDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 5
        end
        object DBComboBox4: TDBComboBox
          Left = 557
          Top = 16
          Width = 60
          Height = 22
          Style = csOwnerDrawFixed
          DataField = 'USO_VENDAS'
          DataSource = sDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 6
        end
        object pnlSalvar: TPanel
          Left = 672
          Top = 12
          Width = 25
          Height = 25
          Caption = 'pnlIncluiCondPagto'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 7
          TabStop = True
          object imgSalvar: TImage
            Left = 1
            Top = 1
            Width = 23
            Height = 23
            Align = alClient
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
            ExplicitLeft = 8
            ExplicitTop = 8
            ExplicitWidth = 105
            ExplicitHeight = 105
          end
          object btnSalvar: TSpeedButton
            Left = 1
            Top = 1
            Width = 23
            Height = 23
            Action = actSalvar
            Align = alClient
            Flat = True
            ExplicitLeft = 5
            ExplicitTop = 6
          end
        end
        object pnlCancel: TPanel
          Left = 706
          Top = 12
          Width = 25
          Height = 25
          Caption = 'pnlIncluiCondPagto'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 8
          TabStop = True
          object imgCancel: TImage
            Left = 1
            Top = 1
            Width = 23
            Height = 23
            Align = alClient
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
            ExplicitLeft = 8
            ExplicitTop = 8
            ExplicitWidth = 105
            ExplicitHeight = 105
          end
          object btnCancelar: TSpeedButton
            Left = 1
            Top = 1
            Width = 23
            Height = 23
            Action = actCancel
            Align = alClient
            Flat = True
            ExplicitLeft = -3
            ExplicitTop = 6
          end
        end
      end
      object pnlFundoGrid: TPanel
        Left = 1
        Top = 187
        Width = 757
        Height = 163
        Align = alClient
        Caption = 'pnlFundoGrid'
        ShowCaption = False
        TabOrder = 4
        object pnlAcoes: TPanel
          Left = 624
          Top = 1
          Width = 132
          Height = 161
          Align = alRight
          BevelOuter = bvNone
          Caption = 'pnlAcoes'
          ShowCaption = False
          TabOrder = 0
          object pnlEdit: TPanel
            Left = 48
            Top = 9
            Width = 25
            Height = 25
            Caption = 'pnlIncluiCondPagto'
            Color = 7024384
            ParentBackground = False
            ShowCaption = False
            TabOrder = 0
            object imgEdit: TImage
              Left = 1
              Top = 1
              Width = 23
              Height = 23
              Align = alClient
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000300000
                003008060000005702F98700000006624B474400FF00FF00FFA0BDA793000005
                424944415478DACD9A7B8815551CC7CF6DAD10DF0FC4CAF2B16A0AE63353D717
                6986BB8A226666E52BA13585CD35FF51A4021184FEC98AE8A5A495083EB174CD
                55774B4D50B020509412A33F2A8BD24A2B5FDBF7EBFC467EF73873E7CCDDB973
                F7C08F1FF7CC6FE67CBE67CE9CF33B3337639A506968681801370E7627EC2B58
                6D269369C8754EA6D8D0027E17DC87B059D6A1C3B0E91071BEC90A007C09DC26
                D8932121A7618F42C44F4D55C0AB70AF44849D848D83885F9AA28016707B6063
                224203EF44510400FA21B8E180795F7EB786FB9C7511A7DE7627521700D8C102
                DB01B604306F2811FB60C3222E917527521500C832E30D97367E15AC0A306FC9
                F13622E291884B9D1411E7D316F018DC2E58735D6D89682B2286465CEE106C6C
                318650922226145C00604AE138CEE701F0D798226A610FE7B8FCCA820A00444F
                B83A5817D8B7B0F13145B4131143429A78A96002D0786FB883B0FB54F57AC02D
                5031AE22F6C306DB4DC0FA1744001A7D50E0EF55D54CCECA01F6A715EB22A2BD
                F1EE8416F1368E2F4E5C001AEB23F0F7A8EA2302FF97C4F0E13C83DF17638AE0
                9D1804DB067B0AC7AE252A008DF415F8CE39E047C1D5186F2E7F3CA6082E7ECB
                612B50778575890908E9790E9B890A9E0BD95E582B397EC2702ACC647E97E3CC
                87B8D0B5B044DC5AB1ED92880034DC0FEE00AC93AA662E5FA1E0474ACFB7B24E
                3F66BCD9E96FD73B91A800C76163F7BC2EEB60CF23F686BAA67D27AEC31621E6
                BD4405A0A101C67BB03A26051F2082DBCB6711B32588216F016860A0F1A6360D
                FF256C921A0E84E7B0691D7009F6E6427FCF2BCFD05A81D58BDD0DFC3E18C691
                978010787BCC8F909E0F82FF0056E9F7BC2C7A5CB1B96E9C325ECEFFB30B4B6C
                0192CF13BEBDAAFE427AFE9203FCBBB01754CF072D7ADFC086729E4F54001A1B
                24F01DAC9E2F57C326173C77600B55CFF782ABB7E0F9C02E40CC8644EF4048CF
                DBF04324A69D233C878DCE9508FF1C6236BA72390910B07D163C37141509C3CF
                47CC47AEF04E0242C0E2C257AA311F06CFFDC2C771E02305844C83363C87D6FE
                46C2CF45CC2771E1730A88016F3F177EB1E7796E6EEA03E0E72066533EF0A102
                D0D868B8DD267BF564AE33058D5D9618A6C47C2EDA065C82394B9505EFEFCCFC
                7215360B31DBF2850F1420E399E9C0DD79C2BF097B51C1974ACF6B78A6C2CCE7
                7734063E4CC03B7095AA8AE941855AA4B81670CC070D1B7B91EA2AF0DD2CF899
                88D9D958F8DB04A041FEFE0176BF549D810D4463FFC871BE21A80DE979E6EB4B
                AC9EAF53D7F2E19F40CCA749C00709608EF3B5AA5A83C6963BF43CEFDA22879E
                9F81985D49C107095801B75A558D41838750CF99E3B8C9DE6DF9851964B582EF
                213DFF808AF9D7781F2AF624091F24800F6F99FCFC03D6C94FA8708C7939F3FF
                6AD8D312F33A6CA903FC34C4EC4D1A3E4B001A676ACC14B644AA36A351FB930F
                E3A6C36D253C8E57AB7A42D7C3BAABF0FF8C37E63F2B04BC2D600E9CCE006707
                2DEDF26E9F39CBD208783EF85311575B28785BC066B899F2932B646734FE5B80
                803BACFD6B3781EFAAC2B85E70DD385048F85B0200D10C8EDB387F7A3C8AC6CB
                A24E0EE9F9D4E0B580B102E2979701B02A049ACF08BFA254C0E699ECDC868BDD
                649C5B6F522ABE80D7E096A9FA73C6FB02724E8E7307C60FD0DC644F31D9AF50
                FC7259E0EBD282D702F89AAFAF75EC3B187746E5C6FBE45392E33A9C46B927AE
                4913FEA60099BBBFCFF3FC1F8DF7EE6603E08FA60DEF0BA832DE6AEA5238FB30
                D5E0BCCE7CE644D47F19D210B01D7E5A8E980BC6FB2CCAFD414DD0D45A6C015C
                AC9EB1EAF97289BDCCE171D8E5FD4C310570A3B106D6D2781B97DD003E5B6C30
                D7F23F0ECDAB9ED7385FD80000000049454E44AE426082}
              Stretch = True
              ExplicitLeft = 8
              ExplicitTop = 8
              ExplicitWidth = 105
              ExplicitHeight = 105
            end
            object btnEdit: TSpeedButton
              Left = 1
              Top = 1
              Width = 23
              Height = 23
              Action = actEditParcelamento
              Align = alClient
              Flat = True
              ExplicitLeft = 5
              ExplicitTop = 6
            end
          end
        end
        object pnlgrid: TPanel
          Left = 1
          Top = 1
          Width = 623
          Height = 161
          Align = alClient
          BevelOuter = bvNone
          Caption = 'pnlgrid'
          ShowCaption = False
          TabOrder = 1
          object dbgrd1: TDBGrid
            Left = 0
            Top = 0
            Width = 623
            Height = 161
            Align = alClient
            DataSource = sGrid
            DrawingStyle = gdsGradient
            GradientEndColor = 13864803
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRI'
                Title.Alignment = taCenter
                Width = 232
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'NUM_PARCELAS'
                Title.Alignment = taCenter
                Width = 63
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'INTV_PARCELAS'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PRIMEIRA_PARC'
                Title.Alignment = taCenter
                Width = 63
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ACRESCIMO'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USO_COMPRAS'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'USO_VENDAS'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited ds: TDataSource
    Left = 56
    Top = 168
  end
  inherited cds: TClientDataSet
    FieldDefs = <
      item
        Name = 'ID_PAGTOFORMA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ATIVO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'USO_PDV'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'fdqryParcelamento'
        DataType = ftDataSet
      end>
    ProviderName = 'dspFormaPagto'
    RemoteServer = DM.dspRFormaPagto
    StoreDefs = True
    AfterInsert = cdsAfterInsert
    Left = 56
    Top = 120
    object cdsID_PAGTOFORMA: TIntegerField
      FieldName = 'ID_PAGTOFORMA'
      Origin = 'ID_PAGTOFORMA'
      Required = True
    end
    object cdsDESCRI: TStringField
      FieldName = 'DESCRI'
      Origin = 'DESCRI'
      Size = 50
    end
    object cdsATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsUSO_PDV: TStringField
      FieldName = 'USO_PDV'
      Origin = 'USO_PDV'
      FixedChar = True
      Size = 1
    end
    object cdsfdqryParcelamento: TDataSetField
      FieldName = 'fdqryParcelamento'
    end
  end
  inherited actMaster: TActionList
    Left = 264
    Top = 128
    object actIncCondPagto: TAction
      Caption = 'Incluir condi'#231#227'o de pagamento'
      OnExecute = actIncCondPagtoExecute
    end
    object actSalvar: TAction
      OnExecute = actSalvarExecute
    end
    object actCancel: TAction
      OnExecute = actCancelExecute
    end
    object actEditParcelamento: TAction
      OnExecute = actEditParcelamentoExecute
    end
  end
  object dsDetail: TClientDataSet
    Aggregates = <>
    DataSetField = cdsfdqryParcelamento
    Params = <>
    AfterInsert = dsDetailAfterInsert
    Left = 130
    Top = 121
    object dsDetailID_PAGTOFORMA: TIntegerField
      FieldName = 'ID_PAGTOFORMA'
      Required = True
    end
    object dsDetailID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object dsDetailDESCRI: TStringField
      FieldName = 'DESCRI'
      Size = 50
    end
    object dsDetailNUM_PARCELAS: TIntegerField
      FieldName = 'NUM_PARCELAS'
    end
    object dsDetailINTV_PARCELAS: TIntegerField
      FieldName = 'INTV_PARCELAS'
    end
    object dsDetailPRIMEIRA_PARC: TIntegerField
      FieldName = 'PRIMEIRA_PARC'
    end
    object dsDetailACRESCIMO: TFMTBCDField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
    object dsDetailUSO_COMPRAS: TStringField
      FieldName = 'USO_COMPRAS'
      FixedChar = True
      Size = 1
    end
    object dsDetailUSO_VENDAS: TStringField
      FieldName = 'USO_VENDAS'
      FixedChar = True
      Size = 1
    end
  end
  object sDetail: TDataSource
    DataSet = dsDetail
    Left = 130
    Top = 177
  end
  object dsGrid: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT r.ID_PAGTOFORMA,r.ID,r.DESCRI,r.NUM_PARCELAS,'#13#10'r.INTV_PAR' +
      'CELAS,r.PRIMEIRA_PARC,r.ACRESCIMO,'#13#10'cast('#39#39' as char(3))uso_compr' +
      'as,cast('#39#39' as char(3))uso_vendas '#13#10'FROM PAGTO_PARCELAMENTO r '#13#10'w' +
      'here 1=2'
    FieldDefs = <
      item
        Name = 'ID_PAGTOFORMA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NUM_PARCELAS'
        DataType = ftInteger
      end
      item
        Name = 'INTV_PARCELAS'
        DataType = ftInteger
      end
      item
        Name = 'PRIMEIRA_PARC'
        DataType = ftInteger
      end
      item
        Name = 'ACRESCIMO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 3
      end
      item
        Name = 'USO_COMPRAS'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'USO_VENDAS'
        Attributes = [faReadonly, faFixed]
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <
      item
        Name = 'ordem'
        Fields = 'ID'
      end>
    IndexName = 'ordem'
    Params = <>
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    StoreDefs = True
    Left = 162
    Top = 363
    object dsGridID_PAGTOFORMA: TIntegerField
      FieldName = 'ID_PAGTOFORMA'
      Origin = 'ID_PAGTOFORMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsGridID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dsGridDESCRI: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRI'
      Origin = 'DESCRI'
      Size = 50
    end
    object dsGridNUM_PARCELAS: TIntegerField
      DisplayLabel = 'N'#186' Parcelas'
      FieldName = 'NUM_PARCELAS'
      Origin = 'NUM_PARCELAS'
    end
    object dsGridINTV_PARCELAS: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTV_PARCELAS'
      Origin = 'INTV_PARCELAS'
    end
    object dsGridPRIMEIRA_PARC: TIntegerField
      DisplayLabel = '1'#170' Parcela'
      FieldName = 'PRIMEIRA_PARC'
      Origin = 'PRIMEIRA_PARC'
    end
    object dsGridACRESCIMO: TFMTBCDField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 3
    end
    object dsGridUSO_COMPRAS: TStringField
      DisplayLabel = 'Compras ?'
      FieldName = 'USO_COMPRAS'
      Origin = 'USO_COMPRAS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object dsGridUSO_VENDAS: TStringField
      DisplayLabel = 'Vendas ?'
      FieldName = 'USO_VENDAS'
      Origin = 'USO_VENDAS'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
  end
  object sGrid: TDataSource
    DataSet = dsGrid
    Left = 210
    Top = 363
  end
end

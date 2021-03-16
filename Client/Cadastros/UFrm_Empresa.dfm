inherited Frm_Empresa: TFrm_Empresa
  Caption = 'Cadastro de Empresa'
  ClientWidth = 771
  OnShow = FormShow
  ExplicitWidth = 771
  PixelsPerInch = 96
  TextHeight = 13
  inherited lblTitulo: TLabel
    Width = 771
    Caption = '         INFORMA'#199#213'ES DA EMPRESA'
    ExplicitLeft = 1
    ExplicitTop = -4
    ExplicitWidth = 771
  end
  inherited pnlFundo0: TPanel
    Width = 771
    ExplicitWidth = 771
    inherited Panel1: TPanel
      Color = 14803681
    end
    inherited pnlFundo1: TPanel
      Width = 688
      Color = 14803681
      ParentColor = False
      ExplicitWidth = 688
      inherited Panel4: TPanel
        Width = 686
        ExplicitWidth = 686
      end
      object pnlHeader: TPanel
        Left = 1
        Top = 1
        Width = 686
        Height = 248
        Align = alTop
        BevelOuter = bvNone
        Caption = 'pnlHeader'
        ShowCaption = False
        TabOrder = 1
        object Label1: TLabel
          Left = 2
          Top = 122
          Width = 102
          Height = 17
          Caption = 'PAPEL DE FUNDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 7
          Top = 15
          Width = 29
          Height = 17
          Caption = 'CNPJ'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object pnlHeaderRight: TPanel
          Left = 169
          Top = 0
          Width = 517
          Height = 248
          Align = alRight
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Caption = 'pnlHeaderRight'
          ShowCaption = False
          TabOrder = 0
          object Label20: TLabel
            Left = 10
            Top = 13
            Width = 98
            Height = 17
            Caption = 'NOME FANTASIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 10
            Top = 59
            Width = 87
            Height = 17
            Caption = 'RAZ'#195'O SOCIAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 10
            Top = 105
            Width = 52
            Height = 17
            Caption = 'CELULAR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 178
            Top = 105
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
          object Label25: TLabel
            Left = 10
            Top = 151
            Width = 129
            Height = 17
            Caption = 'INSCRI'#199#194'O ESTADUAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 178
            Top = 151
            Width = 134
            Height = 17
            Caption = 'INSCRI'#199#194'O MUNICIPAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 10
            Top = 197
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
          object Label28: TLabel
            Left = 344
            Top = 105
            Width = 61
            Height = 17
            Caption = 'LOGOTIPO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object btnGerarCripto: TSpeedButton
            Left = 408
            Top = 8
            Width = 97
            Height = 22
            Action = actLiberarSistema
          end
          object DBEdit8: TDBEdit
            Left = 8
            Top = 32
            Width = 497
            Height = 25
            DataField = 'FANTASIA'
            DataSource = ds
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit18: TDBEdit
            Left = 8
            Top = 78
            Width = 497
            Height = 25
            DataField = 'RAZAO'
            DataSource = ds
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit19: TDBEdit
            Left = 8
            Top = 124
            Width = 148
            Height = 25
            DataField = 'CEL'
            DataSource = ds
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit20: TDBEdit
            Left = 176
            Top = 124
            Width = 148
            Height = 25
            DataField = 'FONE'
            DataSource = ds
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit21: TDBEdit
            Left = 8
            Top = 170
            Width = 148
            Height = 25
            DataField = 'INSC'
            DataSource = ds
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object DBEdit22: TDBEdit
            Left = 176
            Top = 170
            Width = 148
            Height = 25
            DataField = 'INSC_MUN'
            DataSource = ds
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit23: TDBEdit
            Left = 8
            Top = 216
            Width = 316
            Height = 25
            DataField = 'EMAIL'
            DataSource = ds
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object pnlLogo: TPanel
            Left = 344
            Top = 124
            Width = 161
            Height = 102
            BevelOuter = bvLowered
            Caption = 'pnlLogo'
            ShowCaption = False
            TabOrder = 4
            object imgLogoTipo: TImage
              Left = 1
              Top = 1
              Width = 100
              Height = 100
              Align = alClient
            end
            object pnlLogoRight: TPanel
              Left = 101
              Top = 1
              Width = 59
              Height = 100
              Align = alRight
              Caption = 'pnlLogoRight'
              ShowCaption = False
              TabOrder = 0
            end
          end
        end
        object Panel2: TPanel
          Left = 2
          Top = 141
          Width = 150
          Height = 102
          BevelOuter = bvLowered
          Caption = 'pnlLogo'
          ShowCaption = False
          TabOrder = 2
          object Image1: TImage
            Left = 1
            Top = 1
            Width = 100
            Height = 100
            Stretch = True
          end
          object pnlLogoMarcaRight: TPanel
            Left = 101
            Top = 1
            Width = 48
            Height = 100
            Align = alRight
            BevelOuter = bvNone
            Caption = 'pnlLogoMarcaRight'
            ShowCaption = False
            TabOrder = 0
            object imgUpload: TImage
              Left = 0
              Top = 0
              Width = 48
              Height = 49
              Align = alTop
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
                002808060000008CFEB86D00000006624B474400FF00FF00FFA0BDA793000002
                A14944415478DAEDD84B6813411807F099CD6E9BA0D47703814D29E8C19382AF
                E2A1782842D287EDD183480F222A6A22C18308F6222A8835554AF5A0E0C95B63
                2389A9823988A78278D04B9192B4E4A2D4506C6293DD7C7E1B371AADC9EE4E36
                5984FD4398996467E69761924D861293B2EFC19CE0CEB94F1202ABB180F89450
                0A668C4BCD18C43731DF414BED51ACF62A6D944D136EED78FCC2AE35CB81FD93
                A92D50A031ACF6FCF90ABCCE09AEA1E4B9CE6F960187C7173617A8E32556F7D7
                18FCCDAAE0F4358264066AE1CC42320155DC2C560FE89C841969186814D728D2
                10B0EFE6A74D6D2E61163FA6078DBE3156A46E60A33856A42EA0593816A426B0
                8C730A09AC1E320367145917D82C9C11644DA07AFB52703DA489D142FE1388B8
                76C4295F25BDCDC45582F7EE443E2B0E24C7A8A40BE80F2F5E230063ADC0FD56
                C29558B0EB862EE0D0BDB4A728C1618E235BD78D53A267B1D71EC6A57A4F3998
                AC7EAA041CE0A05F059EBE9D39EFCDE802D68B7F3C1DC15EC71881CF6241EFB0
                912E36D006DA401B68036D60AB8177D3D358189AA42A9158C03BD26CE01416A7
                198153083C63088813CE551A6D20F74582DDD9FAC0D400768BB2E800A83F1E14
                E3F5AE51FFD6BEAA06FE3A857248FC8E68C8F345739689A52896FD867084CCC4
                035ECDBD3B783BB35DE6A5CFEC40CC91C70BCE0D2B8E3B00E41436798DCB8BB8
                911EE63AE45072B4FB7B4B80958CDC5FDA9697E5BD0E58FFC356894CC932C8DC
                BBC4257159EF98A6029B91FF1258C052280329DF15BDE8495B0A0C67BC324829
                B55954801FB1B25B7DE289243BAE0A2EA9A15351D614F3FC469E2B5D27144E94
                578F900FD4175EBC4C016E59B96AB5827B2F447F9ECE773E47EE51AB417FE545
                2E2B0E966F756564DE1D40F328367712754F5A90223EE671E51EE5B362583969
                F8011B3A799FDCEAE2530000000049454E44AE426082}
              OnClick = actUploadLogoMarcaExecute
              ExplicitWidth = 55
            end
            object imgExcLogoMarca: TImage
              Left = 0
              Top = 49
              Width = 48
              Height = 51
              Align = alClient
              Center = True
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000280000
                002808060000008CFEB86D00000006624B474400FF00FF00FFA0BDA793000005
                804944415478DAED585B6C1455183E6766B6DDA56B412EEDEC520C89C6282F28
                4DEC65A64D1B3185DD9DD65B1325D118314225C8030928BEF445B424180D412E
                5163344A4C491066B7D25AA0D9EEB6A2A9C28397A84409EDEEB68046BA75B7ED
                CC1CFF337BE9B4DDC274BB2935E1249B9973CE7FFEF39DEFBF9C7F16A305DEF0
                ED067007E01D80B71B405600875C35BCC228AF331859E7038446509CD3B8B78A
                DABA22A6004624613321F88379650A93977839F8A1298021B7F832C6E8C87C02
                24046D71FA0247CD0194C4E730419FCC2B408C9E77CA814F4D022C5D8489ED69
                38D5BCF820582B4E70ECB853EEFBD714C085D4660438505F25301A09C0EB65C4
                71358E2FBBFEA4E304D6843DE2BBB0F0D5092DC4CF5A2DEEA2D6AE28ED5E69AC
                B0B131F614C8AC37B074B4580E6CC5BA0A84FA37D694B09CD205BD7B19C208C5
                3E7FCFAC000E35D6D8D598F20FBC32A0F307DE1B2CA5CAC392F80A283D9861C9
                470E6F60337D8103D0687C31C36EDB1C72E07D7AC88847E883C7C330AAB1366E
                71EA70A601D216F288BF8240099C707D91CFDFDB5F5771379B371607FF3C05D3
                8F1AB45CD218A656CB1BBF46BBCC986539A369E7283B067567C0CFEAD5B13C6B
                497BEFDF43EEEA0A0D6B9D00B6DFE90DDC3F6B13EB4CB8C52F4042E2A35C61D8
                AEEC07E1066A6EC5323A6830E1E5496398E451738F45D1129655CF01E9F7A55C
                20350632678B87B96D113BB510961DDEEE67B202187157ED2198BC4908398931
                6E30B285B591EBC0E4018D659A29735C8C950DAC9E516CAAA433A96ACDC0DC76
                C2142C33B29AD289097E83F775EFCD8E418FE002115F86A974E0640A8884E689
                C01968A85E95C1E4293997430E7E9515C0ABF58253D1F040B600F168818BEFE8
                18D1233665EE298D1BC7CE15EDDDE1AC0026581407E1B1222D9B2313A344BAB9
                0A915F7CB3FDCD003C0D8F75A0ED1826A41E592CB5441D1E42C47672A620A1CC
                A9B6F8D234A0A941420844347A0276FF1ED2CEC6B9026C81C72E8E212BE3A35A
                3C1769C69ACF5893AEB30F18DC3D278011497C16EEE4CFC1226E8737D8968B44
                9D0A3EB85D36F172E0D89C0086DCD50F62ACFD04E966AFA692D6956D3D17A15E
                7C0FCA8FED53D9A17EA62B4DF8E71496C901A8F7760CB82AD7322C6E84F4B287
                10668DD3E7FF794E004963231B89856FC02BAD6C46E056D9406F1503C83438DD
                ACD00C419400990497BC3DA84F17C02FCEDB1C85B8B5559D1340DD6492F80D98
                B52CD91D9E0029361114FB785A841A231DD95E00331E3280BB2B29731ECC5D7E
                ABBD4D018CB8C5C310755B0C43C3AAA65597B4F55CB85257B194CB63BF9D9684
                01A432A63EB2AABDF7AF7E57E5432CC3F8D3E0748BA323BC2FB0352700431E01
                CA247C286D76843A118E3538E4BE987E80E93E99F6B984054A6D86B494D4419A
                9CDEE0E1DC302809E5F011D59B58803BC66DCAE3389ABF8C61152FDCA73B78B9
                DB6FAC11293BC5BE4013141BEB30830E2A447D2AAE2EB96667878FC3B44797D1
                5039DF16389F1B06139F0034502EC6A39C60B1A1E5A962134DF24960121A656E
                5012CA08C2A741663130FE9B8AD45A259A7FDD6A578220B21602AB3053899F15
                40DD4C6EF147288B4794716543069F4B83A49D6440D002A0D0B0D5EFB0B68CB3
                701028C40E39738D997D4D0384E2F533107E920FC70A234EEBFEE93E875A202A
                5FD30F23896FC30126DF10D42743F19D1187ED0624FE13F089B929A700C39EAA
                5D70F21682B53A87DCF3F5A4C030E439DA9D9227D3F361A9F2314C987618D80D
                45EABEDC02740BB560E2B368069F33E439748B799A6A6AC1C45D3905489A1113
                F94EB8042057A3CC3E3791846F3EDF0F37C8EA5BDD20B306485B32DD74A2C455
                3502BF5F92530F24C78C2DD37C0C4AFD3AA72FD86D76CF597FB88724F11E0880
                9DB0907E322E32B90C123ABE0039F31D5EF6FF319BFDFEBFFF2C2C94B6E001FE
                0745200D56E5A1E6760000000049454E44AE426082}
              OnClick = actExcLogoMarcaExecute
              ExplicitTop = 8
              ExplicitWidth = 46
              ExplicitHeight = 49
            end
          end
        end
        object pnlCNPJ: TPanel
          Left = 3
          Top = 34
          Width = 160
          Height = 90
          Caption = 'pnlCNPJ'
          ShowCaption = False
          TabOrder = 1
          object lblSituacao: TLabel
            Left = 1
            Top = 76
            Width = 158
            Height = 13
            Align = alBottom
            Alignment = taCenter
            Caption = 'ATIVO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Segoe UI Black'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
            ExplicitWidth = 35
          end
          object DBEdit26: TDBEdit
            Left = 1
            Top = 1
            Width = 158
            Height = 25
            Align = alTop
            DataField = 'CNPJ'
            DataSource = ds
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object pnlImgStatus: TPanel
            Left = 1
            Top = 26
            Width = 158
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            Caption = 'pnlImgStatus'
            Color = clWhite
            ParentBackground = False
            ShowCaption = False
            TabOrder = 1
            object imgStatusCNPJ: TImage
              Left = 56
              Top = 0
              Width = 46
              Height = 46
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D494844520000002E0000
                002E080600000057B92B3700000006624B474400FF00FF00FFA0BDA793000009
                AB4944415478DAED997B6C14D715C6CF9D999DDDB5D760630CE6551E0DB44DF9
                23AA225591F887A64D535429892AB755AA501C30498AFA4A95B4491AB215E014
                F188AA4634210410AA5A559150C00587470555125A42AC2855DB28525211430C
                36F67ABDAF99D99DB9D3EFDC3B6B9B26C5A6D0622A06CDDE953D73E777CFFDCE
                77CE1841D7E921AE35C00DF0EBE5F89F80FFEEB17B97C9B2ACC9E527ED7B60FB
                F6CA7501DEF1E4F2DB02295F0F642882401E4A39D9BB96FDB2D39BF8E04F2D7F
                9A42FA4918126101E4FBC1832D1B7FFBFC84073FF8B3D6536118DE8A93A40C29
                0CE5EB77ADFFF592090D7E30BD6AB630E507A03538E21A3C2C7519F3EBD2E9B4
                9CB0E08736AC4A83F4298E3683EB31A4E250B1E6EBCFBCE44C48F03FAC7F7096
                34FDB7C1D9781138A29E0C93754BD3DB0A130EFC583A6DC964CF61802E1D1DE9
                E87BF12B4FEE4C5DE933AE3AF81F37AD9A2FC9DC03C825405511FE17F8BFDFF9
                D3173F3BA1C08F6F79A84518E1F3A1A4866A84291AA3C4241986BBEF7CE2C5D6
                09017E62EBCA298191780E942DA3F54CD128C3519197D47AC7132FECBEE6E0AF
                3DBBE64B22A45D809CA5033C02CCB072D4778CBE6954E62C7D74F7F96B06FEE6
                F3AB63E5B2BD5508B106486A9ED1D2A86ABA2A9128E29DB7FF78FBB22B85FE8F
                C18F3DF383FA841DBC24047D514F11E999BF8D68996531BC035CEEF1BDEDF647
                B7EFB826E0AF6E7B68418CAC0E44FA66BE5BE05FA8B4A147258F8BA2AC7E4BD2
                978475B8F8D91919845929FD2CDAC482EF951D3F9025C7F59C7CC1F5CB9E1FF8
                7EE5AD5CB1F4EEBA974F765D11F8B15D2B12F17CDD6770F137C8A4EF0A43D418
                08B76070D3C2086806E7480701E1C980962AEA4CCBE44EE0935374289F772887
                D1752A14330D4A26E39448C4A93661931D8BA9397CDC9F2FB9D49FC9BF7636D3
                7FCF968EAEFE71811F6D6F7BD8B0C416D3328801F1A146002B4883473CD4B462
                382DDC616869049282A04241A58208072A31451890579694076C3657A0C1C112
                AE0968DEAC69540368CB323187498629547E04014EDC5BA900BEE8D2B9BECC81
                87F71CF9EAB8C08FFCBCED9061D21D163E044F88CB4C633438A06336CE181900
                AF26A38A76A51C81FB4A3AE8C1C9712B343854A0EC5011F0259A3BA389EAEB6A
                C8B62DB2EC18C56C0637D43C0ADAF315B8EB78D43B30244F7FD83BB37DFFC9DE
                B1C1DB57771B563847458261115161D070B455A4016E608C7253EB9B230E7008
                153AC777D63532B4886DCF0E951478D171E9A639CD887692EC448CECB80970C0
                C74C82D63574D957A3EB95A9B73F4BEF9D393B77634757F798E0879F6E732D53
                C439B21C09BECC30420DAEB6D656E0F8E1F0044ACE3ECBC40330221EE8E8F182
                8AAE4B4351B459E3F3674FA7BADA24602D8AC54D25370E88D27725C0E953D90B
                A85072A8A737733A7BDA5B983E7EDCBF24F8C1F6D6A698B0FA7464ABD05122E2
                C3C4C30C06676DF33654C1917C81022F2B57297B155E97BAD741220E154B802F
                299D27ED04CD9ADE4089B8AD9EC10112A22A374ECE804A90495F26E777F75CB8
                7BE381370E8CA9F143E9D59F366CF90E479A4F21447456236E29A9B09B180A9C
                6D0FDA06B884B6D902F9A17C2D6B9893D68374F2458F06B345C017A85070E024
                36D5A56AA9260E73354DF56C96950F79B958742697A77C815BF6F03B9B3ABB7E
                3526F8E10D6DB7C00ADE5209680A15354991ABB0C1E021C260ED9BBC05FC2A86
                1392502E12420A25055F9B4AAAEB19C481AE73F8790652C90CE4A806F6573F39
                A5461BDA36F110F67A1FC95D2EFB230E942B32D2FB9B3ADFBC694CF0CEF6FB6F
                3343714244E0CA497856A5152D17ED2E5ADF0CCE073F70080FE2DF374CAA5516
                AA5E8ECB2C1307D12EA9DF4F4AD5D0D4FA3A25132BB241BE47C94D6A17624729
                62D7060673D4D39709DB3B4E9ADA022E059EBE7F8969895709139A2C95AA6D88
                119D53B40EAE961EE451E08282ED4DC197EB6073D5434242AE8B05157404F388
                F8C2793355C16117B16296F2700E04457D0D27342767A51CA8C8C355DEFFFEAE
                57C68EF82B1B5A3F27A4E8D28EA28B4F75AD0A161F654C9C43F42A816A46B45E
                6B13CA257467A8ED912F7710F15C8113D351F72C02783269C34D2C75BDC55E8E
                45541D85ADD0C75906B8E796A96F30B766F5B67DDBC6043F986EBD19C07F5389
                186D63188E40F300552BBB62678963CBF52684BACC07BAC6579BAE3292B684C8
                6510F11CE093B64D0BE6CD40E272C40D3587A98A8F9689B6431D75A7E86DFD4B
                72D1231FF717818FBACAFAD639787E3767A5A98A8EB63C9E98B159FB86A51394
                CBBE214CDD64A9862A50F0AA57E105F0EEC83215E128996C5E2528473E89C2D3
                DCD440719B1DC550149C0F1EA2CC4587E5C2D7171C77EDE6CEAE75F431C747C0
                5B5A5ACC158B6B3D009B5CE60D436B990C7DB9091B24B6424E2C615E3483EA0C
                D91695C36800D67E365FA4CC6001C959A2E98D93A941398A4ECE6ACE48A9AD90
                2BEB00A0CFF50D5245FA6F6F3ED875CBB8C0F9F8FDDA157D08749319F9785522
                4215146CADCDA5DED27D4CD4158EC04B050C7AF23C17517394AD65E0DFCD0DF5
                D408681BF28AB14C4CBD6B2C2D959815A924E242DBFD7094EE7317DE5BF7F29F
                168E1B7CDFDAE57F06F2E759E3C628705545F1306EAEB41BC4F41B4F24251DB9
                5055512E4A68B59198458097289765479941B53509DD5C7172F268992A1FB85A
                FA518FC2D6CAF77DD83BB0F3477B8EAE1C37F8DEC7BEF50B44FB7BC3D055FF26
                ED326C63BC008E3EA94264E8057072025806BA1FF7D1B7389EA70B4FB64033A7
                3650D39449BAA94272B2AB98319D431A1C05483559EC44CEE0F99E815B7FF89B
                A3FFB80CF07B1AC330FE35CCCA760EB332E693117E19972F568B30746BABABA8
                353C8BB2C180E17D0E3D37B5E402289FE7CA59A052A94CB39B1B690A0A902A3E
                56B4A3D14E6957E14AEB9D423BFBED353B0EBC43FFE6B8AC57B77D8FDFF74D61
                84CF22711B69B805D05534D46F6F28FDFC8A2687FB18768922A28E08C2163D9A
                3EA59E5291E77389500D1922CC2F0DFD8379D5A360012B51E6775E8AE5B2DF39
                F73E7EDFE250C823E8729B87B51FB503EC2A7CA89E32A6BD99C10B8062B04F34
                37A10FB795B6F56E095DE67DDDA314E1F728F174E67C66F5E6CE532F5C55703E
                763D72EFC25A411D88D7A72E9E490C479E4BBA607044B3E8B297BBB4686E331C
                2546F104574E78385ADA0A574B5826B7C11EDE9406B285CABBDD3D0B37EC3DF1
                C15507E703D5CCF864EEAF6DA630BE104AB100863615C093919416229D42A112
                36A22EB90801BE849782FA548AA6C2C7759FA23D5CF9B72AF57021AFE2F75DC8
                3EB0EAB9FD3BC77AFE7FEDCFCCBCB09AD36F4C6B48F9C9BA8669932A81372D97
                71674D8AC796C2BFA741260EFAF02C7A961E8C7924643EDB9FDDDFB6A3F3EC78
                E6BFF1DF8537C0FFDFC1FF097B670C8987DC0C880000000049454E44AE426082}
            end
          end
        end
      end
      object pnlDetail: TPanel
        Left = 1
        Top = 249
        Width = 686
        Height = 243
        Align = alClient
        BevelOuter = bvNone
        Caption = 'pnlDetail'
        TabOrder = 2
        object lbl2: TLabel
          Left = 0
          Top = 0
          Width = 686
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = '         ENDERE'#199'OS'
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
          ExplicitTop = 8
        end
        object pgcEnderecos: TPageControl
          Left = 0
          Top = 20
          Width = 686
          Height = 223
          ActivePage = tsFat
          Align = alClient
          TabOrder = 0
          object tsFat: TTabSheet
            Caption = 'FATURAMENTO'
            object pnlEndFat: TPanel
              Left = 0
              Top = 0
              Width = 678
              Height = 195
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlEndFat'
              Color = 14803681
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object Label2: TLabel
                Left = 8
                Top = 5
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
              object Label3: TLabel
                Left = 117
                Top = 5
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
              object Label4: TLabel
                Left = 8
                Top = 53
                Width = 16
                Height = 17
                Caption = 'N'#186
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label5: TLabel
                Left = 112
                Top = 53
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
              object Label6: TLabel
                Left = 264
                Top = 53
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
              object Label7: TLabel
                Left = 414
                Top = 53
                Width = 44
                Height = 17
                Caption = 'CIDADE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 566
                Top = 54
                Width = 47
                Height = 17
                Caption = 'ESTADO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 8
                Top = 24
                Width = 105
                Height = 25
                DataField = 'FAT_CEP'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit2: TDBEdit
                Left = 117
                Top = 24
                Width = 555
                Height = 25
                DataField = 'FAT_ENDERECO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit3: TDBEdit
                Left = 8
                Top = 72
                Width = 100
                Height = 25
                DataField = 'FAT_NUMERO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit4: TDBEdit
                Left = 112
                Top = 72
                Width = 148
                Height = 25
                DataField = 'FAT_CPL'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit5: TDBEdit
                Left = 264
                Top = 72
                Width = 148
                Height = 25
                DataField = 'FAT_BAIRRO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object DBEdit6: TDBEdit
                Left = 414
                Top = 72
                Width = 148
                Height = 25
                DataField = 'FAT_CIDADE'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object DBComboBox1: TDBComboBox
                Left = 566
                Top = 72
                Width = 40
                Height = 25
                Style = csDropDownList
                DataField = 'FAT_UF'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Items.Strings = (
                  'AC'
                  'AL'
                  'AM'
                  'AP'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MG'
                  'MS'
                  'MT'
                  'PA'
                  'PB'
                  'PE'
                  'PI'
                  'PR'
                  'RJ'
                  'RN'
                  'RO'
                  'RR'
                  'RS'
                  'SC'
                  'SE'
                  'SP'
                  'TO')
                ParentFont = False
                TabOrder = 6
              end
            end
          end
          object tsEnt: TTabSheet
            Caption = 'ENTREGAS'
            ImageIndex = 1
            object pnlEndEnt: TPanel
              Left = 0
              Top = 0
              Width = 678
              Height = 195
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlEndFat'
              Color = 14803681
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object Label9: TLabel
                Left = 8
                Top = 5
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
              object Label10: TLabel
                Left = 117
                Top = 5
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
              object Label11: TLabel
                Left = 8
                Top = 53
                Width = 16
                Height = 17
                Caption = 'N'#186
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 112
                Top = 53
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
              object Label13: TLabel
                Left = 264
                Top = 53
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
              object Label14: TLabel
                Left = 414
                Top = 53
                Width = 44
                Height = 17
                Caption = 'CIDADE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label15: TLabel
                Left = 566
                Top = 54
                Width = 47
                Height = 17
                Caption = 'ESTADO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit7: TDBEdit
                Left = 8
                Top = 24
                Width = 105
                Height = 25
                DataField = 'ENT_CEP'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit9: TDBEdit
                Left = 117
                Top = 24
                Width = 555
                Height = 25
                DataField = 'ENT_ENDERECO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit10: TDBEdit
                Left = 8
                Top = 72
                Width = 100
                Height = 25
                DataField = 'ENT_NUMERO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit11: TDBEdit
                Left = 112
                Top = 72
                Width = 148
                Height = 25
                DataField = 'ENT_CPL'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit12: TDBEdit
                Left = 264
                Top = 72
                Width = 148
                Height = 25
                DataField = 'ENT_BAIRRO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object DBEdit13: TDBEdit
                Left = 414
                Top = 72
                Width = 148
                Height = 25
                DataField = 'ENT_CIDADE'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object DBComboBox2: TDBComboBox
                Left = 566
                Top = 72
                Width = 40
                Height = 25
                Style = csDropDownList
                DataField = 'ENT_UF'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Items.Strings = (
                  'AC'
                  'AL'
                  'AM'
                  'AP'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MG'
                  'MS'
                  'MT'
                  'PA'
                  'PB'
                  'PE'
                  'PI'
                  'PR'
                  'RJ'
                  'RN'
                  'RO'
                  'RR'
                  'RS'
                  'SC'
                  'SE'
                  'SP'
                  'TO')
                ParentFont = False
                TabOrder = 6
              end
            end
          end
          object tsCorresp: TTabSheet
            Caption = 'CORRESPOND'#202'NCIAS'
            ImageIndex = 2
            object pnlEndCorresp: TPanel
              Left = 0
              Top = 0
              Width = 678
              Height = 195
              Align = alClient
              BevelOuter = bvNone
              Caption = 'pnlEndFat'
              Color = 14803681
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              object Label16: TLabel
                Left = 8
                Top = 5
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
              object Label17: TLabel
                Left = 117
                Top = 5
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
              object Label18: TLabel
                Left = 8
                Top = 53
                Width = 16
                Height = 17
                Caption = 'N'#186
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 112
                Top = 53
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
              object Label29: TLabel
                Left = 264
                Top = 53
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
              object Label30: TLabel
                Left = 414
                Top = 53
                Width = 44
                Height = 17
                Caption = 'CIDADE'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label31: TLabel
                Left = 566
                Top = 54
                Width = 47
                Height = 17
                Caption = 'ESTADO'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit14: TDBEdit
                Left = 8
                Top = 24
                Width = 105
                Height = 25
                DataField = 'CEP'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit15: TDBEdit
                Left = 117
                Top = 24
                Width = 555
                Height = 25
                DataField = 'ENDERECO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object DBEdit16: TDBEdit
                Left = 8
                Top = 72
                Width = 100
                Height = 25
                DataField = 'NUMERO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object DBEdit17: TDBEdit
                Left = 112
                Top = 72
                Width = 148
                Height = 25
                DataField = 'COMPLEMENTO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object DBEdit24: TDBEdit
                Left = 264
                Top = 72
                Width = 148
                Height = 25
                DataField = 'BAIRRO'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object DBEdit25: TDBEdit
                Left = 414
                Top = 72
                Width = 148
                Height = 25
                DataField = 'CIDADE'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object DBComboBox3: TDBComboBox
                Left = 566
                Top = 72
                Width = 40
                Height = 25
                Style = csDropDownList
                DataField = 'UF'
                DataSource = ds
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                Items.Strings = (
                  'AC'
                  'AL'
                  'AM'
                  'AP'
                  'BA'
                  'CE'
                  'DF'
                  'ES'
                  'GO'
                  'MA'
                  'MG'
                  'MS'
                  'MT'
                  'PA'
                  'PB'
                  'PE'
                  'PI'
                  'PR'
                  'RJ'
                  'RN'
                  'RO'
                  'RR'
                  'RS'
                  'SC'
                  'SE'
                  'SP'
                  'TO')
                ParentFont = False
                TabOrder = 6
              end
            end
          end
        end
      end
    end
  end
  inherited ds: TDataSource
    OnDataChange = dsDataChange
    Left = 464
    Top = 432
  end
  inherited cds: TClientDataSet
    CommandText = 'SELECT e.* '#13#10'FROM EMPRESA e'#13#10'WHERE 1=2;'
    ProviderName = 'DSPLer1'
    RemoteServer = DM.DSProviderConnection1
    AfterInsert = cdsAfterInsert
    Left = 464
    Top = 384
    object cdsCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsRAZAO: TStringField
      FieldName = 'RAZAO'
      Required = True
      Size = 45
    end
    object cdsFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
    object cdsCNPJ: TStringField
      Alignment = taCenter
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsINSC: TStringField
      FieldName = 'INSC'
      Size = 15
    end
    object cdsINSC_MUN: TStringField
      FieldName = 'INSC_MUN'
      Size = 30
    end
    object cdsCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object cdsCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object cdsNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
    object cdsCEL: TStringField
      FieldName = 'CEL'
      Size = 15
    end
    object cdsEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsREGIME_TRIBUT: TStringField
      FieldName = 'REGIME_TRIBUT'
      Size = 30
    end
    object cdsLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
    end
    object cdsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 15
    end
    object cdsCLIENTE_LDE: TStringField
      FieldName = 'CLIENTE_LDE'
      Size = 500
    end
    object cdsENT_CEP: TStringField
      FieldName = 'ENT_CEP'
      Size = 10
    end
    object cdsENT_CIDADE: TStringField
      FieldName = 'ENT_CIDADE'
      Size = 40
    end
    object cdsENT_ENDERECO: TStringField
      FieldName = 'ENT_ENDERECO'
      Size = 50
    end
    object cdsENT_NUMERO: TStringField
      FieldName = 'ENT_NUMERO'
      Size = 10
    end
    object cdsENT_BAIRRO: TStringField
      FieldName = 'ENT_BAIRRO'
      Size = 40
    end
    object cdsENT_CPL: TStringField
      FieldName = 'ENT_CPL'
      Size = 50
    end
    object cdsFAT_CEP: TStringField
      FieldName = 'FAT_CEP'
      Size = 10
    end
    object cdsFAT_CIDADE: TStringField
      FieldName = 'FAT_CIDADE'
      Size = 40
    end
    object cdsFAT_ENDERECO: TStringField
      FieldName = 'FAT_ENDERECO'
      Size = 50
    end
    object cdsFAT_NUMERO: TStringField
      FieldName = 'FAT_NUMERO'
      Size = 10
    end
    object cdsFAT_BAIRRO: TStringField
      FieldName = 'FAT_BAIRRO'
      Size = 40
    end
    object cdsFAT_CPL: TStringField
      FieldName = 'FAT_CPL'
      Size = 50
    end
    object cdsENT_UF: TStringField
      FieldName = 'ENT_UF'
      FixedChar = True
      Size = 2
    end
    object cdsFAT_UF: TStringField
      FieldName = 'FAT_UF'
      FixedChar = True
      Size = 2
    end
    object cdsLOGOTIPO: TBlobField
      FieldName = 'LOGOTIPO'
    end
  end
  inherited actMaster: TActionList
    Left = 520
    Top = 392
    inherited actNovo: TAction
      ShortCut = 0
    end
    inherited actExcluir: TAction
      ShortCut = 0
    end
    inherited actLocalizar: TAction
      ShortCut = 0
    end
    object actUploadLogoMarca: TAction
      Enabled = False
      OnExecute = actUploadLogoMarcaExecute
    end
    object actExcLogoMarca: TAction
      Enabled = False
      OnExecute = actExcLogoMarcaExecute
    end
    object actLiberarSistema: TAction
      Caption = 'AUTORIZAR'
      OnExecute = actLiberarSistemaExecute
    end
  end
  object Dialog: TOpenPictureDialog
    Filter = 'Imagens PNG(*.PNG)|*.PNG'
    Left = 520
    Top = 440
  end
end

inherited Frm_PDVPagamento: TFrm_PDVPagamento
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Frm_PDVPagamento'
  ClientHeight = 684
  ClientWidth = 638
  Visible = False
  ExplicitWidth = 638
  ExplicitHeight = 684
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 638
    Height = 684
    Align = alClient
    BorderStyle = bsSingle
    Color = 14803681
    ParentBackground = False
    TabOrder = 0
    object pnlRodape: TPanel
      Left = 1
      Top = 649
      Width = 632
      Height = 30
      Align = alBottom
      TabOrder = 3
      object imgVoltar: TImage
        Left = 7
        Top = 3
        Width = 24
        Height = 24
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          001808040000004A7EF5730000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EE900000EE9010E33421C0000
          000774494D4507E30A070E2D05D1BD60FE000000FE4944415478DA6364201130
          0E90060B869B0CEF89D5C0CCD0C450C910C6B086380DA20C4B195C817418C36A
          6234D832AC609002B388D0C0C890C7D0CDC00AE511D420C0309F2100497C23C3
          0D86BF0C0F18AE339C62F885A9C110689E328E70FCCCB08DA193E13CB2861486
          C90C1C7803FF3FC3728674862F100D3319D218880117197C189E90A28181E102
          8325C30FE29C04038D0C0D104F1B003DAD428486CF0C32B882F50EC36F064106
          210636342DB1C81157CCD0CEC002E541228E994183C188C1812110A819021611
          9734D8184219EA195481ACF3E8894F1C18E28E0CD892061B43334329C33BD292
          7709432BAE0C7497E1355619B781CAD378000045FF371DFD9AC4E50000002574
          455874646174653A63726561746500323031392D31302D30375431343A34353A
          30352B30303A303015F2C2BD0000002574455874646174653A6D6F6469667900
          323031392D31302D30375431343A34353A30352B30303A303064AF7A01000000
          1974455874536F667477617265007777772E696E6B73636170652E6F72679BEE
          3C1A0000000049454E44AE426082}
        OnClick = actVoltarExecute
      end
      object lblVoltar: TLabel
        Left = 45
        Top = 6
        Width = 106
        Height = 17
        Caption = 'VOLTAR A VENDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = actVoltarExecute
      end
      object chkImprimir: TCheckBox
        Left = 562
        Top = 6
        Width = 67
        Height = 17
        Caption = 'imprimir'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
    end
    object pnlCentro: TPanel
      Left = 1
      Top = 211
      Width = 632
      Height = 438
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object pnlDireita: TPanel
        Left = 232
        Top = 0
        Width = 400
        Height = 438
        Align = alClient
        TabOrder = 1
        object pnlTop1: TPanel
          Left = 1
          Top = 1
          Width = 398
          Height = 96
          Align = alTop
          TabOrder = 0
          object Label4: TLabel
            Left = 132
            Top = 18
            Width = 23
            Height = 25
            Caption = 'R$'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtValor: TEdit
            Left = 161
            Top = 15
            Width = 105
            Height = 33
            Alignment = taRightJustify
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnKeyDown = edtValorKeyDown
            OnKeyPress = edtValorKeyPress
          end
          object pnlValores: TPanel
            Left = 1
            Top = 55
            Width = 396
            Height = 40
            Align = alBottom
            Caption = 'pnlValores'
            ShowCaption = False
            TabOrder = 1
            object pnl2Reais: TPanel
              Left = 14
              Top = 0
              Width = 44
              Height = 40
              Caption = 'pnlIncluiCondPagto'
              Color = 10114859
              ParentBackground = False
              ShowCaption = False
              TabOrder = 0
              TabStop = True
              object btn2Reais: TSpeedButton
                Left = 1
                Top = 1
                Width = 42
                Height = 38
                Action = act2Reais
                Align = alClient
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitLeft = 4
                ExplicitTop = -3
                ExplicitWidth = 38
              end
            end
            object Panel1: TPanel
              Left = 68
              Top = 0
              Width = 44
              Height = 40
              Caption = 'pnlIncluiCondPagto'
              Color = 10114859
              ParentBackground = False
              ShowCaption = False
              TabOrder = 1
              TabStop = True
              object btn5Reais: TSpeedButton
                Left = 1
                Top = 1
                Width = 42
                Height = 38
                Action = act5Reais
                Align = alClient
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitLeft = -2
                ExplicitTop = -3
                ExplicitWidth = 38
              end
            end
            object Panel2: TPanel
              Left = 122
              Top = 0
              Width = 44
              Height = 40
              Caption = 'pnlIncluiCondPagto'
              Color = 10114859
              ParentBackground = False
              ShowCaption = False
              TabOrder = 2
              TabStop = True
              object btn10Reais: TSpeedButton
                Left = 1
                Top = 1
                Width = 42
                Height = 38
                Action = act10Reais
                Align = alClient
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitLeft = 4
                ExplicitTop = -3
                ExplicitWidth = 38
              end
            end
            object Panel3: TPanel
              Left = 176
              Top = 0
              Width = 44
              Height = 40
              Caption = 'pnlIncluiCondPagto'
              Color = 10114859
              ParentBackground = False
              ShowCaption = False
              TabOrder = 3
              TabStop = True
              object btn20Reais: TSpeedButton
                Left = 1
                Top = 1
                Width = 42
                Height = 38
                Action = act20Reais
                Align = alClient
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitTop = -1
                ExplicitWidth = 38
              end
            end
            object Panel4: TPanel
              Left = 230
              Top = 0
              Width = 44
              Height = 40
              Caption = 'pnlIncluiCondPagto'
              Color = 10114859
              ParentBackground = False
              ShowCaption = False
              TabOrder = 4
              TabStop = True
              object SpeedButton1: TSpeedButton
                Left = 1
                Top = 1
                Width = 42
                Height = 38
                Action = act50Reais
                Align = alClient
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitTop = -1
                ExplicitWidth = 38
              end
            end
            object Panel5: TPanel
              Left = 284
              Top = 0
              Width = 44
              Height = 40
              Caption = 'pnlIncluiCondPagto'
              Color = 10114859
              ParentBackground = False
              ShowCaption = False
              TabOrder = 5
              TabStop = True
              object btn100Reais: TSpeedButton
                Left = 1
                Top = 1
                Width = 42
                Height = 38
                Action = act100Reais
                Align = alClient
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitLeft = 4
                ExplicitTop = -3
                ExplicitWidth = 38
              end
            end
            object Panel6: TPanel
              Left = 338
              Top = 0
              Width = 44
              Height = 40
              Caption = 'pnlIncluiCondPagto'
              Color = 10114859
              ParentBackground = False
              ShowCaption = False
              TabOrder = 6
              TabStop = True
              object SpeedButton2: TSpeedButton
                Left = 1
                Top = 1
                Width = 42
                Height = 38
                Action = act200Reais
                Align = alClient
                Flat = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitLeft = -7
                ExplicitTop = -3
                ExplicitWidth = 38
              end
            end
          end
        end
        object dbgrdItens: TDBGrid
          Left = 1
          Top = 97
          Width = 398
          Height = 340
          Align = alClient
          DataSource = dsPagamentos
          DrawingStyle = gdsClassic
          FixedColor = 16119285
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgTabs, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -13
          TitleFont.Name = 'Segoe UI Semibold'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'FORMAPAGTO'
              Title.Caption = 'Forma de Pagamento'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor R$'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENCTO'
              Title.Caption = 'Dt. Vencimento'
              Visible = True
            end>
        end
      end
      object pnlOpcPagamento: TPanel
        Left = 0
        Top = 0
        Width = 232
        Height = 438
        Align = alLeft
        TabOrder = 0
        object pnlDinheiro: TPanel
          Left = 11
          Top = 7
          Width = 210
          Height = 40
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          OnClick = actPagarDinheiroExecute
          object lblOpcDinheiro: TLabel
            Left = 45
            Top = 11
            Width = 88
            Height = 17
            Caption = '(F7) DINHEIRO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = actPagarDinheiroExecute
          end
          object imgDinheiro: TImage
            Left = 7
            Top = 4
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
              4B47440000AA8D2332000000097048597300000EE900000EE9010E33421C0000
              000774494D4507E30A070D3A1322ACEF60000002AD4944415478DAA5955B4854
              511486BF89A80CE9214D33D2A48708A4ECE653A993F568D44365118405529062
              06598923925492DDB00B519145915044615816A24564446565044A699476A1D4
              C80AB28BF6CF3833CEE4D93343AD0333E7ECBDD7B7F6BFF65AE7D8086CDB7104
              9C6FB7050154308132E36C227B0201A259C0361EB0C6B8C24EBD156034292CD4
              359D4FFCE49A1BB09E99DE153F28E4B319F086081AA8D5F590137A7602C278CF
              6DCD0CD82AB2A83403EE534DB137074E403A39243095AFEED1729629BDE79966
              0DD82909F35C774B39AB4825B4729D5C5ABC2B462AC006F6536F0D48A386487A
              74E7509C5394D24C8C24F85B0D8DDCB0068CA28B155C618A16C573DA00B82A40
              AD35006DB88522B934D0CD170360B6C2C49B009B95B804E5BC90643D590302D4
              01CCE011B1EC6238DF8D806C9ED36B02D8B43C9F7EF64A699F0190AA91181300
              CEC9319F0E9E2A551E409CCE3F4563455C0E2601D6B2436DD4A44C784EA14B75
              D9CD01E6B04598BBAA82265E9A0171BC52AF6592E7AD8389DC234A18A8D25C4E
              A03A705A3275AAB646E5C00398AC5E88A6D30578C7BAC0806439F6A816162962
              A51BD0A92D7F9484241DB29D3B838074A989F0717EC6318E7052C57491C57268
              17A2820CE99FC46EC6EA6C8EAA5B3A06016F55B4B5722C96EB05FDE73257D9DE
              48386DEA086BFBAD2A58E201F4339F9B1AACE796AB898BB5A7248D9ACD468192
              F8D80C48D5C8DF96C8389FA72C65A1555E210386A92FC60F81967329F41D3004
              59A2175BE6BF4A70E6215BEDB6E97F24B4B152EF6F1F40957EF78528618C8255
              EB6D61F70584A9BBFB429410CE619558993F208F27AAFFD024F42AFE6ABEF903
              D278CD0B17A040AD5261DC7E947AC2C171D7BD0BF08133FA7C0DDA56F55DAC16
              54F1CB1210A93E39A4121A10A68F6B0607FDF435B35C2D53CA2C4604AD067DDE
              FF00644113D6F1F57C050000002574455874646174653A637265617465003230
              31392D31302D30375431333A35383A31392B30303A303057FBFA7F0000002574
              455874646174653A6D6F6469667900323031392D31302D30375431333A35383A
              31392B30303A303026A642C30000001974455874536F66747761726500777777
              2E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
            OnClick = actPagarDinheiroExecute
          end
        end
        object pnlCartaoCredito: TPanel
          Left = 11
          Top = 55
          Width = 210
          Height = 40
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          OnClick = actPagarCartaoCreditoExecute
          object lblOpcCartaoCredito: TLabel
            Left = 45
            Top = 11
            Width = 157
            Height = 17
            Caption = '(F10) CART'#194'O DE CR'#201'DITO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = actPagarCartaoCreditoExecute
          end
          object imgCartao: TImage
            Left = 7
            Top = 4
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
              4B47440000AA8D2332000000097048597300000EE900000EE9010E33421C0000
              000774494D4507E30A070D2B38DDC93530000002474944415478DAED955F688D
              611CC73FAF9DE3F837CBFE30225C6C2BC9EE66B8E142923F299344AEB8916CB3
              C232699865D2907B2D3593227F2F248AF2E74656B32C6E0CB319D2B072E6747C
              DFA7F376DE739EE7EEB8A0FCDEDED3D3F7F9BDDFDFBFEFF31C8F1CCDFB4F2082
              C554E6F07DB7C77726E740F0C3239905FD62908F94308BBC109AE03DC3CCA094
              4876096182979CE03A5FCCBA88F5ECA7C2A06D5C4BA185ACA3D1A0164192169A
              153F6C118E093F64A1CD22F1B209EA38E3A8B19A280F1D781DED99049D6C75B8
              95729A71CAA0CFB1D7C5E634C14FCAE9B75C3C6A8999E2DA19B376E78A361610
              DC642393F8C654BDE97A0BA949ADAEF2557319C820CF570EAB03827A25DAC41E
              2EB09CE9AA792665CC618867CCE71E0BE5D1C108C715F13905265091BCEF722A
              20A8610D4B78C25A766A358D151C65250F94D7B0081A95C10B756399226E90EC
              EE50A5AFEEF398CB01C1261A249F31D5352AE435135548954678901EA9608AA2
              DEE20AE725A46235B693B7CAB047395D0A081AD8C123B5B14CB1FBE9557D31C5
              DB2721F5F281A7723D2B8AA5EA4252CF4529269F6D2CE06440709B2D8A995027
              629A4854DB832A648409A6B571E556A2DDB87C235A8FAABD71F9DD60557A8C15
              BC71CC7A37B3F5FB8E738EBD791AE3F8B490BA94836D95D207BC52EF6D6B6597
              A6119272BDFA6CDB76797438F0BDFE08C352F6F5D6CA61EBD8B4086FCA42A31C
              517BADC3E45B9F39CE9FCDBAD81CE77283B609FD6450FF901F30282E02DF129A
              C090E34219485D287999EE7FE04AAB66510E04DD7FC3FFC23F4FF01BC921AD65
              79C9DF280000002574455874646174653A63726561746500323031392D31302D
              30375431333A34333A35362B30303A30301C97A05B0000002574455874646174
              653A6D6F6469667900323031392D31302D30375431333A34333A35362B30303A
              30306DCA18E70000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A0000000049454E44AE426082}
            OnClick = actPagarCartaoCreditoExecute
          end
        end
        object pnlCartaoDebito: TPanel
          Left = 11
          Top = 103
          Width = 210
          Height = 40
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          OnClick = actPagarCartaoDebitoExecute
          object lblOpcCartaoDebito: TLabel
            Left = 45
            Top = 11
            Width = 118
            Height = 17
            Caption = 'CART'#194'O DE D'#201'BITO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = actPagarCartaoDebitoExecute
          end
          object imgCartaoDebito: TImage
            Left = 7
            Top = 4
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
              4B47440000AA8D2332000000097048597300000EE900000EE9010E33421C0000
              000774494D4507E30A070D370013BCD0F3000002DB4944415478DAA5946B4C8E
              6118C77F6F1195AC0312C6229B215B36CC97A6A96633A7396D2C1D66353E101F
              1C62868D454BA629E5CC2C911CC61792C39CB68AB0D98492E4D832931CDAE4FF
              F4BEBD6FCFDBE98D6B7BF63CF7733FD7EFBE9FFFF5BF2F0B03C96606DEB81AEF
              D947AA6368A180EF6CD2E56A04934F0A671D8006C6304D080F8DDEB094774E09
              0BB94024F799402581FAFA396B0825C10168C69FBBA453AED176AEB1D70960CC
              9709B38B1CA278A57BA2808BCC8052EA58C14C92C8D407E688E42693794A08B5
              FAF207D51D037239C648EDA0A81DA07D24B2806833A09046DE6A1425794EBB00
              C861079BDB02FAB2983E1A554BE166970090C63A07E08BCB45B4020EF0485927
              D9D20A089702E5C4B554C28F2A7C55D8ADBA9239CE30192D5205DEC0793B2086
              8944C80BA9645B01BF55E15F7C64B8A62B1981BB14F1C78BCF7CE30E0F24EC24
              A15238680344EA876F735DD7F8EE7E219017DACF1F3D8571D5863000A7D8C938
              69D1600584EA6F2A58694ADDAD6DEEE1961C32CAE6CE56840158420DB3F121D3
              0AF066AA76516402846BF552E991CE1455BDD18ED8885B8B91F229E63215164D
              85B4F37FDBE825F12CCCA3C98E78C66BD6F290653CA1DE224A35EB75483A0F4F
              2555116B734898765A4B90544856C50418A2124ED7B6BA8B0CAD8A1D71426712
              2BC08855CC653EFDE5C7780693C7515E3AA507E840A749D85684A1C521072040
              462914A484239CD38933C7506D3F5EB5289678D81159B292672B00693A88E53A
              EDE6E8CD2CB58E08AE08BC4D9D22CF69DECF01881671B4E9208D556A8CDC7958
              72D5C9955F55D6FACE016ED2398E1B2DCF3ED22241803CAD5B629B0F9223FBB5
              13B60D00562B2951968A51BB28556A81498B017C10E067570077B5885875E74B
              1DD4C0881A895CD615A0BBC8D21249FF0308E6B16ADF647AE74586EB00B82847
              549ADE7830A7278033B270B1EE0E857AF40B5680D17A33FF0790FBEF221A807B
              EA8C6DC397CA9E00F63B353D233EFD059BFFE46E9B41015B0000002574455874
              646174653A63726561746500323031392D31302D30375431333A35353A30302B
              30303A3030FB3734820000002574455874646174653A6D6F6469667900323031
              392D31302D30375431333A35353A30302B30303A30308A6A8C3E000000197445
              5874536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00
              00000049454E44AE426082}
            OnClick = actPagarCartaoDebitoExecute
          end
        end
        object pnlCheque: TPanel
          Left = 11
          Top = 151
          Width = 210
          Height = 40
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 3
          OnClick = actPagarChequeExecute
          object lblOpcCheque: TLabel
            Left = 45
            Top = 11
            Width = 51
            Height = 17
            Caption = 'CHEQUE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = actPagarChequeExecute
          end
          object imgCheque: TImage
            Left = 7
            Top = 4
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
              4B47440000AA8D2332000000097048597300000EE900000EE9010E33421C0000
              000774494D4507E30A070D33213BB905A9000001674944415478DAD5D5CD2B04
              7118C0F1EF9052928B97BBF272F25A6C420E5AEBC271490E1C51FE817514D20A
              37421C44518A7012A94D28C9C1651D5CB8B2097969D7C36A766767343BBFCD61
              9FDBF334F3697EF33CCF8C468AA1A53150CC3C33ECA8032B5CD3855F1528638D
              16CE71A9029B2C53CB1BE36A40859CBF9D53219ED4805DFCB471C7AC5A171A18
              C3CB3195BCAA0107F8E8E68A85EFC439D0CA3083EC51CD871A106048804356A3
              A953A0831E39C006358455004D46A7971101B6622527E1C5230D5CA29E480CB8
              491AC9205F46680A172F7A2DA211A42449A08F3A69DD344D71B560F240169732
              7D8B32444756C024550937BCCBFB7E8CCB07289715F2E1365CA50305E4260061
              6E0D79804232E50B70660DD8458E34709F6C1921AC8139594D637CCAC23EE899
              9B754EE894EA1F805D8CCA0C361232D575A09922D33BD88EAECB4F7864FBEE2D
              601DE8A7D4D485099E6D9FCCC11CFC1F70415E0A40289DFF8DBFF105466C5EA1
              4CE7DE510000002574455874646174653A63726561746500323031392D31302D
              30375431333A35313A33332B30303A30304DBB89860000002574455874646174
              653A6D6F6469667900323031392D31302D30375431333A35313A33332B30303A
              30303CE6313A0000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A0000000049454E44AE426082}
            OnClick = actPagarChequeExecute
          end
        end
        object pnlCrediario: TPanel
          Left = 11
          Top = 199
          Width = 210
          Height = 40
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 4
          OnClick = actPagarCrediarioExecute
          object lblOpcCrediario: TLabel
            Left = 45
            Top = 12
            Width = 93
            Height = 17
            Caption = '(F4) CREDI'#193'RIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = actPagarCrediarioExecute
          end
          object imgCrediario: TImage
            Left = 7
            Top = 4
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF40000000473424954080808087C0864880000000970
              485973000000EC000000EC01792871BD0000001974455874536F667477617265
              007777772E696E6B73636170652E6F72679BEE3C1A000005874944415478DAED
              576B6C145514BEE7CEEC6E77D9944229CFA04D21883608581402CAA341C0C28F
              8246A1D488A2C616FA7ED0C716172814DA5D76B71589221482A026622191F74B
              792A119186A23C840AA1050AD26AD7EDEECEDCE3D9A91020287D608889934C66
              E6CC37E77EF77CE79C7B07D8433EE07F02AD015BAD564EA778280416A5A7F713
              2A2F45E00D05CEE257EE85294CCE5AC1380B637E91625966FFE5811258989219
              2F38BBCC05BCE46FE8906A5D6D6DBA233A33AC417288DB05089F23B0AE1667F1
              BA7611B0266675D7E9590E326604646E443846E01A06F8227DF521D913EE7024
              B08C012432840DF4AE27619E22AC89BEF130D415E5BB165D691581C294AC855C
              88757965F693CDE1CD7EF52601235732D21D0ECFEDF8A56969468F90ED370958
              4A8BD706ECF3D3E644929F388BAB24BF9504B21D0AF8E6599DCEFAE6E78C91C0
              781C327844E9649A747732D2A0B030257B33DDD5330E4E8BA3F88816C9D4D410
              19F5EF5A5CC569ED22A0CD2639238A4BE2B2C5E1B8744FD992928283B82924C7
              B5E4C22D5B5B09B8E62EFA38EAD99183F47AB95D65E7F329FCE8817D3FA4CCCF
              8B6F7504F4B25C4510777B0890241D7C8A12D9660964218FA1B21A4A220B90C5
              72EE9722548E2F68AEB9A4951A08757AE02A09D82A74EA3954780279E60CF837
              2AF37DD5AE1C90995C2A79E514C520467114664AB66885AB993A94C399C0891A
              98C3663F28D5B2906CE4708F00DE287BF9D7AA4171294C49FE6F1390983E9AA1
              7806A801C88C2F5711FB0810E3350984F489E684ABD3341EC8B74B003F2B4C24
              2035047A718424D8D3BE08A8FAFE00EC49F22E68965FE43C17D685038CA667F4
              2BF8A5E3E075191459CB0955828382F96A293A53286308C12A6513FCA834A1B5
              ED1140DD3244B114380F44E1B7EC519D86D1DC666B1100CCB0EFFDD588829D60
              12BFC4544C2039F6D0EC83518823B2C44D798E92FDD68C8C2E56BBFD5ADB2280
              3A07B5D1D717A4658EE58275CF1A1D3AF416016499F6BDD74D0261BDA5ACE41C
              2D582B033940F5504745934ADE030D299CCE6AAAA28EE4676A1B7240378D4083
              986032A9604F1F1BDA9756BCF866EDF952DBCE6B06012C9E8A4ED020BBA8EF57
              21483D283A3369C0385A53CAFBD554BF79AA67F8AA0257C96BAD266080A0CE94
              C9119C8ADF28F90F791043A821446A9AA3F25DE02A813CA43909952A2340BD47
              D50D438E318A0A2E59A700F3CBBD88D0D305A525656D91E07D7AAC40800134BB
              93B421890614BBE8DA954430FFE5A6916C57C93696E4D941B8C70D2653C7C1C3
              860F1A3874F8C5033BB73DF653E5B1F21C5BD18A76E740A00FE4BB6C330B93B2
              2238605C007B7B0E280DE64439D8FD11AD9ABBA3268C5E1F1313E30D2CD56E21
              BF030C23E8DB64D016CF96134826542F4A3833707091D243A8250C241F06BAAF
              D0C09C4D26575E2A8BE3947CE1E47DC35C97ED5BDC620DF6F982D6E8657C0326
              E5DE58909A4DE589BD490AD77D0938F2E797783C9EFD807882B5E0F07AD53F8C
              6670FB9BD069292D99A9D93616D1FE00C88788D64FCE1B17B01189CF6EDF53FE
              2D81B355E727549F39FDA9D7DBD4D81202C60E667F58B76E9E7DDBB76D9A65C9
              CCD50854146D04CEB609C40B41B1795B02365B9EF583465F6381D566BBFA8F04
              EAEADC3D51512B0910DA120281E36A6D0D3B5D59B963F28C97C7236D22958A25
              23282907906453F4B1B9CF0730AB9DCBF75E3A7F71EACD3DE203FD31294D4A32
              98C3FB9F9C14173FBB6B8F8E5B4982C334C05ACA89E986D8DC117535F56F55AC
              5995F6766EFA13F795A0ADC77BF38A16478D1C33AB4FFFC8D5FA1B6736059DDD
              9DE5EE336E85088D883D7668FFC453DF1FCD4C2A2C58F9AF11086C4E8944F9A3
              7DFBC5440E1E12660E0E660DF537D8F1C3076BAFD45E2C9F3D37EF8EDDF1BFF6
              6FB8387DCE407370E7444AC2DE28F0D4EF0DF5CB721D8BCFDE8D7BE83FA77F02
              EAE0EF3FE040752A0000000049454E44AE426082}
            OnClick = actPagarCrediarioExecute
          end
        end
        object pnlFinalizarVenda: TPanel
          Left = 11
          Top = 391
          Width = 210
          Height = 40
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 8
          OnClick = actFinalizaVendaExecute
          object lblOpcFinalizarVenda: TLabel
            Left = 45
            Top = 12
            Width = 138
            Height = 17
            Caption = '(F6) FINALIZAR VENDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = actFinalizaVendaExecute
          end
          object imgFinalizarVenda: TImage
            Left = 7
            Top = 4
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
              4B47440000AA8D2332000000097048597300000EE900000EE9010E33421C0000
              000774494D4507E30A070E2904C2D6956C0000030D4944415478DAD5947B4C4E
              611CC73FAF4D862484AD9A214A6D090D6985DC7299DBA6DCE6BA24C35CC6DCA6
              E53E9B359B3497C818D5DC72A710D9B4427259CBA5C6868D9854EE86EF396FB5
              A3AD795FFFF9BD7BCF797ECF39E7FB3CBFEFEFFB7C6D341CE3C9A65A77578672
              B2A1976C0D7EDE934B7C225EA3F5342392BBCE01D8B8CE768A39AFF1487A11C7
              007E390330915806E3CF058D5732081FF690E13840531E8A81FBFAFCB0DE98CE
              5EBC5848201F1D0548C083058C6635A1CA7249A54A44BE649D6300DEE489C24A
              EE318302E5C1A491C5672611C6734700D2B8C90E9613C0AC9A9903943287FDF8
              32E5EF00A1AAB807AD28A40FAF6AE6DA73874465AB55586E7D80404B56AC7F3E
              AB24A014CA386379329ACEC488872DF455166005F8A18A6B631EE9AA7AB6FA9E
              4E38C72C0013B8210E0A55466FDD77D5CDF7B351817B5D7A9C22867344EBA5F0
              82AF84484E91E6933C511BC359264B9F8144D57D5161E327AF35C8D4EAF0409D
              EF2FE15649461E7C6120171967BE788D775AB7A59490CB084BD915C60E3A68F0
              83EFBA6EA535EF79A32202CCDC1A8DC5D03EDAD186B7D2666D94DB28B7BC14C8
              1A29FF294BD840443D801C1DAC44BA708ECDDAA985446FB349FF16DD8D1D44A9
              39B1B8A8EBF6B825F23CD53423AAA44608A285999549094DD4057B14F04D8AC9
              AA05F0E4911847CD0BE2194B99CB139A8BCEBEA6323E89BCAEEC56091D057943
              7303F013DC1F00974D7914897503C05536E2C7C11A80E9828F973B190099D2A9
              21B921FF2B80B7C43C4C9AF0A344DAF90700B47202DDD4A92F24C9624A9C0588
              6585449F2D83F521596D8E760EE094AC2658C7CC1060929CB313E9CE01B8CBD8
              4E339F45ECD4A970138DFE5621E59802B10B2996C712926B0D40B584E42B630F
              9137AE157DBE9253B28EFC58AE1A00D1FABBE8A13DF24590972A34A2523B426D
              7333B352362A5FAC5F072D97C218A9B5D4A6339EA56D6D72E8F04C951B2D9347
              A4CA5CC6082C8E70C354DDC5AA8F430013D8C621F9D24966725BC7EA14117657
              7651BD8E44356D39A1EB517112A63D4CE38ACDA10FADD18851B23A17994A061F
              E0370A872D320B6C1A480000002574455874646174653A637265617465003230
              31392D31302D30375431343A34313A30342B30303A3030BA6E69730000002574
              455874646174653A6D6F6469667900323031392D31302D30375431343A34313A
              30342B30303A3030CB33D1CF0000001974455874536F66747761726500777777
              2E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
            OnClick = actFinalizaVendaExecute
          end
        end
        object pnlDesconto: TPanel
          Left = 11
          Top = 247
          Width = 210
          Height = 40
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 5
          OnClick = actDescontoExecute
          object lblOpcDesconto: TLabel
            Left = 45
            Top = 12
            Width = 93
            Height = 17
            Caption = '(F3) DESCONTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = actDescontoExecute
          end
          object imgDesconto: TImage
            Left = 7
            Top = 4
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
              4B47440000AA8D2332000000097048597300000EE900000EE9010E33421C0000
              000774494D4507E30A0713180819C3EED6000002DE4944415478DA9D956D4C8D
              6118C77F75CC507C310BB326A516F3414C3EA0246914F2324D796BCA643E3036
              320C9928236F43112BA6D18C6113D2580C4B6416332679D9C268CDBC9BFF79CE
              39EB39473BCF33F7F9F05CF773DFD7EFB9EFEBFA5FD709C0FF88611909F4E733
              0F29E724BF7D3704F87176B09D155CE62CAFE8C53816F094345EDB07EC275DBF
              2BB21651C14F42A86400B17CB40798C405E2A993D5875646705F5610B76860A1
              3D400DCFC9369CEE11CD1BC6F052B378AE11AA992520984F4CA4565612978894
              63156DC6FE163672C41A10C513C5FE9DACBE0ADD3365A0D8BD7295DBACB70684
              F1828134BB617359CB14239C705379C9B70674E583625F256B34FB28E220B952
              81F3FD7BB28CF79641ACD0E113F5ECA11BA77391597CD32C8B5D4A65BB1D4094
              B4B79ABD4640DB18A24840047728A4C05E1A21933276B2852F842BA5904AA900
              69DE72F60780C91C920EAA25E59EC409534C1EBFBCB7F80740777D718212DA26
              05561A52720D07CB856CA0C80AD0F9E8C22915D7096670E37F000E652841DA6C
              229973FF0202B518A354211955F3A893F532896ABCB1B28E1C5FC07C36D14F09
              6CD1C60886F9ACBE5556A299297D386BD359AFF3CC000787C910A0442A748D30
              45DE3C064917DF5464776547AB260E9067061449BC49D4FBBD7F9DCA79839EBD
              A58846A9F38F0790CC6CB5AC396695D38DE1FA4A88E92211ECD1CE1A5544B59A
              DC5849CCAD83256A5FE74961B3B9CE74C802A649BAAB4C312864B79EA592D828
              577774027274976CC5369533126E3E5663A5F6C4A94FE1022C56A9E670D49859
              230259AA33644A957800F5D255AC51AACE3195D36E44A23A41B08F7B90DE86EA
              9FE258C7AB00A5AA569A9AEE85D8C65045A49EAF3E807625F0B8D1E84C006776
              6B792CC47713A255096DB28C069E2C840BD1A8D2F020CA75D70C3BEE1DE51C21
              C403217EC84E512873DD61B50D80C15CD729D214A62AC5798D3D77EF86122944
              3323550D5BEDBAFB76A428D557093BECBBC35F247ABD00E0E38CC70000002574
              455874646174653A63726561746500323031392D31302D30375431393A32343A
              30382B30303A3030347E627E0000002574455874646174653A6D6F6469667900
              323031392D31302D30375431393A32343A30382B30303A30304523DAC2000000
              1974455874536F667477617265007777772E696E6B73636170652E6F72679BEE
              3C1A0000000049454E44AE426082}
            OnClick = actDescontoExecute
          end
        end
        object pnlLimpar: TPanel
          Left = 11
          Top = 343
          Width = 210
          Height = 40
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 7
          OnClick = actLimparExecute
          object lblLimpar: TLabel
            Left = 45
            Top = 12
            Width = 136
            Height = 17
            Caption = 'LIMPAR PAGAMENTOS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = actLimparExecute
          end
          object imgLimpar: TImage
            Left = 7
            Top = 4
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200806000000737A7AF40000000473424954080808087C0864880000000970
              48597300000B1300000B1301009A9C180000007E4944415478DA63641860C038
              EA8051078C3A60D40144AA2B06624B2AD919428E03D60071302D3C3D641C4033
              30A81D2007C45654B2E708103F21D5011140BC9C4A0E086580A4A3A1E5001920
              B6A092038E03F153521D401730281DF09F4A66AF6480A4A3A1E780155472C031
              209E448E03E80A461D30EA8051078C3A00009D5711219FDC2DF4000000004945
              4E44AE426082}
            OnClick = actLimparExecute
          end
        end
        object pnlUtilizarCredito: TPanel
          Left = 11
          Top = 293
          Width = 210
          Height = 40
          BevelInner = bvLowered
          Color = clWhite
          ParentBackground = False
          TabOrder = 6
          OnClick = actUtilizarCreditoExecute
          object lblUtilizarCredito: TLabel
            Left = 45
            Top = 12
            Width = 111
            Height = 17
            Caption = 'UTILIZAR CR'#201'DITO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = actUtilizarCreditoExecute
          end
          object imgUtilizarCredito: TImage
            Left = 7
            Top = 4
            Width = 32
            Height = 32
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
              00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
              4B47440000AA8D2332000000097048597300000EE900000EE9010E33421C0000
              000774494D4507E30A070D3A1322ACEF60000002AD4944415478DAA5955B4854
              511486BF89A80CE9214D33D2A48708A4ECE653A993F568D44365118405529062
              06598923925492DDB00B519145915044615816A24564446565044A699476A1D4
              C80AB28BF6CF3833CEE4D93343AD0333E7ECBDD7B7F6BFF65AE7D8086CDB7104
              9C6FB7050154308132E36C227B0201A259C0361EB0C6B8C24EBD156034292CD4
              359D4FFCE49A1BB09E99DE153F28E4B319F086081AA8D5F590137A7602C278CF
              6DCD0CD82AB2A83403EE534DB137074E403A39243095AFEED1729629BDE79966
              0DD82909F35C774B39AB4825B4729D5C5ABC2B462AC006F6536F0D48A386487A
              74E7509C5394D24C8C24F85B0D8DDCB0068CA28B155C618A16C573DA00B82A40
              AD35006DB88522B934D0CD170360B6C2C49B009B95B804E5BC90643D590302D4
              01CCE011B1EC6238DF8D806C9ED36B02D8B43C9F7EF64A699F0190AA91181300
              CEC9319F0E9E2A551E409CCE3F4563455C0E2601D6B2436DD4A44C784EA14B75
              D9CD01E6B04598BBAA82265E9A0171BC52AF6592E7AD8389DC234A18A8D25C4E
              A03A705A3275AAB646E5C00398AC5E88A6D30578C7BAC0806439F6A816162962
              A51BD0A92D7F9484241DB29D3B838074A989F0717EC6318E7052C57491C57268
              17A2820CE99FC46EC6EA6C8EAA5B3A06016F55B4B5722C96EB05FDE73257D9DE
              48386DEA086BFBAD2A58E201F4339F9B1AACE796AB898BB5A7248D9ACD468192
              F8D80C48D5C8DF96C8389FA72C65A1555E210386A92FC60F81967329F41D3004
              59A2175BE6BF4A70E6215BEDB6E97F24B4B152EF6F1F40957EF78528618C8255
              EB6D61F70584A9BBFB429410CE619558993F208F27AAFFD024F42AFE6ABEF903
              D278CD0B17A040AD5261DC7E947AC2C171D7BD0BF08133FA7C0DDA56F55DAC16
              54F1CB1210A93E39A4121A10A68F6B0607FDF435B35C2D53CA2C4604AD067DDE
              FF00644113D6F1F57C050000002574455874646174653A637265617465003230
              31392D31302D30375431333A35383A31392B30303A303057FBFA7F0000002574
              455874646174653A6D6F6469667900323031392D31302D30375431333A35383A
              31392B30303A303026A642C30000001974455874536F66747761726500777777
              2E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
            OnClick = actUtilizarCreditoExecute
          end
        end
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 632
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      Caption = 'pnlTitulo'
      ShowCaption = False
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 607
        Height = 30
        Align = alClient
        AutoSize = False
        Caption = '   PAGAMENTO'
        Color = 7024384
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitLeft = -6
        ExplicitTop = -4
        ExplicitWidth = 858
      end
      object pnlBotaoSair: TPanel
        Left = 607
        Top = 0
        Width = 25
        Height = 30
        Align = alRight
        BevelOuter = bvNone
        Caption = 'X'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Roboto Bk'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        OnClick = pnlBotaoSairClick
      end
    end
    object pnlTopo: TPanel
      Left = 1
      Top = 31
      Width = 632
      Height = 180
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 1
      object pnlTopoRestante: TPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 30
        Align = alTop
        TabOrder = 0
        object lblTitRestante: TLabel
          Left = 1
          Top = 1
          Width = 170
          Height = 28
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = '             VALOR RESTANTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object lblVlRestante: TLabel
          Left = 400
          Top = 1
          Width = 230
          Height = 28
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
      object pnlTopoTroco: TPanel
        Left = 0
        Top = 30
        Width = 632
        Height = 30
        Align = alTop
        TabOrder = 1
        object lblTitTroco: TLabel
          Left = 1
          Top = 1
          Width = 170
          Height = 28
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = '             TROCO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object lblTroco: TLabel
          Left = 400
          Top = 1
          Width = 230
          Height = 28
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
      object pnlTopoAcrescimo: TPanel
        Left = 0
        Top = 90
        Width = 632
        Height = 30
        Align = alTop
        TabOrder = 3
        object lblTitAcrescimo: TLabel
          Left = 1
          Top = 1
          Width = 170
          Height = 28
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = '             ACR'#201'SCIMO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object lblVlAcrescimo: TLabel
          Left = 400
          Top = 1
          Width = 230
          Height = 28
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
      object pnlTopoDesconto: TPanel
        Left = 0
        Top = 150
        Width = 632
        Height = 30
        Align = alTop
        TabOrder = 5
        object lblTitDesconto: TLabel
          Left = 1
          Top = 1
          Width = 170
          Height = 28
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = '             DESCONTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object lblDesconto: TLabel
          Left = 400
          Top = 1
          Width = 230
          Height = 28
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
      object pnlTopoTotPagar: TPanel
        Left = 0
        Top = 60
        Width = 632
        Height = 30
        Align = alTop
        TabOrder = 2
        object lblTitTotPagar: TLabel
          Left = 1
          Top = 1
          Width = 170
          Height = 28
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = '             TOTAL A PAGAR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object lblTotPagar: TLabel
          Left = 400
          Top = 1
          Width = 230
          Height = 28
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
      object pnlCredito: TPanel
        Left = 0
        Top = 120
        Width = 632
        Height = 30
        Align = alTop
        TabOrder = 4
        object lbl1: TLabel
          Left = 1
          Top = 1
          Width = 170
          Height = 28
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = '             CR'#201'DITO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object lblCredito: TLabel
          Left = 400
          Top = 1
          Width = 230
          Height = 28
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'R$ 0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
      end
    end
  end
  object actlst1: TActionList
    Left = 464
    Top = 392
    object actVoltar: TAction
      Caption = 'actVoltar'
      OnExecute = actVoltarExecute
    end
    object actPagarDinheiro: TAction
      Caption = 'actPagarDinheiro'
      ShortCut = 118
      OnExecute = actPagarDinheiroExecute
    end
    object actPagarCartaoCredito: TAction
      Caption = 'actPagarCartaoCredito'
      ShortCut = 121
      OnExecute = actPagarCartaoCreditoExecute
    end
    object actPagarCartaoDebito: TAction
      Caption = 'actPagarCartaoDebito'
      OnExecute = actPagarCartaoDebitoExecute
    end
    object actPagarCheque: TAction
      Caption = 'actPagarCheque'
      OnExecute = actPagarChequeExecute
    end
    object actPagarCrediario: TAction
      Caption = 'actPagarCrediario'
      ShortCut = 115
      OnExecute = actPagarCrediarioExecute
    end
    object actDesconto: TAction
      Caption = 'actDesconto'
      ShortCut = 114
      OnExecute = actDescontoExecute
    end
    object actFinalizaVenda: TAction
      Caption = 'actFinalizaVenda'
      ShortCut = 117
      OnExecute = actFinalizaVendaExecute
    end
    object actLimpar: TAction
      Caption = 'actLimpar'
      OnExecute = actLimparExecute
    end
    object act2Reais: TAction
      Caption = '+R$'#13#10' 2,00'
      OnExecute = act2ReaisExecute
    end
    object act5Reais: TAction
      Caption = '+R$'#13#10' 5,00'
      OnExecute = act5ReaisExecute
    end
    object act10Reais: TAction
      Caption = ' +R$'#13#10'10,00'
      OnExecute = act10ReaisExecute
    end
    object act20Reais: TAction
      Caption = ' +R$'#13#10' 20,00'
      OnExecute = act20ReaisExecute
    end
    object act50Reais: TAction
      Caption = ' +R$'#13#10' 50,00'
      OnExecute = act50ReaisExecute
    end
    object act100Reais: TAction
      Caption = '  +R$'#13#10'100,00'
      OnExecute = act100ReaisExecute
    end
    object act200Reais: TAction
      Caption = ' + R$'#13#10'200,00'
      OnExecute = act200ReaisExecute
    end
    object actUtilizarCredito: TAction
      Caption = 'actUtilizarCredito'
      OnExecute = actUtilizarCreditoExecute
    end
  end
  object cdsPagamentos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FORMAPAGTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR'
        DataType = ftCurrency
      end
      item
        Name = 'VENCTO'
        DataType = ftDate
      end
      item
        Name = 'VALOR_PAGO'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 544
    Top = 392
    object cdsPagamentosFORMAPAGTO: TStringField
      FieldName = 'FORMAPAGTO'
    end
    object cdsPagamentosVALOR: TCurrencyField
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.00'
    end
    object cdsPagamentosVENCTO: TDateField
      FieldName = 'VENCTO'
    end
    object cdsPagamentosVALOR_PAGO: TCurrencyField
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsPagamentos: TDataSource
    DataSet = cdsPagamentos
    Left = 543
    Top = 454
  end
end

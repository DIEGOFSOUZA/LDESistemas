inherited Frm_ContasAReceber: TFrm_ContasAReceber
  BorderStyle = bsNone
  Caption = 'Contas a receber'
  ClientHeight = 665
  ClientWidth = 1024
  OnCreate = FormCreate
  ExplicitWidth = 1024
  ExplicitHeight = 665
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 1024
    Height = 30
    Align = alTop
    AutoSize = False
    Caption = '         CONTAS A RECEBER'
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
    ExplicitTop = -5
  end
  object pnlFundo: TPanel
    Left = 0
    Top = 30
    Width = 926
    Height = 635
    Align = alClient
    TabOrder = 0
    object pnlRodape: TPanel
      Left = 1
      Top = 593
      Width = 924
      Height = 41
      Align = alBottom
      BorderStyle = bsSingle
      Color = 16764573
      ParentBackground = False
      TabOrder = 3
      object Label4: TLabel
        Left = 197
        Top = 9
        Width = 61
        Height = 17
        Caption = 'A VENCER'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 15
        Top = 9
        Width = 62
        Height = 17
        Caption = 'VENCIDAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 378
        Top = 9
        Width = 72
        Height = 17
        Caption = 'PENDENTES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 570
        Top = 10
        Width = 63
        Height = 17
        Caption = 'BAIXADAS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 753
        Top = 10
        Width = 36
        Height = 17
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblVencidas: TLabel
        Left = 83
        Top = 9
        Width = 110
        Height = 17
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblaVencer: TLabel
        Left = 265
        Top = 10
        Width = 110
        Height = 17
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPendente: TLabel
        Left = 457
        Top = 9
        Width = 110
        Height = 17
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBaixadas: TLabel
        Left = 638
        Top = 10
        Width = 110
        Height = 17
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotal: TLabel
        Left = 795
        Top = 10
        Width = 110
        Height = 17
        AutoSize = False
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlFiltro: TPanel
      Left = 1
      Top = 1
      Width = 924
      Height = 128
      Align = alTop
      TabOrder = 0
      object Label9: TLabel
        Left = 752
        Top = 112
        Width = 166
        Height = 13
        Caption = 'Nenhuma duplicata encontrada.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object rgSituacao: TRadioGroup
        Left = 4
        Top = 17
        Width = 185
        Height = 105
        Caption = 'Situa'#231#227'o duplicata'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Pendente'
          'Com baixa'
          'Tudo')
        ParentFont = False
        TabOrder = 0
      end
      object rgPesquisar: TRadioGroup
        Left = 195
        Top = 17
        Width = 185
        Height = 105
        Caption = 'Filtro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          'Data Vencimento'
          'Data de emiss'#227'o'
          'Data de baixa'
          'Cliente'
          'N'#186' documento')
        ParentFont = False
        TabOrder = 1
        OnClick = rgPesquisarClick
      end
      object nbFiltros: TNotebook
        Left = 406
        Top = 33
        Width = 399
        Height = 64
        PageIndex = 2
        TabOrder = 2
        object TPage
          Left = 0
          Top = 0
          Caption = 'VenctoEmissao'
          object Label1: TLabel
            Left = 51
            Top = 24
            Width = 81
            Height = 17
            Caption = 'PERIODO DE: '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 237
            Top = 24
            Width = 8
            Height = 17
            Caption = 'A'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object dtp1: TDateTimePicker
            Left = 138
            Top = 20
            Width = 95
            Height = 25
            Date = 43810.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.425332060192886300
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object dtp2: TDateTimePicker
            Left = 249
            Top = 20
            Width = 95
            Height = 25
            Date = 43810.000000000000000000
            Format = 'dd/MM/yyyy'
            Time = 0.425332060192886300
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'Cliente'
          object edpCliente: TEdPesquisa
            Left = 8
            Top = 17
            Width = 374
            Height = 30
            PermitirBranco = Sim
            ConsultaTabela.Tabela = 'CLIENTE'
            ConsultaTabela.Pesquisa = 'codigo'
            ConsultaTabela.Mostrar = 'nome_razao'
            ConsultaTabela.ExecutaSQL = DM.ExecutaSQL1
            OnPesquisa = edpClientePesquisa
            Titulo.Left = 0
            Titulo.Top = 3
            Titulo.Width = 39
            Titulo.Height = 17
            Titulo.Caption = 'Cliente'
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
            TabOrder = 0
            TabStop = True
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'Doc'
          object Label3: TLabel
            Left = 80
            Top = 23
            Width = 112
            Height = 17
            Caption = 'N'#186' VENDA / DOC. :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object edtDoc: TEdit
            Left = 198
            Top = 20
            Width = 121
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 0
            Text = '0'
          end
        end
      end
    end
    object dbgrdDuplicata: TDBGrid
      Left = 1
      Top = 129
      Width = 924
      Height = 464
      Align = alClient
      DataSource = dsGrid
      DrawingStyle = gdsGradient
      GradientEndColor = 13864803
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      PopupMenu = pm1
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = dbgrdDuplicataCellClick
      OnDrawColumnCell = dbgrdDuplicataDrawColumnCell
      OnDblClick = dbgrdDuplicataDblClick
      OnKeyPress = dbgrdDuplicataKeyPress
      OnTitleClick = dbgrdDuplicataTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'SELECAO'
          Title.Caption = ' '
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ORDEM'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DT_VENC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO_BAIXA'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Width = 400
          Visible = True
        end>
    end
    object chkSelTudo: TCheckBox
      Left = 8
      Top = 130
      Width = 15
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = chkSelTudoClick
    end
  end
  object pnlAcoes: TPanel
    Left = 926
    Top = 30
    Width = 98
    Height = 635
    Align = alRight
    BorderStyle = bsSingle
    TabOrder = 1
    object pnlSair: TPanel
      Left = 12
      Top = 539
      Width = 70
      Height = 74
      BevelOuter = bvNone
      Caption = 'pnlAddMovimentacao'
      Color = 7024384
      ParentBackground = False
      ShowCaption = False
      TabOrder = 5
      object lblSair: TLabel
        Left = 0
        Top = 40
        Width = 70
        Height = 34
        Align = alBottom
        Alignment = taCenter
        Caption = 'SAIR'#13#10
        Color = 7024384
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        OnClick = actSairExecute
        ExplicitWidth = 28
      end
      object imgSair: TImage
        Left = 0
        Top = 0
        Width = 70
        Height = 40
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
          A64944415478DA63641860C038EA006C82FF81802A8603C1D07600310650AA7F
          D401B474C06FA076B68172C04F201501D4BE7EA01C10488CE5347300D40C2120
          150F34A27F20428009481D076233209E0034A67020422018482D076256902380
          B808681C460147330710EB08921D406131DD0734B278683B8014801E05D81223
          DD1221AE9C30ACB3E1801644035B140F86CA68C0ABE341D12019060EA0140C5D
          07D0138C3A00001CF0CE21B53099390000000049454E44AE426082}
        OnClick = actSairExecute
        ExplicitLeft = 32
        ExplicitTop = 8
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object btnSair: TSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 40
        Action = actSair
        Align = alClient
        Flat = True
        ExplicitLeft = 32
        ExplicitTop = 16
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object pnlImprimir: TPanel
      Left = 12
      Top = 331
      Width = 70
      Height = 74
      BevelOuter = bvNone
      Caption = 'pnlAddMovimentacao'
      Color = 7024384
      ParentBackground = False
      ShowCaption = False
      TabOrder = 3
      object lblImprimir: TLabel
        Left = 0
        Top = 57
        Width = 70
        Height = 17
        Align = alBottom
        Alignment = taCenter
        Caption = 'IMPRIMIR'
        Color = 7024384
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        OnClick = actImprimirExecute
        ExplicitWidth = 60
      end
      object imgImprimir: TImage
        Left = 0
        Top = 0
        Width = 70
        Height = 57
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000001
          EC4944415478DAED974B2844511880CF552C4459587894B2A1A448290B2CC402
          291B0A4948796CB0404C29C942A29035CA86422479E595C7DA8E2CA42CC502E5
          D5F8FEEE9D9AA6317371EE5870EBEB9F3973FEFF7C73EFB9F79C6BA85F3E0CDF
          06B7DB5D4FA8FE66BD7368370CE3ED270283843A98FBE2E0D950000BF207EC4A
          7C26904F81FCAF8C4E5E07A1CFAAB9635742B74093322FDF36EC4115755E432A
          405E1A9F33ED4A3822607DB725E198805D09DD02CD90E3F353162CC3BAF23331
          750B8C06E9D64DDD61A70492082901BA88DC0A755D8E08D8103C201CFC0BFC0B
          FC69817DC2E16F0A8413A2A87B171201EA44136AA110E2E1168E6186DA378E0A
          50A398300D61B00135B009E910033DD49F7044C01A7C1564805E6B8C47A90947
          D00503E0927541AB8075DA2F618EFC4EAB2DD22340DBA1D5D64A18870CDD0252
          B81F92C97F0A2020E39EC2996E8145C23DB90D5E6D1E815238F1EA2ECB77AD6E
          01B9C6DBE4F67BB545101E20DC4FCAB36E8135C215B96D3EED32FBE37CBA9741
          856E0199F572FA53C97F0FD2572ED7BB6E8144C28532B75E9301FAE52973A35A
          A4F3D54C8E31A8841165EE9067FDD4CF252C29737BD6A8FBE5744B1E2ED49087
          CD903267FD3C5C432C9440B9329F922DF47D31BE3950D00309793F905B4DD682
          0465AE0572974C31F0AEA7DF079ED65D8BF25E04770000000049454E44AE4260
          82}
        OnClick = actImprimirExecute
        ExplicitLeft = 32
        ExplicitTop = 8
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object btnImprimir: TSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 57
        Action = actImprimir
        Align = alClient
        Flat = True
        ExplicitLeft = 32
        ExplicitTop = 16
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object pnlAltVencto: TPanel
      Left = 12
      Top = 227
      Width = 70
      Height = 74
      BevelOuter = bvNone
      Caption = 'pnlAddMovimentacao'
      Color = 7024384
      ParentBackground = False
      ShowCaption = False
      TabOrder = 2
      object lblAltVencto: TLabel
        Left = 0
        Top = 44
        Width = 70
        Height = 30
        Align = alBottom
        Alignment = taCenter
        Caption = '(F7)'#13#10'ALT.VENCTO'
        Color = 7024384
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        OnClick = actAlteraVenctoExecute
        ExplicitWidth = 68
      end
      object imgAltVencto: TImage
        Left = 0
        Top = 0
        Width = 70
        Height = 44
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
          8B4944415478DAED96CD4B15511887CF48918646117DB82AC2455F1618521B29
          3F1622A5B82BA84D11155289062D8452C84542D845A544FC03DA055990A66D2A
          5A181269B508AA45F42525296569DD9EB779A3613C57EF9D3B631B071EDEB9EF
          9CF3FE7EF7CCF918C7FCE7CB5930104691783CBE8D7004CA601D4CC12BE8852E
          C7715E446200E12584181C858C04CD7E4203262E866A40C56FC36EF80A57E01A
          3C850D701F72E0099462E063D806AE128EC14BA840E0B9E65711FA211F8655FC
          83E60FFB472290017DE74330093B1288CB4814ABF86AEEEFC066D8E89D13410D
          C87B3F05972876C622FE4CC5DFABB8E4B76AF716F267D33530A2FFA6906283FC
          CEE6FE818ABF865DE4DF915FC3FD80B61D37EE9C18E25941BA06BE68B11C8A4D
          68AE89700EA6E100DC53F14DC69D8807E1318CD16745600308499F6F20AB208B
          62939E678D84F36AE28D71F7843FABC0B8F3458C8FD3675920032ADE01278CBB
          F4F228F6D6D7E6AF09633C4B90FC4EEE1FC230BFF353366011DF47A181046DE5
          75541BCFFA27D74AA88556727529194845DCD327DB333FB6100661316C273F92
          B48120E2BEFE22DE03EBA19DBE27BDCF9D393AA7244EFBB58431580422BC1F8E
          4326DC8572FAFF48CA4000F112C20D58EA7B2487919C13F57EF18406D214FF6E
          FE1DC77DD0ED7DE7731A50F136A851F14A0AF4CF225E44B805B21B76C990D3FE
          9749F2B219B84C381DE09FCB30D7D03E9EACF80C0314AC225C37EE4EB7376A71
          9B01196A295C4BB158D4E236039F09CB6125053F452D6E33302AE2902BC769D4
          E23603370915D044E1C6A8C56D068A8DFBF5229B4733741AF7683D0417202B4C
          F11906D4847C62B518FB26254BB42E2C71AB0135B187500F7286CBBEFE086208
          F784253CAB81F9BC160CFC06465442303CD0D3070000000049454E44AE426082}
        ExplicitLeft = 32
        ExplicitTop = 8
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object btnAltVencto: TSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 44
        Action = actAlteraVencto
        Align = alClient
        Flat = True
        ExplicitLeft = 32
        ExplicitTop = 16
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object pnlBaixa: TPanel
      Left = 12
      Top = 123
      Width = 70
      Height = 74
      BevelOuter = bvNone
      Caption = 'pnlAddMovimentacao'
      Color = 7024384
      ParentBackground = False
      ShowCaption = False
      TabOrder = 1
      object Label11: TLabel
        Left = 0
        Top = 44
        Width = 70
        Height = 30
        Align = alBottom
        Alignment = taCenter
        Caption = '(F5)'#13#10'RECEBER'
        Color = 7024384
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        OnClick = actBaixaDuplicataExecute
        ExplicitWidth = 49
      end
      object imgBaixa: TImage
        Left = 0
        Top = 0
        Width = 70
        Height = 44
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
          D94944415478DAEDD6ED09C2301080E17409CD088253E80A8EA14EA38EE108EA
          1AD5FF8AB884BECA1502A6925EAAAD7007C7F58BDCD3B4A12D5CC75118E0AF01
          77E2350861000318C00006F82A803E73CA963ED71400873D65C6E14D3680C116
          941559929310110348F3033922979C5AE70206943D39264F82B8C400EC0E293B
          B9F6484EAB6B731F4114110234CD93017508F22CA7BDA679238020C2E75B4A75
          C1F6DB7BD22A2032136134BA7335A006A16AAE0608C20BC249F3E4696F0510CC
          C47315DCB463F4FBAFB85AE7D94D3E7C2BFA0DF84518A073C003B6DB96214F63
          B2AC0000000049454E44AE426082}
        OnClick = actBaixaDuplicataExecute
        ExplicitLeft = 32
        ExplicitTop = 8
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object btnBaixaDuplicata: TSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 44
        Action = actBaixaDuplicata
        Align = alClient
        Flat = True
        ExplicitLeft = 32
        ExplicitTop = 16
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object pnlBoleto: TPanel
      Left = 12
      Top = 435
      Width = 70
      Height = 74
      BevelOuter = bvNone
      Caption = 'pnlAddMovimentacao'
      Color = 7024384
      ParentBackground = False
      ShowCaption = False
      TabOrder = 4
      object Label13: TLabel
        Left = 0
        Top = 40
        Width = 70
        Height = 34
        Cursor = crHandPoint
        Align = alBottom
        Alignment = taCenter
        Caption = 'GERAR'#13#10'BOLETO'
        Color = 7024384
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        OnClick = actGerarBoletoExecute
        ExplicitWidth = 50
      end
      object imgBoleto: TImage
        Left = 0
        Top = 0
        Width = 70
        Height = 40
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000000
          8F4944415478DAEDD5510A80200C06E03C445DB5D7F5D659EB10F513FA129A1B
          4C9CB11F24A54D3F7C314C9D131C3034E0429E4D907F00D286D5A678E01B20ED
          B70BE05EA946BD031C2006A064C5672FFC26B46ECD6FA080F83C5C159041540F
          5707C47A8AF5C4ACD70548E3003180FBB8D4527ABCC601E4D698CE981E182796
          8BB4DF36A075EC027AC4010EE80EB801A7C3013081FF1CE60000000049454E44
          AE426082}
        OnClick = actGerarBoletoExecute
        ExplicitLeft = 32
        ExplicitTop = 8
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object btnGerarBoleto: TSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 40
        Cursor = crHandPoint
        Action = actGerarBoleto
        Align = alClient
        Flat = True
        ExplicitLeft = 32
        ExplicitTop = 16
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
    object pnlLocalizar: TPanel
      Left = 12
      Top = 19
      Width = 70
      Height = 74
      BevelOuter = bvNone
      Caption = 'pnlAddMovimentacao'
      Color = 7024384
      ParentBackground = False
      ShowCaption = False
      TabOrder = 0
      object imgLocalizar: TImage
        Left = 0
        Top = 0
        Width = 70
        Height = 44
        Align = alClient
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF400000006624B474400FF00FF00FFA0BDA793000002
          774944415478DAD597BB4F54411487E712B14323C4C4824E312AAFC2C6C25E68
          A032418C411E85FC07BC4551B0B520343C241A1F34C698A0C65213EC0CC20209
          D8D158F02C01B37E27F7981D6F76D999752F1B6EF2CBD93377CE996F1E776636
          30057E826301904C264F602EA3722D5A47CB41101CC40A40C315981ED488CE44
          5E6FA277681890B5BC02D0B0940FA05E549C25C73E1A428F0049FE378036FE1C
          DDB68A13DADB55F52FEAA85CB1EA484C8B2F443A80FB984175B7D13D34134DAC
          A04D680C9DD6E201EA0DE50CA0732EBD2DD6C6AF933071580262AA305F15624F
          4685989FB9024C61EEAADB44A2372E4988BB8579A9EE2471EDDE0024915EFF32
          E16A975E57BBCEA74EC7A209D7C4063AE7FA89DA00359879751F93A0CFB5171A
          3F8CE956B786F8055F807ACCACBAAD2478E609D0869950B78EF84FBE0075980F
          EAB69160CA1340E67D5CDD7AE23FFA02D85320BB5BAF27C008A64BDD5AE27FF8
          02C87E2F8BB0142DA12ACF45280B57CE8B2D7496D8DF5E009A6812D3AA6E3349
          5E3902C8AEF942DD09E23A5C472E0A70417B2F9FE48E0937A2C52C8D5763BE98
          70239273A1929855E3F8A4DB8AFB310FD515884EF43AC356DC8C464D6A2BEEA1
          DE886BE39900A46C1ADDB18A6554DEA315F52FA10613CEB9FD48E3DF510290A5
          9C002C08F90A64344E66C921C32E075889496D44BBE80610DF7202B040CE9BD4
          85A42CF25A56FB5BF444E69CBA37F93D63BD7782F0B992C9B0CB95ACC88457B2
          84FDA95147CE813974CA0722AF975220AE623E9B7FAF6F8742E4FD56EC0B11CB
          B5DC0722B6FF05AE10B1FE3101E21A468EE5E8C294DD723D76800C233148E30F
          8E6404D2403CB51B3F32008528FF3BEC0501C8F4141CE00F8253F821C29AFC90
          0000000049454E44AE426082}
        OnClick = actFiltrarExecute
        ExplicitLeft = 32
        ExplicitTop = 8
        ExplicitWidth = 105
        ExplicitHeight = 105
      end
      object Label12: TLabel
        Left = 0
        Top = 44
        Width = 70
        Height = 30
        Align = alBottom
        Alignment = taCenter
        Caption = '(F2)'#13#10'LOCALIZAR'
        Color = 7024384
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        OnClick = actFiltrarExecute
        ExplicitWidth = 63
      end
      object btnFiltrar: TSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 44
        Action = actFiltrar
        Align = alClient
        Flat = True
        ExplicitLeft = 32
        ExplicitTop = 16
        ExplicitWidth = 23
        ExplicitHeight = 22
      end
    end
  end
  object actlstMain: TActionList
    Left = 806
    Top = 231
    object actBaixaDuplicata: TAction
      ShortCut = 116
      OnExecute = actBaixaDuplicataExecute
    end
    object actAlteraVencto: TAction
      ShortCut = 118
      OnExecute = actAlteraVenctoExecute
    end
    object actFiltrar: TAction
      ShortCut = 113
      OnExecute = actFiltrarExecute
    end
    object actSair: TAction
      OnExecute = actSairExecute
    end
    object actImprimir: TAction
      OnExecute = actImprimirExecute
    end
    object actGerarBoleto: TAction
      OnExecute = actGerarBoletoExecute
    end
    object actRestaurarBaixa: TAction
      Caption = 'actRestaurarBaixa'
      OnExecute = actRestaurarBaixaExecute
    end
    object actVisualizar: TAction
      Caption = 'actVisualizar'
      OnExecute = actVisualizarExecute
    end
  end
  object cdsGrid: TClientDataSet
    Aggregates = <>
    CommandText = 
      'SELECT cast(0 as integer)selecao,pr.ID, pr.TIPO, pr.ORDEM, pr.DT' +
      '_VENC,'#13#10'pr.VALOR,pr.DT_BAIXA,pr.USUARIO_BAIXA,'#13#10'c.NOME_RAZAO cli' +
      'ente,pr.USUARIO_EMISSAO,pm.emissao,'#13#10'cast(left(pr.ordem,2) as in' +
      'teger) parcela,'#13#10'c.pessoa,c.cpf_cnpj,coalesce(c.cob_endereco,c.e' +
      'ndereco) logradouro,'#13#10'coalesce(c.cob_numero,c.numero) numero,coa' +
      'lesce(c.cob_bairro,c.bairro) bairro,'#13#10'coalesce(c.cob_cep,c.cep) ' +
      'cep,coalesce(c.cob_cidade,c.cidade) cidade,'#13#10'coalesce(c.cob_uf,c' +
      '.uf) UF'#13#10'FROM PDV_RECEBER pr'#13#10'left join PDV_MASTER pm on (pm.TIP' +
      'O = pr.TIPO and pm.ID = pr.ID)'#13#10'left join CLIENTE c on (c.CODIGO' +
      ' = pm.ID_CLIENTE)'#13#10'where 1 = 2'
    Params = <>
    Left = 77
    Top = 236
    object cdsGridID: TIntegerField
      DisplayLabel = 'N'#186' VENDA'
      FieldName = 'ID'
      Required = True
      DisplayFormat = '000'
    end
    object cdsGridTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsGridORDEM: TStringField
      DisplayLabel = 'PARCELA'
      FieldName = 'ORDEM'
      Required = True
      Size = 5
    end
    object cdsGridDT_VENC: TDateField
      DisplayLabel = 'VENCTO.'
      FieldName = 'DT_VENC'
    end
    object cdsGridVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = 'R$ #,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsGridDT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
    end
    object cdsGridUSUARIO_BAIXA: TStringField
      DisplayLabel = 'LOG DE BAIXA'
      FieldName = 'USUARIO_BAIXA'
      Size = 50
    end
    object cdsGridCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object cdsGridUSUARIO_EMISSAO: TStringField
      FieldName = 'USUARIO_EMISSAO'
      Size = 50
    end
    object cdsGridEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object cdsGridPARCELA: TIntegerField
      FieldName = 'PARCELA'
      ReadOnly = True
    end
    object cdsGridPESSOA: TStringField
      FieldName = 'PESSOA'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object cdsGridCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ReadOnly = True
    end
    object cdsGridLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ReadOnly = True
      Size = 45
    end
    object cdsGridNUMERO: TStringField
      FieldName = 'NUMERO'
      ReadOnly = True
      Size = 10
    end
    object cdsGridBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ReadOnly = True
      Size = 30
    end
    object cdsGridCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 10
    end
    object cdsGridCIDADE: TStringField
      FieldName = 'CIDADE'
      ReadOnly = True
      Size = 50
    end
    object cdsGridUF: TStringField
      FieldName = 'UF'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object cdsGridSELECAO: TIntegerField
      FieldName = 'SELECAO'
    end
  end
  object dsGrid: TDataSource
    DataSet = cdsGrid
    Left = 78
    Top = 293
  end
  object pm1: TPopupMenu
    Left = 736
    Top = 232
    object actRestaurarBaixa1: TMenuItem
      Action = actRestaurarBaixa
      Caption = 'Restaurar Baixa'
    end
  end
end

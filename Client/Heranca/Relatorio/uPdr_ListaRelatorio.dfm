inherited Pdr_ListaRelatorio: TPdr_ListaRelatorio
  BorderStyle = bsNone
  Caption = 'Pdr_ListaRelatorio'
  ClientHeight = 420
  ClientWidth = 744
  ExplicitWidth = 744
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo0: TPanel
    Left = 0
    Top = 0
    Width = 744
    Height = 420
    Caption = 'pnlFundo0'
    ShowCaption = False
    TabOrder = 0
    object pnlNaoExisteReg: TPanel
      Left = 1
      Top = 73
      Width = 742
      Height = 346
      Align = alClient
      Caption = 'pnlNaoExisteReg'
      ShowCaption = False
      TabOrder = 3
      Visible = False
      object Label4: TLabel
        Left = 187
        Top = 56
        Width = 368
        Height = 17
        Caption = 'N'#227'o forma encontrados registros para o per'#237'odo selecionado.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnlTopo: TPanel
      Left = 1
      Top = 23
      Width = 742
      Height = 50
      Align = alTop
      Caption = 'pnlTopo'
      ShowCaption = False
      TabOrder = 1
      object pnlPeriodo: TPanel
        Left = 1
        Top = 1
        Width = 320
        Height = 48
        Align = alLeft
        Caption = 'pnlPeriodo'
        ShowCaption = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 0
          Width = 16
          Height = 17
          Caption = 'DE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 128
          Top = 0
          Width = 22
          Height = 17
          Caption = 'AT'#201
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dtp1: TDateTimePicker
          Left = 8
          Top = 19
          Width = 105
          Height = 25
          Date = 44129.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.685025972219591500
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object dtp2: TDateTimePicker
          Left = 128
          Top = 19
          Width = 105
          Height = 25
          Date = 44129.000000000000000000
          Format = 'dd/MM/yyyy'
          Time = 0.685025972219591500
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object pnlGerar: TPanel
          Left = 269
          Top = 11
          Width = 25
          Height = 25
          BevelOuter = bvNone
          Caption = 'pnlGerar'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object imgGerar: TImage
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            Align = alClient
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
              001908020000004B8B123400000006624B474400FF00FF00FFA0BDA793000000
              CD4944415478DA6364D0CF66A0126024C62C31215E570B8DA5DB4E536A163F0F
              E7D185455A4A1239EDABA7AD3A4491598C8C8C13CB427223EDFFFFFF9FDFB566
              F2F28314F99148E388328B48E388358B18E348300B62DC84D2E0BC2807ACC691
              66167EE348360B8F71E49885CB38C68E79BBC8300B625C7280A5B00037D03848
              326604B2C8330B19FCFBF75F2BA885AAEE223BBCE0692DAF73CD9415E0F0222F
              1E310D22C72C5C06916C161E8348330BBF41249845D02062CD22C620A2CC22D2
              20A2CCA26679CF40C57A887800005CFCC982073A96160000000049454E44AE42
              6082}
            ExplicitTop = -2
            ExplicitWidth = 50
            ExplicitHeight = 46
          end
          object btnGerar: TSpeedButton
            Left = 0
            Top = 0
            Width = 25
            Height = 25
            Action = actGerar
            Align = alClient
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitTop = -2
            ExplicitWidth = 71
            ExplicitHeight = 48
          end
        end
      end
      object pnlVisualizar: TPanel
        Left = 656
        Top = 1
        Width = 85
        Height = 48
        Align = alRight
        BevelOuter = bvNone
        Caption = 'pnlVisualizar'
        ShowCaption = False
        TabOrder = 1
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 85
          Height = 17
          Align = alTop
          Alignment = taCenter
          Caption = 'Visualiza'#231#227'o'
          Color = 7024384
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          ExplicitWidth = 71
        end
        object pnlVisualizaBotao: TPanel
          Left = 0
          Top = 17
          Width = 85
          Height = 61
          Align = alTop
          BevelOuter = bvNone
          Caption = 'pnlAdd'
          Color = 7024384
          ParentBackground = False
          ShowCaption = False
          TabOrder = 0
          object imgVisualizar: TImage
            Left = 0
            Top = 0
            Width = 85
            Height = 61
            Align = alClient
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
              00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000000
              D74944415478DA6364A003601C9E96FCFFFF5F1448312309FD6664647C4B6D4B
              1E00297924A18B404B0C6861C957205E0CC46940FC096409503C14C83626C1DC
              16A0BE2FF82CB900541000641F00B205A0962C00B2E349B04412A8EF053E4B64
              81F83710B301F125A825AC0CA871853F7818197FE00BAE5620258C24F418A8A1
              95D438C0B094520348B604E893BD404A1A49E83AD02781D4B6E40190E204E2F3
              406C06C48FA071A28B663921B00FA8EF173E4BE892BA68EE13DAC709AD00FDF3
              09BD723CC812BAA42EBA94C234AF4F685F33D20A0C1F4B00D3A8941A987BADEA
              0000000049454E44AE426082}
            ExplicitLeft = -6
            ExplicitTop = -2
            ExplicitWidth = 100
            ExplicitHeight = 46
          end
          object btnVisualizar: TSpeedButton
            Left = 0
            Top = 0
            Width = 85
            Height = 61
            Action = actLista
            Align = alClient
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitLeft = -6
            ExplicitWidth = 125
          end
          object imgSeta: TImage
            Left = 60
            Top = 0
            Width = 25
            Height = 50
            Picture.Data = {
              0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
              00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000001
              724944415478DAED94BD4B425118C63B111211040511B8448B4BD0E2146DD152
              44451F8344507F44830A196143FF4250D0D050441F84538320B534092D2ED152
              50E810A88344B7DF8157385D4E79148A882BFC78F4BDEFFB3CDCD773AF6AFB85
              8F0A4282909F0FF13C2F8C4CC39E52AAD6AA213E21640D2EF079F28724912DB8
              86791A9E5B08E8474E600C9278A4FD212964437E3EC21C4DB74D048C20673028
              A54DE653FE9009E4124252AAC22A8D470E014BC83E744949AF7B8AD9AB4F21D2
              3C2AB73B502FC10EC41978B798EBF975D8867629176191FE6CBD4F5906C372DB
              51A39C811883AF465F3772A0D76AF4E56196BE07D3D37A8431E8447661D92817
              60068302D787F87E0EC3C6F563596FC5EFF7E57322AB48E83FD0584549561387
              3EA9E935EA039326C0B379357C18099B440EA1C772B90C2B989F7EE7E1F4C413
              1491F5448CF2BDACEFAED1BCF36B85A05E441FE771C8C102012F2EB34DBDBB08
              EA40F431BF21E0CD75EE1FBE8583903F13F201CEDF711AF9E281780000000049
              454E44AE426082}
            OnClick = actListaExecute
          end
        end
      end
      object chkExibirResumo: TCheckBox
        Left = 556
        Top = 32
        Width = 96
        Height = 17
        Caption = 'Exibir resumo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = chkExibirResumoClick
      end
    end
    object pnlFundo1: TPanel
      Left = 1
      Top = 73
      Width = 742
      Height = 346
      Align = alClient
      Caption = 'pnlFundo1'
      ShowCaption = False
      TabOrder = 2
      object pnlGrid: TPanel
        Left = 1
        Top = 1
        Width = 577
        Height = 344
        Align = alClient
        Caption = 'pnlGrid'
        ShowCaption = False
        TabOrder = 1
        object pnlRodape: TPanel
          Left = 1
          Top = 322
          Width = 575
          Height = 21
          Align = alBottom
          Caption = 'pnlRodape'
          Color = 13337441
          ParentBackground = False
          ShowCaption = False
          TabOrder = 1
        end
        object dbgrd1: TDBGrid
          Left = 1
          Top = 1
          Width = 575
          Height = 321
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
          OnTitleClick = dbgrd1TitleClick
        end
      end
      object pnlRight: TPanel
        Left = 578
        Top = 1
        Width = 163
        Height = 344
        Align = alRight
        Caption = 'pnlRight'
        Color = 13337441
        ParentBackground = False
        ShowCaption = False
        TabOrder = 2
        Visible = False
        object lblTitBanco: TLabel
          Left = 1
          Top = 1
          Width = 161
          Height = 20
          Align = alTop
          AutoSize = False
          Caption = ' RESUMO'
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
          Visible = False
          ExplicitLeft = 5
          ExplicitTop = 3
        end
      end
      object cbbLista: TComboBox
        Left = 641
        Top = 0
        Width = 100
        Height = 22
        Style = csOwnerDrawFixed
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ItemIndex = 3
        ParentFont = False
        TabOrder = 0
        Text = 'IMPRESS'#194'O'
        Visible = False
        Items.Strings = (
          'LISTA'
          'PDF'
          'EXCEL'
          'IMPRESS'#194'O')
      end
    end
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 742
      Height = 22
      Align = alTop
      Caption = 'pnlTitulo'
      TabOrder = 0
      object lblTitulo: TLabel
        Left = 1
        Top = 1
        Width = 710
        Height = 20
        Align = alClient
        AutoSize = False
        Caption = '         TITULO'
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
        OnMouseDown = lblTituloMouseDown
        ExplicitWidth = 20
        ExplicitHeight = 740
      end
      object imgFechar: TImage
        Left = 711
        Top = 1
        Width = 30
        Height = 20
        Align = alRight
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
          001908020000004B8B123400000006624B474400FF00FF00FFA0BDA793000000
          CC4944415478DA6364D0CF66A012601CC466B5E5FA15C739B3B1329367C4AFDF
          7FBB17EEA999B21964D6CFD313255D2ADF7DFC865F4F438617889CB10D4D5C88
          9FEBD9EE360EB3029059FF2F4C6134C821683F2EB3800062C248372BD1DF62C9
          D6D3BFFFFCA582596B7B53806444F97C88711499C5CAC2BCBA27F9CF9F7F11E5
          F3FEFCFD479A5957D6566B2B4B622ACDEB5C3D79F9C18173171A58D59DCCCCC4
          489DF08AF6325DB5EB1C75E2110D8C9A05358B9AE5574B8E6F69BC0B25E56AD7
          82DDB553B70CE6BA835A6601007F1FF0243E9942B90000000049454E44AE4260
          82}
        Stretch = True
        OnClick = imgFecharClick
        ExplicitLeft = 1110
        ExplicitTop = -3
        ExplicitHeight = 38
      end
    end
  end
  object Rel_1: TRLReport
    Left = 767
    Top = 0
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand9: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 91
      BandType = btTitle
      BeforePrint = RLBand9BeforePrint
      object rlblEmpresaRazao: TRLLabel
        Left = 210
        Top = 2
        Width = 500
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEmpresaCNPJ: TRLLabel
        Left = 210
        Top = 20
        Width = 500
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEmpresaLog: TRLLabel
        Left = 210
        Top = 38
        Width = 500
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'rlblEmpresaLogr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEmpresaCep: TRLLabel
        Left = 210
        Top = 56
        Width = 500
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'rlblEmpresaLogr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEmpresaFone: TRLLabel
        Left = 210
        Top = 74
        Width = 500
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'rlblEmpresaLogr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand10: TRLBand
      Left = 38
      Top = 129
      Width = 718
      Height = 25
      BandType = btColumnHeader
      BeforePrint = RLBand9BeforePrint
      object RLLabel13: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 22
        Align = faTop
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Borders.Width = 2
        Caption = '    T'#237'tulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object actlst1: TActionList
    Left = 176
    Top = 176
    object actGerar: TAction
      OnExecute = actGerarExecute
    end
    object actLista: TAction
      OnExecute = actListaExecute
    end
    object actSair: TAction
      Caption = 'actSair'
    end
  end
  object dsGrid: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 112
    Top = 176
  end
  object sGrid: TDataSource
    DataSet = dsGrid
    Left = 120
    Top = 240
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0 \251 Copyright '#169' 1999-2016 F' +
      'ortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 360
    Top = 200
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 424
    Top = 200
  end
end

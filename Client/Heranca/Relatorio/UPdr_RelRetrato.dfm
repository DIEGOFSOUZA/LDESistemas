inherited Pdr_RelRetrato: TPdr_RelRetrato
  BorderIcons = [biSystemMenu]
  Caption = 'Pdr_RelRetrato'
  ClientHeight = 368
  ClientWidth = 498
  Color = clWhite
  ExplicitWidth = 514
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TRLReport
    Left = 8
    Top = 217
    ExplicitLeft = 8
    ExplicitTop = 217
  end
  object pnlFundo: TPanel [1]
    Left = 0
    Top = 0
    Width = 497
    Height = 193
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object pnlBotoes: TPanel
      Left = 1
      Top = 152
      Width = 495
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 0
      object pnlGerar: TPanel
        Left = 267
        Top = 3
        Width = 100
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 0
        object btnGerar: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 30
          Action = acrGerarRelatorio
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExplicitWidth = 80
        end
        object imgGerar: TImage
          Left = 0
          Top = 2
          Width = 25
          Height = 25
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
          Stretch = True
          OnClick = acrGerarRelatorioExecute
        end
      end
      object pnlSair: TPanel
        Left = 383
        Top = 3
        Width = 100
        Height = 30
        BevelOuter = bvNone
        Color = 7024384
        ParentBackground = False
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 30
          Action = actSair
          Align = alClient
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExplicitWidth = 80
        end
        object imgSair: TImage
          Left = 0
          Top = 2
          Width = 25
          Height = 25
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000190000
            00190806000000C4E9856300000006624B474400FF00FF00FFA0BDA793000000
            CF4944415478DA6364A00360A4BB25FFFFFF170052B3C830E73723236334B196
            4800A9E740FC1D887F10690117482BD0124E522DA9046AEA20C606A09EE9402A
            61D858120754CF4D4B4BA600A96340F5CB6869892450ED7320CD09A4BFD3C412
            A8BE2220950CC44E407D2F69654908900205D73D207604F98C644B80E2DA404A
            92805DA1409C06C4D7D07D44AC25F3815402B13E03825540FDE183CF2744C6C9
            7220BE4B769C1061096D5317480F50ED0B9AE613688E3F0A54BF1C979A215376
            0DEEA29EA63523EDEB785A01BA5802002A22C61A4081E3F70000000049454E44
            AE426082}
          OnClick = actSairExecute
        end
      end
    end
    object pnlFiltros: TPanel
      Left = 1
      Top = 1
      Width = 495
      Height = 151
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 30
      ExplicitHeight = 121
      object pnlRodape: TPanel
        Left = 0
        Top = 127
        Width = 495
        Height = 24
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 192
        ExplicitWidth = 535
        object chkParametro: TCheckBox
          Left = 8
          Top = 4
          Width = 97
          Height = 17
          Caption = 'Mostrar filtros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  inherited RLPDFFilter1: TRLPDFFilter
    Left = 12
    Top = 292
  end
  object actlst: TActionList
    Left = 425
    Top = 89
    object acrGerarRelatorio: TAction
      Caption = '   Relat'#243'rio'
      OnExecute = acrGerarRelatorioExecute
    end
    object actSair: TAction
      Caption = 'Sair'
      OnExecute = actSairExecute
    end
  end
end

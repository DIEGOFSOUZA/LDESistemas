object Frm_PDVReceberRapido: TFrm_PDVReceberRapido
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Frm_PDVReceberRapido'
  ClientHeight = 249
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 395
    Height = 249
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 37
      Top = 59
      Width = 90
      Height = 25
      Caption = 'TOTAL (R$)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 37
      Top = 100
      Width = 124
      Height = 25
      Caption = 'RECEBIDO (R$)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 37
      Top = 141
      Width = 98
      Height = 25
      Caption = 'TROCO (R$)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object pnlRodape: TPanel
      Left = 1
      Top = 186
      Width = 393
      Height = 62
      Align = alBottom
      TabOrder = 1
      object pnlNFCe: TPanel
        Left = 131
        Top = 5
        Width = 115
        Height = 30
        Caption = 'NFC-e (F6)'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
      end
      object pnlConfirma: TPanel
        Left = 264
        Top = 5
        Width = 115
        Height = 30
        Caption = 'CONFIRMAR (F8)'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        OnClick = actConfirmaExecute
      end
      object chkImprimir: TCheckBox
        Left = 322
        Top = 41
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
        TabOrder = 2
      end
    end
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 393
      Height = 35
      Align = alTop
      Color = 16777162
      ParentBackground = False
      TabOrder = 2
      object lblTitulo: TLabel
        Left = 49
        Top = 5
        Width = 91
        Height = 25
        Caption = 'DINHEIRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object imgDinheiro: TImage
        Left = 8
        Top = 2
        Width = 32
        Height = 32
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000473424954080808087C0864880000000970
          48597300000B1300000B1301009A9C18000005314944415478DAED967F6C5355
          14C7BFF7BDD776DD56BAAE6C6C03B6011AB611C682331343441810E41F993360
          50602E10408C518C9A08093F44C481D1F14371400C480222D1A1C0268430318A
          21CC4100A720CE1518FBFDA3DDDAF5C77BD7F35E15A97D5D0A21C13F3C2F7DBD
          BDBDF79CCFF971CF7B0CF759D8FF00F71D20F7EC2BFC3F099067CEC42C6BC13D
          3172B0E7342E7A1C770650923819F313274554DA15E845BDF78636CE89198604
          312EE2DA1D1DC7B1AFEBFBE801042A8D5DE92F20C39814B6C1CF6554B41F47A5
          F30C64AE68732213F014456B917D2A242686EDB9E2BD89C5D73E8E1EA0D8FA08
          9625CD085BCCE95AD37C00A77AEB75954D8E1F8395294F137E786DBFD7FA158E
          387F1A1840F5BC883C593278BAE6D5BFA5DA750E652D95DAD82AC662BC7904B2
          CDC3F1615BF5AD352B8614A3D032366C6F8022B7B9ED280E3B6BC301D482CB23
          6593E27374C3FEB7F7CF3BB6C1E16BC710C98A14830DAF27CF824D8AC3CCAB6F
          DF5A37CA38043BD29722925CF5B550042FE19CBB1117FA1B8300AB53E6E0B1F8
          6C0C2437FC9D98D7B839646E43DA73C835678400A8B23F733992A54103EA3B49
          106F357F1E3DC069F7AF58D1B42F64EE9DD4B918173B220CA02C6D1EF26347DD
          5B801ADAB096364403B036750E26C60DAC4F07200BCC7B19CCF30B25DC034876
          70F37870FA56A5CED380576FEC8E0AA07C5829C6C6A4470FB032E1214CEBF908
          82E762E82A3AD38A6D2EE4D43570F1008A1ACAA0FC75F68300CF1240660880DA
          070E8D7C0366668C68DC4FBA0EF7D4624B7B55106093E7180AD8F5881BE4D4F7
          A1D88BB51A506B4163A3AB7C6829B2638662E6EFEB35A5AAA8276955CA6C5D3D
          6A21AB5DF174DF65ADA1697A5480AD4D55189770536D0461C23C0C81D47228C3
          66694768E9B50A2451858F32A66847501597ECD194FFE16B45C5F025BA47B9BE
          FF3A5E6BFA146EC51BAA5F0558D57C0AD3DB1A000B9D76130F3EA465BAB969E8
          66F0171E84426952E5B8F33CDE6DAD8482D0062A50E37A33B90853749A9097FB
          31BF710BDA02CE700755800AE7D7C8E96F079C14D87E9A55C8B84806626998A8
          500AD642492BB9B5E967F2664F670DCE7B1AB5DF7954070B6C8F238BD2A12747
          A9056FA256AC271A4099E3041E353BC0E379E82B0AA589750808646D278019B8
          5BD9D8720855AEBAC800EBBA4F62B2C311346EA434A8B510A068F8A0A564E7D8
          2568308DBC6B804B9EEB68979DBAFFB131DF2EE37B7B8F60647C17551319A51A
          6194022E0553C0E9F3812B1F07E246DF35C040C2467F51C237B8CFA2D0402F17
          56326ABA2D02D48F5827C38BA609F8D190ACABC0C01498980C3797A847DCF92B
          A69682725735F25B9B815E8690E226106EE758973411D5C607FE314AC5313B70
          094FC8BF2183776B735E48B8202463AF988B5A312D7A80ECEA457CBBBB067983
          5B83C6D514A89E48F493EA81F533ACEE2B4015B5D65816C074A911CF18AE2053
          D0CFA9AAA2D4330DF5B22DDA142CD8BFADFF870905DE8E74BD3E00EA03CBE3F3
          4F34C458FA7625D44CB5898158F4B060BA740918F6343D58B7D59073392A00F5
          D6F38DF50C93D9C391FA00F7B09718E34658B149CBCC4D01DA232142CDC0274C
          B52CEC38113540F727B64A21853F19A90FA09B15334EE7C2CE3FE3895C03145A
          5878CD28E826988D831676AE8FBA06D49B6BA7BD108AFC250C8225AC0F705EEB
          33B129924B1699249E14448CE3266811626A14BCA44256FAB8C85EB6F8BB76B3
          C5F0475D81B8CDDF9EDD163BF3494534CC256FE3A8B9B73086EFE22C5DC7D86C
          688F2E7E00A2D39930438030118A92CC05D64B18E7390F54262C7276DE89E130
          80FB257F02DB614DC89BFB7BAE0000000049454E44AE426082}
      end
      object imgCartao: TImage
        Left = 8
        Top = 2
        Width = 32
        Height = 32
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200806000000737A7AF40000000473424954080808087C0864880000000970
          48597300000B1300000B1301009A9C18000001204944415478DAEDD6B14B4241
          1CC071155C04078708698AA02228F20F709122756B6B706972105A0AC2C521FF
          81A4D1DA5B9B1452C4869628528904179710A1511C4CA8EFD1FBC1231CBDF341
          77F0E1F16EF97DEFF186F3FB16BCFC36C006CC78DFC292A6799F78C3F7AC800D
          DC6257F3A15F90C1BB3B2082361E91C7C05D39A7A5662DE30207D8C150020A38
          7236A79ABF4000CFA8AAC34A40053D9C681E2EEB0A6B484B40D3D9E81B0A58F5
          FDFE037B12F080B8A1E1B21A487826A0E13CEF0C0D3FC404FB1250C32BCE0C05
          5C6213491B60036C80A7025A38351450C23A521250C60AD28602EAE8222701EA
          1EF08422AE31D234388C2CCE115311EE2B590A37886A3EFD078E71AF5EFE5E4A
          83D84648D3F0313AF8920DCF5DCB6DC0FF0BF801FC63462119E2669000000000
          49454E44AE426082}
      end
    end
    object edtTotal: TEdit
      Left = 236
      Top = 56
      Width = 121
      Height = 33
      TabStop = False
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '20,90'
    end
    object edtRecebido: TEdit
      Left = 236
      Top = 95
      Width = 121
      Height = 33
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '20,90'
      OnKeyPress = edtRecebidoKeyPress
    end
    object edtTroco: TEdit
      Left = 236
      Top = 138
      Width = 121
      Height = 33
      TabStop = False
      Alignment = taRightJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = '20,90'
    end
  end
  object actlst1: TActionList
    Left = 177
    Top = 50
    object actConfirma: TAction
      Caption = 'actConfirma'
      ShortCut = 119
      OnExecute = actConfirmaExecute
    end
  end
end

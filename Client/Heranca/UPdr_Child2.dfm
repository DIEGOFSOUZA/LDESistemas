inherited Pdr_Child2: TPdr_Child2
  BorderStyle = bsNone
  Caption = 'Pdr_Child2'
  ClientHeight = 209
  ClientWidth = 463
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 463
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnlTitulo'
    Color = 7024384
    Padding.Left = 5
    Padding.Right = 5
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 5
      Top = 0
      Width = 428
      Height = 30
      Align = alClient
      AutoSize = False
      Caption = 'TITULO'
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
      OnMouseMove = lblTituloMouseMove
      ExplicitLeft = 0
      ExplicitTop = 8
      ExplicitWidth = 463
    end
    object pnlBotaoSair: TPanel
      Left = 433
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
      OnClick = actSairExecute
      ExplicitLeft = 438
    end
  end
  object actlst1: TActionList
    Left = 256
    Top = 104
    object actSair: TAction
      Caption = 'actSair'
      OnExecute = actSairExecute
    end
  end
end

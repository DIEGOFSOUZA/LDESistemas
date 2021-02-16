object Frm_Principal: TFrm_Principal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'L.D.E. Servi'#231'o'
  ClientHeight = 253
  ClientWidth = 560
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 0
    Top = 0
    Width = 560
    Height = 30
    Align = alTop
    AutoSize = False
    Caption = '         CONFIGURA'#199#195'O DO SERVIDOR'
    Color = 10114859
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    ExplicitLeft = -579
    ExplicitWidth = 1024
  end
  object pnlFundo: TPanel
    Left = 0
    Top = 30
    Width = 560
    Height = 183
    Align = alClient
    Caption = 'pnlFundo'
    TabOrder = 1
    ExplicitTop = 29
    object pnlIPs: TPanel
      Left = 193
      Top = 1
      Width = 366
      Height = 181
      Align = alRight
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      TabOrder = 0
      object Label4: TLabel
        Left = 81
        Top = 52
        Width = 7
        Height = 13
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 2
        Top = 52
        Width = 73
        Height = 13
        Caption = 'IPs conectados'
      end
      object btnAtualizar: TBitBtn
        Left = 2
        Top = 6
        Width = 103
        Height = 42
        Caption = 'Atualizar IPs'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnAtualizarClick
      end
      object MostraIP: TMemo
        Left = 0
        Top = 71
        Width = 362
        Height = 106
        TabStop = False
        Align = alBottom
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
    object pnlPortas: TPanel
      Left = 24
      Top = 46
      Width = 153
      Height = 90
      TabOrder = 1
      object Label1: TLabel
        Left = 32
        Top = 28
        Width = 39
        Height = 17
        Caption = 'TCP/IP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 39
        Top = 59
        Width = 32
        Height = 17
        Caption = 'HTTP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTitulo: TLabel
        Left = 1
        Top = 1
        Width = 151
        Height = 20
        Align = alTop
        AutoSize = False
        Caption = '   Portas'
        Color = 13337441
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitWidth = 223
      end
      object edtTCPIP: TEdit
        Left = 77
        Top = 25
        Width = 44
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        Text = '211'
      end
      object edtHTTP: TEdit
        Left = 77
        Top = 56
        Width = 44
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 1
        Text = '3969'
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 213
    Width = 560
    Height = 40
    Align = alBottom
    BorderStyle = bsSingle
    TabOrder = 0
    DesignSize = (
      556
      36)
    object btnStart: TButton
      Left = 302
      Top = 3
      Width = 109
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Iniciar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnStartClick
    end
    object btnStop: TButton
      Left = 438
      Top = 3
      Width = 109
      Height = 30
      Anchors = [akTop, akRight]
      Caption = 'Parar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnStopClick
    end
  end
  object TrayIcon1: TTrayIcon
    Hint = 'LDE Server'
    OnDblClick = TrayIcon1DblClick
    Left = 216
    Top = 126
  end
  object ApplicationEvents1: TApplicationEvents
    OnMinimize = ApplicationEvents1Minimize
    Left = 294
    Top = 126
  end
end

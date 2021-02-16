object SC: TSC
  OldCreateOrder = False
  Height = 328
  Width = 462
  object DSServer1: TDSServer
    AutoStart = False
    Left = 96
    Top = 11
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    Server = DSServer1
    Filters = <>
    Left = 96
    Top = 73
  end
  object DSHTTPService1: TDSHTTPService
    HttpPort = 3969
    Server = DSServer1
    Filters = <>
    Left = 96
    Top = 135
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 224
    Top = 19
  end
  object DSServerClassCadastro: TDSServerClass
    OnGetClass = DSServerClassCadastroGetClass
    Server = DSServer1
    Left = 224
    Top = 72
  end
  object dsrvrclsNotaEntrada: TDSServerClass
    OnGetClass = dsrvrclsNotaEntradaGetClass
    Server = DSServer1
    Left = 224
    Top = 128
  end
  object dsrvrclsOrcamento: TDSServerClass
    OnGetClass = dsrvrclsOrcamentoGetClass
    Server = DSServer1
    Left = 224
    Top = 184
  end
  object dsrvrclsFormaPagto: TDSServerClass
    OnGetClass = dsrvrclsFormaPagtoGetClass
    Server = DSServer1
    Left = 221
    Top = 240
  end
  object dsrvrclsPedVenda: TDSServerClass
    OnGetClass = dsrvrclsPedVendaGetClass
    Server = DSServer1
    Left = 344
    Top = 24
  end
  object dsrvrclsProducao: TDSServerClass
    OnGetClass = dsrvrclsProducaoGetClass
    Server = DSServer1
    Left = 344
    Top = 80
  end
end

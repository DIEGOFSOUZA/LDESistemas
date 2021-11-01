object ServerDM: TServerDM
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 300
  Width = 415
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 328
    Top = 24
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=sistema'
      'User_Name=PROGRAMADOR'
      'Password=804661'
      'Server=127.0.0.1'
      'Port=3060'
      'Protocol=TCPIP'
      'RoleName=R_PROGRAMADOR'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evItems, evCache]
    FetchOptions.Items = [fiBlobs, fiDetails]
    FetchOptions.Cache = [fiBlobs, fiDetails]
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 120
    Top = 9
  end
  object TranLeitura: TFDTransaction
    Connection = Conexao
    Left = 32
    Top = 65
  end
  object TranGravacao: TFDTransaction
    Connection = Conexao
    Left = 120
    Top = 65
  end
  object SQLLer: TFDQuery
    Connection = Conexao
    Transaction = TranLeitura
    FetchOptions.AssignedValues = [evItems, evCache]
    FetchOptions.Items = [fiBlobs, fiDetails]
    FetchOptions.Cache = [fiBlobs, fiDetails]
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    Left = 32
    Top = 121
  end
  object Gravar: TFDQuery
    Connection = Conexao
    Transaction = TranGravacao
    Left = 120
    Top = 121
  end
  object DSPLer: TDataSetProvider
    DataSet = SQLLer
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 32
    Top = 185
  end
  object Ler: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSPLer'
    StoreDefs = True
    Left = 32
    Top = 241
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 328
    Top = 80
  end
end

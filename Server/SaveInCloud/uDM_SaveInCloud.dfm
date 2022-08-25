object DM_SaveInCloud: TDM_SaveInCloud
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 410
  Width = 415
  object conSaveInCloud: TFDConnection
    Params.Strings = (
      'Database=ldecliente'
      'User_Name=PROGRAMADOR'
      'Password=804661'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'Port=3060'
      'RoleName=R_PROGRAMADOR'
      'DriverID=FB')
    LoginPrompt = False
    Left = 52
    Top = 40
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 254
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 254
    Top = 80
  end
  object TranLeitura: TFDTransaction
    Connection = conSaveInCloud
    Left = 48
    Top = 104
  end
  object SQLLer: TFDQuery
    Connection = conSaveInCloud
    Transaction = TranLeitura
    FetchOptions.AssignedValues = [evItems, evCache]
    FetchOptions.Items = [fiBlobs, fiDetails]
    FetchOptions.Cache = [fiBlobs, fiDetails]
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    Left = 46
    Top = 161
  end
  object DSPLer: TDataSetProvider
    DataSet = SQLLer
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 46
    Top = 225
  end
  object Ler: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSPLer'
    StoreDefs = True
    Left = 46
    Top = 281
  end
  object TranGravar: TFDTransaction
    Connection = conSaveInCloud
    Left = 216
    Top = 144
  end
  object SQLGravar: TFDQuery
    Connection = conSaveInCloud
    Transaction = TranGravar
    FetchOptions.AssignedValues = [evItems, evCache]
    FetchOptions.Items = [fiBlobs, fiDetails]
    FetchOptions.Cache = [fiBlobs, fiDetails]
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    Left = 222
    Top = 201
  end
end

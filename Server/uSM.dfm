object SM: TSM
  OldCreateOrder = False
  Height = 304
  Width = 354
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\projetos\bancos\FB30\sistema.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3060'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'DriverID=FB')
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 136
    Top = 24
  end
  object DSPLer1: TDataSetProvider
    DataSet = SQL1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 24
    Top = 184
  end
  object SQL1: TFDQuery
    Connection = Conexao
    Transaction = TranLeitura
    SQL.Strings = (
      '')
    Left = 24
    Top = 120
  end
  object TranLeitura: TFDTransaction
    Connection = Conexao
    Left = 24
    Top = 56
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 136
    Top = 80
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 136
    Top = 144
  end
  object FDTransaction1: TFDTransaction
    Connection = Conexao
    Left = 136
    Top = 216
  end
end

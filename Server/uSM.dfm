object SM: TSM
  OldCreateOrder = False
  Height = 304
  Width = 354
  object DSPLer1: TDataSetProvider
    DataSet = SQL1
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 24
    Top = 184
  end
  object SQL1: TFDQuery
    Connection = ServerDM.Conexao
    Transaction = TranLeitura
    SQL.Strings = (
      '')
    Left = 24
    Top = 120
  end
  object TranLeitura: TFDTransaction
    Connection = ServerDM.Conexao
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
    Connection = ServerDM.Conexao
    Left = 136
    Top = 216
  end
  object FDScript1: TFDScript
    SQLScripts = <
      item
        Name = 'DDL'
      end
      item
        Name = 'DML'
      end>
<<<<<<< HEAD
    Connection = Conexao
    Params = <>
    Macros = <>
    Left = 240
    Top = 32
=======
    Params = <>
    Macros = <>
    Left = 248
    Top = 80
>>>>>>> master
  end
  object cdsAuxiliar: TClientDataSet
    Aggregates = <>
    Params = <>
<<<<<<< HEAD
    Left = 280
    Top = 144
=======
    Left = 248
    Top = 152
>>>>>>> master
  end
end

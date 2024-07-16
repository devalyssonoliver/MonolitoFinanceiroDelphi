object DataModel: TDataModel
  Height = 440
  Width = 479
  object Con: TFDConnection
    Params.Strings = (
      'Database=base_monolito'
      'User_Name=postgres'
      'Password=1'
      'DriverID=pG')
    Connected = True
    Left = 88
    Top = 24
  end
  object PGDriver: TFDPhysPgDriverLink
    Left = 144
    Top = 24
  end
  object DataSource1: TDataSource
    Left = 232
    Top = 104
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = Con
    SQL.Strings = (
      'SELECT * FROM clientes')
    Left = 248
    Top = 184
  end
end

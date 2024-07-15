object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=habsoluta'
      'User_Name=postgres'
      'Password=postzeus2011'
      'DriverID=PG')
    Connected = True
    Left = 152
    Top = 248
  end
  object FDQuery1: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'select * from clientes')
    Left = 208
    Top = 304
  end
  object PGDriver: TFDPhysPgDriverLink
    VendorHome = 'C:\'
    Left = 152
    Top = 304
  end
end

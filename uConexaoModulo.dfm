object DataModel: TDataModel
  Height = 252
  Width = 339
  object Con: TFDConnection
    Params.Strings = (
      'Database=base_bk'
      'User_Name=postgres'
      'Password=postzeus2011'
      'DriverID=PG')
    Connected = True
    Left = 176
    Top = 120
  end
  object PGDriver: TFDPhysPgDriverLink
    VendorHome = 'C:\'
    Left = 232
    Top = 120
  end
end

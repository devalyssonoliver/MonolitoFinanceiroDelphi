object DataModel: TDataModel
  Height = 480
  Width = 640
  object Con: TFDConnection
    Params.Strings = (
      'Database=base_delphi'
      'User_Name=postgres'
      'Password=postzeus2011'
      'DriverID=PG')
    Connected = True
    Left = 176
    Top = 120
  end
  object PGDriver: TFDPhysPgDriverLink
    VendorHome = 'C:\'
    Left = 240
    Top = 120
  end
end

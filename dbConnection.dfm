object DbConexao: TDbConexao
  Height = 297
  Width = 278
  object TDFConexao: TFDConnection
    Params.Strings = (
      'DriverID=PG'
      'User_Name=postgres')
    Connected = True
    Left = 24
    Top = 8
  end
  object PGDriver: TFDPhysPgDriverLink
    VendorHome = 
      'C:\Users\alydo\OneDrive\Documentos\GitHub\Monolito\MonolitoFinan' +
      'ceiroDelphi\Win32\Debug'
    Left = 88
    Top = 8
  end
end

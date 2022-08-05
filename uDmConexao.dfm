object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\Matheus\Documents\Embarcadero\Studio\Projects\' +
        'Sistema Controle\Win32\Debug\Assets\DBs\PRIMEIRODB.FDB'
      'DriverID=FB')
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 40
  end
end

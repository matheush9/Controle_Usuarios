object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'Database=C:\Users\Matheus\Documents\Embarcadero\Studio\Projects\' +
        'Controle_Usuarios\Win32\Debug\Assets\DBs\PRIMEIRODB.FDB'
      'DriverID=FB')
    UpdateOptions.AssignedValues = [uvCheckRequired]
    Connected = True
    LoginPrompt = False
    Left = 81
    Top = 40
  end
end

object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Conceito\Downloads\Nova pasta\Win32\Debug\Asse' +
        'ts\DBs\PRIMEIRODB.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 40
  end
end

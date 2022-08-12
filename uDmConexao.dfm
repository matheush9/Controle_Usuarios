object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Pooled='
      
        'Database=C:\Users\Conceito\Desktop\Sistema controle git\Win32\De' +
        'bug\Assets\DBs\PESSOASDB.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    Connected = True
    LoginPrompt = False
    Transaction = DmLogin.FDTransaction1
    Left = 96
    Top = 40
  end
end

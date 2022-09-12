object DmConexao: TDmConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Pooled='
      'User_Name=SYSDBA'
      'Password=masterkey'
      
        'Database=C:\Users\Conceito\Downloads\Sistema controle git 1\Sist' +
        'ema controle git puro\Win32\Debug\DB\PESSOASDB.FDB'
      'DriverID=FB')
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    LoginPrompt = False
    Left = 96
    Top = 40
  end
end

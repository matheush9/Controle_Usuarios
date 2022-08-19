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
      'DriverID=FB')
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    LoginPrompt = False
    Transaction = DmLogin.FDTransaction1
    Left = 96
    Top = 40
  end
end

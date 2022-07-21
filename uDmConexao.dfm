object DMConexao: TDMConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object FDConnection1: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      
        'database= C:\Users\Conceito\Documents\Embarcadero\Studio\Project' +
        's\Sistema Controle de Usu'#225'rios\Win32\Debug\Assets\DBs\PRIMEIRODB' +
        '.FDB'
      'DriverID=FB')
    LoginPrompt = False
    Left = 81
    Top = 40
  end
end

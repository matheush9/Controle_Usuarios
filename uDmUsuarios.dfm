object DmUsuarios: TDmUsuarios
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object tb_usuarios: TFDTable
    IndexFieldNames = 'ID'
    Connection = DMConexao.FDConnection1
    TableName = 'USUARIOS_2'
    Left = 88
    Top = 32
  end
end

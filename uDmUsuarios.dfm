object DmUsuarios: TDmUsuarios
  OldCreateOrder = False
  Height = 220
  Width = 298
  object FDQuery1: TFDQuery
    Active = True
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'select * from USUARIOS_2;')
    Left = 144
    Top = 32
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = DmConexao.FDConnection1
    TableName = 'USUARIOS_2'
    Left = 48
    Top = 64
  end
end

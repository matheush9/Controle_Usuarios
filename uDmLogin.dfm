object DmLogin: TDmLogin
  OldCreateOrder = False
  Height = 238
  Width = 295
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'LOGIN_ID'
    Connection = DmConexao.FDConnection1
    Transaction = FDTransaction1
    TableName = 'LOGIN'
    Left = 40
    Top = 32
    object FDTable1LOGIN_ID: TIntegerField
      FieldName = 'LOGIN_ID'
      Origin = 'LOGIN_ID'
      Required = True
    end
    object FDTable1LOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Required = True
      Size = 40
    end
    object FDTable1SENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 40
    end
  end
  object FDTransaction1: TFDTransaction
    Connection = DmConexao.FDConnection1
    Left = 112
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = DmConexao.FDConnection1
    Left = 200
    Top = 32
  end
end

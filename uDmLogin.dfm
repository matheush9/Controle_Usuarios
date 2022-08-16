object DmLogin: TDmLogin
  OldCreateOrder = False
  Height = 238
  Width = 295
  object FDTransaction1: TFDTransaction
    Connection = DmConexao.FDConnection1
    Left = 112
    Top = 32
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'select * from login where login_id = 0;')
    Left = 32
    Top = 32
    object FDQuery1LOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 30
    end
    object FDQuery1SENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 40
    end
    object FDQuery1LOGIN_ID: TIntegerField
      FieldName = 'LOGIN_ID'
      Origin = 'LOGIN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQuery1PERMISSAO: TStringField
      FieldName = 'PERMISSAO'
      Origin = 'PERMISSAO'
      Size = 10
    end
  end
end

object DmUsuarios: TDmUsuarios
  OldCreateOrder = False
  Height = 220
  Width = 298
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'USUARIOS_ID'
    Connection = DmConexao.FDConnection1
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    TableName = 'USUARIOS'
    Left = 80
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = DmConexao.FDConnection1
    SQL.Strings = (
      'SELECT * FROM USUARIOS WHERE USUARIOS_ID = 0;')
    Left = 152
    Top = 32
    object FDQuery1NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 150
    end
    object FDQuery1TELEFONE: TIntegerField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object FDQuery1ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object FDQuery1UF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object FDQuery1CIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object FDQuery1CARGO: TStringField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Size = 50
    end
    object FDQuery1PERMISSAO: TStringField
      FieldName = 'PERMISSAO'
      Origin = 'PERMISSAO'
    end
    object FDQuery1USUARIOS_ID: TIntegerField
      FieldName = 'USUARIOS_ID'
      Origin = 'USUARIOS_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
end
